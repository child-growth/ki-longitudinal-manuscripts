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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        month    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                   0       22     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     2                   0       23     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     2                   1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     3                   0       22     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     3                   1        4     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     4                   0       23     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     4                   1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     5                   0       17     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     5                   1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     6                   0       13     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     6                   1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     7                   0       17     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     7                   1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     8                   0       29     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     8                   1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     9                   0       21     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     9                   1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     10                  0       21     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     10                  1        2     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     11                  0       16     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     11                  1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     12                  0       27     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     12                  1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                   0       15     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         2                   0       25     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         2                   1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         3                   0       18     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         3                   1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         4                   0       14     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         4                   1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         5                   0       18     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         5                   1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         6                   0       15     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         6                   1        1     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         7                   0       18     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         7                   1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         8                   0       18     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         8                   1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         9                   0       25     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         9                   1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         10                  0       27     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         10                  1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         11                  0       18     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         11                  1        1     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         12                  0       18     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         12                  1        2     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                   0       16     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                   1        0     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          2                   0       25     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          2                   1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          3                   0       19     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          3                   1        2     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          4                   0       19     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          4                   1        2     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          5                   0        7     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          5                   1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          6                   0       16     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          6                   1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          7                   0       20     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          7                   1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          8                   0       24     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          8                   1        0     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          9                   0       20     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          9                   1        3     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          10                  0       24     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          10                  1        0     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          11                  0       23     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          11                  1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          12                  0       20     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          12                  1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                   0       20     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          2                   0       20     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          2                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          3                   0       20     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          3                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          4                   0       20     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          4                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          5                   0       19     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          5                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          6                   0       19     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          6                   1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          7                   0       20     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          7                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          8                   0       19     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          8                   1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          9                   0       20     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          9                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          10                  0       20     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          10                  1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          11                  0       19     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          11                  1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          12                  0       20     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          12                  1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                   0       37     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           2                   0       30     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           2                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           3                   0       23     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           3                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           4                   0       18     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           4                   1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           5                   0       25     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           5                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           6                   0       21     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           6                   1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           7                   0       24     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           7                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           8                   0       18     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           8                   1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           9                   0       21     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           9                   1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           10                  0       25     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           10                  1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           11                  0       37     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           11                  1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           12                  0       19     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           12                  1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       37     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       39     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       21     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       12     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       11     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        1     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       22     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       29     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0       12     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       22     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       26     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        3     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       29     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        5     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       36     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        2     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       21     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       27     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       24     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0       11     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       14     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       16     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       28     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0       11     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       19     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       21     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       27     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       34     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        0     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       25     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       20     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       21     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       25     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        4     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       36     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                   1        7     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       32     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       29     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                   1        4     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       33     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        8     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       17     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        6     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       15     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        4     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       35     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                  1        6     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       25     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                  1        4     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   0       27     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   1        8     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                   0       24     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                   1        6     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                   0       25     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                   1        4     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                   0       24     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                   1        0     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                   0       18     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                   1        3     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                   0       27     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                   1        7     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                   0       27     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                   1        9     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                   0       33     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                   1        8     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                   0       24     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                   1        6     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                  0       32     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                  1        7     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                  0       32     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                  1        9     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                  0       39     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                  1       10     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   0       72     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   1       21     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       2                   0       59     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       2                   1       14     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       3                   0       35     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       3                   1       11     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       4                   0       20     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       4                   1        2     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       5                   0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       5                   1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       6                   0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       6                   1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       7                   0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       7                   1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       8                   0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       8                   1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       9                   0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       9                   1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       10                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       10                  1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       11                  0       51     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       11                  1        8     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       12                  0       74     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       12                  1       10     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                   0        3     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                   1        0     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       2                   0        7     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       2                   1        3     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       3                   0       11     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       3                   1        1     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       4                   0       17     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       4                   1        4     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       5                   0       23     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       5                   1       13     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       6                   0       42     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       6                   1        6     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       7                   0       39     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       7                   1        8     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       8                   0       28     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       8                   1        2     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       9                   0       35     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       9                   1       10     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       10                  0       13     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       10                  1        3     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       11                  0        5     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       11                  1        2     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       12                  0        5     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       12                  1        0     280
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   0       89    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   1       18    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                   0       84    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                   1        8    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                   0       81    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                   1        7    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                   0       76    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                   1        8    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                   0       77    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                   1       10    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                   0      100    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                   1       14    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                   0      109    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                   1       15    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                   0      152    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                   1       16    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                   0      162    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                   1       22    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                  0      141    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                  1       22    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                  0      122    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                  1       22    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                  0      137    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                  1       10    1502
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       55     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        7     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       37     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        3     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          3                   0       31     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          3                   1        4     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          4                   0       24     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          4                   1        3     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          5                   0       27     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          5                   1        3     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          6                   0       28     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          6                   1        3     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          7                   0       17     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        1     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          9                   0       10     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        3     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          10                  0       26     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          10                  1        2     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       45     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          11                  1        6     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       57     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          12                  1        5     397
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                   0       55     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                   1        9     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                   0       55     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                   1        3     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                   0       48     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                   1        8     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                   0       46     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                   1        4     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                   0       42     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                   1        5     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                   0       40     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                   1        4     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                   0       44     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                   1        3     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                   0       36     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                   1        5     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                   0       31     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                   1        2     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                  0       53     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                  1        5     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                  0       48     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                  1        3     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                  0       50     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                  1        3     602
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      219    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       12    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      147    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       10    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      175    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1        8    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      154    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1        7    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      189    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       10    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      164    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1        9    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      160    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       12    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      182    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       13    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      217    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       11    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      220    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1        8    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      217    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1        9    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      219    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       12    2384
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                   0      209    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                   1       29    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         2                   0      226    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         2                   1       49    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         3                   0      198    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         3                   1       34    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         4                   0      261    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         4                   1       48    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         5                   0      282    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         5                   1       30    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         6                   0      210    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         6                   1       16    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         7                   0      151    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         7                   1       29    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         8                   0      153    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         8                   1       22    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         9                   0      171    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         9                   1       21    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         10                  0      186    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         10                  1       37    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         11                  0      258    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         11                  1       41    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         12                  0      180    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         12                  1       27    2868
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       19     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      2                   0       20     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      2                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      3                   0       21     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      3                   1        1     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      4                   0       28     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      4                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      5                   0       32     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      5                   1        1     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      6                   0       39     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      6                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      7                   0       25     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      7                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      8                   0       19     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      8                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      9                   0       35     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      9                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      10                  0       33     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      10                  1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      11                  0       30     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      11                  1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      12                  0       10     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      12                  1        0     313
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      227    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1        3    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   0      194    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   1        0    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   0      203    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   1        3    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   0      171    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   1        0    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   0      239    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   1        3    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   0      345    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   1        4    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   0      390    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   1        2    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   0      337    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   1        1    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   0      268    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   1        4    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  0      360    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  1        1    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  0      186    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  1        1    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  0      146    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  1        3    3091
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   0        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   1        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          2                   0        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          2                   1        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          3                   0        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          3                   1        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          4                   0        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          4                   1        1     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          5                   0        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          5                   1        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          6                   0      118     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          6                   1       32     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          7                   0      201     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          7                   1       48     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          8                   0      210     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          8                   1       50     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          9                   0        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          9                   1        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          10                  0        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          10                  1        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          11                  0        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          11                  1        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          12                  0        0     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          12                  1        0     660
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                   0       21     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                   1        7     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     2                   0       28     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     2                   1        6     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     3                   0       19     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     3                   1        1     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     4                   0       18     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     4                   1        2     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     5                   0       20     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     5                   1        0     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     6                   0       22     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     6                   1        3     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     7                   0       12     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     7                   1        2     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     8                   0       14     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     8                   1        0     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     9                   0       17     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     9                   1        3     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     10                  0       21     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     10                  1        2     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     11                  0        3     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     11                  1        0     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     12                  0       36     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     12                  1       11     268
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                   0        9     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           2                   0       13     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           2                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           3                   0       27     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           3                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           4                   0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           4                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           5                   0       25     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           5                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           6                   0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           6                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           7                   0       16     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           7                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           8                   0       26     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           8                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           9                   0       19     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           9                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           10                  0       23     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           10                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           11                  0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           11                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           12                  0        7     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           12                  1        0     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                   0     1174   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                   1        8   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                   0      990   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                   1       13   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                   0     1169   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                   1       16   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                   0     1116   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                   1       13   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                   0     1135   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                   1       15   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                   0     1204   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                   1       16   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                   0     1455   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                   1       19   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                   0     1596   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                   1       19   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                   0     1572   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                   1       16   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                  0     1778   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                  1       23   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                  0     1685   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                  1       21   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                  0     1799   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                  1       25   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1281   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       47   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      980   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       43   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                   0     1066   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                   1       47   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      991   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                   1       29   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      957   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                   1       41   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                   0     1081   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                   1       41   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                   0     1111   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                   1       37   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                   0     1152   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                   1       48   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                   0     1259   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                   1       36   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                  0     1003   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                  1       26   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                  0     1087   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                  1       35   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                  0     1191   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                  1       48   13637
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                   0       55     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                   1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         2                   0      112     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         2                   1        2     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         3                   0       97     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         3                   1        1     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         4                   0      109     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         4                   1        1     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         5                   0      111     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         5                   1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         6                   0       89     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         6                   1        1     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         7                   0       71     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         7                   1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         8                   0       40     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         8                   1        1     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         9                   0       28     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         9                   1        1     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         10                  0       35     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         10                  1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         11                  0       49     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         11                  1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         12                  0       34     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         12                  1        0     837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2455   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       65   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2026   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                   1       65   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     2346   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                   1       69   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1743   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                   1       77   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                   0     1329   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                   1       55   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                   0     1275   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                   1       59   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1451   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                   1       69   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1888   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                   1       81   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                   0     2495   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                   1       76   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                  0     2779   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                  1      121   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                  0     2799   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                  1       92   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                  0     2995   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                  1      119   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   0       54    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        3    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      348    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     2                   1       15    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      447    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       21    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     4                   0      876    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     4                   1       52    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     5                   0      595    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     5                   1       28    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     6                   0      430    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     6                   1       26    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     7                   0      844    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     7                   1       35    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     8                   0      512    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     8                   1       16    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     9                   0      493    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     9                   1       19    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     10                  0      317    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     10                  1       10    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     11                  0      164    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     11                  1        5    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     12                  0       84    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     12                  1        2    5396
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                   0       22     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     2                   0       24     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     2                   1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     3                   0       23     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     3                   1        3     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     4                   0       22     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     4                   1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     5                   0       17     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     5                   1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     6                   0       13     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     6                   1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     7                   0       17     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     7                   1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     8                   0       29     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     8                   1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     9                   0       22     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     9                   1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     10                  0       22     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     10                  1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     11                  0       16     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     11                  1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     12                  0       28     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     12                  1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                   0       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         2                   0       25     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         2                   1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         3                   0       18     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         3                   1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         4                   0       14     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         4                   1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         5                   0       18     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         5                   1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         6                   0       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         6                   1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         7                   0       18     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         7                   1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         8                   0       18     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         8                   1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         9                   0       25     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         9                   1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         10                  0       27     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         10                  1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         11                  0       18     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         11                  1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         12                  0       19     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         12                  1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                   0       16     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                   1        0     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          2                   0       24     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          2                   1        1     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          3                   0       19     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          3                   1        2     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          4                   0       21     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          4                   1        0     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          5                   0        8     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          5                   1        0     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          6                   0       16     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          6                   1        1     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          7                   0       20     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          7                   1        1     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          8                   0       24     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          8                   1        0     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          9                   0       21     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          9                   1        2     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          10                  0       24     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          10                  1        0     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          11                  0       24     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          11                  1        0     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          12                  0       20     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          12                  1        0     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                   0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          2                   0       20     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          2                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          3                   0       20     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          3                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          4                   0       20     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          4                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          5                   0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          5                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          6                   0       20     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          6                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          7                   0       20     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          7                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          8                   0       20     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          8                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          9                   0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          9                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          10                  0       20     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          10                  1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          11                  0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          11                  1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          12                  0       20     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          12                  1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                   0       37     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           2                   0       30     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           2                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           3                   0       23     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           3                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           4                   0       19     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           4                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           5                   0       25     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           5                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           6                   0       21     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           6                   1        1     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           7                   0       24     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           7                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           8                   0       19     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           8                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           9                   0       22     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           9                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           10                  0       25     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           10                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           11                  0       37     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           11                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           12                  0       19     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           12                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       36     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       40     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       21     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       12     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       12     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       22     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       29     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0       12     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       22     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       28     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        1     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       32     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       38     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       21     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       28     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       24     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0       11     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       15     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        1     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       16     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       28     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0       12     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       19     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       21     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       29     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       34     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        0     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       27     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       19     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       22     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        1     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       25     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       35     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                   1        6     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       30     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                   1        3     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       30     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                   1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       35     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        4     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       16     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        3     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       17     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       36     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                  1        4     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       28     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                  1        1     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   0       29     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   1        6     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          2                   0       26     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          2                   1        4     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          3                   0       25     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          3                   1        3     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          4                   0       23     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          4                   1        0     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          5                   0       18     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          5                   1        3     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          6                   0       27     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          6                   1        5     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          7                   0       27     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          7                   1        6     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          8                   0       31     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          8                   1        7     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          9                   0       25     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          9                   1        4     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          10                  0       30     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          10                  1        6     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          11                  0       34     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          11                  1        7     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          12                  0       38     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          12                  1        6     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   0       82     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   1       10     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       2                   0       70     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       2                   1        3     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       3                   0       44     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       3                   1        2     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       4                   0       22     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       4                   1        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       5                   0        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       5                   1        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       6                   0        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       6                   1        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       7                   0        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       7                   1        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       8                   0        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       8                   1        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       9                   0        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       9                   1        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       10                  0        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       10                  1        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       11                  0       56     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       11                  1        3     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       12                  0       81     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       12                  1        2     375
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                   0        3     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                   1        0     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       2                   0        6     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       2                   1        3     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       3                   0       11     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       3                   1        0     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       4                   0       19     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       4                   1        2     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       5                   0       31     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       5                   1        5     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       6                   0       46     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       6                   1        1     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       7                   0       43     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       7                   1        4     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       8                   0       29     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       8                   1        1     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       9                   0       39     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       9                   1        5     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       10                  0       15     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       10                  1        1     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       11                  0        7     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       11                  1        0     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       12                  0        5     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       12                  1        0     276
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   0       96    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   1        7    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          2                   0       87    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          2                   1        3    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          3                   0       83    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          3                   1        3    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          4                   0       79    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          4                   1        2    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          5                   0       84    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          5                   1        0    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          6                   0      106    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          6                   1        8    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          7                   0      119    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          7                   1        1    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          8                   0      164    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          8                   1        2    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          9                   0      177    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          9                   1        3    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          10                  0      153    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          10                  1        7    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          11                  0      135    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          11                  1        7    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          12                  0      144    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          12                  1        3    1473
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       54     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       32     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          3                   0       31     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          3                   1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          4                   0       23     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          4                   1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          5                   0       27     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          5                   1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          6                   0       26     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          6                   1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          7                   0       14     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          9                   0       11     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          10                  0       24     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          10                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       49     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          11                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       50     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          12                  1        0     341
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                   0       59     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                   1        4     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     2                   0       58     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     2                   1        0     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     3                   0       51     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     3                   1        3     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     4                   0       49     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     4                   1        0     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     5                   0       44     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     5                   1        1     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     6                   0       44     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     6                   1        0     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     7                   0       43     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     7                   1        0     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     8                   0       40     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     8                   1        0     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     9                   0       32     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     9                   1        0     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     10                  0       56     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     10                  1        0     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     11                  0       48     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     11                  1        0     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     12                  0       51     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     12                  1        1     584
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      225    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      151    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1        5    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      181    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1        2    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      160    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1        1    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      196    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1        2    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      168    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1        4    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      170    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1        2    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      188    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1        6    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      223    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1        5    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      228    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1        0    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      221    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1        5    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      223    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1        6    2376
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                   0      203    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                   1        7    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         2                   0      234    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         2                   1       11    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         3                   0      209    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         3                   1        8    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         4                   0      253    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         4                   1        9    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         5                   0      207    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         5                   1        9    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         6                   0      171    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         6                   1        6    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         7                   0      129    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         7                   1        8    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         8                   0      130    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         8                   1        6    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         9                   0      164    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         9                   1        6    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         10                  0      189    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         10                  1       11    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         11                  0      260    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         11                  1        8    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         12                  0      180    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         12                  1        6    2424
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                   0       18     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      2                   0       19     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      2                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      3                   0       21     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      3                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      4                   0       23     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      4                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      5                   0       27     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      5                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      6                   0       36     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      6                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      7                   0       25     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      7                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      8                   0       18     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      8                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      9                   0       31     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      9                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      10                  0       32     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      10                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      11                  0       30     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      11                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      12                  0       10     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      12                  1        0     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   0        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   1        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          2                   0        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          2                   1        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          3                   0        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          3                   1        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          4                   0        1     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          4                   1        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          5                   0        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          5                   1        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          6                   0      139     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          6                   1        7     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          7                   0      231     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          7                   1       14     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          8                   0      240     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          8                   1       10     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          9                   0        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          9                   1        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          10                  0        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          10                  1        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          11                  0        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          11                  1        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          12                  0        0     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          12                  1        0     642
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                   0       25     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                   1        3     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     2                   0       33     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     2                   1        1     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     3                   0       20     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     3                   1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     4                   0       20     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     4                   1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     5                   0       20     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     5                   1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     6                   0       22     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     6                   1        2     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     7                   0       12     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     7                   1        2     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     8                   0       14     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     8                   1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     9                   0       20     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     9                   1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     10                  0       23     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     10                  1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     11                  0        3     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     11                  1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     12                  0       46     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     12                  1        1     267
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                   0        9     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           2                   0       13     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           2                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           3                   0       27     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           3                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           4                   0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           4                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           5                   0       25     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           5                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           6                   0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           6                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           7                   0       16     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           7                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           8                   0       26     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           8                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           9                   0       19     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           9                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           10                  0       23     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           10                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           11                  0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           11                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           12                  0        7     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           12                  1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                   0     1158   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                   1        7   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                   0      978   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                   1       10   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                   0     1155   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                   1       12   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                   0     1102   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                   1       13   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                   0     1120   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                   1       12   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                   0     1187   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                   1       14   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                   0     1442   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                   1       16   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                   0     1577   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                   1       17   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                   0     1551   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                   1       16   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                  0     1755   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                  1       21   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                  0     1665   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                  1       19   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                  0     1788   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                  1       22   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1284   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       14   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      982   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       11   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                   0     1080   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                   1       14   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      997   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                   1        9   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      981   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                   1        5   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                   0     1100   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                   1        9   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                   0     1117   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                   1       12   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                   0     1160   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                   1       19   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                   0     1254   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                   1       15   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                  0     1001   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                  1        4   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                  0     1083   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                  1        8   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                  0     1205   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                  1       12   13376
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                   0        7     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         2                   0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         2                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         3                   0       56     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         3                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         4                   0       48     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         4                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         5                   0       26     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         5                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         6                   0       28     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         6                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         7                   0       28     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         7                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         8                   0        4     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         8                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         9                   0        4     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         9                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         10                  0        5     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         10                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         11                  0       10     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         11                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         12                  0        5     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         12                  1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2452   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       40   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2029   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                   1       41   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     2359   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                   1       29   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1756   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                   1       35   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                   0     1342   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                   1       11   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                   0     1296   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                   1       18   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1487   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                   1       19   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1923   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                   1       31   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                   0     2511   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                   1       37   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                  0     2821   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                  1       56   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                  0     2814   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                  1       47   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                  0     3009   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                  1       71   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   0       50    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     2                   0      350    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     2                   1        3    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     3                   0      439    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     3                   1        1    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     4                   0      899    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     4                   1        5    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     5                   0      594    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     5                   1        3    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     6                   0      438    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     6                   1        4    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     7                   0      845    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     7                   1        3    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     8                   0      513    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     8                   1        1    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     9                   0      334    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     9                   1        1    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     10                  0      264    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     10                  1        0    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     11                  0      139    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     11                  1        0    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     12                  0       71    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     12                  1        0    4957
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                   0       20     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     2                   0       19     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     2                   1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     3                   0       22     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     3                   1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     4                   0       24     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     4                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     5                   0       17     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     5                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     6                   0       12     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     6                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     7                   0       17     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     7                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     8                   0       25     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     8                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     9                   0       19     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     9                   1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     10                  0       20     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     10                  1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     11                  0       14     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     11                  1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     12                  0       26     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     12                  1        1     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                   0       14     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         2                   0       23     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         2                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         3                   0       15     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         3                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         4                   0       12     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         4                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         5                   0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         5                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         6                   0       14     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         6                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         7                   0       16     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         7                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         8                   0       15     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         8                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         9                   0       21     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         9                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         10                  0       25     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         10                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         11                  0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         11                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         12                  0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         12                  1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                   0       15     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          2                   0       23     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          2                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          3                   0       21     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          3                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          4                   0       16     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          4                   1        2     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          5                   0        6     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          5                   1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          6                   0       18     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          6                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          7                   0       21     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          7                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          8                   0       21     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          8                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          9                   0       20     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          9                   1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          10                  0       24     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          10                  1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          11                  0       23     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          11                  1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          12                  0       21     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          12                  1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                   0       20     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          2                   0       20     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          2                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          3                   0       20     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          3                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          4                   0       20     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          4                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          5                   0       18     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          5                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          6                   0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          6                   1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          7                   0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          7                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          8                   0       18     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          8                   1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          9                   0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          9                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          10                  0       20     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          10                  1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          11                  0       20     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          11                  1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          12                  0       20     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          12                  1        0     235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                   0       33     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           2                   0       26     270
6-24 months                   ki0047075b-MAL-ED          PERU                           2                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           3                   0       22     270
6-24 months                   ki0047075b-MAL-ED          PERU                           3                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           4                   0       17     270
6-24 months                   ki0047075b-MAL-ED          PERU                           4                   1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           5                   0       22     270
6-24 months                   ki0047075b-MAL-ED          PERU                           5                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           6                   0       20     270
6-24 months                   ki0047075b-MAL-ED          PERU                           6                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           7                   0       22     270
6-24 months                   ki0047075b-MAL-ED          PERU                           7                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           8                   0       15     270
6-24 months                   ki0047075b-MAL-ED          PERU                           8                   1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           9                   0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           9                   1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           10                  0       19     270
6-24 months                   ki0047075b-MAL-ED          PERU                           10                  1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           11                  0       34     270
6-24 months                   ki0047075b-MAL-ED          PERU                           11                  1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           12                  0       16     270
6-24 months                   ki0047075b-MAL-ED          PERU                           12                  1        0     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       30     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       33     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       17     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       12     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       10     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        1     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       18     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       25     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0        8     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       18     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       21     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       28     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        3     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       29     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        2     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       19     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       26     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       23     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0       10     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       14     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       16     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       28     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0       11     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       18     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       19     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       26     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        2     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       30     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        0     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       25     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       21     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       24     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       26     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       41     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          5                   1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       37     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          6                   1        0     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       31     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          7                   1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       36     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        5     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       20     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       17     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       39     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          11                  1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       26     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          12                  1        3     373
6-24 months                   ki1000108-IRC              INDIA                          1                   0       33     410
6-24 months                   ki1000108-IRC              INDIA                          1                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          2                   0       28     410
6-24 months                   ki1000108-IRC              INDIA                          2                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          3                   0       27     410
6-24 months                   ki1000108-IRC              INDIA                          3                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          4                   0       24     410
6-24 months                   ki1000108-IRC              INDIA                          4                   1        0     410
6-24 months                   ki1000108-IRC              INDIA                          5                   0       20     410
6-24 months                   ki1000108-IRC              INDIA                          5                   1        1     410
6-24 months                   ki1000108-IRC              INDIA                          6                   0       32     410
6-24 months                   ki1000108-IRC              INDIA                          6                   1        3     410
6-24 months                   ki1000108-IRC              INDIA                          7                   0       32     410
6-24 months                   ki1000108-IRC              INDIA                          7                   1        4     410
6-24 months                   ki1000108-IRC              INDIA                          8                   0       39     410
6-24 months                   ki1000108-IRC              INDIA                          8                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          9                   0       28     410
6-24 months                   ki1000108-IRC              INDIA                          9                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          10                  0       37     410
6-24 months                   ki1000108-IRC              INDIA                          10                  1        2     410
6-24 months                   ki1000108-IRC              INDIA                          11                  0       39     410
6-24 months                   ki1000108-IRC              INDIA                          11                  1        2     410
6-24 months                   ki1000108-IRC              INDIA                          12                  0       45     410
6-24 months                   ki1000108-IRC              INDIA                          12                  1        4     410
6-24 months                   ki1000109-EE               PAKISTAN                       1                   0       79     374
6-24 months                   ki1000109-EE               PAKISTAN                       1                   1       12     374
6-24 months                   ki1000109-EE               PAKISTAN                       2                   0       61     374
6-24 months                   ki1000109-EE               PAKISTAN                       2                   1       11     374
6-24 months                   ki1000109-EE               PAKISTAN                       3                   0       35     374
6-24 months                   ki1000109-EE               PAKISTAN                       3                   1       11     374
6-24 months                   ki1000109-EE               PAKISTAN                       4                   0       20     374
6-24 months                   ki1000109-EE               PAKISTAN                       4                   1        2     374
6-24 months                   ki1000109-EE               PAKISTAN                       5                   0        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       5                   1        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       6                   0        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       6                   1        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       7                   0        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       7                   1        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       8                   0        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       8                   1        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       9                   0        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       9                   1        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       10                  0        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       10                  1        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       11                  0       53     374
6-24 months                   ki1000109-EE               PAKISTAN                       11                  1        6     374
6-24 months                   ki1000109-EE               PAKISTAN                       12                  0       75     374
6-24 months                   ki1000109-EE               PAKISTAN                       12                  1        9     374
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                   0        2     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                   1        0     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       2                   0       10     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       2                   1        0     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       3                   0        9     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       3                   1        1     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       4                   0       19     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       4                   1        2     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       5                   0       18     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       5                   1        8     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       6                   0       33     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       6                   1        6     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       7                   0       35     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       7                   1        6     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       8                   0       24     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       8                   1        1     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       9                   0       32     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       9                   1        5     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       10                  0       13     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       10                  1        2     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       11                  0        5     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       11                  1        2     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       12                  0        3     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       12                  1        0     236
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   0       83    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   1       13    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          2                   0       77    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          2                   1        5    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          3                   0       78    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          3                   1        4    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          4                   0       73    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          4                   1        7    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          5                   0       71    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          5                   1       10    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          6                   0      100    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          6                   1        7    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          7                   0      103    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          7                   1       14    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          8                   0      139    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          8                   1       15    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          9                   0      152    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          9                   1       20    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          10                  0      134    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          10                  1       16    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          11                  0      116    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          11                  1       15    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          12                  0      129    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          12                  1        8    1389
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       54     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        8     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       35     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        4     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          3                   0       31     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          3                   1        6     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          4                   0       24     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          4                   1        5     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          5                   0       28     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          5                   1        3     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          6                   0       29     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          6                   1        4     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          7                   0       17     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        1     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        9     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        3     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          10                  0       25     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          10                  1        4     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       42     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          11                  1        6     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       57     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          12                  1        7     402
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                   0       47     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                   1        5     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                   0       46     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                   1        4     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                   0       46     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                   1        5     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                   0       41     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                   1        4     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                   0       38     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                   1        4     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                   0       36     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                   1        4     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                   0       42     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                   1        3     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                   0       32     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                   1        5     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                   0       27     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                   1        2     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                  0       47     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                  1        6     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                  0       45     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                  1        3     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                  0       47     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                  1        3     542
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      190    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        9    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      127    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1        6    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      143    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1        7    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      132    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1        6    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      151    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1        8    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      134    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1        5    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      132    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       10    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      169    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1        7    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      193    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1        6    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      188    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1        8    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      187    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1        4    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      189    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1        7    2018
6-24 months                   ki1101329-Keneba           GAMBIA                         1                   0      201    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         1                   1       23    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         2                   0      225    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         2                   1       39    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         3                   0      192    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         3                   1       28    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         4                   0      250    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         4                   1       43    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         5                   0      266    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         5                   1       28    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         6                   0      211    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         6                   1       12    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         7                   0      152    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         7                   1       23    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         8                   0      151    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         8                   1       17    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         9                   0      171    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         9                   1       15    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         10                  0      179    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         10                  1       32    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         11                  0      249    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         11                  1       38    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         12                  0      170    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         12                  1       23    2738
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       15     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      2                   0       18     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      2                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      3                   0       18     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      3                   1        1     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      4                   0       23     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      4                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      5                   0       30     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      5                   1        1     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      6                   0       37     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      6                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      7                   0       24     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      7                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      8                   0       19     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      8                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      9                   0       32     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      9                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      10                  0       24     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      10                  1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      11                  0       26     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      11                  1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      12                  0        9     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      12                  1        0     277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      228    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       11    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   0      197    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   1       11    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   0      205    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   1        9    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   0      173    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   1       10    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   0      245    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   1       12    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   0      349    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   1       17    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   0      394    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   1       17    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   0      339    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   1       23    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   0      276    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   1       19    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  0      358    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  1       14    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  0      187    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  1       10    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  0      150    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  1       12    3266
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          2                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          2                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          3                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          3                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          4                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          4                   1        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          5                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          5                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          6                   0       92     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          6                   1       26     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          7                   0      185     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          7                   1       40     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          8                   0      201     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          8                   1       45     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          9                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          9                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          10                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          10                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          11                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          11                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          12                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          12                  1        0     590
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                   0       23     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                   1        4     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     2                   0       26     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     2                   1        5     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     3                   0       19     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     3                   1        1     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     4                   0       16     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     4                   1        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     5                   0       20     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     5                   1        0     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     6                   0       21     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     6                   1        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     7                   0       13     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     7                   1        0     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     8                   0       14     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     8                   1        0     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     9                   0       16     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     9                   1        3     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     10                  0       17     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     10                  1        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     11                  0        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     11                  1        0     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     12                  0       36     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     12                  1       10     252
6-24 months                   ki1114097-CONTENT          PERU                           1                   0        9     215
6-24 months                   ki1114097-CONTENT          PERU                           1                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           2                   0       13     215
6-24 months                   ki1114097-CONTENT          PERU                           2                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           3                   0       27     215
6-24 months                   ki1114097-CONTENT          PERU                           3                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           4                   0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           4                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           5                   0       25     215
6-24 months                   ki1114097-CONTENT          PERU                           5                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           6                   0       14     215
6-24 months                   ki1114097-CONTENT          PERU                           6                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           7                   0       16     215
6-24 months                   ki1114097-CONTENT          PERU                           7                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           8                   0       26     215
6-24 months                   ki1114097-CONTENT          PERU                           8                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           9                   0       19     215
6-24 months                   ki1114097-CONTENT          PERU                           9                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           10                  0       23     215
6-24 months                   ki1114097-CONTENT          PERU                           10                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           11                  0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           11                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           12                  0        7     215
6-24 months                   ki1114097-CONTENT          PERU                           12                  1        0     215
6-24 months                   ki1119695-PROBIT           BELARUS                        1                   0     1146   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                   1        1   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        2                   0      985   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        2                   1        3   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        3                   0     1164   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        3                   1        5   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        4                   0     1118   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        4                   1        0   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        5                   0     1130   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        5                   1        3   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        6                   0     1189   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        6                   1        2   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        7                   0     1453   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        7                   1        3   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        8                   0     1583   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        8                   1        2   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        9                   0     1561   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        9                   1        0   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        10                  0     1766   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        10                  1        2   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        11                  0     1679   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        11                  1        2   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        12                  0     1798   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        12                  1        3   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1030   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       34   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      782   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       35   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      842   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                   1       34   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      797   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                   1       21   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      736   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                   1       36   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      852   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                   1       33   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      878   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                   1       26   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      903   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                   1       29   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                   0     1003   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                   1       21   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      774   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                  1       24   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      873   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                  1       27   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      989   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                  1       36   10815
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                   0       55     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                   1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         2                   0      112     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         2                   1        2     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         3                   0       93     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         3                   1        1     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         4                   0      106     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         4                   1        1     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         5                   0      109     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         5                   1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         6                   0       89     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         6                   1        1     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         7                   0       71     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         7                   1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         8                   0       40     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         8                   1        1     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         9                   0       28     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         9                   1        1     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         10                  0       35     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         10                  1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         11                  0       47     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         11                  1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         12                  0       33     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         12                  1        1     826
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1367   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       30   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1197   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                   1       25   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1423   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                   1       42   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1182   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                   1       47   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                   0     1163   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                   1       46   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                   0     1159   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                   1       47   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1233   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                   1       54   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1437   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                   1       55   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1547   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                   1       41   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1670   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                  1       69   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1655   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                  1       46   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                  0     1712   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                  1       51   17298
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   0       54    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        4    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      352    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     2                   1       13    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      448    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       23    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     4                   0      880    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     4                   1       49    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     5                   0      597    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     5                   1       26    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     6                   0      436    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     6                   1       24    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     7                   0      851    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     7                   1       37    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     8                   0      513    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     8                   1       20    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     9                   0      496    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     9                   1       19    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     10                  0      317    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     10                  1       15    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     11                  0      164    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     11                  1        6    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     12                  0       83    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     12                  1        3    5430


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
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/2b06d50f-85ee-476e-9327-d146360ca1ff/769aa02a-acc8-4ba8-8c92-5c6b99bf14b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2b06d50f-85ee-476e-9327-d146360ca1ff/769aa02a-acc8-4ba8-8c92-5c6b99bf14b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2b06d50f-85ee-476e-9327-d146360ca1ff/769aa02a-acc8-4ba8-8c92-5c6b99bf14b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2b06d50f-85ee-476e-9327-d146360ca1ff/769aa02a-acc8-4ba8-8c92-5c6b99bf14b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1682243    0.1039350   0.2325136
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0869565    0.0483028   0.1256102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.0795455    0.0261268   0.1329641
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.0952381    0.0443913   0.1460849
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.1149425    0.0564882   0.1733969
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.1228070    0.0403659   0.2052481
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.1209677    0.0863229   0.1556126
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.0952381    0.0467417   0.1437345
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.1195652    0.0703630   0.1687675
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.1349693    0.0960680   0.1738707
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.1527778    0.1038420   0.2017135
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.0680272    0.0339271   0.1021273
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0519481    0.0233238   0.0805723
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0636943    0.0254868   0.1019017
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0437158    0.0140862   0.0733455
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0434783    0.0119711   0.0749855
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0502513    0.0198920   0.0806105
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0520231    0.0189242   0.0851220
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0697674    0.0316874   0.1078475
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0666667    0.0316484   0.1016849
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0482456    0.0204252   0.0760660
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0350877    0.0111990   0.0589765
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0398230    0.0143237   0.0653223
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0519481    0.0233238   0.0805723
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                0.1218487    0.0802835   0.1634140
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         2                    NA                0.1781818    0.1329466   0.2234171
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         3                    NA                0.1465517    0.1010357   0.1920677
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         4                    NA                0.1553398    0.1149449   0.1957347
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         5                    NA                0.0961538    0.0634366   0.1288711
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         6                    NA                0.0707965    0.0373515   0.1042414
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         7                    NA                0.1611111    0.1073953   0.2148270
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         8                    NA                0.1257143    0.0765869   0.1748417
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         9                    NA                0.1093750    0.0652200   0.1535300
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         10                   NA                0.1659193    0.1170851   0.2147535
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         11                   NA                0.1371237    0.0981279   0.1761196
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         12                   NA                0.1304348    0.0845481   0.1763214
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0067682   -0.0009080   0.0144444
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                    NA                0.0129611    0.0040908   0.0218314
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                    NA                0.0135021    0.0049922   0.0220120
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                    NA                0.0115146    0.0045058   0.0185234
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                    NA                0.0130435    0.0022804   0.0238066
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                    NA                0.0131148    0.0052360   0.0209935
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                    NA                0.0128901    0.0071407   0.0186395
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                    NA                0.0117647    0.0052369   0.0182925
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                    NA                0.0100756    0.0036795   0.0164716
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                   NA                0.0127707    0.0033657   0.0221757
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                   NA                0.0123095    0.0059840   0.0186350
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                   NA                0.0137061    0.0061557   0.0212566
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0353916    0.0254538   0.0453294
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0420332    0.0297363   0.0543302
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0422282    0.0304128   0.0540436
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0284314    0.0182314   0.0386314
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0410822    0.0287677   0.0533966
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0365419    0.0255625   0.0475213
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0322300    0.0220133   0.0424466
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0400000    0.0289124   0.0510876
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0277992    0.0188451   0.0367534
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0252672    0.0156781   0.0348564
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0311943    0.0210219   0.0413667
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0387409    0.0279952   0.0494866
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0257937    0.0192505   0.0323368
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0310856    0.0228944   0.0392768
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0285714    0.0213904   0.0357524
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0423077    0.0319754   0.0526400
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0397399    0.0282721   0.0512076
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0442279    0.0309410   0.0575148
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0453947    0.0347750   0.0560145
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0411376    0.0311867   0.0510886
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0295605    0.0224726   0.0366484
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0417241    0.0337445   0.0497038
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0318229    0.0245690   0.0390768
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0382145    0.0314003   0.0450288
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                0.0333333    0.0090501   0.0576165
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         2                    NA                0.0448980    0.0189626   0.0708334
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         3                    NA                0.0368664    0.0117899   0.0619428
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         4                    NA                0.0343511    0.0122931   0.0564092
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         5                    NA                0.0416667    0.0150126   0.0683207
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         6                    NA                0.0338983    0.0072327   0.0605639
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         7                    NA                0.0583942    0.0191209   0.0976674
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         8                    NA                0.0441176    0.0095972   0.0786381
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         9                    NA                0.0352941    0.0075506   0.0630377
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         10                   NA                0.0550000    0.0233976   0.0866024
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         11                   NA                0.0298507    0.0094725   0.0502290
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         12                   NA                0.0322581    0.0068612   0.0576549
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0060086   -0.0019942   0.0140114
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                    NA                0.0101215    0.0016953   0.0185477
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                    NA                0.0102828    0.0026390   0.0179266
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                    NA                0.0116592    0.0045281   0.0187903
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                    NA                0.0106007    0.0012510   0.0199504
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                    NA                0.0116570    0.0040783   0.0192356
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                    NA                0.0109739    0.0053152   0.0166327
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                    NA                0.0106650    0.0051563   0.0161737
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                    NA                0.0102106    0.0035926   0.0168286
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                   NA                0.0118243    0.0021322   0.0215165
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                   NA                0.0112827    0.0064339   0.0161314
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                   NA                0.0121547    0.0044487   0.0198607
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0160514    0.0108299   0.0212728
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0198068    0.0129939   0.0266197
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0121441    0.0073702   0.0169179
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0195422    0.0124189   0.0266654
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0081301    0.0035523   0.0127079
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0136986    0.0071704   0.0202269
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0126162    0.0071221   0.0181103
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0158649    0.0088902   0.0228395
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0145212    0.0089398   0.0201026
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0194647    0.0138670   0.0250624
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0164278    0.0112930   0.0215627
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0230519    0.0177253   0.0283786
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                0.1026786    0.0629212   0.1424359
6-24 months                   ki1101329-Keneba           GAMBIA                         2                    NA                0.1477273    0.1049173   0.1905373
6-24 months                   ki1101329-Keneba           GAMBIA                         3                    NA                0.1272727    0.0832250   0.1713204
6-24 months                   ki1101329-Keneba           GAMBIA                         4                    NA                0.1467577    0.1062320   0.1872834
6-24 months                   ki1101329-Keneba           GAMBIA                         5                    NA                0.0952381    0.0616778   0.1287984
6-24 months                   ki1101329-Keneba           GAMBIA                         6                    NA                0.0538117    0.0241905   0.0834328
6-24 months                   ki1101329-Keneba           GAMBIA                         7                    NA                0.1314286    0.0813611   0.1814961
6-24 months                   ki1101329-Keneba           GAMBIA                         8                    NA                0.1011905    0.0555788   0.1468022
6-24 months                   ki1101329-Keneba           GAMBIA                         9                    NA                0.0806452    0.0415069   0.1197834
6-24 months                   ki1101329-Keneba           GAMBIA                         10                   NA                0.1516588    0.1032521   0.2000654
6-24 months                   ki1101329-Keneba           GAMBIA                         11                   NA                0.1324042    0.0931852   0.1716231
6-24 months                   ki1101329-Keneba           GAMBIA                         12                   NA                0.1191710    0.0734538   0.1648882
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0460251   -0.0323036   0.1243538
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.0528846    0.0151986   0.0905706
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.0420561    0.0147668   0.0693454
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.0546448    0.0223863   0.0869034
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.0466926    0.0264537   0.0669316
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.0464481    0.0054146   0.0874816
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.0413625    0.0205601   0.0621650
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.0635359    0.0368510   0.0902208
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.0644068    0.0325957   0.0962179
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.0376344    0.0105154   0.0647534
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.0507614    0.0147394   0.0867834
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.0740741    0.0467167   0.1014315
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0319549    0.0213864   0.0425234
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0428397    0.0289538   0.0567255
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0388128    0.0260217   0.0516039
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0256724    0.0148337   0.0365111
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0466321    0.0317580   0.0615063
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0372881    0.0248048   0.0497715
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0287611    0.0178655   0.0396566
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0311159    0.0199681   0.0422636
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0205078    0.0118266   0.0291890
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0300752    0.0182246   0.0419258
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0300000    0.0188547   0.0411453
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0351220    0.0238517   0.0463922
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0214746    0.0133066   0.0296426
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0204583    0.0126498   0.0282667
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0286689    0.0195636   0.0377742
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0382425    0.0267040   0.0497809
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0380480    0.0253928   0.0507032
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0389718    0.0252202   0.0527234
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0419580    0.0308372   0.0530789
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0368633    0.0264854   0.0472411
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0258186    0.0178694   0.0337678
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0396780    0.0298275   0.0495285
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0270429    0.0183964   0.0356894
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0289280    0.0208550   0.0370009


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1145140   0.0913579   0.1376700
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0507550   0.0419422   0.0595679
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1335425   0.1210912   0.1459939
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0120875   0.0084025   0.0157724
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0350517   0.0319649   0.0381385
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0357345   0.0331597   0.0383093
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0391914   0.0314649   0.0469180
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0107462   0.0070475   0.0144449
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0165815   0.0147663   0.0183968
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1172389   0.1051866   0.1292911
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329172   0.0295545   0.0362800
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319690   0.0290813   0.0348568


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.5169082   0.2569695   1.0397892
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.4728535   0.2210127   1.0116632
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.5661376   0.3448096   0.9295325
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.6832695   0.3107527   1.5023429
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.7300195   0.4017844   1.3264042
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 0.7190860   0.5708124   0.9058750
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 0.5661376   0.4110703   0.7797005
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.7107488   0.4760165   1.0612317
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.8023177   0.5273449   1.2206692
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.9081790   0.6046879   1.3639915
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.4043840   0.2651326   0.6167722
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2261146   0.5429854   2.7686882
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8415301   0.3513284   2.0157004
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8369565   0.3367733   2.0800232
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.9673367   0.4270317   2.1912667
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0014451   0.4316118   2.3235976
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.3430233   0.6183742   2.9168608
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2833333   0.5994102   2.7476084
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9287281   0.4183156   2.0619263
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.6754386   0.2813200   1.6217025
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7665929   0.3293741   1.7841861
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0000000   0.4587476   2.1798478
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         2                    1                 1.4623197   0.9558071   2.2372495
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         3                    1                 1.2027348   0.7582590   1.9077533
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         4                    1                 1.2748577   0.8301893   1.9577007
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         5                    1                 0.7891247   0.4874143   1.2775943
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         6                    1                 0.5810192   0.3244356   1.0405249
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         7                    1                 1.3222222   0.8206303   2.1304009
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         8                    1                 1.0317241   0.6141624   1.7331811
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         9                    1                 0.8976293   0.5291283   1.5227655
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         10                   1                 1.3616824   0.8677735   2.1367083
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         11                   1                 1.1253604   0.7217963   1.7545615
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         12                   1                 1.0704648   0.6557778   1.7473829
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                    1                 1.9150049   0.6200314   5.9146099
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                    1                 1.9949366   0.6278171   6.3390627
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                    1                 1.7012843   0.6336226   4.5679685
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                    1                 1.9271738   0.5132196   7.2366667
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                    1                 1.9377048   0.5274015   7.1192435
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                    1                 1.9045115   0.5387513   6.7325382
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                    1                 1.7382352   0.4581914   6.5943219
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                    1                 1.4886649   0.4502143   4.9223744
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                   1                 1.8868683   0.6577060   5.4131662
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                   1                 1.8187279   0.7999710   4.1348639
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                   1                 2.0250822   0.9586190   4.2779852
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1876625   0.7917440   1.7815635
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1931716   0.8026905   1.7736081
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8033375   0.5093800   1.2669346
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1607897   0.7697974   1.7503730
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0325027   0.6843675   1.5577332
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9106680   0.5962761   1.3908256
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1302128   0.7617335   1.6769394
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7854761   0.5123351   1.2042364
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.7139342   0.4452774   1.1446842
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8814048   0.5731711   1.3553971
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0946371   0.7376622   1.6243618
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.2051650   0.8365768   1.7361498
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.1076923   0.7776758   1.5777555
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.6402367   1.1485684   2.3423736
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.5406847   1.0604710   2.2383539
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.7146811   1.1512416   2.5538787
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.7599190   1.2366060   2.5046902
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.5948744   1.1293147   2.2523610
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.1460372   0.8095903   1.6223036
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.6176127   1.1713218   2.2339470
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2337493   0.8838897   1.7220897
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.4815474   1.0816787   2.0292372
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         2                    1                 1.3469388   0.5315861   3.4128887
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         3                    1                 1.1059908   0.4082232   2.9964386
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         4                    1                 1.0305344   0.3902271   2.7214952
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         5                    1                 1.2500000   0.4740935   3.2957634
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         6                    1                 1.0169492   0.3480737   2.9711680
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         7                    1                 1.7518248   0.6499737   4.7215603
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         8                    1                 1.3235294   0.4543947   3.8550851
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         9                    1                 1.0588235   0.3625574   3.0922204
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         10                   1                 1.6500000   0.6524314   4.1728528
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         11                   1                 0.8955224   0.3299810   2.4303228
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         12                   1                 0.9677419   0.3310693   2.8287871
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                    1                 1.6844994   0.4511060   6.2901809
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                    1                 1.7113475   0.4773930   6.1347989
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                    1                 1.9404225   0.6176806   6.0957709
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                    1                 1.7642602   0.3815654   8.1574845
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                    1                 1.9400496   0.4340515   8.6713034
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                    1                 1.8263763   0.4197550   7.9466615
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                    1                 1.7749594   0.4030939   7.8157492
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                    1                 1.6993342   0.4388146   6.5807669
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                   1                 1.9679051   0.6015039   6.4382794
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                   1                 1.8777567   0.5761125   6.1202805
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                   1                 2.0228884   0.8107737   5.0471268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.2339614   0.7754229   1.9636519
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.7565745   0.4548368   1.2584844
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.2174763   0.7406953   2.0011583
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.5065041   0.2669653   0.9609729
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.8534247   0.4869325   1.4957589
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7859894   0.4563450   1.3537550
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9883828   0.5807413   1.6821614
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9046703   0.5554993   1.4733202
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.2126521   0.7856622   1.8717014
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0234533   0.6539539   1.6017287
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.4361364   0.9656266   2.1359060
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         2                    1                 1.4387352   0.8870341   2.3335730
6-24 months                   ki1101329-Keneba           GAMBIA                         3                    1                 1.2395257   0.7374180   2.0835185
6-24 months                   ki1101329-Keneba           GAMBIA                         4                    1                 1.4292922   0.8883379   2.2996611
6-24 months                   ki1101329-Keneba           GAMBIA                         5                    1                 0.9275362   0.5494879   1.5656822
6-24 months                   ki1101329-Keneba           GAMBIA                         6                    1                 0.5240788   0.2673718   1.0272532
6-24 months                   ki1101329-Keneba           GAMBIA                         7                    1                 1.2800000   0.7435477   2.2034900
6-24 months                   ki1101329-Keneba           GAMBIA                         8                    1                 0.9855072   0.5439910   1.7853687
6-24 months                   ki1101329-Keneba           GAMBIA                         9                    1                 0.7854137   0.4221497   1.4612702
6-24 months                   ki1101329-Keneba           GAMBIA                         10                   1                 1.4770245   0.8942505   2.4395864
6-24 months                   ki1101329-Keneba           GAMBIA                         11                   1                 1.2895016   0.7919542   2.0996344
6-24 months                   ki1101329-Keneba           GAMBIA                         12                   1                 1.1606218   0.6729337   2.0017468
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.1490385   0.1965790   6.7163292
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 0.9137638   0.1521490   5.4878059
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.1872827   0.1995237   7.0650263
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0145030   0.1801068   5.7144791
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.0091903   0.1342960   7.5837339
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.8986950   0.1449750   5.5709785
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.3804621   0.2441211   7.8062700
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.3993837   0.2127736   9.2035592
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.8176931   0.1246692   5.3631677
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.1029072   0.1570000   7.7477998
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.6094276   0.2850065   9.0884151
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3406293   0.8437106   2.1302172
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2146119   0.7614945   1.9373508
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8033942   0.4699063   1.3735552
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.4593112   0.9217159   2.3104615
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1668993   0.7288796   1.8681467
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9000521   0.5443350   1.4882264
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9737440   0.5979843   1.5856224
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.6417739   0.3750442   1.0982007
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9411765   0.5626704   1.5743021
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9388235   0.5709090   1.5438357
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0991105   0.6932835   1.7424962
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9526732   0.5540376   1.6381310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.3350171   0.8155037   2.1854843
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.7808245   1.0867237   2.9182540
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.7717673   1.0947270   2.8675271
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.8147872   1.0700174   3.0779428
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.9538461   1.2444974   3.0675152
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.7165996   1.0648265   2.7673188
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.2022880   0.7329716   1.9721042
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.8476711   1.1719331   2.9130402
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2592984   0.7883250   2.0116483
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.3470788   0.8376316   2.1663717


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0537103   -0.0998388   -0.0075819
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0011930   -0.0283634    0.0259774
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0116938   -0.0282558    0.0516434
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0053193   -0.0002799    0.0109184
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0003399   -0.0097767    0.0090969
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0099408    0.0035041    0.0163775
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0058581   -0.0175343    0.0292504
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0047376   -0.0012479    0.0107232
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0005302   -0.0043958    0.0054561
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0145603   -0.0237447    0.0528653
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0044954   -0.0703896    0.0793804
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0009624   -0.0090887    0.0110135
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0104944    0.0025892    0.0183996


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.4690285   -0.8573368   -0.1619027
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0235054   -0.7267651    0.3933377
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0875661   -0.2663447    0.3425679
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                 0.4400650   -0.4278014    0.7804126
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0096962   -0.3182281    0.2266236
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2781859    0.0762459    0.4359802
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                 0.1494737   -0.7144186    0.5780523
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                 0.4408660   -0.7053380    0.8166751
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0319736   -0.3156759    0.2877614
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1241934   -0.2715400    0.3967651
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0889819   -3.6594758    0.8218782
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0292357   -0.3295686    0.2912111
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.3282687    0.0306337    0.5345176
