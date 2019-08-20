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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                   0       21     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     2                   0       23     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     2                   1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     3                   0       23     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     3                   1        4     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     4                   0       21     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     4                   1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     5                   0       21     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     5                   1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     6                   0        9     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     6                   1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     7                   0       21     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     7                   1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     8                   0       25     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     8                   1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     9                   0       22     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     9                   1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     10                  0       22     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     10                  1        2     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     11                  0       17     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     11                  1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     12                  0       26     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     12                  1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                   0       13     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         2                   0       26     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         2                   1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         3                   0       21     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         3                   1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         4                   0       11     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         4                   1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         5                   0       22     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         5                   1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         6                   0       10     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         6                   1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         7                   0       19     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         7                   1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         8                   0       19     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         8                   1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         9                   0       31     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         9                   1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         10                  0       21     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         10                  1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         11                  0       20     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         11                  1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         12                  0       16     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         12                  1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                   0       18     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                   1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          2                   0       23     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          2                   1        0     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          3                   0       21     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          3                   1        2     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          4                   0       17     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          4                   1        0     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          5                   0        7     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          5                   1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          6                   0       16     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          6                   1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          7                   0       23     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          7                   1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          8                   0       21     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          8                   1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          9                   0       23     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          9                   1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          10                  0       25     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          10                  1        0     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          11                  0       23     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          11                  1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          12                  0       19     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          12                  1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                   0       25     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          2                   0       17     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          2                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          3                   0       19     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          3                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          4                   0       19     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          4                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          5                   0       21     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          5                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          6                   0       17     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          6                   1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          7                   0       22     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          7                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          8                   0       19     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          8                   1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          9                   0       17     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          9                   1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          10                  0       22     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          10                  1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          11                  0       22     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          11                  1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          12                  0       16     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          12                  1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                   0       41     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           2                   0       26     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           2                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           3                   0       22     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           3                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           4                   0       20     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           4                   1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           5                   0       24     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           5                   1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           6                   0       21     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           6                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           7                   0       23     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           7                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           8                   0       19     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           8                   1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           9                   0       22     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           9                   1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           10                  0       26     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           10                  1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           11                  0       34     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           11                  1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           12                  0       21     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           12                  1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       38     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       34     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       20     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       12     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       15     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       20     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       26     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0       13     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       26     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       26     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        4     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       25     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        4     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       42     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        2     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       22     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       26     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       23     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0       11     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       16     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       19     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       25     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0       12     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       22     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       20     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       28     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       31     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        1     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       24     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       20     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       21     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       25     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        4     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       38     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                   1        7     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       31     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       29     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                   1        4     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       33     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        8     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       19     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        6     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       15     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        4     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       34     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                  1        6     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       24     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                  1        4     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   0       28     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   1        8     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                   0       21     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                   1        6     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                   0       26     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                   1        3     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                   0       22     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                   1        0     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                   0       18     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                   1        3     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                   0       29     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                   1        7     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                   0       27     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                   1        9     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                   0       37     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                   1        8     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                   0       21     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                   1        6     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                  0       30     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                  1        7     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                  0       32     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                  1        9     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                  0       41     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                  1       11     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   0       73     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   1       18     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       2                   0       70     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       2                   1       11     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       3                   0       34     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       3                   1        8     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       4                   0       25     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       4                   1        3     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       5                   0        2     377
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
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       11                  0       43     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       11                  1        6     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       12                  0       79     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       12                  1        5     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                   0        6     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                   1        2     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       2                   0       10     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       2                   1        2     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       3                   0       13     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       3                   1        1     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       4                   0       19     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       4                   1       15     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       5                   0       30     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       5                   1        5     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       6                   0       44     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       6                   1        8     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       7                   0       35     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       7                   1        4     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       8                   0       32     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       8                   1        9     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       9                   0       21     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       9                   1        2     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       10                  0        4     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       10                  1        3     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       11                  0        5     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       11                  1        1     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       12                  0        3     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       12                  1        0     274
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
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      188    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       10    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      165    2384
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
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   0        2     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          2                   0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          2                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          3                   0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          3                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          4                   0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          4                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          5                   0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          5                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          6                   0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          6                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          7                   0       92     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          7                   1       37     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          8                   0      193     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          8                   1       40     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          9                   0      169     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          9                   1       39     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          10                  0       13     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          10                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          11                  0        3     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          11                  1        1     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          12                  0        1     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          12                  1        0     590
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
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                   0       13     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         2                   0        7     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         2                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         3                   0       14     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         3                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         4                   0       10     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         4                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         5                   0        5     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         5                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         6                   0        6     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         6                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         7                   0        4     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         7                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         8                   0       13     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         8                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         9                   0        9     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         9                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         10                  0       16     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         10                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         11                  0       12     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         11                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         12                  0       10     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         12                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                   0       41    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                   1        3    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                   0      158    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                   1        8    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                   0      153    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                   1        9    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                   0      255    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                   1       11    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                   0      181    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                   1        4    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                   0       91    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                   1        6    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                   0       95    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                   1        1    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                   0       84    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                   1        2    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                   0      154    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                   1        6    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                  0       61    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                  1        4    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                  0       58    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                  1        5    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                  0      107    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                  1        3    1500
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                   0       57     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                   1        0     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           2                   0      169     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           2                   1        0     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           3                   0      133     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           3                   1        1     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           4                   0       76     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           4                   1        2     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           5                   0       86     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           5                   1        2     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           6                   0       52     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           6                   1        1     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           7                   0       56     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           7                   1        0     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           8                   0       79     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           8                   1        0     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           9                   0       50     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           9                   1        1     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           10                  0       41     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           10                  1        0     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           11                  0       74     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           11                  1        0     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           12                  0       48     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           12                  1        0     928
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
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1283   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       47   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      979   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       40   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                   0     1071   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                   1       47   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      986   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                   1       29   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      953   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                   1       41   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                   0     1082   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                   1       40   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                   0     1110   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                   1       36   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                   0     1149   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                   1       46   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                   0     1252   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                   1       36   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                  0     1001   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                  1       26   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                  0     1084   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                  1       34   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                  0     1181   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                  1       46   13599
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                   0       55     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                   1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         2                   0      111     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         2                   1        3     837
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2443   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       64   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2027   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                   1       66   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     2353   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                   1       68   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1739   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                   1       78   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                   0     1328   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                   1       55   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                   0     1277   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                   1       60   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1445   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                   1       68   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1893   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                   1       81   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                   0     2514   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                   1       77   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                  0     2768   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                  1      120   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                  0     2839   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                  1       92   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                  0     2960   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                  1      118   26533
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
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                   0       21     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     2                   0       24     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     2                   1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     3                   0       24     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     3                   1        3     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     4                   0       20     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     4                   1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     5                   0       21     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     5                   1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     6                   0        9     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     6                   1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     7                   0       21     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     7                   1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     8                   0       25     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     8                   1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     9                   0       23     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     9                   1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     10                  0       23     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     10                  1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     11                  0       17     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     11                  1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     12                  0       27     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     12                  1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                   0       13     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         2                   0       26     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         2                   1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         3                   0       21     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         3                   1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         4                   0       11     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         4                   1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         5                   0       22     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         5                   1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         6                   0       10     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         6                   1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         7                   0       19     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         7                   1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         8                   0       19     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         8                   1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         9                   0       31     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         9                   1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         10                  0       21     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         10                  1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         11                  0       21     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         11                  1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         12                  0       16     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         12                  1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                   0       18     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                   1        1     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          2                   0       22     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          2                   1        0     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          3                   0       22     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          3                   1        1     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          4                   0       17     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          4                   1        0     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          5                   0        8     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          5                   1        0     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          6                   0       16     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          6                   1        1     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          7                   0       23     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          7                   1        1     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          8                   0       21     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          8                   1        1     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          9                   0       24     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          9                   1        0     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          10                  0       25     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          10                  1        0     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          11                  0       24     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          11                  1        0     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          12                  0       20     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          12                  1        0     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                   0       24     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          2                   0       17     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          2                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          3                   0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          3                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          4                   0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          4                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          5                   0       21     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          5                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          6                   0       18     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          6                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          7                   0       22     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          7                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          8                   0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          8                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          9                   0       17     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          9                   1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          10                  0       22     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          10                  1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          11                  0       22     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          11                  1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          12                  0       16     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          12                  1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                   0       41     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           2                   0       26     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           2                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           3                   0       22     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           3                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           4                   0       21     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           4                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           5                   0       24     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           5                   1        1     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           6                   0       21     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           6                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           7                   0       23     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           7                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           8                   0       20     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           8                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           9                   0       22     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           9                   1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           10                  0       26     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           10                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           11                  0       34     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           11                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           12                  0       21     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           12                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       38     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       34     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       20     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       12     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       15     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       20     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       26     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0       13     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       26     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       29     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        1     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       27     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       44     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       22     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       27     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       23     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0       11     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       17     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       19     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       25     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0       12     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       22     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       20     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       30     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       31     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        1     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       27     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       19     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       22     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        1     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       25     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       37     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                   1        6     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       28     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                   1        3     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       30     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                   1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       35     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        4     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       18     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        3     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       17     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       35     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                  1        4     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       27     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                  1        1     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   0       30     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   1        6     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          2                   0       23     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          2                   1        4     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          3                   0       25     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          3                   1        3     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          4                   0       21     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          4                   1        0     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          5                   0       18     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          5                   1        3     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          6                   0       28     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          6                   1        5     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          7                   0       28     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          7                   1        6     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          8                   0       35     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          8                   1        7     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          9                   0       22     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          9                   1        4     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          10                  0       28     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          10                  1        6     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          11                  0       34     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          11                  1        7     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          12                  0       41     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          12                  1        6     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   0       81     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   1        8     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       2                   0       78     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       2                   1        3     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       3                   0       41     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       3                   1        1     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       4                   0       26     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       4                   1        1     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       5                   0        2     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       5                   1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       6                   0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       6                   1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       7                   0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       7                   1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       8                   0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       8                   1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       9                   0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       9                   1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       10                  0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       10                  1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       11                  0       47     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       11                  1        2     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       12                  0       82     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       12                  1        1     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                   0        6     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                   1        2     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       2                   0       11     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       2                   1        1     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       3                   0       13     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       3                   1        1     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       4                   0       29     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       4                   1        5     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       5                   0       33     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       5                   1        2     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       6                   0       48     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       6                   1        3     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       7                   0       37     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       7                   1        2     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       8                   0       35     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       8                   1        5     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       9                   0       22     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       9                   1        1     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       10                  0        7     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       10                  1        0     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       11                  0        6     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       11                  1        0     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       12                  0        3     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       12                  1        0     272
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
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      195    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1        2    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      169    2376
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
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   0        2     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          2                   0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          2                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          3                   0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          3                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          4                   0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          4                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          5                   0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          5                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          6                   0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          6                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          7                   0      119     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          7                   1        4     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          8                   0      217     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          8                   1       10     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          9                   0      196     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          9                   1        2     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          10                  0       12     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          10                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          11                  0        3     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          11                  1        1     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          12                  0        1     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          12                  1        0     567
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
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                   0       13     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                   1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         2                   0        7     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         2                   1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         3                   0       14     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         3                   1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         4                   0        9     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         4                   1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         5                   0        5     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         5                   1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         6                   0        6     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         6                   1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         7                   0        4     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         7                   1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         8                   0       12     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         8                   1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         9                   0        9     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         9                   1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         10                  0       16     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         10                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         11                  0       12     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         11                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         12                  0       10     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         12                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                   0       25     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                   1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  2                   0      105     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  2                   1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  3                   0      110     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  3                   1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  4                   0      121     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  4                   1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  5                   0      116     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  5                   1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  6                   0       60     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  6                   1        2     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  7                   0       47     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  7                   1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  8                   0       51     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  8                   1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  9                   0      119     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  9                   1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  10                  0       46     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  10                  1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  11                  0       54     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  11                  1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  12                  0       97     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  12                  1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                   0       54     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                   1        0     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           2                   0       58     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           2                   1        0     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           3                   0       75     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           3                   1        1     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           4                   0       71     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           4                   1        1     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           5                   0       77     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           5                   1        1     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           6                   0       50     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           6                   1        1     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           7                   0       48     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           7                   1        0     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           8                   0       56     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           8                   1        0     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           9                   0       45     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           9                   1        0     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           10                  0       38     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           10                  1        0     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           11                  0       71     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           11                  1        0     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           12                  0       48     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           12                  1        0     695
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
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1286   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       14   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      978   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       11   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                   0     1083   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                   1       14   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      992   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                   1        9   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      977   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                   1        5   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                   0     1100   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                   1        9   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                   0     1115   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                   1       12   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                   0     1156   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                   1       19   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                   0     1248   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                   1       15   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                  0     1000   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                  1        4   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                  0     1079   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                  1        7   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                  0     1194   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                  1       12   13339
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2440   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       39   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2030   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                   1       41   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     2366   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                   1       29   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1752   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                   1       36   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                   0     1342   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                   1       11   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                   0     1298   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                   1       18   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1480   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                   1       19   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1928   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                   1       31   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                   0     2531   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                   1       37   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                  0     2810   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                  1       55   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                  0     2853   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                  1       48   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                  0     2974   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                  1       70   26238
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
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                   0       18     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     2                   0       19     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     2                   1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     3                   0       24     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     3                   1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     4                   0       22     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     4                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     5                   0       21     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     5                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     6                   0        8     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     6                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     7                   0       20     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     7                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     8                   0       22     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     8                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     9                   0       20     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     9                   1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     10                  0       20     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     10                  1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     11                  0       15     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     11                  1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     12                  0       26     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     12                  1        1     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                   0       13     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         2                   0       23     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         2                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         3                   0       18     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         3                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         4                   0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         4                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         5                   0       19     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         5                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         6                   0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         6                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         7                   0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         7                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         8                   0       16     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         8                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         9                   0       28     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         9                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         10                  0       20     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         10                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         11                  0       18     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         11                  1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         12                  0       13     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         12                  1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                   0       18     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          2                   0       20     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          2                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          3                   0       21     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          3                   1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          4                   0       14     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          4                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          5                   0        7     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          5                   1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          6                   0       18     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          6                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          7                   0       23     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          7                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          8                   0       20     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          8                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          9                   0       20     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          9                   1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          10                  0       26     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          10                  1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          11                  0       24     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          11                  1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          12                  0       19     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          12                  1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                   0       25     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          2                   0       17     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          2                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          3                   0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          3                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          4                   0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          4                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          5                   0       20     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          5                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          6                   0       17     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          6                   1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          7                   0       21     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          7                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          8                   0       18     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          8                   1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          9                   0       16     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          9                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          10                  0       22     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          10                  1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          11                  0       23     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          11                  1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          12                  0       16     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          12                  1        0     235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                   0       37     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           2                   0       22     270
6-24 months                   ki0047075b-MAL-ED          PERU                           2                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           3                   0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           3                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           4                   0       19     270
6-24 months                   ki0047075b-MAL-ED          PERU                           4                   1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           5                   0       22     270
6-24 months                   ki0047075b-MAL-ED          PERU                           5                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           6                   0       19     270
6-24 months                   ki0047075b-MAL-ED          PERU                           6                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           7                   0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           7                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           8                   0       16     270
6-24 months                   ki0047075b-MAL-ED          PERU                           8                   1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           9                   0       22     270
6-24 months                   ki0047075b-MAL-ED          PERU                           9                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           10                  0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           10                  1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           11                  0       33     270
6-24 months                   ki0047075b-MAL-ED          PERU                           11                  1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           12                  0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           12                  1        0     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       32     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       27     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       18     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       12     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       12     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       17     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       23     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0        9     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       21     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       22     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        3     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       24     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       33     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        2     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       21     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       25     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       22     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0       10     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       15     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       19     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       25     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0       12     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       21     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       18     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       27     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        2     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       26     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        0     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       24     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       21     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       23     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       26     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       43     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          5                   1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       36     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          6                   1        0     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       31     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          7                   1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       36     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        5     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       22     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       17     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       38     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          11                  1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       26     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          12                  1        3     373
6-24 months                   ki1000108-IRC              INDIA                          1                   0       34     410
6-24 months                   ki1000108-IRC              INDIA                          1                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          2                   0       25     410
6-24 months                   ki1000108-IRC              INDIA                          2                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          3                   0       28     410
6-24 months                   ki1000108-IRC              INDIA                          3                   1        1     410
6-24 months                   ki1000108-IRC              INDIA                          4                   0       22     410
6-24 months                   ki1000108-IRC              INDIA                          4                   1        0     410
6-24 months                   ki1000108-IRC              INDIA                          5                   0       20     410
6-24 months                   ki1000108-IRC              INDIA                          5                   1        1     410
6-24 months                   ki1000108-IRC              INDIA                          6                   0       33     410
6-24 months                   ki1000108-IRC              INDIA                          6                   1        4     410
6-24 months                   ki1000108-IRC              INDIA                          7                   0       33     410
6-24 months                   ki1000108-IRC              INDIA                          7                   1        3     410
6-24 months                   ki1000108-IRC              INDIA                          8                   0       43     410
6-24 months                   ki1000108-IRC              INDIA                          8                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          9                   0       25     410
6-24 months                   ki1000108-IRC              INDIA                          9                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          10                  0       35     410
6-24 months                   ki1000108-IRC              INDIA                          10                  1        2     410
6-24 months                   ki1000108-IRC              INDIA                          11                  0       39     410
6-24 months                   ki1000108-IRC              INDIA                          11                  1        2     410
6-24 months                   ki1000108-IRC              INDIA                          12                  0       47     410
6-24 months                   ki1000108-IRC              INDIA                          12                  1        5     410
6-24 months                   ki1000109-EE               PAKISTAN                       1                   0       79     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                   1       11     375
6-24 months                   ki1000109-EE               PAKISTAN                       2                   0       72     375
6-24 months                   ki1000109-EE               PAKISTAN                       2                   1        8     375
6-24 months                   ki1000109-EE               PAKISTAN                       3                   0       34     375
6-24 months                   ki1000109-EE               PAKISTAN                       3                   1        7     375
6-24 months                   ki1000109-EE               PAKISTAN                       4                   0       25     375
6-24 months                   ki1000109-EE               PAKISTAN                       4                   1        4     375
6-24 months                   ki1000109-EE               PAKISTAN                       5                   0        2     375
6-24 months                   ki1000109-EE               PAKISTAN                       5                   1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       6                   0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       6                   1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       7                   0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       7                   1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       8                   0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       8                   1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       9                   0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       9                   1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       10                  0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       10                  1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       11                  0       45     375
6-24 months                   ki1000109-EE               PAKISTAN                       11                  1        4     375
6-24 months                   ki1000109-EE               PAKISTAN                       12                  0       79     375
6-24 months                   ki1000109-EE               PAKISTAN                       12                  1        5     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                   0        7     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                   1        0     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       2                   0       10     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       2                   1        1     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       3                   0       14     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       3                   1        0     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       4                   0       14     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       4                   1       10     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       5                   0       27     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       5                   1        4     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       6                   0       37     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       6                   1        7     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       7                   0       29     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       7                   1        2     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       8                   0       30     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       8                   1        4     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       9                   0       20     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       9                   1        1     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       10                  0        4     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       10                  1        3     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       11                  0        3     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       11                  1        1     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       12                  0        2     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       12                  1        0     230
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
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                   0       47     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                   1        5     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                   0       46     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                   1        3     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                   0       46     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                   1        5     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                   0       41     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                   1        4     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                   0       38     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                   1        4     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                   0       36     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                   1        4     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                   0       42     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                   1        3     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                   0       32     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                   1        5     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                   0       27     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                   1        2     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                  0       47     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                  1        6     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                  0       45     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                  1        3     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                  0       47     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                  1        3     541
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      190    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        9    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      127    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1        6    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      143    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1        7    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      132    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1        6    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      150    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1        8    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      135    2018
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
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   0        2     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          2                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          2                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          3                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          3                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          4                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          4                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          5                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          5                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          6                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          6                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          7                   0       90     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          7                   1       36     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          8                   0      198     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          8                   1       33     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          9                   0      170     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          9                   1       42     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          10                  0       13     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          10                  1        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          11                  0        3     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          11                  1        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          12                  0        1     590
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
6-24 months                   ki1114097-CMIN             BRAZIL                         1                   0       13     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         2                   0        7     119
6-24 months                   ki1114097-CMIN             BRAZIL                         2                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         3                   0       14     119
6-24 months                   ki1114097-CMIN             BRAZIL                         3                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         4                   0       10     119
6-24 months                   ki1114097-CMIN             BRAZIL                         4                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         5                   0        5     119
6-24 months                   ki1114097-CMIN             BRAZIL                         5                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         6                   0        6     119
6-24 months                   ki1114097-CMIN             BRAZIL                         6                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         7                   0        4     119
6-24 months                   ki1114097-CMIN             BRAZIL                         7                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         8                   0       13     119
6-24 months                   ki1114097-CMIN             BRAZIL                         8                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         9                   0        9     119
6-24 months                   ki1114097-CMIN             BRAZIL                         9                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         10                  0       16     119
6-24 months                   ki1114097-CMIN             BRAZIL                         10                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         11                  0       12     119
6-24 months                   ki1114097-CMIN             BRAZIL                         11                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         12                  0       10     119
6-24 months                   ki1114097-CMIN             BRAZIL                         12                  1        0     119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                   0       41    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                   1        3    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                   0      156    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                   1        8    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                   0      151    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                   1        9    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                   0      254    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                   1       11    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                   0      179    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                   1        4    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                   0       91    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                   1        4    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                   0       94    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                   1        2    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                   0       80    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                   1        5    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                   0      148    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                   1        7    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                  0       59    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                  1        5    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                  0       55    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                  1        6    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                  0      107    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                  1        3    1482
6-24 months                   ki1114097-CMIN             PERU                           1                   0       47     878
6-24 months                   ki1114097-CMIN             PERU                           1                   1        0     878
6-24 months                   ki1114097-CMIN             PERU                           2                   0      165     878
6-24 months                   ki1114097-CMIN             PERU                           2                   1        1     878
6-24 months                   ki1114097-CMIN             PERU                           3                   0      129     878
6-24 months                   ki1114097-CMIN             PERU                           3                   1        0     878
6-24 months                   ki1114097-CMIN             PERU                           4                   0       74     878
6-24 months                   ki1114097-CMIN             PERU                           4                   1        2     878
6-24 months                   ki1114097-CMIN             PERU                           5                   0       85     878
6-24 months                   ki1114097-CMIN             PERU                           5                   1        1     878
6-24 months                   ki1114097-CMIN             PERU                           6                   0       51     878
6-24 months                   ki1114097-CMIN             PERU                           6                   1        0     878
6-24 months                   ki1114097-CMIN             PERU                           7                   0       55     878
6-24 months                   ki1114097-CMIN             PERU                           7                   1        0     878
6-24 months                   ki1114097-CMIN             PERU                           8                   0       75     878
6-24 months                   ki1114097-CMIN             PERU                           8                   1        0     878
6-24 months                   ki1114097-CMIN             PERU                           9                   0       48     878
6-24 months                   ki1114097-CMIN             PERU                           9                   1        1     878
6-24 months                   ki1114097-CMIN             PERU                           10                  0       35     878
6-24 months                   ki1114097-CMIN             PERU                           10                  1        0     878
6-24 months                   ki1114097-CMIN             PERU                           11                  0       67     878
6-24 months                   ki1114097-CMIN             PERU                           11                  1        0     878
6-24 months                   ki1114097-CMIN             PERU                           12                  0       42     878
6-24 months                   ki1114097-CMIN             PERU                           12                  1        0     878
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
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1024   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       34   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      773   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       32   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      836   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                   1       34   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      788   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                   1       21   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      728   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                   1       36   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      840   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                   1       32   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      863   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                   1       25   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      888   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                   1       27   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                   0      986   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                   1       21   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      765   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                  1       24   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      863   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                  1       27   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      971   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                  1       34   10672
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                   0       55     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                   1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         2                   0      111     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         2                   1        3     826
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1361   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       30   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1202   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                   1       26   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1426   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                   1       41   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1181   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                   1       47   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                   0     1164   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                   1       46   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                   0     1159   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                   1       48   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1228   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                   1       53   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1440   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                   1       55   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1558   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                   1       42   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1661   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                  1       69   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1688   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                  1       45   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                  0     1677   17298
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
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/31edb93d-eb3c-49f4-bff9-5f234f5e6154/891571db-c286-485b-9aeb-5e8912e24a00/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/31edb93d-eb3c-49f4-bff9-5f234f5e6154/891571db-c286-485b-9aeb-5e8912e24a00/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/31edb93d-eb3c-49f4-bff9-5f234f5e6154/891571db-c286-485b-9aeb-5e8912e24a00/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/31edb93d-eb3c-49f4-bff9-5f234f5e6154/891571db-c286-485b-9aeb-5e8912e24a00/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0505051    0.0199966   0.0810135
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0517241    0.0188103   0.0846380
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0697674    0.0316874   0.1078475
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0666667    0.0316484   0.1016849
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0482456    0.0204252   0.0760660
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0350877    0.0111990   0.0589765
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0398230    0.0143237   0.0653223
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0519481    0.0233238   0.0805723
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
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0353383    0.0254152   0.0452615
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0392542    0.0273301   0.0511782
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0420394    0.0302756   0.0538031
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0285714    0.0183219   0.0388209
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0412475    0.0288845   0.0536105
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0356506    0.0248009   0.0465003
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0314136    0.0213141   0.0415131
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0384937    0.0275856   0.0494019
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0279503    0.0189482   0.0369524
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0253165    0.0157089   0.0349240
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0304114    0.0203455   0.0404774
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0374898    0.0268606   0.0481190
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0255285    0.0189757   0.0320813
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0315337    0.0232309   0.0398365
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0280876    0.0210302   0.0351449
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0429279    0.0325707   0.0532851
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0397686    0.0282955   0.0512417
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0448766    0.0315870   0.0581662
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0449438    0.0342920   0.0555956
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0410334    0.0311111   0.0509558
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0297183    0.0226902   0.0367463
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0415512    0.0334928   0.0496097
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0313886    0.0242117   0.0385655
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0383366    0.0314394   0.0452337
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0157322    0.0105202   0.0209441
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0197972    0.0129950   0.0265994
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0121086    0.0073506   0.0168666
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0201342    0.0129669   0.0273016
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0081301    0.0035519   0.0127083
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0136778    0.0071508   0.0202048
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0126751    0.0071577   0.0181926
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0158244    0.0088715   0.0227773
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0144081    0.0089472   0.0198690
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0191972    0.0135901   0.0248043
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0165460    0.0114541   0.0216380
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0229961    0.0176148   0.0283774
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
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0321361    0.0215086   0.0427636
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0397516    0.0262545   0.0532486
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0390805    0.0262029   0.0519580
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0259580    0.0150003   0.0369156
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0471204    0.0320944   0.0621465
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0366972    0.0242174   0.0491771
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0281532    0.0172733   0.0390330
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0295082    0.0185428   0.0404736
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0208540    0.0120279   0.0296802
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0304183    0.0184346   0.0424019
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0303371    0.0190685   0.0416057
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0338308    0.0226527   0.0450090
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0215672    0.0133479   0.0297866
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0211726    0.0130757   0.0292696
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0279482    0.0190421   0.0368543
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0382736    0.0267182   0.0498290
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0380165    0.0253749   0.0506581
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0397680    0.0260255   0.0535105
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0413739    0.0302174   0.0525305
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0367893    0.0264335   0.0471451
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0262500    0.0182351   0.0342649
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0398844    0.0298166   0.0499521
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0259665    0.0175240   0.0344091
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0295139    0.0212750   0.0377527


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1145140   0.0913579   0.1376700
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0507550   0.0419422   0.0595679
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0120875   0.0084025   0.0157724
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0344143   0.0313504   0.0374782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0356914   0.0331158   0.0382671
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0107462   0.0070475   0.0144449
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0165409   0.0147291   0.0183527
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325150   0.0291498   0.0358802
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
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.9722222   0.4292140   2.2022024
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9956897   0.4290988   2.3104188
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.3430233   0.6183742   2.9168608
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2833333   0.5994102   2.7476084
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9287281   0.4183156   2.0619263
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.6754386   0.2813200   1.6217025
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7665929   0.3293741   1.7841861
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0000000   0.4587476   2.1798478
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
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1108095   0.7344874   1.6799441
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1896243   0.8002842   1.7683794
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8085106   0.5126682   1.2750732
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1672161   0.7740697   1.7600397
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0088368   0.6667824   1.5263627
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8889384   0.5800784   1.3622493
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0892905   0.7309487   1.6233064
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7909343   0.5159024   1.2125880
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.7164018   0.4468178   1.1486372
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8605793   0.5575473   1.3283120
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0608819   0.7118109   1.5811369
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.2352335   0.8561646   1.7821360
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.1002427   0.7711728   1.5697310
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.6815665   1.1774647   2.4014867
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.5578114   1.0706623   2.2666123
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.7579001   1.1816997   2.6150577
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.7605337   1.2323033   2.5151916
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.6073566   1.1360975   2.2740963
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.1641198   0.8234245   1.6457792
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.6276402   1.1745485   2.2555157
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2295505   0.8778898   1.7220776
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.5017158   1.0928947   2.0634654
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.2583912   0.7882530   2.0089342
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.7696697   0.4611444   1.2846115
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.2798141   0.7803740   2.0988964
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.5167813   0.2717149   0.9828791
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.8694178   0.4943910   1.5289261
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8056824   0.4664091   1.3917486
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.0058638   0.5893133   1.7168491
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9158379   0.5629524   1.4899291
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.2202533   0.7851324   1.8965183
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0517328   0.6715338   1.6471874
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.4617238   0.9766765   2.1876603
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
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2369748   0.7700486   1.9870259
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2160920   0.7624636   1.9396068
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8077510   0.4724865   1.3809108
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.4662766   0.9261882   2.3213068
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1419320   0.7106072   1.8350625
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8760599   0.5267885   1.4569052
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9182257   0.5583552   1.5100394
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.6489281   0.3792544   1.1103566
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9465444   0.5659208   1.5831655
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9440185   0.5741074   1.5522721
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0527363   0.6596242   1.6801289
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9817047   0.5703916   1.6896183
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.2958646   0.7906168   2.1239936
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.7746200   1.0823750   2.9095980
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.7626997   1.0885067   2.8544705
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.8439105   1.0918869   3.1138810
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.9183711   1.2180248   3.0214060
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.7057971   1.0575849   2.7513099
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.2171250   0.7425119   1.9951104
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.8493064   1.1691040   2.9252607
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2039815   0.7517746   1.9281998
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.3684606   0.8500661   2.2029870


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0537103   -0.0998388   -0.0075819
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0011930   -0.0283634    0.0259774
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0053193   -0.0002799    0.0109184
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0009241   -0.0103366    0.0084885
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0101629    0.0037284    0.0165973
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0047376   -0.0012479    0.0107232
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0008087   -0.0041021    0.0057196
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0044954   -0.0703896    0.0793804
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0003789   -0.0097144    0.0104721
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0104018    0.0024486    0.0183550


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.4690285   -0.8573368   -0.1619027
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0235054   -0.7267651    0.3933377
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                 0.4400650   -0.4278014    0.7804126
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0268508   -0.3402300    0.2132526
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2847432    0.0822778    0.4425412
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                 0.4408660   -0.7053380    0.8166751
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0488937   -0.2995282    0.3038987
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0889819   -3.6594758    0.8218782
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0116527   -0.3530409    0.2780481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.3253712    0.0257480    0.5328477
