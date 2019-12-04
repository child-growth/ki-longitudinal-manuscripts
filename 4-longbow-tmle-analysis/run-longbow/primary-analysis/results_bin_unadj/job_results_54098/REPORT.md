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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        brthmon    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        3    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        5    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0        4    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1        9    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0        8    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       16    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    0        4    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1        5    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    0        6    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1        6    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    0        1    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1        1    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    0        4    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1        9    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    0        1    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1        3    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    0        5    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1       16    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   0        3    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1        3    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   0        2    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1        2    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   0        3    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1        5    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        2     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    0        2     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1        3     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1        4     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1        2     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1        1     24
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        7    181
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        8    181
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    0        3    181
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1        4    181
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0        6    181
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       13    181
0-24 months   ki0047075b-MAL-ED          INDIA                          4                    0        5    181
0-24 months   ki0047075b-MAL-ED          INDIA                          4                    1        6    181
0-24 months   ki0047075b-MAL-ED          INDIA                          5                    0        2    181
0-24 months   ki0047075b-MAL-ED          INDIA                          5                    1        6    181
0-24 months   ki0047075b-MAL-ED          INDIA                          6                    0        7    181
0-24 months   ki0047075b-MAL-ED          INDIA                          6                    1        9    181
0-24 months   ki0047075b-MAL-ED          INDIA                          7                    0       11    181
0-24 months   ki0047075b-MAL-ED          INDIA                          7                    1       15    181
0-24 months   ki0047075b-MAL-ED          INDIA                          8                    0        5    181
0-24 months   ki0047075b-MAL-ED          INDIA                          8                    1       13    181
0-24 months   ki0047075b-MAL-ED          INDIA                          9                    0        8    181
0-24 months   ki0047075b-MAL-ED          INDIA                          9                    1        8    181
0-24 months   ki0047075b-MAL-ED          INDIA                          10                   0        6    181
0-24 months   ki0047075b-MAL-ED          INDIA                          10                   1       10    181
0-24 months   ki0047075b-MAL-ED          INDIA                          11                   0       10    181
0-24 months   ki0047075b-MAL-ED          INDIA                          11                   1       14    181
0-24 months   ki0047075b-MAL-ED          INDIA                          12                   0        1    181
0-24 months   ki0047075b-MAL-ED          INDIA                          12                   1        4    181
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        1     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        9     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0        0     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        7     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0        1     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        4     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                    0        3     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1       11     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                    0        4     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                    1       13     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                    0        3     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                    1        5     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                    0        3     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                    1        7     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                    0        3     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                    1        6     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                    0        1     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                    1        4     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                   0        0     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                   1        2     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                   0        1     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                   1        6     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                   0        0     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                   1        4     98
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        2     35
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        8     35
0-24 months   ki0047075b-MAL-ED          PERU                           2                    0        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           3                    0        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1        4     35
0-24 months   ki0047075b-MAL-ED          PERU                           4                    0        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           4                    1        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           5                    0        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           5                    1        3     35
0-24 months   ki0047075b-MAL-ED          PERU                           6                    0        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           6                    1        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           7                    0        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           7                    1        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           8                    0        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           8                    1        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           9                    0        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           9                    1        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           10                   0        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           10                   1        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           11                   0        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           11                   1        8     35
0-24 months   ki0047075b-MAL-ED          PERU                           12                   0        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           12                   1        0     35
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        4     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       16     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        0     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        6     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        0     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        2     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    0        1     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1        3     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    0        1     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1        3     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    0        1     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1        4     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    0        0     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1        4     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    0        0     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1        0     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    0        1     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1        2     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   0        3     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1       11     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   0        5     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1        7     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   0        2     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1       11     87
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        9     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        7     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        0     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1        2     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    0        0     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    0        0     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1        7     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1        0     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    0        0     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1        0     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1        0     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   0        2     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1        5     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1        9     51
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        9    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       19    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        3    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1        6    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       10    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       13    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    0       17    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1       18    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    0        9    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1       17    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    0       11    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1       25    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    0       16    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1        9    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    0        7    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1       14    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    0        6    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1       14    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   0        8    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1       23    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   0       14    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1       29    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   0       10    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1       17    324
0-24 months   ki1000108-IRC              INDIA                          1                    0       11    395
0-24 months   ki1000108-IRC              INDIA                          1                    1       21    395
0-24 months   ki1000108-IRC              INDIA                          2                    0       10    395
0-24 months   ki1000108-IRC              INDIA                          2                    1       12    395
0-24 months   ki1000108-IRC              INDIA                          3                    0       10    395
0-24 months   ki1000108-IRC              INDIA                          3                    1       13    395
0-24 months   ki1000108-IRC              INDIA                          4                    0        5    395
0-24 months   ki1000108-IRC              INDIA                          4                    1       15    395
0-24 months   ki1000108-IRC              INDIA                          5                    0       10    395
0-24 months   ki1000108-IRC              INDIA                          5                    1       13    395
0-24 months   ki1000108-IRC              INDIA                          6                    0       19    395
0-24 months   ki1000108-IRC              INDIA                          6                    1       18    395
0-24 months   ki1000108-IRC              INDIA                          7                    0       19    395
0-24 months   ki1000108-IRC              INDIA                          7                    1       23    395
0-24 months   ki1000108-IRC              INDIA                          8                    0       16    395
0-24 months   ki1000108-IRC              INDIA                          8                    1       26    395
0-24 months   ki1000108-IRC              INDIA                          9                    0       14    395
0-24 months   ki1000108-IRC              INDIA                          9                    1       18    395
0-24 months   ki1000108-IRC              INDIA                          10                   0       19    395
0-24 months   ki1000108-IRC              INDIA                          10                   1       23    395
0-24 months   ki1000108-IRC              INDIA                          11                   0       12    395
0-24 months   ki1000108-IRC              INDIA                          11                   1       20    395
0-24 months   ki1000108-IRC              INDIA                          12                   0       17    395
0-24 months   ki1000108-IRC              INDIA                          12                   1       31    395
0-24 months   ki1000109-EE               PAKISTAN                       1                    0       44    323
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       32    323
0-24 months   ki1000109-EE               PAKISTAN                       2                    0       24    323
0-24 months   ki1000109-EE               PAKISTAN                       2                    1       23    323
0-24 months   ki1000109-EE               PAKISTAN                       3                    0       23    323
0-24 months   ki1000109-EE               PAKISTAN                       3                    1       25    323
0-24 months   ki1000109-EE               PAKISTAN                       4                    0        8    323
0-24 months   ki1000109-EE               PAKISTAN                       4                    1        8    323
0-24 months   ki1000109-EE               PAKISTAN                       5                    0        0    323
0-24 months   ki1000109-EE               PAKISTAN                       5                    1        0    323
0-24 months   ki1000109-EE               PAKISTAN                       6                    0        0    323
0-24 months   ki1000109-EE               PAKISTAN                       6                    1        0    323
0-24 months   ki1000109-EE               PAKISTAN                       7                    0        0    323
0-24 months   ki1000109-EE               PAKISTAN                       7                    1        0    323
0-24 months   ki1000109-EE               PAKISTAN                       8                    0        0    323
0-24 months   ki1000109-EE               PAKISTAN                       8                    1        0    323
0-24 months   ki1000109-EE               PAKISTAN                       9                    0        0    323
0-24 months   ki1000109-EE               PAKISTAN                       9                    1        0    323
0-24 months   ki1000109-EE               PAKISTAN                       10                   0        0    323
0-24 months   ki1000109-EE               PAKISTAN                       10                   1        3    323
0-24 months   ki1000109-EE               PAKISTAN                       11                   0       34    323
0-24 months   ki1000109-EE               PAKISTAN                       11                   1       34    323
0-24 months   ki1000109-EE               PAKISTAN                       12                   0       27    323
0-24 months   ki1000109-EE               PAKISTAN                       12                   1       38    323
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0        2    204
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        2    204
0-24 months   ki1000109-ResPak           PAKISTAN                       2                    0        5    204
0-24 months   ki1000109-ResPak           PAKISTAN                       2                    1        4    204
0-24 months   ki1000109-ResPak           PAKISTAN                       3                    0       13    204
0-24 months   ki1000109-ResPak           PAKISTAN                       3                    1       11    204
0-24 months   ki1000109-ResPak           PAKISTAN                       4                    0       16    204
0-24 months   ki1000109-ResPak           PAKISTAN                       4                    1       12    204
0-24 months   ki1000109-ResPak           PAKISTAN                       5                    0       25    204
0-24 months   ki1000109-ResPak           PAKISTAN                       5                    1       14    204
0-24 months   ki1000109-ResPak           PAKISTAN                       6                    0       16    204
0-24 months   ki1000109-ResPak           PAKISTAN                       6                    1       14    204
0-24 months   ki1000109-ResPak           PAKISTAN                       7                    0       11    204
0-24 months   ki1000109-ResPak           PAKISTAN                       7                    1       14    204
0-24 months   ki1000109-ResPak           PAKISTAN                       8                    0       15    204
0-24 months   ki1000109-ResPak           PAKISTAN                       8                    1        8    204
0-24 months   ki1000109-ResPak           PAKISTAN                       9                    0        5    204
0-24 months   ki1000109-ResPak           PAKISTAN                       9                    1        8    204
0-24 months   ki1000109-ResPak           PAKISTAN                       10                   0        2    204
0-24 months   ki1000109-ResPak           PAKISTAN                       10                   1        3    204
0-24 months   ki1000109-ResPak           PAKISTAN                       11                   0        1    204
0-24 months   ki1000109-ResPak           PAKISTAN                       11                   1        0    204
0-24 months   ki1000109-ResPak           PAKISTAN                       12                   0        1    204
0-24 months   ki1000109-ResPak           PAKISTAN                       12                   1        2    204
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0       43    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       18    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0       28    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1        9    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    0       30    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1       13    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    0       28    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1       14    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    0       35    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1       31    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    0       39    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1       30    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    0       36    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1       30    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    0       51    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1       37    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    0       58    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1       44    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   0       48    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1       47    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   0       66    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1       20    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   0       42    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1       17    814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       13    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        1    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       19    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        1    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                    0       13    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                    1        1    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                    0        1    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                    1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                    0        8    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                    1        1    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                    0        8    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                    1        1    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                    0       15    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                    1        3    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                    0       33    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                    1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                    0       34    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                    1        4    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                   0       32    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                   1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                   0       21    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                   1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                   0       24    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                   1        1    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       25    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       27    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    0       22    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1       18    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    0       24    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1       25    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    0       14    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1       20    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    0       16    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1       18    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    0       12    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1       24    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    0       15    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1       15    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    0       13    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1       17    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    0        9    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1       18    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   0       16    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1       13    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   0       17    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1       14    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   0       19    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1       10    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0        8    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        4    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       13    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       18    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0        3    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1        7    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    0        8    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1        8    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     5                    0        5    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     5                    1        9    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     6                    0        8    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     6                    1       14    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     7                    0        7    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     7                    1       10    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     8                    0       12    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     8                    1       11    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     9                    0       19    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     9                    1       21    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     10                   0       19    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     10                   1       30    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     11                   0       16    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     11                   1       29    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     12                   0       11    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     12                   1       18    308
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       28    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       37    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0       14    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       39    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    0       15    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1       26    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    0       14    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1       21    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    0       16    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1       28    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    0       18    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1       31    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    0       19    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1       48    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    0       31    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1       51    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    0       15    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1       44    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   0       29    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1       53    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   0       36    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1       36    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   0       31    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1       33    713
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0       70   1828
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1      127   1828
0-24 months   ki1101329-Keneba           GAMBIA                         2                    0       62   1828
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1      118   1828
0-24 months   ki1101329-Keneba           GAMBIA                         3                    0       67   1828
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1      109   1828
0-24 months   ki1101329-Keneba           GAMBIA                         4                    0       41   1828
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1       67   1828
0-24 months   ki1101329-Keneba           GAMBIA                         5                    0       40   1828
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1       62   1828
0-24 months   ki1101329-Keneba           GAMBIA                         6                    0       42   1828
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1       61   1828
0-24 months   ki1101329-Keneba           GAMBIA                         7                    0       49   1828
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1       48   1828
0-24 months   ki1101329-Keneba           GAMBIA                         8                    0       58   1828
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1      105   1828
0-24 months   ki1101329-Keneba           GAMBIA                         9                    0       67   1828
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1      102   1828
0-24 months   ki1101329-Keneba           GAMBIA                         10                   0       83   1828
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1      129   1828
0-24 months   ki1101329-Keneba           GAMBIA                         11                   0       57   1828
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1       84   1828
0-24 months   ki1101329-Keneba           GAMBIA                         12                   0       76   1828
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1      104   1828
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        5     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    0        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    0        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1        5     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    0        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    0        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    1        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    0        3     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    1        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    0        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    1        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    0        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    1        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    0        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    1        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   0        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   1        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   0        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   1        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   0        6     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   1        1     38
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0       85    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1        1    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    0       44    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1        2    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    0       55    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1        0    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    0       52    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1        4    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    0       43    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1        4    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    0       45    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1        1    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    0       46    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1        3    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    0       63    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1        5    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    0      111    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1        9    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   0       90    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1        2    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   0       89    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1        3    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   0       61    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1        2    820
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    0        1    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    1        1    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    0        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    1        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    0       80    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    1       62    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    0      104    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    1      140    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    0      111    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    1      144    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    0        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    1        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   0        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   1        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   0        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   1        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   0        0    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   1        0    643
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0        6    190
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    1       12    190
0-24 months   ki1114097-CMIN             BANGLADESH                     2                    0        5    190
0-24 months   ki1114097-CMIN             BANGLADESH                     2                    1       12    190
0-24 months   ki1114097-CMIN             BANGLADESH                     3                    0        4    190
0-24 months   ki1114097-CMIN             BANGLADESH                     3                    1       12    190
0-24 months   ki1114097-CMIN             BANGLADESH                     4                    0        9    190
0-24 months   ki1114097-CMIN             BANGLADESH                     4                    1       10    190
0-24 months   ki1114097-CMIN             BANGLADESH                     5                    0        2    190
0-24 months   ki1114097-CMIN             BANGLADESH                     5                    1        3    190
0-24 months   ki1114097-CMIN             BANGLADESH                     6                    0        1    190
0-24 months   ki1114097-CMIN             BANGLADESH                     6                    1        5    190
0-24 months   ki1114097-CMIN             BANGLADESH                     7                    0        4    190
0-24 months   ki1114097-CMIN             BANGLADESH                     7                    1        3    190
0-24 months   ki1114097-CMIN             BANGLADESH                     8                    0        9    190
0-24 months   ki1114097-CMIN             BANGLADESH                     8                    1        7    190
0-24 months   ki1114097-CMIN             BANGLADESH                     9                    0        7    190
0-24 months   ki1114097-CMIN             BANGLADESH                     9                    1        8    190
0-24 months   ki1114097-CMIN             BANGLADESH                     10                   0       11    190
0-24 months   ki1114097-CMIN             BANGLADESH                     10                   1       12    190
0-24 months   ki1114097-CMIN             BANGLADESH                     11                   0       14    190
0-24 months   ki1114097-CMIN             BANGLADESH                     11                   1       12    190
0-24 months   ki1114097-CMIN             BANGLADESH                     12                   0        8    190
0-24 months   ki1114097-CMIN             BANGLADESH                     12                   1       14    190
0-24 months   ki1114097-CONTENT          PERU                           1                    0        0      9
0-24 months   ki1114097-CONTENT          PERU                           1                    1        1      9
0-24 months   ki1114097-CONTENT          PERU                           2                    0        0      9
0-24 months   ki1114097-CONTENT          PERU                           2                    1        0      9
0-24 months   ki1114097-CONTENT          PERU                           3                    0        0      9
0-24 months   ki1114097-CONTENT          PERU                           3                    1        2      9
0-24 months   ki1114097-CONTENT          PERU                           4                    0        0      9
0-24 months   ki1114097-CONTENT          PERU                           4                    1        0      9
0-24 months   ki1114097-CONTENT          PERU                           5                    0        1      9
0-24 months   ki1114097-CONTENT          PERU                           5                    1        1      9
0-24 months   ki1114097-CONTENT          PERU                           6                    0        0      9
0-24 months   ki1114097-CONTENT          PERU                           6                    1        0      9
0-24 months   ki1114097-CONTENT          PERU                           7                    0        0      9
0-24 months   ki1114097-CONTENT          PERU                           7                    1        0      9
0-24 months   ki1114097-CONTENT          PERU                           8                    0        0      9
0-24 months   ki1114097-CONTENT          PERU                           8                    1        1      9
0-24 months   ki1114097-CONTENT          PERU                           9                    0        0      9
0-24 months   ki1114097-CONTENT          PERU                           9                    1        0      9
0-24 months   ki1114097-CONTENT          PERU                           10                   0        1      9
0-24 months   ki1114097-CONTENT          PERU                           10                   1        1      9
0-24 months   ki1114097-CONTENT          PERU                           11                   0        0      9
0-24 months   ki1114097-CONTENT          PERU                           11                   1        0      9
0-24 months   ki1114097-CONTENT          PERU                           12                   0        0      9
0-24 months   ki1114097-CONTENT          PERU                           12                   1        1      9
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0       35   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1      229   4431
0-24 months   ki1119695-PROBIT           BELARUS                        2                    0       43   4431
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1      201   4431
0-24 months   ki1119695-PROBIT           BELARUS                        3                    0       35   4431
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1      247   4431
0-24 months   ki1119695-PROBIT           BELARUS                        4                    0       40   4431
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1      262   4431
0-24 months   ki1119695-PROBIT           BELARUS                        5                    0       54   4431
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1      284   4431
0-24 months   ki1119695-PROBIT           BELARUS                        6                    0       52   4431
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1      276   4431
0-24 months   ki1119695-PROBIT           BELARUS                        7                    0       51   4431
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1      391   4431
0-24 months   ki1119695-PROBIT           BELARUS                        8                    0       59   4431
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1      393   4431
0-24 months   ki1119695-PROBIT           BELARUS                        9                    0       54   4431
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1      345   4431
0-24 months   ki1119695-PROBIT           BELARUS                        10                   0       70   4431
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1      414   4431
0-24 months   ki1119695-PROBIT           BELARUS                        11                   0       66   4431
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1      358   4431
0-24 months   ki1119695-PROBIT           BELARUS                        12                   0       56   4431
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1      416   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      164   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      173   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0      130   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      130   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    0      157   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1      151   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    0      103   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1      119   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    0      119   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1      133   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    0      126   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1      189   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    0      128   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1      209   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    0      152   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1      193   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    0      126   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1      168   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   0      130   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1      148   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   0      152   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1      182   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   0      164   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1      169   3615
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0        4     79
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        2     79
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    0        3     79
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    1        0     79
0-24 months   ki1148112-LCNI-5           MALAWI                         3                    0        2     79
0-24 months   ki1148112-LCNI-5           MALAWI                         3                    1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         4                    0        0     79
0-24 months   ki1148112-LCNI-5           MALAWI                         4                    1        0     79
0-24 months   ki1148112-LCNI-5           MALAWI                         5                    0        5     79
0-24 months   ki1148112-LCNI-5           MALAWI                         5                    1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         6                    0        2     79
0-24 months   ki1148112-LCNI-5           MALAWI                         6                    1        0     79
0-24 months   ki1148112-LCNI-5           MALAWI                         7                    0        4     79
0-24 months   ki1148112-LCNI-5           MALAWI                         7                    1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         8                    0        9     79
0-24 months   ki1148112-LCNI-5           MALAWI                         8                    1        3     79
0-24 months   ki1148112-LCNI-5           MALAWI                         9                    0       11     79
0-24 months   ki1148112-LCNI-5           MALAWI                         9                    1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         10                   0        9     79
0-24 months   ki1148112-LCNI-5           MALAWI                         10                   1        2     79
0-24 months   ki1148112-LCNI-5           MALAWI                         11                   0        5     79
0-24 months   ki1148112-LCNI-5           MALAWI                         11                   1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         12                   0       12     79
0-24 months   ki1148112-LCNI-5           MALAWI                         12                   1        1     79
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      349   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      272   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0      297   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      231   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0      341   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      263   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    0      313   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1      213   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    0      289   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1      170   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    0      296   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1      176   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    0      301   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1      177   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    0      384   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1      265   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    0      427   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1      393   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   0      460   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1      365   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   0      464   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1      362   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   0      454   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1      309   7571
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0        0   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1        0   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      257   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1       64   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      287   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      102   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    0      229   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1       63   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    0      191   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1       63   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    0      151   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1       55   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    0      158   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1       64   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    0      130   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1       68   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    0      102   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1       45   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   0       29   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1       11   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   0        0   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1        0   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   0        0   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1        0   2069
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    0        1     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1        6     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    0        2     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1        7     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    0        2     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1        4     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    0        2     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1        4     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    0        1     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1        0     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    0        2     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1        6     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    0        0     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1        3     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    0        0     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1        8     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   0        2     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1        3     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   0        0     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1        2     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   0        1     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1        4     63
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        2     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        2     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                    0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                    1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                    0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                    1        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                    0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                    1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                    0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                    1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                    0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                    1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                    0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                    1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                   0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                   1        3     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                   0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                   1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                   0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                   1        1     15
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        5     86
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        5     86
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0        2     86
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1        4     86
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0        3     86
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1        8     86
0-6 months    ki0047075b-MAL-ED          INDIA                          4                    0        1     86
0-6 months    ki0047075b-MAL-ED          INDIA                          4                    1        5     86
0-6 months    ki0047075b-MAL-ED          INDIA                          5                    0        0     86
0-6 months    ki0047075b-MAL-ED          INDIA                          5                    1        4     86
0-6 months    ki0047075b-MAL-ED          INDIA                          6                    0        5     86
0-6 months    ki0047075b-MAL-ED          INDIA                          6                    1        3     86
0-6 months    ki0047075b-MAL-ED          INDIA                          7                    0        3     86
0-6 months    ki0047075b-MAL-ED          INDIA                          7                    1        9     86
0-6 months    ki0047075b-MAL-ED          INDIA                          8                    0        1     86
0-6 months    ki0047075b-MAL-ED          INDIA                          8                    1        5     86
0-6 months    ki0047075b-MAL-ED          INDIA                          9                    0        1     86
0-6 months    ki0047075b-MAL-ED          INDIA                          9                    1        6     86
0-6 months    ki0047075b-MAL-ED          INDIA                          10                   0        3     86
0-6 months    ki0047075b-MAL-ED          INDIA                          10                   1        3     86
0-6 months    ki0047075b-MAL-ED          INDIA                          11                   0        2     86
0-6 months    ki0047075b-MAL-ED          INDIA                          11                   1        6     86
0-6 months    ki0047075b-MAL-ED          INDIA                          12                   0        1     86
0-6 months    ki0047075b-MAL-ED          INDIA                          12                   1        1     86
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        1     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        4     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    0        0     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    1        2     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    0        0     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    1        4     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                    0        1     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                    1        6     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                    0        2     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                    1        6     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                    0        1     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                    1        2     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                    0        2     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                    1        2     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                    0        2     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                    1        5     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                    0        0     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                    1        3     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                   0        0     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                   1        2     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                   0        0     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                   1        2     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                   0        0     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                   1        1     48
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           2                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           2                    1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           3                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           3                    1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           4                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           4                    1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           5                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           5                    1        2     11
0-6 months    ki0047075b-MAL-ED          PERU                           6                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           6                    1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           7                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           7                    1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           8                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           8                    1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           9                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           9                    1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           10                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           10                   1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           11                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           11                   1        4     11
0-6 months    ki0047075b-MAL-ED          PERU                           12                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           12                   1        0     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        3     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        4     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    0        1     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1        1     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    0        1     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    0        1     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1        2     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    0        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1        3     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    0        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    0        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   0        1     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1        5     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   0        4     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1        3     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   0        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1        5     36
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1        3     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1        2     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1        5     14
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       11    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        2    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1        6    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    0        7    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        9    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    0        8    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1       12    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    0        8    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1       12    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    0        5    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1       17    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    0        5    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1        8    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    0        4    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1        6    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    0        2    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1        9    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   0        5    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1       15    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   0        8    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1       19    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   0        5    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1       11    201
0-6 months    ki1000108-IRC              INDIA                          1                    0        7    240
0-6 months    ki1000108-IRC              INDIA                          1                    1        9    240
0-6 months    ki1000108-IRC              INDIA                          2                    0        6    240
0-6 months    ki1000108-IRC              INDIA                          2                    1        6    240
0-6 months    ki1000108-IRC              INDIA                          3                    0        8    240
0-6 months    ki1000108-IRC              INDIA                          3                    1        9    240
0-6 months    ki1000108-IRC              INDIA                          4                    0        1    240
0-6 months    ki1000108-IRC              INDIA                          4                    1        9    240
0-6 months    ki1000108-IRC              INDIA                          5                    0        4    240
0-6 months    ki1000108-IRC              INDIA                          5                    1       10    240
0-6 months    ki1000108-IRC              INDIA                          6                    0       12    240
0-6 months    ki1000108-IRC              INDIA                          6                    1       11    240
0-6 months    ki1000108-IRC              INDIA                          7                    0        9    240
0-6 months    ki1000108-IRC              INDIA                          7                    1       18    240
0-6 months    ki1000108-IRC              INDIA                          8                    0        9    240
0-6 months    ki1000108-IRC              INDIA                          8                    1       17    240
0-6 months    ki1000108-IRC              INDIA                          9                    0        4    240
0-6 months    ki1000108-IRC              INDIA                          9                    1       12    240
0-6 months    ki1000108-IRC              INDIA                          10                   0        9    240
0-6 months    ki1000108-IRC              INDIA                          10                   1       15    240
0-6 months    ki1000108-IRC              INDIA                          11                   0        6    240
0-6 months    ki1000108-IRC              INDIA                          11                   1       16    240
0-6 months    ki1000108-IRC              INDIA                          12                   0       12    240
0-6 months    ki1000108-IRC              INDIA                          12                   1       21    240
0-6 months    ki1000109-EE               PAKISTAN                       1                    0       18    127
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       16    127
0-6 months    ki1000109-EE               PAKISTAN                       2                    0        8    127
0-6 months    ki1000109-EE               PAKISTAN                       2                    1        8    127
0-6 months    ki1000109-EE               PAKISTAN                       3                    0        8    127
0-6 months    ki1000109-EE               PAKISTAN                       3                    1       12    127
0-6 months    ki1000109-EE               PAKISTAN                       4                    0        0    127
0-6 months    ki1000109-EE               PAKISTAN                       4                    1        5    127
0-6 months    ki1000109-EE               PAKISTAN                       5                    0        0    127
0-6 months    ki1000109-EE               PAKISTAN                       5                    1        0    127
0-6 months    ki1000109-EE               PAKISTAN                       6                    0        0    127
0-6 months    ki1000109-EE               PAKISTAN                       6                    1        0    127
0-6 months    ki1000109-EE               PAKISTAN                       7                    0        0    127
0-6 months    ki1000109-EE               PAKISTAN                       7                    1        0    127
0-6 months    ki1000109-EE               PAKISTAN                       8                    0        0    127
0-6 months    ki1000109-EE               PAKISTAN                       8                    1        0    127
0-6 months    ki1000109-EE               PAKISTAN                       9                    0        0    127
0-6 months    ki1000109-EE               PAKISTAN                       9                    1        0    127
0-6 months    ki1000109-EE               PAKISTAN                       10                   0        0    127
0-6 months    ki1000109-EE               PAKISTAN                       10                   1        1    127
0-6 months    ki1000109-EE               PAKISTAN                       11                   0       12    127
0-6 months    ki1000109-EE               PAKISTAN                       11                   1       14    127
0-6 months    ki1000109-EE               PAKISTAN                       12                   0        9    127
0-6 months    ki1000109-EE               PAKISTAN                       12                   1       16    127
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0        2    113
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    1        2    113
0-6 months    ki1000109-ResPak           PAKISTAN                       2                    0        2    113
0-6 months    ki1000109-ResPak           PAKISTAN                       2                    1        2    113
0-6 months    ki1000109-ResPak           PAKISTAN                       3                    0        7    113
0-6 months    ki1000109-ResPak           PAKISTAN                       3                    1        9    113
0-6 months    ki1000109-ResPak           PAKISTAN                       4                    0        8    113
0-6 months    ki1000109-ResPak           PAKISTAN                       4                    1        8    113
0-6 months    ki1000109-ResPak           PAKISTAN                       5                    0        8    113
0-6 months    ki1000109-ResPak           PAKISTAN                       5                    1       11    113
0-6 months    ki1000109-ResPak           PAKISTAN                       6                    0        4    113
0-6 months    ki1000109-ResPak           PAKISTAN                       6                    1       10    113
0-6 months    ki1000109-ResPak           PAKISTAN                       7                    0        3    113
0-6 months    ki1000109-ResPak           PAKISTAN                       7                    1       12    113
0-6 months    ki1000109-ResPak           PAKISTAN                       8                    0        7    113
0-6 months    ki1000109-ResPak           PAKISTAN                       8                    1        6    113
0-6 months    ki1000109-ResPak           PAKISTAN                       9                    0        0    113
0-6 months    ki1000109-ResPak           PAKISTAN                       9                    1        6    113
0-6 months    ki1000109-ResPak           PAKISTAN                       10                   0        1    113
0-6 months    ki1000109-ResPak           PAKISTAN                       10                   1        3    113
0-6 months    ki1000109-ResPak           PAKISTAN                       11                   0        0    113
0-6 months    ki1000109-ResPak           PAKISTAN                       11                   1        0    113
0-6 months    ki1000109-ResPak           PAKISTAN                       12                   0        1    113
0-6 months    ki1000109-ResPak           PAKISTAN                       12                   1        1    113
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0       18    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1       12    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    0       13    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1        5    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    0       11    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1        8    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    0       13    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1        6    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    0       15    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1       20    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    0       13    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1       21    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    0        8    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1       13    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    0       13    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1       18    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    0       10    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1       25    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   0       23    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1       24    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   0       19    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1        9    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   0       10    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1       14    341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        4     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    0        5     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                    0        6     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                    0        1     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                    0        2     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                    0        4     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                    0        3     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                    0       13     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                    0       11     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                   0       11     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                   1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                   0        9     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                   1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                   0        9     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                   1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0        9    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1       19    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    0        7    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1       15    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    0        8    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1       16    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    0        6    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1       16    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    0        5    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1       15    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    0        4    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1       16    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    0        6    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1       12    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    0        2    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1       13    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    0        2    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1       14    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   0        5    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1        8    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   0        5    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1       10    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   0        5    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1        5    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0        2    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        2    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0        2    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1       16    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    0        2    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1        6    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4                    0        2    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1        5    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     5                    0        1    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     5                    1        8    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     6                    0        2    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     6                    1       10    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     7                    0        1    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     7                    1        7    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     8                    0        6    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     8                    1       11    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     9                    0        6    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     9                    1       16    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     10                   0        9    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     10                   1       25    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     11                   0        4    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     11                   1       22    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     12                   0        3    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     12                   1       17    185
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       13    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       16    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0        9    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       22    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    0        6    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1       14    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    0        4    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1       10    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    0        3    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1       13    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    0        3    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1       18    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    0        7    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1       28    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    0       10    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1       28    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    0        1    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1       22    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   0       13    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1       31    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   0       19    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1       16    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   0       13    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1       21    340
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0       15    724
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       62    724
0-6 months    ki1101329-Keneba           GAMBIA                         2                    0       13    724
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1       58    724
0-6 months    ki1101329-Keneba           GAMBIA                         3                    0       21    724
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1       58    724
0-6 months    ki1101329-Keneba           GAMBIA                         4                    0       17    724
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1       34    724
0-6 months    ki1101329-Keneba           GAMBIA                         5                    0       13    724
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1       33    724
0-6 months    ki1101329-Keneba           GAMBIA                         6                    0       10    724
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1       25    724
0-6 months    ki1101329-Keneba           GAMBIA                         7                    0       11    724
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1       28    724
0-6 months    ki1101329-Keneba           GAMBIA                         8                    0       13    724
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1       57    724
0-6 months    ki1101329-Keneba           GAMBIA                         9                    0       15    724
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1       52    724
0-6 months    ki1101329-Keneba           GAMBIA                         10                   0       10    724
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1       62    724
0-6 months    ki1101329-Keneba           GAMBIA                         11                   0       12    724
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1       46    724
0-6 months    ki1101329-Keneba           GAMBIA                         12                   0       15    724
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1       44    724
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1        2     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    0        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    0        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   0        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   0        2     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1        0     10
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                    0        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                    1        1    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                    0        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                    1        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                    0       29    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                    1       35    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                    0       38    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                    1       70    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                    0       37    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                    1       53    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                    0        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                    1        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                   0        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                   1        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                   0        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                   1        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                   0        0    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                   1        0    263
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0        3     52
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    1        4     52
0-6 months    ki1114097-CMIN             BANGLADESH                     2                    0        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     2                    1        3     52
0-6 months    ki1114097-CMIN             BANGLADESH                     3                    0        3     52
0-6 months    ki1114097-CMIN             BANGLADESH                     3                    1        4     52
0-6 months    ki1114097-CMIN             BANGLADESH                     4                    0        4     52
0-6 months    ki1114097-CMIN             BANGLADESH                     4                    1        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     5                    0        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     5                    1        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     6                    0        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     6                    1        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     7                    0        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     7                    1        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     8                    0        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     8                    1        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     9                    0        1     52
0-6 months    ki1114097-CMIN             BANGLADESH                     9                    1        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     10                   0        1     52
0-6 months    ki1114097-CMIN             BANGLADESH                     10                   1        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     11                   0        3     52
0-6 months    ki1114097-CMIN             BANGLADESH                     11                   1        5     52
0-6 months    ki1114097-CMIN             BANGLADESH                     12                   0        4     52
0-6 months    ki1114097-CMIN             BANGLADESH                     12                   1        3     52
0-6 months    ki1114097-CONTENT          PERU                           1                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                    1        1      4
0-6 months    ki1114097-CONTENT          PERU                           2                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           2                    1        0      4
0-6 months    ki1114097-CONTENT          PERU                           3                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           3                    1        2      4
0-6 months    ki1114097-CONTENT          PERU                           4                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           4                    1        0      4
0-6 months    ki1114097-CONTENT          PERU                           5                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           5                    1        0      4
0-6 months    ki1114097-CONTENT          PERU                           6                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           6                    1        0      4
0-6 months    ki1114097-CONTENT          PERU                           7                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           7                    1        0      4
0-6 months    ki1114097-CONTENT          PERU                           8                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           8                    1        0      4
0-6 months    ki1114097-CONTENT          PERU                           9                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           9                    1        0      4
0-6 months    ki1114097-CONTENT          PERU                           10                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           10                   1        0      4
0-6 months    ki1114097-CONTENT          PERU                           11                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           11                   1        0      4
0-6 months    ki1114097-CONTENT          PERU                           12                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           12                   1        1      4
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0       29   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1      228   4263
0-6 months    ki1119695-PROBIT           BELARUS                        2                    0       34   4263
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1      199   4263
0-6 months    ki1119695-PROBIT           BELARUS                        3                    0       28   4263
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1      244   4263
0-6 months    ki1119695-PROBIT           BELARUS                        4                    0       31   4263
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1      260   4263
0-6 months    ki1119695-PROBIT           BELARUS                        5                    0       44   4263
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1      284   4263
0-6 months    ki1119695-PROBIT           BELARUS                        6                    0       39   4263
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1      275   4263
0-6 months    ki1119695-PROBIT           BELARUS                        7                    0       42   4263
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1      386   4263
0-6 months    ki1119695-PROBIT           BELARUS                        8                    0       47   4263
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1      388   4263
0-6 months    ki1119695-PROBIT           BELARUS                        9                    0       42   4263
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1      341   4263
0-6 months    ki1119695-PROBIT           BELARUS                        10                   0       61   4263
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1      406   4263
0-6 months    ki1119695-PROBIT           BELARUS                        11                   0       52   4263
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1      351   4263
0-6 months    ki1119695-PROBIT           BELARUS                        12                   0       39   4263
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1      413   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0       60   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      166   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    0       50   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      122   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    0       54   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1      144   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    0       32   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1      113   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    0       35   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1      126   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    0       46   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1      181   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    0       58   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1      203   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    0       66   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1      188   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    0       60   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1      166   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   0       50   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1      140   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   0       59   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1      175   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   0       66   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1      159   2519
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         2                    0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         2                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         3                    0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         3                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         4                    0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         4                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         5                    0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         5                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         6                    0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         6                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         7                    0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         7                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         8                    0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         8                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         9                    0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         9                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         10                   0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         10                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         11                   0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         11                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         12                   0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         12                   1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      146   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      272   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0      127   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1      231   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0      148   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1      263   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    0      116   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1      213   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    0       58   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1      170   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    0       62   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1      176   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    0       65   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1      177   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    0      111   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1      265   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    0      147   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1      393   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   0      171   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1      365   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   0      165   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1      362   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   0      222   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1      309   4734
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0        0    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1        0    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    0       45    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1       22    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    0       43    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1       51    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    0       34    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    1       44    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    0       27    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    1       31    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    0       29    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    1       30    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    0       27    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    1       39    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    0       21    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    1       47    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    0       13    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    1       36    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   0        5    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   1        9    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   0        0    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   1        0    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   0        0    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   1        0    553
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        3     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        2     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0        3     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1        3     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0        6     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1        9     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    0        2     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1        1     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    0        4     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1        2     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    0        0     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1        1     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    0        2     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1        3     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    0        1     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1        0     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    0        5     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1        8     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   0        1     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1        0     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   0        2     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1        0     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   0        2     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1        1     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        3     95
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    0        1     95
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    0        3     95
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1        5     95
6-24 months   ki0047075b-MAL-ED          INDIA                          4                    0        4     95
6-24 months   ki0047075b-MAL-ED          INDIA                          4                    1        1     95
6-24 months   ki0047075b-MAL-ED          INDIA                          5                    0        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          5                    1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          6                    0        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          6                    1        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          7                    0        8     95
6-24 months   ki0047075b-MAL-ED          INDIA                          7                    1        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          8                    0        4     95
6-24 months   ki0047075b-MAL-ED          INDIA                          8                    1        8     95
6-24 months   ki0047075b-MAL-ED          INDIA                          9                    0        7     95
6-24 months   ki0047075b-MAL-ED          INDIA                          9                    1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          10                   0        3     95
6-24 months   ki0047075b-MAL-ED          INDIA                          10                   1        7     95
6-24 months   ki0047075b-MAL-ED          INDIA                          11                   0        8     95
6-24 months   ki0047075b-MAL-ED          INDIA                          11                   1        8     95
6-24 months   ki0047075b-MAL-ED          INDIA                          12                   0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          12                   1        3     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        5     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        5     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                    0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1        5     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                    0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                    1        7     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                    0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                    1        3     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                    0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                    1        5     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                    0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                    1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                    0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                    1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                   0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                   1        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                   0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                   1        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                   0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                   1        3     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        7     24
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           4                    0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           4                    1        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           5                    0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           5                    1        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           6                    0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           6                    1        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           7                    0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           7                    1        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           8                    0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           8                    1        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           9                    0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           9                    1        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           10                   0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           10                   1        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           11                   0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           11                   1        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           12                   0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           12                   1        0     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       13     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        2     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1        2     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1        3     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1        2     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1        1     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    0        1     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1        2     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   0        2     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1        6     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   0        1     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1        4     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   0        2     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1        6     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        7     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        0     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    0        0     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    0        0     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1        4     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1        0     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    0        0     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1        0     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1        0     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1        3     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1        4     37
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        2    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        8    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        1    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1        0    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0        3    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        4    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    0        9    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1        6    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    0        1    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1        5    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    0        6    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1        8    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    0       11    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1        1    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    0        3    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1        8    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    0        4    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1        5    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   0        3    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1        8    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   0        6    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1       10    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   0        5    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1        6    123
6-24 months   ki1000108-IRC              INDIA                          1                    0        4    155
6-24 months   ki1000108-IRC              INDIA                          1                    1       12    155
6-24 months   ki1000108-IRC              INDIA                          2                    0        4    155
6-24 months   ki1000108-IRC              INDIA                          2                    1        6    155
6-24 months   ki1000108-IRC              INDIA                          3                    0        2    155
6-24 months   ki1000108-IRC              INDIA                          3                    1        4    155
6-24 months   ki1000108-IRC              INDIA                          4                    0        4    155
6-24 months   ki1000108-IRC              INDIA                          4                    1        6    155
6-24 months   ki1000108-IRC              INDIA                          5                    0        6    155
6-24 months   ki1000108-IRC              INDIA                          5                    1        3    155
6-24 months   ki1000108-IRC              INDIA                          6                    0        7    155
6-24 months   ki1000108-IRC              INDIA                          6                    1        7    155
6-24 months   ki1000108-IRC              INDIA                          7                    0       10    155
6-24 months   ki1000108-IRC              INDIA                          7                    1        5    155
6-24 months   ki1000108-IRC              INDIA                          8                    0        7    155
6-24 months   ki1000108-IRC              INDIA                          8                    1        9    155
6-24 months   ki1000108-IRC              INDIA                          9                    0       10    155
6-24 months   ki1000108-IRC              INDIA                          9                    1        6    155
6-24 months   ki1000108-IRC              INDIA                          10                   0       10    155
6-24 months   ki1000108-IRC              INDIA                          10                   1        8    155
6-24 months   ki1000108-IRC              INDIA                          11                   0        6    155
6-24 months   ki1000108-IRC              INDIA                          11                   1        4    155
6-24 months   ki1000108-IRC              INDIA                          12                   0        5    155
6-24 months   ki1000108-IRC              INDIA                          12                   1       10    155
6-24 months   ki1000109-EE               PAKISTAN                       1                    0       26    196
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       16    196
6-24 months   ki1000109-EE               PAKISTAN                       2                    0       16    196
6-24 months   ki1000109-EE               PAKISTAN                       2                    1       15    196
6-24 months   ki1000109-EE               PAKISTAN                       3                    0       15    196
6-24 months   ki1000109-EE               PAKISTAN                       3                    1       13    196
6-24 months   ki1000109-EE               PAKISTAN                       4                    0        8    196
6-24 months   ki1000109-EE               PAKISTAN                       4                    1        3    196
6-24 months   ki1000109-EE               PAKISTAN                       5                    0        0    196
6-24 months   ki1000109-EE               PAKISTAN                       5                    1        0    196
6-24 months   ki1000109-EE               PAKISTAN                       6                    0        0    196
6-24 months   ki1000109-EE               PAKISTAN                       6                    1        0    196
6-24 months   ki1000109-EE               PAKISTAN                       7                    0        0    196
6-24 months   ki1000109-EE               PAKISTAN                       7                    1        0    196
6-24 months   ki1000109-EE               PAKISTAN                       8                    0        0    196
6-24 months   ki1000109-EE               PAKISTAN                       8                    1        0    196
6-24 months   ki1000109-EE               PAKISTAN                       9                    0        0    196
6-24 months   ki1000109-EE               PAKISTAN                       9                    1        0    196
6-24 months   ki1000109-EE               PAKISTAN                       10                   0        0    196
6-24 months   ki1000109-EE               PAKISTAN                       10                   1        2    196
6-24 months   ki1000109-EE               PAKISTAN                       11                   0       22    196
6-24 months   ki1000109-EE               PAKISTAN                       11                   1       20    196
6-24 months   ki1000109-EE               PAKISTAN                       12                   0       18    196
6-24 months   ki1000109-EE               PAKISTAN                       12                   1       22    196
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0        0     91
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        0     91
6-24 months   ki1000109-ResPak           PAKISTAN                       2                    0        3     91
6-24 months   ki1000109-ResPak           PAKISTAN                       2                    1        2     91
6-24 months   ki1000109-ResPak           PAKISTAN                       3                    0        6     91
6-24 months   ki1000109-ResPak           PAKISTAN                       3                    1        2     91
6-24 months   ki1000109-ResPak           PAKISTAN                       4                    0        8     91
6-24 months   ki1000109-ResPak           PAKISTAN                       4                    1        4     91
6-24 months   ki1000109-ResPak           PAKISTAN                       5                    0       17     91
6-24 months   ki1000109-ResPak           PAKISTAN                       5                    1        3     91
6-24 months   ki1000109-ResPak           PAKISTAN                       6                    0       12     91
6-24 months   ki1000109-ResPak           PAKISTAN                       6                    1        4     91
6-24 months   ki1000109-ResPak           PAKISTAN                       7                    0        8     91
6-24 months   ki1000109-ResPak           PAKISTAN                       7                    1        2     91
6-24 months   ki1000109-ResPak           PAKISTAN                       8                    0        8     91
6-24 months   ki1000109-ResPak           PAKISTAN                       8                    1        2     91
6-24 months   ki1000109-ResPak           PAKISTAN                       9                    0        5     91
6-24 months   ki1000109-ResPak           PAKISTAN                       9                    1        2     91
6-24 months   ki1000109-ResPak           PAKISTAN                       10                   0        1     91
6-24 months   ki1000109-ResPak           PAKISTAN                       10                   1        0     91
6-24 months   ki1000109-ResPak           PAKISTAN                       11                   0        1     91
6-24 months   ki1000109-ResPak           PAKISTAN                       11                   1        0     91
6-24 months   ki1000109-ResPak           PAKISTAN                       12                   0        0     91
6-24 months   ki1000109-ResPak           PAKISTAN                       12                   1        1     91
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0       25    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1        6    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0       15    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1        4    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    0       19    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1        5    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    0       15    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1        8    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    0       20    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1       11    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    0       26    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1        9    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    0       28    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1       17    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    0       38    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1       19    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    0       48    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1       19    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   0       25    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1       23    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   0       47    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1       11    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   0       32    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1        3    473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        9    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        1    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       14    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        1    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                    0        7    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                    1        1    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                    0        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                    1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                    0        6    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                    1        1    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                    0        4    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                    1        1    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                    0       12    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                    1        3    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                    0       20    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                    1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                    0       23    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                    1        4    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                   0       21    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                   1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                   0       12    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                   1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                   0       15    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                   1        1    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       16    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1        8    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    0       15    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1        3    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    0       16    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1        9    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    0        8    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1        4    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    0       11    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1        3    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    0        8    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1        8    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    0        9    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1        3    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    0       11    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1        4    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    0        7    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1        4    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   0       11    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1        5    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   0       12    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1        4    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   0       14    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1        5    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0        6    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        2    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       11    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1        2    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0        1    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1        1    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    0        6    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1        3    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     5                    0        4    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     5                    1        1    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     6                    0        6    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     6                    1        4    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     7                    0        6    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     7                    1        3    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     8                    0        6    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     8                    1        0    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     9                    0       13    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     9                    1        5    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     10                   0       10    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     10                   1        5    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     11                   0       12    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     11                   1        7    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     12                   0        8    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     12                   1        1    123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       15    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       21    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0        5    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       17    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    0        9    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1       12    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    0       10    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1       11    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    0       13    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1       15    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    0       15    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1       13    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    0       12    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1       20    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    0       21    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1       23    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    0       14    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1       22    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   0       16    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1       22    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   0       17    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1       20    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   0       18    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1       12    373
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0       55   1104
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       65   1104
6-24 months   ki1101329-Keneba           GAMBIA                         2                    0       49   1104
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1       60   1104
6-24 months   ki1101329-Keneba           GAMBIA                         3                    0       46   1104
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1       51   1104
6-24 months   ki1101329-Keneba           GAMBIA                         4                    0       24   1104
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1       33   1104
6-24 months   ki1101329-Keneba           GAMBIA                         5                    0       27   1104
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1       29   1104
6-24 months   ki1101329-Keneba           GAMBIA                         6                    0       32   1104
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1       36   1104
6-24 months   ki1101329-Keneba           GAMBIA                         7                    0       38   1104
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1       20   1104
6-24 months   ki1101329-Keneba           GAMBIA                         8                    0       45   1104
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1       48   1104
6-24 months   ki1101329-Keneba           GAMBIA                         9                    0       52   1104
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1       50   1104
6-24 months   ki1101329-Keneba           GAMBIA                         10                   0       73   1104
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1       67   1104
6-24 months   ki1101329-Keneba           GAMBIA                         11                   0       45   1104
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1       38   1104
6-24 months   ki1101329-Keneba           GAMBIA                         12                   0       61   1104
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1       60   1104
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        4     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    0        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    0        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1        3     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    0        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    0        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    1        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    0        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    1        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    0        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    1        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    0        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    1        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    0        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    1        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   0        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   1        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   0        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   1        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   0        4     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   1        1     28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0       85    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1        1    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    0       44    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1        2    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    0       55    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1        0    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    0       52    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1        4    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    0       43    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1        4    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    0       45    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1        1    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    0       46    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1        3    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    0       63    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1        5    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    0      111    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1        9    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   0       90    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1        2    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   0       89    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1        3    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   0       61    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1        2    820
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    0        1    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    1        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    0        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    1        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    0       51    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    1       27    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    0       66    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    1       70    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    0       74    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    1       91    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    0        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    1        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   0        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   1        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   0        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   1        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   0        0    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   1        0    380
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0        3    138
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    1        8    138
6-24 months   ki1114097-CMIN             BANGLADESH                     2                    0        3    138
6-24 months   ki1114097-CMIN             BANGLADESH                     2                    1        9    138
6-24 months   ki1114097-CMIN             BANGLADESH                     3                    0        1    138
6-24 months   ki1114097-CMIN             BANGLADESH                     3                    1        8    138
6-24 months   ki1114097-CMIN             BANGLADESH                     4                    0        5    138
6-24 months   ki1114097-CMIN             BANGLADESH                     4                    1        8    138
6-24 months   ki1114097-CMIN             BANGLADESH                     5                    0        0    138
6-24 months   ki1114097-CMIN             BANGLADESH                     5                    1        3    138
6-24 months   ki1114097-CMIN             BANGLADESH                     6                    0        1    138
6-24 months   ki1114097-CMIN             BANGLADESH                     6                    1        3    138
6-24 months   ki1114097-CMIN             BANGLADESH                     7                    0        4    138
6-24 months   ki1114097-CMIN             BANGLADESH                     7                    1        3    138
6-24 months   ki1114097-CMIN             BANGLADESH                     8                    0        7    138
6-24 months   ki1114097-CMIN             BANGLADESH                     8                    1        5    138
6-24 months   ki1114097-CMIN             BANGLADESH                     9                    0        6    138
6-24 months   ki1114097-CMIN             BANGLADESH                     9                    1        8    138
6-24 months   ki1114097-CMIN             BANGLADESH                     10                   0       10    138
6-24 months   ki1114097-CMIN             BANGLADESH                     10                   1       10    138
6-24 months   ki1114097-CMIN             BANGLADESH                     11                   0       11    138
6-24 months   ki1114097-CMIN             BANGLADESH                     11                   1        7    138
6-24 months   ki1114097-CMIN             BANGLADESH                     12                   0        4    138
6-24 months   ki1114097-CMIN             BANGLADESH                     12                   1       11    138
6-24 months   ki1114097-CONTENT          PERU                           1                    0        0      5
6-24 months   ki1114097-CONTENT          PERU                           1                    1        0      5
6-24 months   ki1114097-CONTENT          PERU                           2                    0        0      5
6-24 months   ki1114097-CONTENT          PERU                           2                    1        0      5
6-24 months   ki1114097-CONTENT          PERU                           3                    0        0      5
6-24 months   ki1114097-CONTENT          PERU                           3                    1        0      5
6-24 months   ki1114097-CONTENT          PERU                           4                    0        0      5
6-24 months   ki1114097-CONTENT          PERU                           4                    1        0      5
6-24 months   ki1114097-CONTENT          PERU                           5                    0        1      5
6-24 months   ki1114097-CONTENT          PERU                           5                    1        1      5
6-24 months   ki1114097-CONTENT          PERU                           6                    0        0      5
6-24 months   ki1114097-CONTENT          PERU                           6                    1        0      5
6-24 months   ki1114097-CONTENT          PERU                           7                    0        0      5
6-24 months   ki1114097-CONTENT          PERU                           7                    1        0      5
6-24 months   ki1114097-CONTENT          PERU                           8                    0        0      5
6-24 months   ki1114097-CONTENT          PERU                           8                    1        1      5
6-24 months   ki1114097-CONTENT          PERU                           9                    0        0      5
6-24 months   ki1114097-CONTENT          PERU                           9                    1        0      5
6-24 months   ki1114097-CONTENT          PERU                           10                   0        1      5
6-24 months   ki1114097-CONTENT          PERU                           10                   1        1      5
6-24 months   ki1114097-CONTENT          PERU                           11                   0        0      5
6-24 months   ki1114097-CONTENT          PERU                           11                   1        0      5
6-24 months   ki1114097-CONTENT          PERU                           12                   0        0      5
6-24 months   ki1114097-CONTENT          PERU                           12                   1        0      5
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0        6    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1        1    168
6-24 months   ki1119695-PROBIT           BELARUS                        2                    0        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        2                    1        2    168
6-24 months   ki1119695-PROBIT           BELARUS                        3                    0        7    168
6-24 months   ki1119695-PROBIT           BELARUS                        3                    1        3    168
6-24 months   ki1119695-PROBIT           BELARUS                        4                    0        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        4                    1        2    168
6-24 months   ki1119695-PROBIT           BELARUS                        5                    0       10    168
6-24 months   ki1119695-PROBIT           BELARUS                        5                    1        0    168
6-24 months   ki1119695-PROBIT           BELARUS                        6                    0       13    168
6-24 months   ki1119695-PROBIT           BELARUS                        6                    1        1    168
6-24 months   ki1119695-PROBIT           BELARUS                        7                    0        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        7                    1        5    168
6-24 months   ki1119695-PROBIT           BELARUS                        8                    0       12    168
6-24 months   ki1119695-PROBIT           BELARUS                        8                    1        5    168
6-24 months   ki1119695-PROBIT           BELARUS                        9                    0       12    168
6-24 months   ki1119695-PROBIT           BELARUS                        9                    1        4    168
6-24 months   ki1119695-PROBIT           BELARUS                        10                   0        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        10                   1        8    168
6-24 months   ki1119695-PROBIT           BELARUS                        11                   0       14    168
6-24 months   ki1119695-PROBIT           BELARUS                        11                   1        7    168
6-24 months   ki1119695-PROBIT           BELARUS                        12                   0       17    168
6-24 months   ki1119695-PROBIT           BELARUS                        12                   1        3    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      104   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1        7   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0       80   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1        8   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    0      103   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1        7   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    0       71   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1        6   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    0       84   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1        7   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    0       80   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1        8   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    0       70   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1        6   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    0       86   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1        5   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    0       66   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1        2   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   0       80   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1        8   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   0       93   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1        7   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   0       98   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1       10   1096
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0        3     75
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        2     75
6-24 months   ki1148112-LCNI-5           MALAWI                         2                    0        3     75
6-24 months   ki1148112-LCNI-5           MALAWI                         2                    1        0     75
6-24 months   ki1148112-LCNI-5           MALAWI                         3                    0        2     75
6-24 months   ki1148112-LCNI-5           MALAWI                         3                    1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         4                    0        0     75
6-24 months   ki1148112-LCNI-5           MALAWI                         4                    1        0     75
6-24 months   ki1148112-LCNI-5           MALAWI                         5                    0        5     75
6-24 months   ki1148112-LCNI-5           MALAWI                         5                    1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         6                    0        2     75
6-24 months   ki1148112-LCNI-5           MALAWI                         6                    1        0     75
6-24 months   ki1148112-LCNI-5           MALAWI                         7                    0        4     75
6-24 months   ki1148112-LCNI-5           MALAWI                         7                    1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         8                    0        9     75
6-24 months   ki1148112-LCNI-5           MALAWI                         8                    1        3     75
6-24 months   ki1148112-LCNI-5           MALAWI                         9                    0       10     75
6-24 months   ki1148112-LCNI-5           MALAWI                         9                    1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         10                   0        8     75
6-24 months   ki1148112-LCNI-5           MALAWI                         10                   1        2     75
6-24 months   ki1148112-LCNI-5           MALAWI                         11                   0        4     75
6-24 months   ki1148112-LCNI-5           MALAWI                         11                   1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         12                   0       12     75
6-24 months   ki1148112-LCNI-5           MALAWI                         12                   1        1     75
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      203   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0      170   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0      193   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    0      197   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    0      231   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    0      234   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    0      236   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    0      273   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    0      280   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   0      289   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   0      299   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   0      232   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1        0   2837
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0        0   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1        0   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      212   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1       42   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      244   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1       51   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    0      195   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1       19   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    0      164   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1       32   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    0      122   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1       25   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    0      131   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1       25   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    0      109   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1       21   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    0       89   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1        9   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   0       24   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1        2   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   0        0   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1        0   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   0        0   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1        0   1516


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
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8eeccd12-ac7c-4a83-9a19-418a63ab79a1/f9e9db68-33c6-4418-8d9e-5e4a8f6b6acd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8eeccd12-ac7c-4a83-9a19-418a63ab79a1/f9e9db68-33c6-4418-8d9e-5e4a8f6b6acd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8eeccd12-ac7c-4a83-9a19-418a63ab79a1/f9e9db68-33c6-4418-8d9e-5e4a8f6b6acd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8eeccd12-ac7c-4a83-9a19-418a63ab79a1/f9e9db68-33c6-4418-8d9e-5e4a8f6b6acd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6562500   0.4858806   0.8266194
0-24 months   ki1000108-IRC              INDIA                          2                    NA                0.5454545   0.2915765   0.7993325
0-24 months   ki1000108-IRC              INDIA                          3                    NA                0.5652174   0.3222657   0.8081691
0-24 months   ki1000108-IRC              INDIA                          4                    NA                0.7500000   0.5708445   0.9291555
0-24 months   ki1000108-IRC              INDIA                          5                    NA                0.5652174   0.3263159   0.8041189
0-24 months   ki1000108-IRC              INDIA                          6                    NA                0.4864865   0.3200836   0.6528893
0-24 months   ki1000108-IRC              INDIA                          7                    NA                0.5476190   0.3946365   0.7006016
0-24 months   ki1000108-IRC              INDIA                          8                    NA                0.6190476   0.4554007   0.7826945
0-24 months   ki1000108-IRC              INDIA                          9                    NA                0.5625000   0.4064115   0.7185885
0-24 months   ki1000108-IRC              INDIA                          10                   NA                0.5476190   0.4075303   0.6877078
0-24 months   ki1000108-IRC              INDIA                          11                   NA                0.6250000   0.4423429   0.8076571
0-24 months   ki1000108-IRC              INDIA                          12                   NA                0.6458333   0.4853215   0.8063452
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2950820   0.1734112   0.4167527
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2432432   0.0925306   0.3939559
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.3023256   0.1572317   0.4474195
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.3333333   0.1703412   0.4963255
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.4696970   0.3561155   0.5832784
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.4347826   0.3111314   0.5584338
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.4545455   0.3277480   0.5813430
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.4204545   0.3066579   0.5342512
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.4313725   0.3346542   0.5280909
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.4947368   0.3828076   0.6066661
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2325581   0.1480315   0.3170847
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2881356   0.1606482   0.4156230
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5192308   0.3677287   0.6707328
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.4500000   0.2860503   0.6139497
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5102041   0.3682818   0.6521263
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.5882353   0.4490052   0.7274654
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.5294118   0.3709352   0.6878884
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.6666667   0.5144110   0.8189223
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.5000000   0.2932681   0.7067319
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5666667   0.3859510   0.7473823
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.6666667   0.5102022   0.8231311
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.4482759   0.2597258   0.6368259
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4516129   0.2397675   0.6634583
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.3448276   0.1495374   0.5401178
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5692308   0.4441236   0.6943379
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7358491   0.5966646   0.8750335
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6341463   0.4729291   0.7953636
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.6000000   0.4200156   0.7799844
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.6363636   0.4873392   0.7853881
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.6326531   0.4940133   0.7712928
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.7164179   0.5984378   0.8343981
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.6219512   0.5205792   0.7233232
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.7457627   0.6281720   0.8633534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.6463415   0.5329654   0.7597175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.5000000   0.3833633   0.6166367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.5156250   0.3861347   0.6451153
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6446701   0.5739145   0.7154256
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6555556   0.5832943   0.7278168
0-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.6193182   0.5433675   0.6952689
0-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.6203704   0.5170685   0.7236722
0-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.6078431   0.4944616   0.7212247
0-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.5922330   0.4931452   0.6913208
0-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.4948454   0.3921501   0.5975406
0-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.6441718   0.5650352   0.7233084
0-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.6035503   0.5261977   0.6809029
0-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.6084906   0.5387112   0.6782699
0-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.5957447   0.5041443   0.6873450
0-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.5777778   0.4975667   0.6579888
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8674242   0.8269621   0.9078864
0-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.8237705   0.7768654   0.8706756
0-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.8758865   0.8374188   0.9143543
0-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.8675497   0.8296528   0.9054465
0-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.8402367   0.8015205   0.8789528
0-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.8414634   0.8017056   0.8812212
0-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.8846154   0.8550993   0.9141315
0-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.8694690   0.8383995   0.9005386
0-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.8646617   0.8310753   0.8982481
0-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.8553719   0.8238987   0.8868451
0-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.8443396   0.8107543   0.8779249
0-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.8813559   0.8527654   0.9099464
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5133531   0.4598041   0.5669021
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5000000   0.4399593   0.5600407
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.4902597   0.4341362   0.5463833
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.5360360   0.4677727   0.6042994
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.5277778   0.4652174   0.5903382
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.6000000   0.5450356   0.6549644
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.6201780   0.5677736   0.6725825
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.5594203   0.5056822   0.6131584
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.5714286   0.5142493   0.6286078
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.5323741   0.4729919   0.5917563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.5449102   0.4920148   0.5978055
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.5075075   0.4536877   0.5613273
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4380032   0.3980865   0.4779199
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4375000   0.3948815   0.4801185
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4354305   0.3952773   0.4755836
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.4049430   0.3627298   0.4471561
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.3703704   0.3285895   0.4121513
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.3728814   0.3324193   0.4133434
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.3702929   0.3288991   0.4116867
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4083205   0.3702947   0.4463463
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4792683   0.4450727   0.5134639
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4424242   0.4084800   0.4763685
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.4382567   0.4040617   0.4724516
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.4049803   0.3692388   0.4407219
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4000000   0.2191259   0.5808741
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2777778   0.0803571   0.4751985
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.4210526   0.2048768   0.6372285
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.3157895   0.1001400   0.5314389
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.5714286   0.4078500   0.7350072
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.6176471   0.4506564   0.7846377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.6190476   0.4047491   0.8333462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.5806452   0.4014209   0.7598695
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.7142857   0.5598672   0.8687043
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.5106383   0.3729251   0.6483515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.3214286   0.1508981   0.4919591
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.5833333   0.3798267   0.7868400
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.8051948   0.7150497   0.8953399
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.8169014   0.7264790   0.9073238
0-6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.7341772   0.6463889   0.8219656
0-6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.6666667   0.5434984   0.7898349
0-6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.7173913   0.5904287   0.8443539
0-6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.7142857   0.5662094   0.8623621
0-6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.7179487   0.5738897   0.8620077
0-6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.8142857   0.7224022   0.9061693
0-6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.7761194   0.6773629   0.8748759
0-6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.8611111   0.7890289   0.9331934
0-6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.7931034   0.6881656   0.8980413
0-6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.7457627   0.6263245   0.8652009
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.8871595   0.8480879   0.9262312
0-6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.8540773   0.8083141   0.8998404
0-6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.8970588   0.8605962   0.9335214
0-6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.8934708   0.8576660   0.9292756
0-6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.8658537   0.8286083   0.9030990
0-6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.8757962   0.8389570   0.9126354
0-6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.9018692   0.8734165   0.9303218
0-6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.8919540   0.8625010   0.9214071
0-6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.8903394   0.8590056   0.9216732
0-6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.8693790   0.8387114   0.9000466
0-6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.8709677   0.8381707   0.9037648
0-6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.9137168   0.8875814   0.9398522
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7345133   0.6766998   0.7923268
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7093023   0.6416818   0.7769229
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.7272727   0.6663061   0.7882394
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.7793103   0.7123170   0.8463037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.7826087   0.7186289   0.8465885
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.7973568   0.7452698   0.8494438
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.7777778   0.7271296   0.8284259
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.7401575   0.6859995   0.7943155
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.7345133   0.6770650   0.7919616
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.7368421   0.6739667   0.7997175
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.7478632   0.6920329   0.8036936
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.7066667   0.6473316   0.7660018
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6507177   0.6049906   0.6964448
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.6452514   0.5956652   0.6948376
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.6399027   0.5934700   0.6863353
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.6474164   0.5957626   0.6990702
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.7456140   0.6890535   0.8021746
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.7394958   0.6837048   0.7952868
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.7314050   0.6755325   0.7872774
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.7047872   0.6588176   0.7507568
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.7277778   0.6902164   0.7653392
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.6809701   0.6414904   0.7204499
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.6869070   0.6473858   0.7264283
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.5819209   0.5399458   0.6238960
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5833333   0.4107848   0.7558819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7727273   0.5893806   0.9560739
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.5714286   0.3363188   0.8065383
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.5238095   0.2895952   0.7580239
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.5357143   0.3560052   0.7154234
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.4642857   0.2625812   0.6659902
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.6250000   0.4547392   0.7952608
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.5227273   0.3797863   0.6656683
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.6111111   0.4468692   0.7753531
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.5789474   0.4229049   0.7349898
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.5405405   0.3792769   0.7018042
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.4000000   0.2104988   0.5895012
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5416667   0.4510794   0.6322539
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.5504587   0.4497959   0.6511215
6-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.5257732   0.4164091   0.6351373
6-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.5789474   0.4338192   0.7240756
6-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.5178571   0.3648731   0.6708412
6-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.5294118   0.4108607   0.6479628
6-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.3448276   0.2156230   0.4740322
6-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.5161290   0.4045028   0.6277552
6-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.4901961   0.3907783   0.5896139
6-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.4785714   0.3921486   0.5649942
6-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.4578313   0.3406809   0.5749818
6-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.4958678   0.4011418   0.5905937


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.6105033   0.5863646   0.6346419
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5432918   0.5268968   0.5596869
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4221371   0.4110175   0.4332567
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.7720994   0.7419223   0.8022766
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7475189   0.7305656   0.7644721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6751162   0.6617750   0.6884574
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576408   0.5054408   0.6098407
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5045290   0.4730969   0.5359611


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2                    1                 0.8311688   0.4877862   1.4162796
0-24 months   ki1000108-IRC              INDIA                          3                    1                 0.8612836   0.5212519   1.4231306
0-24 months   ki1000108-IRC              INDIA                          4                    1                 1.1428571   0.8031822   1.6261844
0-24 months   ki1000108-IRC              INDIA                          5                    1                 0.8612836   0.5244892   1.4143465
0-24 months   ki1000108-IRC              INDIA                          6                    1                 0.7413127   0.4825216   1.1389015
0-24 months   ki1000108-IRC              INDIA                          7                    1                 0.8344671   0.5698740   1.2219111
0-24 months   ki1000108-IRC              INDIA                          8                    1                 0.9433107   0.6512338   1.3663833
0-24 months   ki1000108-IRC              INDIA                          9                    1                 0.8571429   0.5861637   1.2533938
0-24 months   ki1000108-IRC              INDIA                          10                   1                 0.8344671   0.5796238   1.2013575
0-24 months   ki1000108-IRC              INDIA                          11                   1                 0.9523810   0.6442355   1.4079161
0-24 months   ki1000108-IRC              INDIA                          12                   1                 0.9841270   0.6870088   1.4097430
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8243243   0.3916297   1.7350842
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 1.0245478   0.5442076   1.9288562
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.1296296   0.5958423   2.1416120
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.5917508   0.9869807   2.5670924
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.4734300   0.8929932   2.4311448
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.5404040   0.9363713   2.5340852
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.4248737   0.8702504   2.3329666
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 1.4618736   0.9143267   2.3373204
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.6766082   1.0475751   2.6833542
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.7881137   0.4548741   1.3654839
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.9764595   0.5332900   1.7879074
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.8666667   0.5434712   1.3820625
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.9826153   0.6566845   1.4703145
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.1328976   0.7781631   1.6493418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.0196078   0.6713033   1.5486295
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.2839506   0.8865229   1.8595450
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9629630   0.5805423   1.5972957
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.0913580   0.7083876   1.6813710
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 1.2839506   0.8831067   1.8667385
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8633461   0.5174006   1.4405984
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.8697730   0.5005468   1.5113572
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.6641124   0.3511934   1.2558473
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2927078   0.9673127   1.7275629
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1140409   0.7960716   1.5590144
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0540541   0.7267176   1.5288332
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.1179361   0.8108401   1.5413411
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1114175   0.8148756   1.5158743
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.2585720   0.9563181   1.6563562
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.0926170   0.8310650   1.4364844
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.3101237   0.9996285   1.7170620
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.1354647   0.8571311   1.5041808
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.8783784   0.6375045   1.2102636
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9058277   0.6487985   1.2646821
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0168854   0.8703959   1.1880293
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.9606747   0.8148937   1.1325352
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.9623068   0.7883182   1.1746962
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.9428748   0.7593835   1.1707034
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.9186607   0.7520641   1.1221615
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.7675948   0.6069800   0.9707103
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.9992271   0.8474610   1.1781719
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.9362158   0.7908497   1.1083016
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.9438791   0.8053380   1.1062531
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.9241079   0.7650320   1.1162610
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.8962380   0.7508719   1.0697464
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 0.9496743   0.8822816   1.0222147
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 1.0097556   0.9470912   1.0765663
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 1.0001446   0.9382280   1.0661473
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.9686571   0.9071822   1.0342979
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.9700714   0.9077550   1.0366657
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 1.0198186   0.9629762   1.0800163
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 1.0023573   0.9451552   1.0630213
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.9968152   0.9381066   1.0591979
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.9861056   0.9292259   1.0464670
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.9733872   0.9155072   1.0349264
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 1.0160610   0.9599405   1.0754624
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9739884   0.8307518   1.1419217
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9550146   0.8179903   1.1149923
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0441858   0.8856957   1.2310367
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0280989   0.8779277   1.2039572
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1687861   1.0172802   1.3428562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.2080925   1.0563261   1.3816637
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0897378   0.9456603   1.2557664
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.1131296   0.9633145   1.2862442
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0370524   0.8901748   1.2081647
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0614724   0.9204988   1.2240361
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9886129   0.8519679   1.1471740
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9988511   0.8741124   1.1413905
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9941262   0.8732441   1.1317418
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9245205   0.8049751   1.0618194
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8455882   0.7314373   0.9775539
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.8513210   0.7388426   0.9809227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8454113   0.7318647   0.9765743
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9322317   0.8183433   1.0619700
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0942118   0.9746206   1.2284775
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0100936   0.8966532   1.1378859
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0005786   0.8874589   1.1281171
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9246059   0.8144430   1.0496695
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.6944444   0.2990894   1.6124047
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 1.0526316   0.5310694   2.0864189
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.7894737   0.3480466   1.7907622
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.4285714   0.8365197   2.4396513
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.5441176   0.9117442   2.6150968
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.5476190   0.8756724   2.7351835
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.4516129   0.8396127   2.5097048
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 1.7857143   1.0817845   2.9476994
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.2765957   0.7540443   2.1612745
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8035714   0.4002020   1.6135026
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 1.4583333   0.8237994   2.5816190
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.0145388   0.8667533   1.1875225
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.9118007   0.7740307   1.0740926
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.8279570   0.6670982   1.0276040
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.8909537   0.7226119   1.0985129
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1                 0.8870968   0.7008861   1.1227796
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1                 0.8916460   0.7086066   1.1219662
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1                 1.0112903   0.8626652   1.1855215
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1                 0.9638902   0.8136176   1.1419178
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1                 1.0694444   0.9299206   1.2299022
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1                 0.9849833   0.8282372   1.1713941
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1                 0.9261892   0.7617910   1.1260653
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.9627099   0.8982004   1.0318525
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1                 1.0111584   0.9523382   1.0736116
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1                 1.0071140   0.9488964   1.0689035
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.9759842   0.9177119   1.0379566
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.9871913   0.9288640   1.0491812
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1                 1.0165806   0.9629724   1.0731731
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1                 1.0054043   0.9515569   1.0622989
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1                 1.0035844   0.9485721   1.0617870
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.9799579   0.9261932   1.0368436
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.9817487   0.9264783   1.0403164
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1                 1.0299352   0.9772441   1.0854672
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9656767   0.8533769   1.0927544
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9901424   0.8825887   1.1108028
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0609888   0.9442594   1.1921483
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0654793   0.9511730   1.1935222
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0855581   0.9800101   1.2024737
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0589023   0.9560714   1.1727932
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0076843   0.9050071   1.1220106
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.0000000   0.8949731   1.1173520
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0031706   0.8932192   1.1266565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0181753   0.9135018   1.1348427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9620884   0.8574972   1.0794368
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9915996   0.8935356   1.1004259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9833798   0.8888990   1.0879030
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9949267   0.8945763   1.1065341
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.1458333   1.0332690   1.2706605
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.1364310   1.0251005   1.2598526
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.1239973   1.0131813   1.2469338
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.0830921   0.9840713   1.1920769
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.1184232   1.0250397   1.2203142
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0464909   0.9553686   1.1463044
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0556145   0.9639674   1.1559746
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.8942755   0.8086051   0.9890226
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3246753   0.9066142   1.9355143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9795918   0.5901537   1.6260174
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8979592   0.5253177   1.5349391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.9183673   0.5871947   1.4363186
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7959184   0.4705600   1.3462386
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.0714286   0.7166729   1.6017895
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8961039   0.5989761   1.3406249
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.0476190   0.7024813   1.5623273
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9924812   0.6651591   1.4808773
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9266409   0.6087702   1.4104887
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.6857143   0.3922635   1.1986944
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0162315   0.7931715   1.3020216
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.9706582   0.7432784   1.2675969
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 1.0688259   0.7907395   1.4447095
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.9560440   0.6808438   1.3424812
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.9773756   0.7390541   1.2925481
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.6366048   0.4223463   0.9595576
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.9528536   0.7249220   1.2524519
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.9049774   0.6957811   1.1770714
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.8835165   0.6907511   1.1300762
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.8452271   0.6226103   1.1474414
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.9154482   0.7101801   1.1800463


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0663766   -0.2308937   0.0981406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0857534   -0.0319095   0.2034163
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0009593   -0.1398662   0.1417847
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0576977   -0.0615111   0.1769065
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0341668   -0.1013205   0.0329869
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0062191   -0.0455140   0.0330758
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0299387   -0.0210775   0.0809550
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0158661   -0.0540187   0.0222864
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1131965   -0.0595023   0.2858953
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0330954   -0.1185739   0.0523832
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0016329   -0.0395174   0.0362516
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0130056   -0.0420404   0.0680516
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0243985   -0.0191871   0.0679841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0256926   -0.1892618   0.1378766
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0371377   -0.1232285   0.0489531


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1125268   -0.4302983   0.1346449
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2251719   -0.1544827   0.4799761
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0018440   -0.3091534   0.2389621
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0920324   -0.1196086   0.2636665
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0559649   -0.1719853   0.0485700
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0072214   -0.0538995   0.0373893
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0551062   -0.0436323   0.1445029
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0375852   -0.1320058   0.0489597
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2205714   -0.2015354   0.4943895
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0428641   -0.1597103   0.0622093
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0018440   -0.0455525   0.0400373
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0173983   -0.0590764   0.0883509
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0361397   -0.0306446   0.0985965
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0460737   -0.3845951   0.2096821
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0736086   -0.2588170   0.0843502
