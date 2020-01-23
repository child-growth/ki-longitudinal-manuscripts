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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        month    ever_stunted   n_cell       n  outcome_variable 
---------------------------  -------------------------  -----------------------------  ------  -------------  -------  ------  -----------------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                   0        9     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                   1        9     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     2                   0        6     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     2                   1       12     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     3                   0        9     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     3                   1       12     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     4                   0       12     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     4                   1       10     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     5                   0        5     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     5                   1        9     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     6                   0        3     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     6                   1        5     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     7                   0        7     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     7                   1        7     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     8                   0       11     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     8                   1       12     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     9                   0        8     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     9                   1       11     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     10                  0       13     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     10                  1        6     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     11                  0        9     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     11                  1        7     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     12                  0       11     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     12                  1       14     217  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                   0       12     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         2                   0       17     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         2                   1        5     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         3                   0       13     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         3                   1        3     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         4                   0       11     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         4                   1        2     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         5                   0       15     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         5                   1        1     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         6                   0       11     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         6                   1        3     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         7                   0       10     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         7                   1        5     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         8                   0       11     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         8                   1        3     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         9                   0       19     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         9                   1        2     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         10                  0       20     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         10                  1        5     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         11                  0       17     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         11                  1        0     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         12                  0       14     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         12                  1        2     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                   0        7     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                   1        7     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          2                   0       10     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          2                   1       14     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          3                   0       12     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          3                   1        7     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          4                   0        6     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          4                   1       12     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          5                   0        3     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          5                   1        3     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          6                   0       10     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          6                   1        8     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          7                   0       11     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          7                   1        8     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          8                   0        8     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          8                   1        7     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          9                   0        7     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          9                   1       12     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          10                  0       12     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          10                  1       11     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          11                  0        5     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          11                  1       13     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          12                  0        8     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          12                  1        9     210  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                   0       11     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                   1        6     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          2                   0       13     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          2                   1        3     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          3                   0        9     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          3                   1       10     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          4                   0       13     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          4                   1        4     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          5                   0       15     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          5                   1        5     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          6                   0       13     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          6                   1        5     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          7                   0       15     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          7                   1        3     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          8                   0       13     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          8                   1        3     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          9                   0       16     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          9                   1        2     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          10                  0       16     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          10                  1        1     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          11                  0       11     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          11                  1        6     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          12                  0       11     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          12                  1        7     211  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                   0       17     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                   1       17     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           2                   0       10     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           2                   1       16     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           3                   0       11     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           3                   1        8     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           4                   0        7     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           4                   1        9     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           5                   0        8     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           5                   1       15     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           6                   0        8     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           6                   1       11     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           7                   0        5     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           7                   1       16     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           8                   0       10     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           8                   1        9     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           9                   0        9     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           9                   1       13     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           10                  0       14     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           10                  1       10     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           11                  0       11     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           11                  1       16     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           12                  0        5     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           12                  1       11     266  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       10     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       24     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       16     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1       20     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       14     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        6     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0        8     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        4     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0        5     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        5     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       17     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        6     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       12     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1       13     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0        3     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        7     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       12     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        7     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       11     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1       15     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       12     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1       13     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       18     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1       17     275  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1       13     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        7     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       17     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        3     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1       18     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0        3     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        6     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0        3     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1       12     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0        1     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1       11     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0        4     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1       21     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0        3     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        9     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0        3     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1       10     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0        1     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1       14     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0        0     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1       25     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0        6     219  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1       23     219  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        1     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       17     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0        1     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       14     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        0     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       22     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          4                   0        2     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          4                   1       22     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          5                   0        5     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          5                   1       36     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          6                   0        3     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          6                   1       28     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          7                   0        5     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          7                   1       25     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          8                   0        2     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          8                   1       30     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          9                   0        2     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          9                   1       12     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          10                  0        0     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          10                  1       14     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          11                  0        5     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          11                  1       28     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          12                  0        2     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          12                  1       20     296  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                   0       11     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                   1       17     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          2                   0       10     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          2                   1       17     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          3                   0        8     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          3                   1       17     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          4                   0        5     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          4                   1       17     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          5                   0        4     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          5                   1       16     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          6                   0       15     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          6                   1       15     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          7                   0       14     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          7                   1       17     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          8                   0       20     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          8                   1       18     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          9                   0       11     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          9                   1       16     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          10                  0       20     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          10                  1       14     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          11                  0       16     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          11                  1       19     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          12                  0       13     360  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          12                  1       30     360  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                   0        9     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                   1       32     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       2                   0       11     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       2                   1       36     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       3                   0        4     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       3                   1       26     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       4                   0        1     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       4                   1        8     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       5                   0        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       5                   1        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       6                   0        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       6                   1        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       7                   0        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       7                   1        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       8                   0        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       8                   1        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       9                   0        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       9                   1        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       10                  0        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       10                  1        0     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       11                  0        6     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       11                  1       35     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       12                  0       10     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       12                  1       35     213  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                   0        0     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                   1        2     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       2                   0        0     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       2                   1        8     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       3                   0        4     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       3                   1        4     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       4                   0        5     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       4                   1       10     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       5                   0       11     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       5                   1       13     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       6                   0       17     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       6                   1       16     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       7                   0       16     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       7                   1       17     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       8                   0        8     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       8                   1       10     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       9                   0       23     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       9                   1       14     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       10                  0        7     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       10                  1        7     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       11                  0        4     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       11                  1        2     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       12                  0        2     202  ever_stunted     
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       12                  1        2     202  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                   0       32    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                   1       44    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          2                   0       34    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          2                   1       28    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          3                   0       32    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          3                   1       28    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          4                   0       22    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          4                   1       43    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          5                   0       27    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          5                   1       37    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          6                   0       40    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          6                   1       46    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          7                   0       32    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          7                   1       53    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          8                   0       36    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          8                   1       75    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          9                   0       68    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          9                   1       75    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          10                  0       49    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          10                  1       73    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          11                  0       51    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          11                  1       57    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          12                  0       50    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          12                  1       58    1090  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        5     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       24     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0        9     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       15     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          3                   0        8     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          3                   1       14     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          4                   0        4     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          4                   1       16     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          5                   0        6     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          5                   1       14     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          6                   0        9     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          6                   1       18     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          7                   0        3     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        7     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        1     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        8     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          10                  0        4     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          10                  1       13     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       11     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          11                  1       25     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       12     257  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          12                  1       31     257  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                   0       21     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                   1       29     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     2                   0       22     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     2                   1       28     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     3                   0       27     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     3                   1       27     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     4                   0       16     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     4                   1       28     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     5                   0       17     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     5                   1       24     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     6                   0       15     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     6                   1       26     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     7                   0       15     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     7                   1       27     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     8                   0       13     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     8                   1       25     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     9                   0       14     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     9                   1       14     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     10                  0       19     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     10                  1       31     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     11                  0       13     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     11                  1       31     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     12                  0       19     530  ever_stunted     
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     12                  1       29     530  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      152    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       62    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      108    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       42    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      132    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1       43    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      100    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1       49    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      129    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       55    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      110    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1       49    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      107    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       49    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      123    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       70    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      163    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       52    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      144    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1       68    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      142    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       68    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      157    2235  ever_stunted     
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       61    2235  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                   0      116    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                   1       93    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         2                   0      146    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         2                   1       99    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         3                   0      118    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         3                   1       94    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         4                   0      155    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         4                   1      128    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         5                   0      172    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         5                   1      104    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         6                   0      114    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         6                   1       95    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         7                   0       75    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         7                   1       88    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         8                   0       90    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         8                   1       69    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         9                   0       92    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         9                   1       87    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         10                  0      101    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         10                  1       97    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         11                  0      135    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         11                  1      137    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         12                  0      107    2595  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         12                  1       83    2595  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                   0        9     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        4     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      2                   0        9     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      2                   1        7     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      3                   0        6     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      3                   1       10     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      4                   0       14     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      4                   1       10     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      5                   0       17     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      5                   1       12     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      6                   0       17     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      6                   1       12     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      7                   0       12     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      7                   1        6     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      8                   0       10     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      8                   1        5     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      9                   0       18     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      9                   1        5     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      10                  0       15     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      10                  1        9     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      11                  0       16     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      11                  1        8     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      12                  0        5     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      12                  1        3     239  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      157    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       28    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   0      121    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   1       24    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   0      142    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   1       32    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   0      114    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   1       29    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   0      156    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   1       32    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   0      235    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   1       53    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   0      267    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   1       61    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   0      229    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   1       52    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   0      179    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   1       44    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  0      255    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  1       45    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  0      123    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  1       27    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  0      104    2533  ever_stunted     
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  1       24    2533  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                   0        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                   1        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          2                   0        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          2                   1        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          3                   0        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          3                   1        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          4                   0        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          4                   1        1     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          5                   0        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          5                   1        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          6                   0       65     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          6                   1       67     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          7                   0       89     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          7                   1      124     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          8                   0       98     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          8                   1      132     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          9                   0        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          9                   1        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          10                  0        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          10                  1        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          11                  0        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          11                  1        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          12                  0        0     576  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          12                  1        0     576  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                   0        2     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                   1       13     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     2                   0        6     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     2                   1       15     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     3                   0        6     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     3                   1       10     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     4                   0        3     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     4                   1       13     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     5                   0        4     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     5                   1       11     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     6                   0        1     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     6                   1        9     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     7                   0        2     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     7                   1        5     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     8                   0        2     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     8                   1       10     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     9                   0        2     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     9                   1        9     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     10                  0        3     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     10                  1        9     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     11                  0        2     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     11                  1        1     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     12                  0        8     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     12                  1       22     168  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                   0        8     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                   1        0     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           2                   0       11     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           2                   1        2     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           3                   0       24     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           3                   1        3     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           4                   0        9     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           4                   1        9     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           5                   0       17     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           5                   1        4     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           6                   0        9     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           6                   1        4     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           7                   0       10     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           7                   1        6     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           8                   0       19     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           8                   1        4     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           9                   0       12     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           9                   1        2     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           10                  0       15     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           10                  1        7     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           11                  0       12     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           11                  1        3     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           12                  0        6     197  ever_stunted     
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           12                  1        1     197  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                   0      960   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                   1      211   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        2                   0      788   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        2                   1      204   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        3                   0      963   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        3                   1      211   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        4                   0      953   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        4                   1      167   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        5                   0      975   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        5                   1      167   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        6                   0     1050   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        6                   1      162   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        7                   0     1258   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        7                   1      206   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        8                   0     1382   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        8                   1      223   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        9                   0     1339   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        9                   1      235   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        10                  0     1498   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        10                  1      287   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        11                  0     1422   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        11                  1      272   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        12                  0     1479   16742  ever_stunted     
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        12                  1      330   16742  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      784   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      405   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      597   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      302   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      644   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       3                   1      376   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      601   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       4                   1      325   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      557   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       5                   1      339   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      634   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       6                   1      388   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      687   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       7                   1      381   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      722   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       8                   1      424   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       9                   0      851   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       9                   1      397   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      645   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       10                  1      327   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      721   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       11                  1      336   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      760   12595  ever_stunted     
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       12                  1      392   12595  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                   0       22     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                   1       17     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         2                   0       46     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         2                   1       30     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         3                   0       33     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         3                   1       30     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         4                   0       32     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         4                   1       29     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         5                   0       40     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         5                   1       32     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         6                   0       30     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         6                   1       32     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         7                   0       25     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         7                   1       15     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         8                   0       16     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         8                   1       12     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         9                   0       11     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         9                   1        7     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         10                  0       16     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         10                  1        5     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         11                  0       23     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         11                  1        9     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         12                  0       11     531  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         12                  1        8     531  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1252   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      396   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1088   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      370   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1361   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      390   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1045   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     4                   1      296   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     5                   0      750   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     5                   1      248   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     6                   0      707   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     6                   1      274   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     7                   0      821   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     7                   1      285   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1048   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     8                   1      345   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1385   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     9                   1      474   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1443   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     10                  1      502   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1366   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     11                  1      525   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     12                  0     1475   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     12                  1      530   18376  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                   0       26    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       14    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      150    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     2                   1       91    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      183    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      115    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     4                   0      362    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     4                   1      294    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     5                   0      243    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     5                   1      194    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     6                   0      184    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     6                   1      134    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     7                   0      365    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     7                   1      270    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     8                   0      232    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     8                   1      177    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     9                   0      247    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     9                   1      153    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     10                  0      162    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     10                  1       93    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     11                  0       86    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     11                  1       52    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     12                  0       39    3886  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     12                  1       20    3886  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                   0       17     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                   1        1     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     2                   0       12     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     2                   1        6     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     3                   0       14     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     3                   1        7     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     4                   0       21     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     4                   1        1     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     5                   0        9     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     5                   1        5     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     6                   0        7     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     6                   1        1     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     7                   0       12     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     7                   1        2     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     8                   0       17     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     8                   1        6     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     9                   0       15     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     9                   1        4     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     10                  0       15     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     10                  1        4     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     11                  0       13     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     11                  1        3     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     12                  0       18     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     12                  1        7     217  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                   0       12     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         2                   0       20     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         2                   1        2     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         3                   0       13     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         3                   1        3     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         4                   0       11     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         4                   1        2     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         5                   0       15     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         5                   1        1     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         6                   0       13     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         6                   1        1     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         7                   0       13     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         7                   1        2     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         8                   0       11     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         8                   1        3     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         9                   0       20     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         9                   1        1     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         10                  0       21     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         10                  1        4     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         11                  0       17     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         11                  1        0     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         12                  0       15     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         12                  1        1     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                   0       10     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                   1        4     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          2                   0       19     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          2                   1        5     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          3                   0       16     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          3                   1        3     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          4                   0       13     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          4                   1        5     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          5                   0        4     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          5                   1        2     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          6                   0       17     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          6                   1        1     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          7                   0       15     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          7                   1        4     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          8                   0       12     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          8                   1        3     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          9                   0       16     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          9                   1        3     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          10                  0       16     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          10                  1        7     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          11                  0       14     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          11                  1        4     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          12                  0       12     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          12                  1        5     210  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                   0       14     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                   1        3     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          2                   0       16     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          2                   1        0     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          3                   0       18     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          3                   1        1     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          4                   0       15     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          4                   1        2     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          5                   0       18     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          5                   1        2     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          6                   0       17     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          6                   1        1     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          7                   0       17     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          7                   1        1     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          8                   0       16     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          8                   1        0     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          9                   0       17     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          9                   1        1     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          10                  0       17     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          10                  1        0     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          11                  0       14     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          11                  1        3     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          12                  0       18     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          12                  1        0     211  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                   0       22     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                   1       12     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           2                   0       15     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           2                   1       11     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           3                   0       14     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           3                   1        5     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           4                   0       11     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           4                   1        5     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           5                   0       14     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           5                   1        9     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           6                   0       15     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           6                   1        4     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           7                   0       10     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           7                   1       11     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           8                   0       16     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           8                   1        3     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           9                   0       14     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           9                   1        8     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           10                  0       18     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           10                  1        6     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           11                  0       14     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           11                  1       13     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           12                  0       11     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           12                  1        5     266  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       19     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       15     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       28     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        8     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       15     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        5     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       11     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        1     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0        7     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        3     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       21     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        2     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       15     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1       10     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0        4     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        6     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       16     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        3     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       19     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        7     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       16     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        9     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       27     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        8     275  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       15     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        4     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       18     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        6     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        9     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1       12     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0        6     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        3     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       11     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        4     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0        9     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        3     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       17     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        8     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0        8     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        4     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       10     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        3     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       10     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        5     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       16     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        9     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       24     219  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        5     219  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        9     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        8     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0        9     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        6     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       15     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        7     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       16     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        8     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       28     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          5                   1       12     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       19     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          6                   1       11     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       18     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          7                   1       12     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       14     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          8                   1       17     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       10     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        4     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       10     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        4     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       20     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          11                  1       13     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       12     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          12                  1       10     292  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                   0       21     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                   1        7     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          2                   0       15     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          2                   1       12     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          3                   0       15     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          3                   1       10     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          4                   0       14     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          4                   1        8     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          5                   0       10     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          5                   1       10     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          6                   0       22     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          6                   1        8     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          7                   0       20     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          7                   1       11     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          8                   0       29     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          8                   1        9     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          9                   0       18     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          9                   1        9     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          10                  0       25     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          10                  1        9     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          11                  0       25     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          11                  1       10     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          12                  0       22     360  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          12                  1       21     360  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                   0       19     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                   1       22     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       2                   0       24     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       2                   1       23     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       3                   0       15     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       3                   1       15     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       4                   0        3     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       4                   1        6     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       5                   0        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       5                   1        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       6                   0        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       6                   1        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       7                   0        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       7                   1        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       8                   0        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       8                   1        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       9                   0        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       9                   1        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       10                  0        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       10                  1        0     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       11                  0       18     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       11                  1       23     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       12                  0       16     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       12                  1       29     213  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                   0        0     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                   1        2     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       2                   0        1     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       2                   1        7     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       3                   0        6     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       3                   1        2     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       4                   0        7     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       4                   1        8     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       5                   0       13     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       5                   1       11     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       6                   0       19     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       6                   1       14     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       7                   0       17     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       7                   1       16     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       8                   0       10     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       8                   1        8     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       9                   0       26     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       9                   1       11     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       10                  0        8     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       10                  1        6     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       11                  0        5     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       11                  1        1     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       12                  0        2     202  ever_stunted     
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       12                  1        2     202  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                   0       62    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                   1       14    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          2                   0       56    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          2                   1        6    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          3                   0       52    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          3                   1        8    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          4                   0       48    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          4                   1       17    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          5                   0       51    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          5                   1       13    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          6                   0       66    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          6                   1       19    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          7                   0       62    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          7                   1       23    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          8                   0       84    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          8                   1       27    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          9                   0      124    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          9                   1       19    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          10                  0      100    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          10                  1       22    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          11                  0       91    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          11                  1       17    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          12                  0       83    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          12                  1       25    1089  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       29     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       24     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        0     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          3                   0       21     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          3                   1        1     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          4                   0       20     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          4                   1        0     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          5                   0       19     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          5                   1        1     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          6                   0       26     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          6                   1        1     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          7                   0       10     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        0     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        9     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        0     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          10                  0       17     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          10                  1        0     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       36     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          11                  1        0     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       43     257  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          12                  1        0     257  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                   0       35     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                   1       15     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     2                   0       40     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     2                   1       10     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     3                   0       48     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     3                   1        6     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     4                   0       36     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     4                   1        8     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     5                   0       35     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     5                   1        6     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     6                   0       28     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     6                   1       13     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     7                   0       26     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     7                   1       16     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     8                   0       29     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     8                   1        9     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     9                   0       23     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     9                   1        5     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     10                  0       38     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     10                  1       12     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     11                  0       29     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     11                  1       15     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     12                  0       42     530  ever_stunted     
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     12                  1        6     530  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      186    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       28    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      134    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       16    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      160    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1       15    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      133    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1       16    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      161    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       23    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      135    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1       24    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      135    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       21    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      154    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       39    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      183    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       32    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      183    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1       29    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      170    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       40    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      195    2235  ever_stunted     
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       23    2235  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                   0      137    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                   1       51    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         2                   0      177    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         2                   1       45    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         3                   0      166    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         3                   1       33    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         4                   0      192    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         4                   1       57    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         5                   0      160    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         5                   1       37    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         6                   0      125    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         6                   1       40    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         7                   0       94    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         7                   1       38    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         8                   0       90    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         8                   1       34    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         9                   0      115    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         9                   1       46    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         10                  0      134    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         10                  1       45    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         11                  0      171    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         11                  1       74    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         12                  0      134    2234  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         12                  1       39    2234  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                   0       13     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      2                   0       15     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      2                   1        1     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      3                   0       13     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      3                   1        2     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      4                   0       18     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      4                   1        2     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      5                   0       21     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      5                   1        2     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      6                   0       26     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      6                   1        3     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      7                   0       17     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      7                   1        1     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      8                   0       12     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      8                   1        2     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      9                   0       19     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      9                   1        1     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      10                  0       20     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      10                  1        3     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      11                  0       22     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      11                  1        2     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      12                  0        6     223  ever_stunted     
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      12                  1        2     223  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                   0        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                   1        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          2                   0        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          2                   1        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          3                   0        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          3                   1        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          4                   0        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          4                   1        1     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          5                   0        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          5                   1        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          6                   0      112     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          6                   1       20     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          7                   0      178     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          7                   1       35     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          8                   0      186     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          8                   1       44     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          9                   0        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          9                   1        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          10                  0        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          10                  1        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          11                  0        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          11                  1        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          12                  0        0     576  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          12                  1        0     576  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                   0        9     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                   1        6     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     2                   0       16     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     2                   1        5     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     3                   0       12     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     3                   1        4     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     4                   0       10     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     4                   1        6     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     5                   0       13     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     5                   1        2     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     6                   0        8     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     6                   1        2     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     7                   0        6     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     7                   1        1     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     8                   0        9     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     8                   1        3     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     9                   0        7     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     9                   1        4     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     10                  0        7     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     10                  1        5     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     11                  0        2     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     11                  1        1     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     12                  0       21     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     12                  1        9     168  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                   0        8     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                   1        0     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           2                   0       13     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           2                   1        0     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           3                   0       24     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           3                   1        3     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           4                   0       11     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           4                   1        7     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           5                   0       18     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           5                   1        3     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           6                   0       10     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           6                   1        3     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           7                   0       12     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           7                   1        4     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           8                   0       20     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           8                   1        3     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           9                   0       13     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           9                   1        1     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           10                  0       19     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           10                  1        3     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           11                  0       12     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           11                  1        3     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           12                  0        7     197  ever_stunted     
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           12                  1        0     197  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                   0     1053   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                   1      118   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        2                   0      888   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        2                   1      104   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        3                   0     1069   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        3                   1      105   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        4                   0     1024   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        4                   1       96   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        5                   0     1047   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        5                   1       95   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        6                   0     1126   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        6                   1       86   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        7                   0     1342   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        7                   1      122   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        8                   0     1476   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        8                   1      129   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        9                   0     1423   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        9                   1      150   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        10                  0     1612   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        10                  1      172   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        11                  0     1530   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        11                  1      164   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        12                  0     1622   16740  ever_stunted     
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        12                  1      187   16740  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1008   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      178   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      771   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      126   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      855   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       3                   1      165   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      762   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       4                   1      164   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      709   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       5                   1      187   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      785   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       6                   1      237   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      851   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       7                   1      217   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      898   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       8                   1      248   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       9                   0     1061   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       9                   1      185   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      825   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       10                  1      144   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      904   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       11                  1      152   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      992   12584  ever_stunted     
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       12                  1      160   12584  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                   0        5     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                   1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         2                   0       31     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         2                   1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         3                   0       37     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         3                   1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         4                   0       29     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         4                   1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         5                   0       17     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         5                   1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         6                   0       19     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         6                   1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         7                   0       18     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         7                   1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         8                   0        4     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         8                   1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         9                   0        2     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         9                   1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         10                  0        2     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         10                  1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         11                  0        9     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         11                  1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         12                  0        2     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         12                  1        0     175  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1439   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      204   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1291   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      166   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1554   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      192   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1199   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     4                   1      135   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     5                   0      894   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     5                   1       99   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     6                   0      887   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     6                   1       88   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1004   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     7                   1      100   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1232   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     8                   1      160   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1584   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     9                   1      272   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1626   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     10                  1      315   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1557   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     11                  1      331   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     12                  0     1677   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     12                  1      326   18332  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                   0       35    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     2                   0      212    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     2                   1       25    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     3                   0      270    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     3                   1       21    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     4                   0      599    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     4                   1       54    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     5                   0      395    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     5                   1       41    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     6                   0      295    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     6                   1       23    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     7                   0      594    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     7                   1       41    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     8                   0      372    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     8                   1       36    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     9                   0      234    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     9                   1       38    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     10                  0      178    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     10                  1       25    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     11                  0      110    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     11                  1        9    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     12                  0       52    3659  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     12                  1        0    3659  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                   0        8     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                   1        8     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     2                   0        4     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     2                   1        6     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     3                   0        7     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     3                   1        5     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     4                   0       12     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     4                   1        9     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     5                   0        5     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     5                   1        4     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     6                   0        3     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     6                   1        4     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     7                   0        6     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     7                   1        5     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     8                   0       10     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     8                   1        6     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     9                   0        7     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     9                   1        7     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     10                  0       11     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     10                  1        2     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     11                  0        7     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     11                  1        4     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     12                  0       11     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     12                  1        7     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                   0       11     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                   1        0     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         2                   0       15     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         2                   1        3     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         3                   0       11     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         3                   1        0     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         4                   0        9     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         4                   1        0     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         5                   0       14     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         5                   1        0     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         6                   0       10     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         6                   1        2     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         7                   0        9     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         7                   1        3     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         8                   0        9     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         8                   1        0     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         9                   0       17     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         9                   1        1     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         10                  0       19     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         10                  1        1     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         11                  0       15     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         11                  1        0     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         12                  0       13     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         12                  1        1     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                   0        7     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                   1        3     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          2                   0        7     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          2                   1        9     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          3                   0       12     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          3                   1        4     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          4                   0        5     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          4                   1        7     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          5                   0        3     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          5                   1        1     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          6                   0        9     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          6                   1        7     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          7                   0       11     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          7                   1        4     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          8                   0        6     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          8                   1        4     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          9                   0        5     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          9                   1        9     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          10                  0       11     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          10                  1        4     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          11                  0        5     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          11                  1        9     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          12                  0        8     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          12                  1        4     154  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                   0       11     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                   1        3     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          2                   0       13     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          2                   1        3     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          3                   0        9     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          3                   1        9     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          4                   0       13     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          4                   1        2     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          5                   0       14     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          5                   1        3     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          6                   0       13     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          6                   1        4     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          7                   0       14     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          7                   1        2     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          8                   0       13     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          8                   1        3     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          9                   0       15     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          9                   1        1     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          10                  0       16     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          10                  1        1     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          11                  0       11     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          11                  1        3     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          12                  0       11     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          12                  1        7     194  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           1                   0       13     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           1                   1        5     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           2                   0        8     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           2                   1        5     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           3                   0       10     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           3                   1        3     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           4                   0        6     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           4                   1        4     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           5                   0        6     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           5                   1        6     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           6                   0        7     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           6                   1        7     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           7                   0        4     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           7                   1        5     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           8                   0        7     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           8                   1        6     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           9                   0        9     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           9                   1        5     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           10                  0        8     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           10                  1        4     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           11                  0        9     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           11                  1        3     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           12                  0        3     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           12                  1        6     149  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        7     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        9     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       11     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1       12     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        9     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        1     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0        7     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        3     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0        5     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        2     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       12     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        4     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0        9     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        3     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0        1     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        1     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0        8     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        4     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0        8     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        8     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0        9     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        4     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       12     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        9     158  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        4     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        9     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        7     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       11     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        2     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        6     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0        2     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        3     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0        2     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        8     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0        1     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        8     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0        4     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1       13     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0        3     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        5     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0        2     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        7     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0        1     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        9     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0        0     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1       16     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0        3     144  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1       18     144  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        1     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        9     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          2                   0        1     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        8     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        0     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       15     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          4                   0        2     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          4                   1       14     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          5                   0        5     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          5                   1       24     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          6                   0        3     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          6                   1       17     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          7                   0        5     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          7                   1       13     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          8                   0        2     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          8                   1       13     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          9                   0        2     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        9     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          10                  0        0     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          10                  1       10     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          11                  0        5     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          11                  1       15     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          12                  0        2     185  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          12                  1       10     185  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          1                   0       11     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          1                   1       10     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          2                   0       10     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          2                   1        5     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          3                   0        8     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          3                   1        7     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          4                   0        5     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          4                   1        9     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          5                   0        4     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          5                   1        6     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          6                   0       15     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          6                   1        7     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          7                   0       14     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          7                   1        6     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          8                   0       20     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          8                   1        9     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          9                   0       11     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          9                   1        7     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          10                  0       20     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          10                  1        5     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          11                  0       16     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          11                  1        9     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          12                  0       13     236  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          12                  1        9     236  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       1                   0        8      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       1                   1       10      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       2                   0       10      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       2                   1       13      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       3                   0        4      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       3                   1       11      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       4                   0        1      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       4                   1        2      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       5                   0        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       5                   1        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       6                   0        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       6                   1        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       7                   0        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       7                   1        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       8                   0        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       8                   1        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       9                   0        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       9                   1        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       10                  0        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       10                  1        0      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       11                  0        6      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       11                  1       12      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       12                  0       10      93  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       12                  1        6      93  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                   0        0      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                   1        0      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       2                   0        0      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       2                   1        2      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       3                   0        4      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       3                   1        3      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       4                   0        5      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       4                   1        2      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       5                   0        7      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       5                   1        2      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       6                   0       14      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       6                   1        2      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       7                   0       13      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       7                   1        1      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       8                   0        5      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       8                   1        2      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       9                   0       17      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       9                   1        3      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       10                  0        7      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       10                  1        1      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       11                  0        4      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       11                  1        1      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       12                  0        2      97  ever_stunted     
6-24 months                  ki1000109-ResPak           PAKISTAN                       12                  1        0      97  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                   0       23     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                   1       31     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          2                   0       28     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          2                   1       22     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          3                   0       29     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          3                   1       20     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          4                   0       20     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          4                   1       27     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          5                   0       26     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          5                   1       24     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          6                   0       35     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          6                   1       27     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          7                   0       28     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          7                   1       30     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          8                   0       30     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          8                   1       48     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          9                   0       61     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          9                   1       56     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          10                  0       38     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          10                  1       51     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          11                  0       42     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          11                  1       40     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          12                  0       44     813  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          12                  1       33     813  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        4     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       25     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          2                   0        7     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       16     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          3                   0        5     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          3                   1       13     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          4                   0        3     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          4                   1       16     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          5                   0        6     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          5                   1       13     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          6                   0        8     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          6                   1       17     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          7                   0        3     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        7     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        0     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        8     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          10                  0        3     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          10                  1       13     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          11                  0        9     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          11                  1       25     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       11     243  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          12                  1       31     243  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                   0       13     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                   1       14     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     2                   0       13     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     2                   1       18     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     3                   0       17     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     3                   1       21     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     4                   0       11     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     4                   1       20     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     5                   0       13     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     5                   1       18     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     6                   0        9     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     6                   1       13     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     7                   0       12     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     7                   1       11     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     8                   0        9     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     8                   1       16     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     9                   0       10     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     9                   1        9     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     10                  0       14     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     10                  1       19     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     11                  0       11     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     11                  1       16     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     12                  0       15     345  ever_stunted     
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     12                  1       23     345  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      121    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       34    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       86    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       26    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      101    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1       28    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0       80    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1       33    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0       95    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       32    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0       77    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1       25    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0       80    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       28    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      106    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       31    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      137    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       20    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      121    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1       39    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      112    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       28    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      124    1602  ever_stunted     
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       38    1602  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         1                   0      105    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         1                   1       47    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         2                   0      137    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         2                   1       60    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         3                   0      108    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         3                   1       63    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         4                   0      138    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         4                   1       86    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         5                   0      154    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         5                   1       83    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         6                   0      105    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         6                   1       65    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         7                   0       69    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         7                   1       61    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         8                   0       85    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         8                   1       42    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         9                   0       87    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         9                   1       44    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         10                  0       91    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         10                  1       59    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         11                  0      120    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         11                  1       70    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         12                  0       94    2017  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         12                  1       44    2017  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                   0        6     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                   1        5     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      2                   0        8     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      2                   1        6     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      3                   0        3     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      3                   1        8     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      4                   0        9     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      4                   1        8     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      5                   0       15     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      5                   1       10     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      6                   0       15     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      6                   1       11     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      7                   0       11     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      7                   1        5     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      8                   0       10     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      8                   1        3     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      9                   0       17     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      9                   1        5     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      10                  0       10     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      10                  1        6     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      11                  0       13     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      11                  1        6     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      12                  0        4     195  ever_stunted     
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      12                  1        1     195  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      157    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       82    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   0      121    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   1       87    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   0      142    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   1       72    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   0      114    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   1       69    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   0      156    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   1      101    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   0      235    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   1      131    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   0      267    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   1      144    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   0      229    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   1      132    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   0      179    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   1      116    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  0      255    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  1      117    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  0      123    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  1       74    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  0      104    3265  ever_stunted     
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  1       58    3265  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                   0        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                   1        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          2                   0        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          2                   1        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          3                   0        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          3                   1        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          4                   0        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          4                   1        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          5                   0        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          5                   1        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          6                   0       34     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          6                   1       47     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          7                   0       61     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          7                   1       89     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          8                   0       78     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          8                   1       88     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          9                   0        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          9                   1        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          10                  0        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          10                  1        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          11                  0        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          11                  1        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          12                  0        0     397  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          12                  1        0     397  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                   0        2     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                   1        7     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     2                   0        3     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     2                   1       10     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     3                   0        6     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     3                   1        6     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     4                   0        2     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     4                   1        7     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     5                   0        3     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     5                   1        9     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     6                   0        1     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     6                   1        7     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     7                   0        2     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     7                   1        4     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     8                   0        2     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     8                   1        7     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     9                   0        1     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     9                   1        5     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     10                  0        2     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     10                  1        4     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     11                  0        0     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     11                  1        0     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     12                  0        8     111  ever_stunted     
6-24 months                  ki1114097-CMIN             BANGLADESH                     12                  1       13     111  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           1                   0        8     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           1                   1        0     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           2                   0       11     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           2                   1        2     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           3                   0       24     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           3                   1        0     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           4                   0        9     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           4                   1        2     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           5                   0       17     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           5                   1        1     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           6                   0        9     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           6                   1        1     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           7                   0       10     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           7                   1        2     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           8                   0       19     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           8                   1        1     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           9                   0       12     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           9                   1        1     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           10                  0       15     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           10                  1        4     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           11                  0       12     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           11                  1        0     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           12                  0        6     167  ever_stunted     
6-24 months                  ki1114097-CONTENT          PERU                           12                  1        1     167  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        1                   0      929   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        1                   1       93   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        2                   0      775   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        2                   1      100   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        3                   0      950   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        3                   1      107   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        4                   0      944   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        4                   1       71   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        5                   0      957   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        5                   1       72   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        6                   0     1022   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        6                   1       76   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        7                   0     1242   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        7                   1       84   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        8                   0     1353   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        8                   1       94   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        9                   0     1312   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        9                   1       85   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        10                  0     1466   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        10                  1      116   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        11                  0     1394   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        11                  1      108   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        12                  0     1458   14951  ever_stunted     
6-24 months                  ki1119695-PROBIT           BELARUS                        12                  1      143   14951  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      609    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      229    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      461    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      176    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      488    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       3                   1      211    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      477    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       4                   1      161    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      419    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       5                   1      153    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      488    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       6                   1      151    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      520    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       7                   1      164    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      531    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       8                   1      176    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       9                   0      649    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       9                   1      212    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      468    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       10                  1      184    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      551    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       11                  1      185    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      601    8497  ever_stunted     
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       12                  1      233    8497  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                   0       22     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                   1       31     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         2                   0       45     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         2                   1       53     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         3                   0       30     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         3                   1       45     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         4                   0       29     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         4                   1       58     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         5                   0       38     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         5                   1       61     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         6                   0       29     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         6                   1       52     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         7                   0       24     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         7                   1       36     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         8                   0       16     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         8                   1       25     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         9                   0       11     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         9                   1       16     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         10                  0       16     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         10                  1       16     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         11                  0       21     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         11                  1       25     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         12                  0       11     730  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         12                  1       20     730  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                   0      628   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                   1      195   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     2                   0      548   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     2                   1      205   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     3                   0      738   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     3                   1      199   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     4                   0      637   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     4                   1      162   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     5                   0      630   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     5                   1      154   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     6                   0      605   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     6                   1      187   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     7                   0      678   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     7                   1      186   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     8                   0      768   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     8                   1      188   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     9                   0      774   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     9                   1      202   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     10                  0      779   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     10                  1      189   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     11                  0      716   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     11                  1      196   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     12                  0      723   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     12                  1      206   10493  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                   0       26    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                   1       15    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     2                   0      150    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     2                   1       67    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     3                   0      183    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     3                   1       97    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     4                   0      360    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     4                   1      244    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     5                   0      240    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     5                   1      154    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     6                   0      184    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     6                   1      111    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     7                   0      363    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     7                   1      231    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     8                   0      232    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     8                   1      145    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     9                   0      247    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     9                   1      154    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     10                  0      162    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     10                  1       83    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     11                  0       85    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     11                  1       52    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     12                  0       38    3649  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     12                  1       26    3649  ever_stunted     


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/fa678ee6-1d2b-45d5-b240-7fa2620e79fa/f4b90116-11e1-4b9d-9261-cdf348e0a127/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa678ee6-1d2b-45d5-b240-7fa2620e79fa/f4b90116-11e1-4b9d-9261-cdf348e0a127/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa678ee6-1d2b-45d5-b240-7fa2620e79fa/f4b90116-11e1-4b9d-9261-cdf348e0a127/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa678ee6-1d2b-45d5-b240-7fa2620e79fa/f4b90116-11e1-4b9d-9261-cdf348e0a127/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    NA                0.5000000    0.3316177   0.6683823
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           2                    NA                0.6153846    0.4280293   0.8027399
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           3                    NA                0.4210526    0.1986311   0.6434742
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           4                    NA                0.5625000    0.3189679   0.8060321
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           5                    NA                0.6521739    0.4571603   0.8471875
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           6                    NA                0.5789474    0.3565258   0.8013689
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           7                    NA                0.7619048    0.5793967   0.9444128
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           8                    NA                0.4736842    0.2487493   0.6986191
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           9                    NA                0.5909091    0.3850714   0.7967468
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           10                   NA                0.4166667    0.2190548   0.6142786
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           11                   NA                0.5925926    0.4069077   0.7782775
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           12                   NA                0.6875000    0.4599550   0.9150450
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5789474    0.4847801   0.6731147
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4516129    0.2748262   0.6283996
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.4666667    0.2726021   0.6607312
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.6615385    0.5221742   0.8009027
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.5781250    0.4622900   0.6939600
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.5348837    0.4514631   0.6183044
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.6235294    0.4938888   0.7531700
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.6756757    0.5966129   0.7547384
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.5244755    0.4183826   0.6305685
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.5983607    0.5279506   0.6687708
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.5277778    0.3855395   0.6700161
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.5370370    0.4292288   0.6448453
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5800000    0.4430658   0.7169342
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.5600000    0.4222811   0.6977189
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5000000    0.3665154   0.6334846
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6363636    0.4940920   0.7786352
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.5853659    0.4344230   0.7363087
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.6341463    0.4865707   0.7817220
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.6428571    0.4978091   0.7879051
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.6578947    0.5069130   0.8088765
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.5000000    0.3146258   0.6853742
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.6200000    0.4853331   0.7546669
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.7045455    0.5696083   0.8394827
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.6041667    0.4656914   0.7426419
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2897196    0.2289282   0.3505110
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2800000    0.2081305   0.3518695
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2457143    0.1819159   0.3095126
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3288591    0.2534083   0.4043099
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2989130    0.2327532   0.3650729
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.3081761    0.2363894   0.3799628
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.3141026    0.2412494   0.3869557
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.3626943    0.2948504   0.4305382
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2418605    0.1846095   0.2991115
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.3207547    0.2579088   0.3836007
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.3238095    0.2605079   0.3871112
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2798165    0.2202125   0.3394205
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.4449761    0.3775880   0.5123641
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         2                    NA                0.4040816    0.3426239   0.4655394
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         3                    NA                0.4433962    0.3765106   0.5102819
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         4                    NA                0.4522968    0.3942975   0.5102961
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         5                    NA                0.3768116    0.3196309   0.4339922
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         6                    NA                0.4545455    0.3870264   0.5220645
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         7                    NA                0.5398773    0.4633490   0.6164057
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         8                    NA                0.4339623    0.3569106   0.5110139
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         9                    NA                0.4860335    0.4128007   0.5592663
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         10                   NA                0.4898990    0.4202555   0.5595425
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         11                   NA                0.5036765    0.4442465   0.5631065
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         12                   NA                0.4368421    0.3663026   0.5073816
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1513514    0.0707045   0.2319982
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.1655172    0.1135598   0.2174746
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.1839080    0.1111824   0.2566337
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.2027972    0.1115087   0.2940857
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.1702128    0.1028189   0.2376066
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.1840278    0.1291873   0.2388682
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.1859756    0.1246588   0.2472924
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.1850534    0.1253319   0.2447749
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.1973094    0.1206905   0.2739283
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1500000    0.0971895   0.2028105
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.1800000    0.1183049   0.2416951
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.1875000    0.1269371   0.2480629
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1801879    0.1466897   0.2136860
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        2                    NA                0.2056452    0.1699496   0.2413407
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        3                    NA                0.1797274    0.1494659   0.2099889
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        4                    NA                0.1491071    0.1214232   0.1767910
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        5                    NA                0.1462347    0.1128888   0.1795806
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        6                    NA                0.1336634    0.1043297   0.1629971
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        7                    NA                0.1407104    0.1123163   0.1691045
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        8                    NA                0.1389408    0.1170520   0.1608297
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        9                    NA                0.1493011    0.1212709   0.1773314
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        10                   NA                0.1607843    0.1360612   0.1855074
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        11                   NA                0.1605667    0.1341323   0.1870011
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        12                   NA                0.1824212    0.1487559   0.2160866
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3406224    0.3136836   0.3675612
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3359288    0.3050531   0.3668045
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.3686275    0.3390199   0.3982350
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.3509719    0.3202302   0.3817136
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.3783482    0.3465919   0.4101046
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.3796477    0.3498935   0.4094020
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.3567416    0.3280107   0.3854725
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.3699825    0.3420288   0.3979363
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.3181090    0.2922683   0.3439496
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.3364198    0.3067154   0.3661241
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.3178808    0.2898077   0.3459539
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.3402778    0.3129165   0.3676391
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4358974    0.2801230   0.5916719
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         2                    NA                0.3947368    0.2847409   0.5047328
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4761905    0.3527481   0.5996328
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         4                    NA                0.4754098    0.3499697   0.6008500
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4444444    0.3295594   0.5593295
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5161290    0.3916187   0.6406394
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         7                    NA                0.3750000    0.2248300   0.5251700
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         8                    NA                0.4285714    0.2450989   0.6120439
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         9                    NA                0.3888889    0.1634681   0.6143097
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         10                   NA                0.2380952    0.0557588   0.4204317
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         11                   NA                0.2812500    0.1253243   0.4371757
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         12                   NA                0.4210526    0.1988402   0.6432651
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2402913    0.2189836   0.2615989
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2537723    0.2304930   0.2770516
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2227299    0.2008325   0.2446272
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2207308    0.1991382   0.2423234
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2484970    0.2204043   0.2765897
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2793068    0.2483939   0.3102198
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2576854    0.2309961   0.2843746
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.2476669    0.2247560   0.2705778
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2549758    0.2331257   0.2768259
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.2580977    0.2369678   0.2792275
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2776309    0.2561587   0.2991031
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2643392    0.2449261   0.2837522
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3500000    0.2599959   0.4400041
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3775934    0.3090238   0.4461629
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3859060    0.3294595   0.4423525
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.4481707    0.4065333   0.4898082
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.4439359    0.3870578   0.5008140
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.4213836    0.3592866   0.4834807
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.4251969    0.3799958   0.4703979
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.4327628    0.3715388   0.4939869
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.3825000    0.3295618   0.4354382
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.3647059    0.3019479   0.4274639
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.3768116    0.2936746   0.4599486
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.3389831    0.2614471   0.4165190
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.2500000    0.0893896   0.4106104
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          2                    NA                0.4444444    0.2567538   0.6321351
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          3                    NA                0.4000000    0.2076963   0.5923037
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          4                    NA                0.3636364    0.1623441   0.5649286
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          5                    NA                0.5000000    0.2805644   0.7194356
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          6                    NA                0.2666667    0.1082041   0.4251292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          7                    NA                0.3548387    0.1861753   0.5235021
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          8                    NA                0.2368421    0.1014800   0.3722042
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          9                    NA                0.3333333    0.1552743   0.5113924
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          10                   NA                0.2647059    0.1162064   0.4132054
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          11                   NA                0.2857143    0.1358424   0.4355861
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          12                   NA                0.4883721    0.3387587   0.6379855
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1842105    0.1449283   0.2234927
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0967742    0.0142154   0.1793330
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.1333333    0.0123058   0.2543608
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2615385    0.1672358   0.3558412
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.2031250    0.0616028   0.3446472
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.2235294    0.1369995   0.3100593
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.2705882    0.1796156   0.3615609
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.2432432    0.1197908   0.3666957
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.1328671    0.0973393   0.1683950
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.1803279    0.1052111   0.2554447
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.1574074    0.1067622   0.2080526
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2314815    0.1557452   0.3072178
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3000000    0.1728598   0.4271402
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2000000    0.0890229   0.3109771
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.1111111    0.0272108   0.1950115
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.1818182    0.0677471   0.2958892
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.1463415    0.0380505   0.2546324
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.3170732    0.1745015   0.4596448
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3809524    0.2339478   0.5279570
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.2368421    0.1015405   0.3721437
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.1785714    0.0365774   0.3205655
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2400000    0.1215089   0.3584911
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.3409091    0.2007169   0.4811013
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1250000    0.0313524   0.2186476
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1308411    0.0856493   0.1760330
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1066667    0.0572560   0.1560773
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0857143    0.0442290   0.1271996
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1073826    0.0576602   0.1571049
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1250000    0.0772036   0.1727964
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1509434    0.0952861   0.2066007
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1346154    0.0810437   0.1881870
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2020725    0.1454092   0.2587359
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1488372    0.1012502   0.1964242
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1367925    0.0905260   0.1830589
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1904762    0.1373546   0.2435977
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1055046    0.0647157   0.1462935
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.2712766    0.2077063   0.3348468
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         2                    NA                0.2027027    0.1498084   0.2555970
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         3                    NA                0.1658291    0.1141427   0.2175156
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         4                    NA                0.2289157    0.1767200   0.2811113
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         5                    NA                0.1878173    0.1332657   0.2423688
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         6                    NA                0.2424242    0.1770202   0.3078283
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         7                    NA                0.2878788    0.2106214   0.3651362
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         8                    NA                0.2741935    0.1956567   0.3527304
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         9                    NA                0.2857143    0.2159177   0.3555109
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         10                   NA                0.2513966    0.1878307   0.3149626
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         11                   NA                0.3020408    0.2445352   0.3595464
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         12                   NA                0.2254335    0.1631518   0.2877153
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.1007686    0.0783536   0.1231836
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        2                    NA                0.1048387    0.0770231   0.1326543
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        3                    NA                0.0894378    0.0709347   0.1079410
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        4                    NA                0.0857143    0.0622379   0.1091906
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        5                    NA                0.0831874    0.0562826   0.1100922
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        6                    NA                0.0709571    0.0506837   0.0912305
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        7                    NA                0.0833333    0.0622516   0.1044151
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        8                    NA                0.0803738    0.0651893   0.0955584
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        9                    NA                0.0953592    0.0740073   0.1167110
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        10                   NA                0.0964126    0.0802544   0.1125708
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        11                   NA                0.0968123    0.0749662   0.1186584
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        12                   NA                0.1033720    0.0824398   0.1243043
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1500843    0.1297571   0.1704116
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1404682    0.1177283   0.1632082
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1617647    0.1391657   0.1843638
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1771058    0.1525164   0.2016953
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2087054    0.1820952   0.2353155
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2318982    0.2060222   0.2577743
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2031835    0.1790510   0.2273161
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2164049    0.1925624   0.2402474
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1484751    0.1287313   0.1682190
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1486068    0.1262099   0.1710037
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1439394    0.1227667   0.1651121
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1388889    0.1189178   0.1588600
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1241631    0.1072533   0.1410729
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1139327    0.0964061   0.1314594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1099656    0.0942909   0.1256403
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1011994    0.0851320   0.1172668
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0996979    0.0807106   0.1186852
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0902564    0.0685540   0.1119588
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0905797    0.0729319   0.1082275
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1149425    0.0970229   0.1328621
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1465517    0.1289229   0.1641805
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1622875    0.1446839   0.1798911
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.1753178    0.1563746   0.1942610
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.1627559    0.1466356   0.1788761
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5740741    0.4211639   0.7269843
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4400000    0.2551727   0.6248273
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.4081633    0.2574655   0.5588610
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.5744681    0.4678155   0.6811207
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.4800000    0.3256000   0.6344000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.4354839    0.3022176   0.5687501
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.5172414    0.3772212   0.6572615
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.6153846    0.5309626   0.6998066
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.4786325    0.3532520   0.6040130
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.5730337    0.4824840   0.6635835
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.4878049    0.3448685   0.6307413
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.4285714    0.3274070   0.5297358
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5185185    0.3297766   0.7072605
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.5806452    0.4066874   0.7546029
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5526316    0.3943111   0.7109521
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6451613    0.4764877   0.8138349
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.5806452    0.4066874   0.7546029
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5909091    0.3851603   0.7966579
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4782609    0.2738172   0.6827045
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.6400000    0.4515702   0.8284298
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4736842    0.2488464   0.6985220
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5757576    0.4068892   0.7446260
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5925926    0.4069878   0.7781974
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.6052632    0.4496263   0.7609001
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2193548    0.1541893   0.2845204
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2321429    0.1539274   0.3103583
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2170543    0.1458938   0.2882147
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2920354    0.2081729   0.3758979
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2519685    0.1764393   0.3274977
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.2450980    0.1615957   0.3286004
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2592593    0.1765847   0.3419339
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2262774    0.1561905   0.2963642
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1273885    0.0752199   0.1795572
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2437500    0.1772030   0.3102970
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2000000    0.1337204   0.2662796
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2345679    0.1692979   0.2998379
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.3092105    0.2357196   0.3827015
6-24 months                  ki1101329-Keneba           GAMBIA                         2                    NA                0.3045685    0.2402861   0.3688510
6-24 months                  ki1101329-Keneba           GAMBIA                         3                    NA                0.3684211    0.2961035   0.4407386
6-24 months                  ki1101329-Keneba           GAMBIA                         4                    NA                0.3839286    0.3202237   0.4476334
6-24 months                  ki1101329-Keneba           GAMBIA                         5                    NA                0.3502110    0.2894629   0.4109591
6-24 months                  ki1101329-Keneba           GAMBIA                         6                    NA                0.3823529    0.3092838   0.4554220
6-24 months                  ki1101329-Keneba           GAMBIA                         7                    NA                0.4692308    0.3834223   0.5550392
6-24 months                  ki1101329-Keneba           GAMBIA                         8                    NA                0.3307087    0.2488651   0.4125522
6-24 months                  ki1101329-Keneba           GAMBIA                         9                    NA                0.3358779    0.2549804   0.4167753
6-24 months                  ki1101329-Keneba           GAMBIA                         10                   NA                0.3933333    0.3151407   0.4715259
6-24 months                  ki1101329-Keneba           GAMBIA                         11                   NA                0.3684211    0.2998146   0.4370275
6-24 months                  ki1101329-Keneba           GAMBIA                         12                   NA                0.3188406    0.2410678   0.3966133
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3430962    0.2320838   0.4541087
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.4182692    0.3505524   0.4859861
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.3364486    0.2657634   0.4071338
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.3770492    0.2659299   0.4881684
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.3929961    0.3197182   0.4662740
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.3579235    0.2674723   0.4483747
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.3503650    0.2788362   0.4218937
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.3656510    0.2843337   0.4469683
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.3932203    0.3096227   0.4768180
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.3145161   -0.0387881   0.6678204
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.3756345    0.2869643   0.4643048
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.3580247    0.2966039   0.4194455
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0909980    0.0634625   0.1185335
6-24 months                  ki1119695-PROBIT           BELARUS                        2                    NA                0.1142857    0.0884084   0.1401631
6-24 months                  ki1119695-PROBIT           BELARUS                        3                    NA                0.1012299    0.0730804   0.1293794
6-24 months                  ki1119695-PROBIT           BELARUS                        4                    NA                0.0699507    0.0511429   0.0887586
6-24 months                  ki1119695-PROBIT           BELARUS                        5                    NA                0.0699708    0.0455718   0.0943699
6-24 months                  ki1119695-PROBIT           BELARUS                        6                    NA                0.0692168    0.0483692   0.0900643
6-24 months                  ki1119695-PROBIT           BELARUS                        7                    NA                0.0633484    0.0381507   0.0885462
6-24 months                  ki1119695-PROBIT           BELARUS                        8                    NA                0.0649620    0.0482972   0.0816268
6-24 months                  ki1119695-PROBIT           BELARUS                        9                    NA                0.0608447    0.0418263   0.0798630
6-24 months                  ki1119695-PROBIT           BELARUS                        10                   NA                0.0733249    0.0533114   0.0933384
6-24 months                  ki1119695-PROBIT           BELARUS                        11                   NA                0.0719041    0.0567608   0.0870475
6-24 months                  ki1119695-PROBIT           BELARUS                        12                   NA                0.0893192    0.0580899   0.1205485
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2732697    0.2430956   0.3034438
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2762951    0.2415678   0.3110225
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.3018598    0.2678261   0.3358935
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2523511    0.2186445   0.2860577
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2674825    0.2312054   0.3037596
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2363067    0.2033669   0.2692465
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2397661    0.2077688   0.2717634
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2489392    0.2170643   0.2808140
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2462253    0.2174474   0.2750032
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2822086    0.2476597   0.3167575
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2513587    0.2200173   0.2827001
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2793765    0.2489228   0.3098302
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    NA                0.5849057    0.4521588   0.7176525
6-24 months                  ki1148112-LCNI-5           MALAWI                         2                    NA                0.5408163    0.4420859   0.6395467
6-24 months                  ki1148112-LCNI-5           MALAWI                         3                    NA                0.6000000    0.4890517   0.7109483
6-24 months                  ki1148112-LCNI-5           MALAWI                         4                    NA                0.6666667    0.5675424   0.7657909
6-24 months                  ki1148112-LCNI-5           MALAWI                         5                    NA                0.6161616    0.5202989   0.7120243
6-24 months                  ki1148112-LCNI-5           MALAWI                         6                    NA                0.6419753    0.5374987   0.7464519
6-24 months                  ki1148112-LCNI-5           MALAWI                         7                    NA                0.6000000    0.4759560   0.7240440
6-24 months                  ki1148112-LCNI-5           MALAWI                         8                    NA                0.6097561    0.4603391   0.7591731
6-24 months                  ki1148112-LCNI-5           MALAWI                         9                    NA                0.5925926    0.4071299   0.7780552
6-24 months                  ki1148112-LCNI-5           MALAWI                         10                   NA                0.5000000    0.3266432   0.6733568
6-24 months                  ki1148112-LCNI-5           MALAWI                         11                   NA                0.5434783    0.3994364   0.6875201
6-24 months                  ki1148112-LCNI-5           MALAWI                         12                   NA                0.6451613    0.4766168   0.8137058
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2369380    0.2067922   0.2670839
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2722444    0.2370679   0.3074208
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2123799    0.1840560   0.2407038
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2027534    0.1741445   0.2313624
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1964286    0.1660966   0.2267605
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2361111    0.2049060   0.2673162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2152778    0.1862352   0.2443204
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1966527    0.1710671   0.2222384
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2069672    0.1785004   0.2354341
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1952479    0.1672066   0.2232892
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2149123    0.1857432   0.2440813
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2217438    0.1947509   0.2487367
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3658537    0.2654848   0.4662225
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3087558    0.2431847   0.3743268
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3464286    0.2814732   0.4113840
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.4039735    0.3625131   0.4454339
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.3908629    0.3287991   0.4529267
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.3762712    0.3109203   0.4416221
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.3888889    0.3445538   0.4332240
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.3846154    0.3190395   0.4501912
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.3840399    0.3312909   0.4367889
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.3387755    0.2691930   0.4083580
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.3795620    0.2865699   0.4725542
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.4062500    0.3143141   0.4981859


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5660550   0.5086421   0.6234680
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2988814   0.2798990   0.3178639
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4524085   0.4332546   0.4715624
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1780497   0.1518612   0.2042383
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3487098   0.3403867   0.3570329
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4256121   0.3835181   0.4677060
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2522312   0.2444909   0.2599715
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4135358   0.3953404   0.4317312
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1928375   0.1691727   0.2165022
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1369128   0.1226581   0.1511674
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2412713   0.2235253   0.2590172
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1718849   0.1652929   0.1784770
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1302640   0.1246817   0.1358464
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259675   0.2054816   0.2464534
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3589489   0.3380095   0.3798884
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2630340   0.2536720   0.2723961
6-24 months                  ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6000000   0.5644377   0.6355623
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2162394   0.2068628   0.2256160
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3779118   0.3593176   0.3965059


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           2                    1                 1.2307692   0.7816526   1.9379362
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           3                    1                 0.8421053   0.4500861   1.5755680
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           4                    1                 1.1250000   0.6500426   1.9469878
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           5                    1                 1.3043478   0.8313898   2.0463606
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           6                    1                 1.1578947   0.6946933   1.9299454
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           7                    1                 1.5238095   1.0079768   2.3036200
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           8                    1                 0.9473684   0.5292880   1.6956873
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           9                    1                 1.1818182   0.7279975   1.9185427
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           10                   1                 0.8333333   0.4658030   1.4908545
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           11                   1                 1.1851852   0.7481925   1.8774097
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           12                   1                 1.3750000   0.8575061   2.2047948
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7800587   0.4843982   1.2561804
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.8060606   0.5324446   1.2202842
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.1426573   0.9415774   1.3866792
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.9985795   0.8137707   1.2253588
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.9238901   0.7393301   1.1545220
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0770053   0.8079642   1.4356336
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1670762   0.9343920   1.4577038
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.9059123   0.7131571   1.1507661
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.0335320   0.8531019   1.2521229
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.9116162   0.6737889   1.2333892
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.9276094   0.6829505   1.2599145
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9655172   0.6866011   1.3577368
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8620690   0.6036212   1.2311743
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0971787   0.7926215   1.5187589
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.0092515   0.7114798   1.4316479
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0933558   0.7848561   1.5231159
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.1083744   0.7995731   1.5364371
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.1343013   0.8160864   1.5765970
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8620690   0.5554599   1.3379236
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.0689655   0.7756011   1.4732925
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.2147335   0.8962963   1.6463055
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 1.0416667   0.7495918   1.4475471
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9664516   0.6937439   1.3463595
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8481106   0.6073954   1.1842230
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1350942   0.8317714   1.5490299
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.0317321   0.7605237   1.3996555
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0637046   0.7774364   1.4553827
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.0841605   0.7929754   1.4822703
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2518803   0.9451098   1.6582246
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.8348087   0.6084289   1.1454183
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.1071211   0.8308378   1.4752786
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.1176651   0.8390029   1.4888809
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9658183   0.7162109   1.3024166
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         2                    1                 0.9080974   0.7326880   1.1255008
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         3                    1                 0.9964496   0.8046815   1.2339190
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         4                    1                 1.0164520   0.8335000   1.2395617
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         5                    1                 0.8468132   0.6834079   1.0492892
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         6                    1                 1.0215054   0.8262539   1.2628966
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         7                    1                 1.2132726   0.9859883   1.4929493
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         8                    1                 0.9752485   0.7722634   1.2315872
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         9                    1                 1.0922689   0.8821685   1.3524074
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         10                   1                 1.1009558   0.8944626   1.3551194
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         11                   1                 1.1319181   0.9341971   1.3714863
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         12                   1                 0.9817204   0.7867626   1.2249884
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.0935961   0.6053648   1.9755895
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.2151067   0.6120015   2.4125503
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.3399101   0.7310123   2.4559903
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.1246201   0.5918309   2.1370467
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.2158978   0.7395621   1.9990308
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.2287674   0.7118924   2.1209237
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.2226741   0.6426225   2.3262989
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.3036515   0.7205591   2.3585953
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9910714   0.5605672   1.7521942
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.1892857   0.6947181   2.0359343
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.2388393   0.6939323   2.2116318
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        2                    1                 1.1412819   0.9179096   1.4190116
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        3                    1                 0.9974446   0.8046790   1.2363883
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        4                    1                 0.8275093   0.6461537   1.0597658
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        5                    1                 0.8115678   0.6247104   1.0543161
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        6                    1                 0.7418000   0.5754340   0.9562648
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        7                    1                 0.7809093   0.6118576   0.9966686
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        8                    1                 0.7710886   0.6189630   0.9606027
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        9                    1                 0.8285860   0.6626634   1.0360535
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        10                   1                 0.8923148   0.7340679   1.0846759
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        11                   1                 0.8911072   0.7580404   1.0475325
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        12                   1                 1.0123946   0.8235179   1.2445908
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9862206   0.8736034   1.1133555
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0822174   0.9668540   1.2113458
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0303842   0.9156876   1.1594475
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1107556   0.9897689   1.2465315
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1145708   0.9971311   1.2458423
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0473228   0.9355332   1.1724705
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0861957   0.9736582   1.2117405
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9339051   0.8338070   1.0460199
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9876619   0.8772608   1.1119569
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9332352   0.8289069   1.0506946
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9989883   0.8924396   1.1182580
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         2                    1                 0.9055728   0.5755937   1.4247238
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         3                    1                 1.0924370   0.7025249   1.6987563
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         4                    1                 1.0906461   0.6994588   1.7006132
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         5                    1                 1.0196078   0.6559736   1.5848201
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         6                    1                 1.1840607   0.7693431   1.8223336
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         7                    1                 0.8602941   0.5029800   1.4714421
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         8                    1                 0.9831933   0.5629262   1.7172215
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         9                    1                 0.8921569   0.4515477   1.7627018
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         10                   1                 0.5462185   0.2346107   1.2717007
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         11                   1                 0.6452206   0.3336166   1.2478682
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         12                   1                 0.9659443   0.5106788   1.8270748
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0561029   0.9298029   1.1995589
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9269162   0.8162138   1.0526332
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9185969   0.8068974   1.0457589
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.0341491   0.8972567   1.1919268
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.1623678   1.0118593   1.3352637
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.0723875   0.9370007   1.2273364
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.0306946   0.9129238   1.1636583
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0611114   0.9410691   1.1964662
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0741035   0.9560513   1.2067326
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1553932   1.0275286   1.2991691
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.1000781   0.9802316   1.2345774
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 1.0788382   0.7920960   1.4693823
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.1025887   0.8226135   1.4778529
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.2804878   0.9741769   1.6831122
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.2683884   0.9572657   1.6806295
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.2039533   0.8986757   1.6129329
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.2148481   0.9132533   1.6160424
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 1.2364652   0.9218684   1.6584214
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.0928571   0.8177869   1.4604499
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 1.0420168   0.7656670   1.4181086
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 1.0766046   0.7689310   1.5073880
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 0.9685230   0.6881464   1.3631356
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          2                    1                 1.7777778   0.8241127   3.8350261
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          3                    1                 1.6000000   0.7171962   3.5694555
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          4                    1                 1.4545455   0.6229210   3.3964216
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          5                    1                 2.0000000   0.9186148   4.3543821
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          6                    1                 1.0666667   0.4445967   2.5591234
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          7                    1                 1.4193548   0.6382901   3.1561953
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          8                    1                 0.9473684   0.4009425   2.2384928
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          9                    1                 1.3333333   0.5782045   3.0746522
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          10                   1                 1.0588235   0.4512433   2.4844849
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          11                   1                 1.1428571   0.4986468   2.6193340
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          12                   1                 1.9534884   0.9587458   3.9803220
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.5253456   0.1972894   1.3988993
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.7238095   0.3006376   1.7426304
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.4197802   1.0185089   1.9791440
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.1026786   0.4644653   2.6178493
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.2134454   0.7608632   1.9352358
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.4689076   1.0345903   2.0855497
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.3204633   0.7642096   2.2816037
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.7212787   0.5459467   0.9529190
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9789227   0.5713465   1.6772480
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8544974   0.5894915   1.2386365
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 1.2566138   0.8752637   1.8041170
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.6666667   0.3316482   1.3401080
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.3703704   0.1558043   0.8804264
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6060606   0.2842525   1.2921942
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.4878049   0.2079217   1.1444384
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0569106   0.5697587   1.9605844
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.2698413   0.7158597   2.2525319
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.7894737   0.3876324   1.6078859
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.5952381   0.2417510   1.4655921
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8000000   0.4173608   1.5334454
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.1363636   0.6295880   2.0510592
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.4166667   0.1761866   0.9853823
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8152381   0.4574470   1.4528747
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6551022   0.3614747   1.1872448
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8207095   0.4605856   1.4624079
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.9553571   0.5706711   1.5993578
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1536388   0.6960661   1.9120058
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.0288462   0.6074373   1.7426070
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.5444115   0.9898045   2.4097758
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.1375415   0.7104963   1.8212631
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.0454852   0.6447216   1.6953664
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.4557823   0.9338969   2.2693106
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8063565   0.4801518   1.3541775
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         2                    1                 0.7472178   0.5261751   1.0611191
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         3                    1                 0.6112918   0.4138997   0.9028216
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         4                    1                 0.8438460   0.6085071   1.1702017
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         5                    1                 0.6923460   0.4767012   1.0055417
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         6                    1                 0.8936423   0.6251253   1.2774984
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         7                    1                 1.0612002   0.7431337   1.5154015
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         8                    1                 1.0107527   0.6981094   1.4634110
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         9                    1                 1.0532213   0.7507676   1.4775212
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         10                   1                 0.9267171   0.6564886   1.3081789
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         11                   1                 1.1134054   0.8232396   1.5058452
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         12                   1                 0.8310099   0.5784592   1.1938221
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        2                    1                 1.0403909   0.7794345   1.3887162
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        3                    1                 0.8875567   0.6820595   1.1549680
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        4                    1                 0.8506053   0.6399151   1.1306648
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        5                    1                 0.8255291   0.5737846   1.1877251
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        6                    1                 0.7041590   0.5096162   0.9729673
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        7                    1                 0.8269774   0.5956499   1.1481436
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        8                    1                 0.7976081   0.5984638   1.0630196
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        9                    1                 0.9463187   0.7097510   1.2617370
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        10                   1                 0.9567721   0.7479527   1.2238912
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        11                   1                 0.9607388   0.7730075   1.1940623
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        12                   1                 1.0258360   0.7783902   1.3519433
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9359288   0.7578370   1.1558721
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0778255   0.8872464   1.3093408
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.1800422   0.9719904   1.4326269
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.3905874   1.1545550   1.6748733
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.5451197   1.2964341   1.8415089
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.3537958   1.1306267   1.6210152
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.4418887   1.2108977   1.7169437
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9892780   0.8182504   1.1960532
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9901555   0.8085435   1.2125606
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9590569   0.7852478   1.1713373
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9254057   0.7595285   1.1275097
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9176053   0.7521251   1.1194941
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8856546   0.7324266   1.0709389
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8150520   0.6672785   0.9955511
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8029590   0.6373153   1.0116548
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7269181   0.5513822   0.9583370
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7295220   0.5757048   0.9244361
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9257381   0.7546406   1.1356280
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.1803161   0.9847193   1.4147647
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.3070506   1.1014839   1.5509817
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.4119958   1.1850744   1.6823687
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.3108230   1.1048684   1.5551688
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7664516   0.4212282   1.3946078
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.7109941   0.4341658   1.1643307
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.0006863   0.7003590   1.4297998
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.8361290   0.5503445   1.2703167
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.7585848   0.5010131   1.1485745
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          7                    1                 0.9010011   0.5764543   1.4082694
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.0719603   0.7731171   1.4863194
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.8337469   0.5515249   1.2603854
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9981877   0.7646611   1.3030332
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8497246   0.5204925   1.3872092
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.7465438   0.4896487   1.1382194
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.1198157   0.6988813   1.7942777
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     3                    1                 1.0657895   0.6706536   1.6937316
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.2442396   0.7948204   1.9477763
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.1198157   0.6988813   1.7942777
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.1396104   0.6886419   1.8859031
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9223602   0.5260949   1.6171008
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.2342857   0.7728455   1.9712365
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.9135338   0.5022805   1.6615101
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.1103896   0.6957592   1.7721146
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.1428571   0.7070360   1.8473211
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     12                   1                 1.1672932   0.7475317   1.8227634
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0582983   0.6753443   1.6584065
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9895121   0.6357390   1.5401511
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3313378   0.8807354   2.0124778
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.1486799   0.7532057   1.7517997
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1173587   0.7110193   1.7559163
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.1819172   0.7643811   1.8275287
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.0315586   0.6715902   1.5844680
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.5807419   0.3501551   0.9631763
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.1112132   0.7422847   1.6635057
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9117647   0.5842448   1.4228879
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0693537   0.7117800   1.6065600
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         2                    1                 0.9849876   0.7167800   1.3535541
6-24 months                  ki1101329-Keneba           GAMBIA                         3                    1                 1.1914894   0.8754244   1.6216670
6-24 months                  ki1101329-Keneba           GAMBIA                         4                    1                 1.2416413   0.9292018   1.6591371
6-24 months                  ki1101329-Keneba           GAMBIA                         5                    1                 1.1325972   0.8438953   1.5200657
6-24 months                  ki1101329-Keneba           GAMBIA                         6                    1                 1.2365457   0.9115105   1.6774850
6-24 months                  ki1101329-Keneba           GAMBIA                         7                    1                 1.5175123   1.1243318   2.0481885
6-24 months                  ki1101329-Keneba           GAMBIA                         8                    1                 1.0695259   0.7588820   1.5073300
6-24 months                  ki1101329-Keneba           GAMBIA                         9                    1                 1.0862433   0.7744116   1.5236399
6-24 months                  ki1101329-Keneba           GAMBIA                         10                   1                 1.2720567   0.9331250   1.7340960
6-24 months                  ki1101329-Keneba           GAMBIA                         11                   1                 1.1914894   0.8809698   1.6114593
6-24 months                  ki1101329-Keneba           GAMBIA                         12                   1                 1.0311440   0.7335203   1.4495276
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.2191018   0.8463538   1.7560140
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 0.9806246   0.6772252   1.4199480
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.0989604   0.7076688   1.7066092
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.1454399   0.8070908   1.6256318
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.0432160   0.7513606   1.4484387
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.0211857   0.6612213   1.5771122
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0657388   0.7267638   1.5628175
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.1460934   0.8594427   1.5283510
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9166994   0.2914643   2.8831585
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.0948372   0.8056243   1.4878752
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0435110   0.7333739   1.4848023
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1119695-PROBIT           BELARUS                        2                    1                 1.2559140   0.9015005   1.7496606
6-24 months                  ki1119695-PROBIT           BELARUS                        3                    1                 1.1124404   0.8021141   1.5428273
6-24 months                  ki1119695-PROBIT           BELARUS                        4                    1                 0.7687060   0.5142709   1.1490225
6-24 months                  ki1119695-PROBIT           BELARUS                        5                    1                 0.7689269   0.5100055   1.1592985
6-24 months                  ki1119695-PROBIT           BELARUS                        6                    1                 0.7606401   0.5222473   1.1078532
6-24 months                  ki1119695-PROBIT           BELARUS                        7                    1                 0.6961514   0.4400854   1.1012107
6-24 months                  ki1119695-PROBIT           BELARUS                        8                    1                 0.7138834   0.4870542   1.0463506
6-24 months                  ki1119695-PROBIT           BELARUS                        9                    1                 0.6686371   0.4621389   0.9674053
6-24 months                  ki1119695-PROBIT           BELARUS                        10                   1                 0.8057855   0.5655226   1.1481244
6-24 months                  ki1119695-PROBIT           BELARUS                        11                   1                 0.7901722   0.6009677   1.0389446
6-24 months                  ki1119695-PROBIT           BELARUS                        12                   1                 0.9815505   0.6563212   1.4679420
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0110713   0.8553095   1.1951991
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1046223   0.9433604   1.2934510
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9234507   0.7765153   1.0981899
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9788225   0.8217706   1.1658892
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8647382   0.7238601   1.0330340
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8773973   0.7378568   1.0433271
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9109652   0.7692586   1.0787759
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9010341   0.7672069   1.0582055
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0327109   0.8757492   1.2178050
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9198192   0.7786998   1.0865127
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0223472   0.8754137   1.1939426
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5           MALAWI                         2                    1                 0.9246215   0.6909855   1.2372545
6-24 months                  ki1148112-LCNI-5           MALAWI                         3                    1                 1.0258065   0.7654672   1.3746883
6-24 months                  ki1148112-LCNI-5           MALAWI                         4                    1                 1.1397849   0.8689386   1.4950536
6-24 months                  ki1148112-LCNI-5           MALAWI                         5                    1                 1.0534376   0.8000331   1.3871061
6-24 months                  ki1148112-LCNI-5           MALAWI                         6                    1                 1.0975707   0.8301295   1.4511728
6-24 months                  ki1148112-LCNI-5           MALAWI                         7                    1                 1.0258065   0.7546343   1.3944222
6-24 months                  ki1148112-LCNI-5           MALAWI                         8                    1                 1.0424862   0.7464776   1.4558742
6-24 months                  ki1148112-LCNI-5           MALAWI                         9                    1                 1.0131422   0.6882931   1.4913081
6-24 months                  ki1148112-LCNI-5           MALAWI                         10                   1                 0.8548387   0.5648293   1.2937524
6-24 months                  ki1148112-LCNI-5           MALAWI                         11                   1                 0.9291725   0.6554771   1.3171498
6-24 months                  ki1148112-LCNI-5           MALAWI                         12                   1                 1.1030177   0.7803530   1.5590996
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1490108   0.9514229   1.3876330
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8963522   0.7453700   1.0779175
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8557235   0.7070539   1.0356533
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8290293   0.6823147   1.0072912
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9965100   0.8329839   1.1921384
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.9085826   0.7541587   1.0946268
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8299753   0.6943713   0.9920615
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8735078   0.7277492   1.0484599
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.8240464   0.6836544   0.9932686
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9070400   0.7519505   1.0941167
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9358726   0.7881053   1.1113457
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.8439324   0.6005079   1.1860326
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.9469048   0.6809575   1.3167174
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.1041943   0.8235316   1.4805078
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.0683587   0.7823697   1.4588888
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.0284746   0.7454667   1.4189232
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.0629630   0.7814740   1.4458450
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 1.0512821   0.7596910   1.4547941
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.0497091   0.7732530   1.4250046
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 0.9259864   0.6582340   1.3026535
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 1.0374696   0.7197986   1.4953394
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 1.1104167   0.7793597   1.5821002


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0676692   -0.0893729   0.2247112
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0128923   -0.1175040   0.0917193
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0218868   -0.1083173   0.1520909
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0091618   -0.0487021   0.0670257
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0074324   -0.0571937   0.0720585
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0266984   -0.0408889   0.0942857
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0204101   -0.0487989   0.0079787
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0080874   -0.0175632   0.0337381
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0102854   -0.1601958   0.1396251
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0119399   -0.0079978   0.0318776
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0635358   -0.0255710   0.1526426
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                 0.0944444   -0.0611166   0.2500055
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0086269   -0.0375267   0.0547806
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0716981   -0.1916734   0.0482772
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0060716   -0.0369911   0.0491344
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0300053   -0.0906348   0.0306241
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0094902   -0.0297109   0.0107305
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0218006    0.0023387   0.0412626
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0061009   -0.0098274   0.0220292
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0709990   -0.2508039   0.1088058
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0553945   -0.1256536   0.2364426
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0066127   -0.0553912   0.0686166
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                 0.0497384   -0.0211514   0.1206282
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0192315   -0.0821913   0.1206543
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                -0.0141470   -0.0382455   0.0099515
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0102357   -0.0388457   0.0183744
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0150943   -0.1126853   0.1428739
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0206986   -0.0494943   0.0080970
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0120581   -0.0875813   0.1116975


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1192053   -0.2063217   0.3568886
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0227757   -0.2265857   0.1471691
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0363636   -0.2062033   0.2301505
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0306536   -0.1836331   0.2061456
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0164285   -0.1373161   0.1493896
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1499491   -0.3416600   0.4614235
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1277403   -0.3216421   0.0377136
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0231924   -0.0532070   0.0940499
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0241661   -0.4445459   0.2738782
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0473372   -0.0350772   0.1231896
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.1536403   -0.0914265   0.3436803
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                 0.2741935   -0.3515036   0.6102156
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0447368   -0.2236159   0.2542368
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.3140496   -0.9594055   0.1187499
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0443467   -0.3280842   0.3123379
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1243635   -0.4058917   0.1007891
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                -0.1039698   -0.3525936   0.0989537
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1268326    0.0060128   0.2329667
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0468349   -0.0836639   0.1616186
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1411301   -0.5726776   0.1719994
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0965208   -0.2812758   0.3629204
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0292639   -0.2878297   0.2682818
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                 0.1385668   -0.0833911   0.3150515
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0530776   -0.2723609   0.2952770
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                -0.1840833   -0.5465528   0.0934333
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0389139   -0.1535786   0.0643532
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0251572   -0.2128745   0.2164742
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0957209   -0.2374618   0.0297847
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0319072   -0.2710430   0.2626499
