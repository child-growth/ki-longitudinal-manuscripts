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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0        5    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1        9    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0        8    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       15    124
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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    0        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1        0     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        7    178
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        6    178
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    0        3    178
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1        4    178
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0        6    178
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       13    178
0-24 months   ki0047075b-MAL-ED          INDIA                          4                    0        5    178
0-24 months   ki0047075b-MAL-ED          INDIA                          4                    1        5    178
0-24 months   ki0047075b-MAL-ED          INDIA                          5                    0        2    178
0-24 months   ki0047075b-MAL-ED          INDIA                          5                    1        6    178
0-24 months   ki0047075b-MAL-ED          INDIA                          6                    0        7    178
0-24 months   ki0047075b-MAL-ED          INDIA                          6                    1        9    178
0-24 months   ki0047075b-MAL-ED          INDIA                          7                    0       11    178
0-24 months   ki0047075b-MAL-ED          INDIA                          7                    1       15    178
0-24 months   ki0047075b-MAL-ED          INDIA                          8                    0        5    178
0-24 months   ki0047075b-MAL-ED          INDIA                          8                    1       13    178
0-24 months   ki0047075b-MAL-ED          INDIA                          9                    0        8    178
0-24 months   ki0047075b-MAL-ED          INDIA                          9                    1        7    178
0-24 months   ki0047075b-MAL-ED          INDIA                          10                   0        6    178
0-24 months   ki0047075b-MAL-ED          INDIA                          10                   1       10    178
0-24 months   ki0047075b-MAL-ED          INDIA                          11                   0       10    178
0-24 months   ki0047075b-MAL-ED          INDIA                          11                   1       15    178
0-24 months   ki0047075b-MAL-ED          INDIA                          12                   0        1    178
0-24 months   ki0047075b-MAL-ED          INDIA                          12                   1        4    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        9     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        7     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                    0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1       11     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                    0        4     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                    1       13     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                    0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                    1        5     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                    0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                    1        7     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                    0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                    1        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                    0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                    1        4     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                   0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                   1        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                   0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                   1        6     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                   0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                   1        4     93
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        8     34
0-24 months   ki0047075b-MAL-ED          PERU                           2                    0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           3                    0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           4                    0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           4                    1        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           5                    0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           5                    1        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           6                    0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           6                    1        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           7                    0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           7                    1        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           8                    0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           8                    1        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           9                    0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           9                    1        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           10                   0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           10                   1        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           11                   0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           11                   1        8     34
0-24 months   ki0047075b-MAL-ED          PERU                           12                   0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           12                   1        0     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        4     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       14     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        6     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        2     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    0        1     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1        3     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    0        1     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1        2     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    0        1     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1        4     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1        3     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    0        1     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1        2     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   0        3     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1       11     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   0        4     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1        8     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   0        2     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1       11     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        6     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1        6     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   0        2     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1        5     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1        9     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        9    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       19    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        3    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1        6    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       10    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       13    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    0       17    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1       18    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    0        9    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1       17    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    0       11    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1       25    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    0       16    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1        9    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    0        7    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1       14    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    0        6    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1       15    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   0        8    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1       24    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   0       14    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1       29    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   0       10    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1       17    326
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
0-24 months   ki1000109-EE               PAKISTAN                       1                    0       44    257
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       24    257
0-24 months   ki1000109-EE               PAKISTAN                       2                    0       24    257
0-24 months   ki1000109-EE               PAKISTAN                       2                    1       17    257
0-24 months   ki1000109-EE               PAKISTAN                       3                    0       23    257
0-24 months   ki1000109-EE               PAKISTAN                       3                    1       18    257
0-24 months   ki1000109-EE               PAKISTAN                       4                    0        8    257
0-24 months   ki1000109-EE               PAKISTAN                       4                    1        6    257
0-24 months   ki1000109-EE               PAKISTAN                       5                    0        0    257
0-24 months   ki1000109-EE               PAKISTAN                       5                    1        0    257
0-24 months   ki1000109-EE               PAKISTAN                       6                    0        0    257
0-24 months   ki1000109-EE               PAKISTAN                       6                    1        0    257
0-24 months   ki1000109-EE               PAKISTAN                       7                    0        0    257
0-24 months   ki1000109-EE               PAKISTAN                       7                    1        0    257
0-24 months   ki1000109-EE               PAKISTAN                       8                    0        0    257
0-24 months   ki1000109-EE               PAKISTAN                       8                    1        0    257
0-24 months   ki1000109-EE               PAKISTAN                       9                    0        0    257
0-24 months   ki1000109-EE               PAKISTAN                       9                    1        0    257
0-24 months   ki1000109-EE               PAKISTAN                       10                   0        1    257
0-24 months   ki1000109-EE               PAKISTAN                       10                   1        1    257
0-24 months   ki1000109-EE               PAKISTAN                       11                   0       27    257
0-24 months   ki1000109-EE               PAKISTAN                       11                   1       17    257
0-24 months   ki1000109-EE               PAKISTAN                       12                   0       23    257
0-24 months   ki1000109-EE               PAKISTAN                       12                   1       24    257
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0        2    200
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        3    200
0-24 months   ki1000109-ResPak           PAKISTAN                       2                    0        6    200
0-24 months   ki1000109-ResPak           PAKISTAN                       2                    1        5    200
0-24 months   ki1000109-ResPak           PAKISTAN                       3                    0       10    200
0-24 months   ki1000109-ResPak           PAKISTAN                       3                    1        9    200
0-24 months   ki1000109-ResPak           PAKISTAN                       4                    0       13    200
0-24 months   ki1000109-ResPak           PAKISTAN                       4                    1        9    200
0-24 months   ki1000109-ResPak           PAKISTAN                       5                    0       26    200
0-24 months   ki1000109-ResPak           PAKISTAN                       5                    1       14    200
0-24 months   ki1000109-ResPak           PAKISTAN                       6                    0       17    200
0-24 months   ki1000109-ResPak           PAKISTAN                       6                    1       12    200
0-24 months   ki1000109-ResPak           PAKISTAN                       7                    0       10    200
0-24 months   ki1000109-ResPak           PAKISTAN                       7                    1       13    200
0-24 months   ki1000109-ResPak           PAKISTAN                       8                    0       13    200
0-24 months   ki1000109-ResPak           PAKISTAN                       8                    1       10    200
0-24 months   ki1000109-ResPak           PAKISTAN                       9                    0        8    200
0-24 months   ki1000109-ResPak           PAKISTAN                       9                    1        9    200
0-24 months   ki1000109-ResPak           PAKISTAN                       10                   0        2    200
0-24 months   ki1000109-ResPak           PAKISTAN                       10                   1        3    200
0-24 months   ki1000109-ResPak           PAKISTAN                       11                   0        0    200
0-24 months   ki1000109-ResPak           PAKISTAN                       11                   1        0    200
0-24 months   ki1000109-ResPak           PAKISTAN                       12                   0        2    200
0-24 months   ki1000109-ResPak           PAKISTAN                       12                   1        4    200
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
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0       68   1522
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       96   1522
0-24 months   ki1101329-Keneba           GAMBIA                         2                    0       60   1522
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1       92   1522
0-24 months   ki1101329-Keneba           GAMBIA                         3                    0       67   1522
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1       77   1522
0-24 months   ki1101329-Keneba           GAMBIA                         4                    0       40   1522
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1       46   1522
0-24 months   ki1101329-Keneba           GAMBIA                         5                    0       40   1522
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1       43   1522
0-24 months   ki1101329-Keneba           GAMBIA                         6                    0       42   1522
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1       52   1522
0-24 months   ki1101329-Keneba           GAMBIA                         7                    0       48   1522
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1       35   1522
0-24 months   ki1101329-Keneba           GAMBIA                         8                    0       57   1522
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1       76   1522
0-24 months   ki1101329-Keneba           GAMBIA                         9                    0       67   1522
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1       78   1522
0-24 months   ki1101329-Keneba           GAMBIA                         10                   0       83   1522
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1       91   1522
0-24 months   ki1101329-Keneba           GAMBIA                         11                   0       55   1522
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1       62   1522
0-24 months   ki1101329-Keneba           GAMBIA                         12                   0       74   1522
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1       73   1522
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    0        1    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    1        1    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    0       67    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    1       55    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    0       95    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    1      114    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    0      105    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    1      123    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   1        0    561
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
0-24 months   ki1114097-CMIN             BRAZIL                         1                    0        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         1                    1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         2                    0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         2                    1        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         3                    0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         3                    1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         4                    0        2     13
0-24 months   ki1114097-CMIN             BRAZIL                         4                    1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         5                    0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         5                    1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         6                    0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         6                    1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         7                    0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         7                    1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         8                    0        2     13
0-24 months   ki1114097-CMIN             BRAZIL                         8                    1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         9                    0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         9                    1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         10                   0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         10                   1        3     13
0-24 months   ki1114097-CMIN             BRAZIL                         11                   0        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         11                   1        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         12                   0        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         12                   1        1     13
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0       27    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       13    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    0       12    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1        6    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    0       19    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1       14    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    0       18    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1        3    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    0       17    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1        5    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    0       12    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1        6    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    0       12    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1        6    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    0       11    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1        7    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    0       25    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1       14    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   0       27    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1       16    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   0       17    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1       14    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   0       20    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1       13    334
0-24 months   ki1114097-CMIN             PERU                           1                    0        0     94
0-24 months   ki1114097-CMIN             PERU                           1                    1        0     94
0-24 months   ki1114097-CMIN             PERU                           2                    0        3     94
0-24 months   ki1114097-CMIN             PERU                           2                    1        5     94
0-24 months   ki1114097-CMIN             PERU                           3                    0        3     94
0-24 months   ki1114097-CMIN             PERU                           3                    1        8     94
0-24 months   ki1114097-CMIN             PERU                           4                    0        1     94
0-24 months   ki1114097-CMIN             PERU                           4                    1       11     94
0-24 months   ki1114097-CMIN             PERU                           5                    0        4     94
0-24 months   ki1114097-CMIN             PERU                           5                    1       15     94
0-24 months   ki1114097-CMIN             PERU                           6                    0        4     94
0-24 months   ki1114097-CMIN             PERU                           6                    1       11     94
0-24 months   ki1114097-CMIN             PERU                           7                    0        0     94
0-24 months   ki1114097-CMIN             PERU                           7                    1        1     94
0-24 months   ki1114097-CMIN             PERU                           8                    0        0     94
0-24 months   ki1114097-CMIN             PERU                           8                    1        6     94
0-24 months   ki1114097-CMIN             PERU                           9                    0        0     94
0-24 months   ki1114097-CMIN             PERU                           9                    1        3     94
0-24 months   ki1114097-CMIN             PERU                           10                   0        2     94
0-24 months   ki1114097-CMIN             PERU                           10                   1        4     94
0-24 months   ki1114097-CMIN             PERU                           11                   0        3     94
0-24 months   ki1114097-CMIN             PERU                           11                   1        5     94
0-24 months   ki1114097-CMIN             PERU                           12                   0        2     94
0-24 months   ki1114097-CMIN             PERU                           12                   1        3     94
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      164   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      172   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0      129   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      128   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    0      153   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1      150   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    0      102   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1      118   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    0      118   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1      130   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    0      124   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1      187   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    0      127   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1      207   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    0      153   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1      189   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    0      124   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1      168   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   0      129   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1      147   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   0      149   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1      180   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   0      158   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1      169   3575
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      349   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      272   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0      297   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      232   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0      341   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      264   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    0      313   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1      213   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    0      289   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1      170   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    0      297   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1      176   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    0      301   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1      177   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    0      384   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1      265   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    0      427   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1      393   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   0      460   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1      366   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   0      464   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1      362   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   0      454   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1      309   7575
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
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    0        1     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1        6     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1        6     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1        4     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1        4     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    0        1     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1        6     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    0        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1        3     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    0        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1        8     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1        3     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   0        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   0        1     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1        4     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        2     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        2     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                    1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                    1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                    1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                    1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                    1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                    1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                   0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                   1        3     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                   0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                   1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                   0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                   1        0     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        5     83
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0        2     83
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1        4     83
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1        8     83
0-6 months    ki0047075b-MAL-ED          INDIA                          4                    0        1     83
0-6 months    ki0047075b-MAL-ED          INDIA                          4                    1        4     83
0-6 months    ki0047075b-MAL-ED          INDIA                          5                    0        0     83
0-6 months    ki0047075b-MAL-ED          INDIA                          5                    1        4     83
0-6 months    ki0047075b-MAL-ED          INDIA                          6                    0        5     83
0-6 months    ki0047075b-MAL-ED          INDIA                          6                    1        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          7                    0        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          7                    1        9     83
0-6 months    ki0047075b-MAL-ED          INDIA                          8                    0        1     83
0-6 months    ki0047075b-MAL-ED          INDIA                          8                    1        5     83
0-6 months    ki0047075b-MAL-ED          INDIA                          9                    0        0     83
0-6 months    ki0047075b-MAL-ED          INDIA                          9                    1        6     83
0-6 months    ki0047075b-MAL-ED          INDIA                          10                   0        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          10                   1        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          11                   0        2     83
0-6 months    ki0047075b-MAL-ED          INDIA                          11                   1        7     83
0-6 months    ki0047075b-MAL-ED          INDIA                          12                   0        1     83
0-6 months    ki0047075b-MAL-ED          INDIA                          12                   1        1     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        4     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    1        3     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                    0        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                    1        6     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                    0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                    1        6     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                    0        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                    1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                    0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                    1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                    0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                    1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                    0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                    1        3     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                   0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                   1        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                   0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                   1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                   0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                   1        1     43
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        4     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1        5     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   0        3     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1        3     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1        5     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1        2     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1        2     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1        5     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       11    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        2    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1        6    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    0        7    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        9    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    0        8    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1       12    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    0        8    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1       12    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    0        5    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1       17    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    0        5    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1        8    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    0        4    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1        6    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    0        2    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1       10    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   0        5    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1       16    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   0        8    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1       19    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   0        5    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1       11    203
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
0-6 months    ki1000109-EE               PAKISTAN                       1                    0       15    108
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       16    108
0-6 months    ki1000109-EE               PAKISTAN                       2                    0        8    108
0-6 months    ki1000109-EE               PAKISTAN                       2                    1        7    108
0-6 months    ki1000109-EE               PAKISTAN                       3                    0        7    108
0-6 months    ki1000109-EE               PAKISTAN                       3                    1       10    108
0-6 months    ki1000109-EE               PAKISTAN                       4                    0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       4                    1        5    108
0-6 months    ki1000109-EE               PAKISTAN                       5                    0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       5                    1        0    108
0-6 months    ki1000109-EE               PAKISTAN                       6                    0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       6                    1        0    108
0-6 months    ki1000109-EE               PAKISTAN                       7                    0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       7                    1        0    108
0-6 months    ki1000109-EE               PAKISTAN                       8                    0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       8                    1        0    108
0-6 months    ki1000109-EE               PAKISTAN                       9                    0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       9                    1        0    108
0-6 months    ki1000109-EE               PAKISTAN                       10                   0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       10                   1        1    108
0-6 months    ki1000109-EE               PAKISTAN                       11                   0       11    108
0-6 months    ki1000109-EE               PAKISTAN                       11                   1        7    108
0-6 months    ki1000109-EE               PAKISTAN                       12                   0        6    108
0-6 months    ki1000109-EE               PAKISTAN                       12                   1       15    108
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0        2    112
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    1        3    112
0-6 months    ki1000109-ResPak           PAKISTAN                       2                    0        2    112
0-6 months    ki1000109-ResPak           PAKISTAN                       2                    1        3    112
0-6 months    ki1000109-ResPak           PAKISTAN                       3                    0        6    112
0-6 months    ki1000109-ResPak           PAKISTAN                       3                    1        7    112
0-6 months    ki1000109-ResPak           PAKISTAN                       4                    0        7    112
0-6 months    ki1000109-ResPak           PAKISTAN                       4                    1        8    112
0-6 months    ki1000109-ResPak           PAKISTAN                       5                    0       10    112
0-6 months    ki1000109-ResPak           PAKISTAN                       5                    1        9    112
0-6 months    ki1000109-ResPak           PAKISTAN                       6                    0        4    112
0-6 months    ki1000109-ResPak           PAKISTAN                       6                    1        9    112
0-6 months    ki1000109-ResPak           PAKISTAN                       7                    0        3    112
0-6 months    ki1000109-ResPak           PAKISTAN                       7                    1       11    112
0-6 months    ki1000109-ResPak           PAKISTAN                       8                    0        6    112
0-6 months    ki1000109-ResPak           PAKISTAN                       8                    1        7    112
0-6 months    ki1000109-ResPak           PAKISTAN                       9                    0        1    112
0-6 months    ki1000109-ResPak           PAKISTAN                       9                    1        7    112
0-6 months    ki1000109-ResPak           PAKISTAN                       10                   0        1    112
0-6 months    ki1000109-ResPak           PAKISTAN                       10                   1        3    112
0-6 months    ki1000109-ResPak           PAKISTAN                       11                   0        0    112
0-6 months    ki1000109-ResPak           PAKISTAN                       11                   1        0    112
0-6 months    ki1000109-ResPak           PAKISTAN                       12                   0        1    112
0-6 months    ki1000109-ResPak           PAKISTAN                       12                   1        2    112
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
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0       13    416
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       31    416
0-6 months    ki1101329-Keneba           GAMBIA                         2                    0       10    416
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1       32    416
0-6 months    ki1101329-Keneba           GAMBIA                         3                    0       21    416
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1       26    416
0-6 months    ki1101329-Keneba           GAMBIA                         4                    0       16    416
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1       13    416
0-6 months    ki1101329-Keneba           GAMBIA                         5                    0       13    416
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1       14    416
0-6 months    ki1101329-Keneba           GAMBIA                         6                    0       10    416
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1       16    416
0-6 months    ki1101329-Keneba           GAMBIA                         7                    0       10    416
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1       15    416
0-6 months    ki1101329-Keneba           GAMBIA                         8                    0       12    416
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1       28    416
0-6 months    ki1101329-Keneba           GAMBIA                         9                    0       15    416
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1       28    416
0-6 months    ki1101329-Keneba           GAMBIA                         10                   0       10    416
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1       24    416
0-6 months    ki1101329-Keneba           GAMBIA                         11                   0        9    416
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1       24    416
0-6 months    ki1101329-Keneba           GAMBIA                         12                   0       13    416
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1       13    416
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                    0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                    1        1    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                    0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                    1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                    0       16    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                    1       28    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                    0       28    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                    1       44    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                    0       31    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                    1       32    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                    0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                    1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                   0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                   1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                   0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                   1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                   0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                   1        0    180
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
0-6 months    ki1114097-CMIN             BRAZIL                         1                    0        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         1                    1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         2                    0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         2                    1        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         3                    0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         3                    1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         4                    0        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         4                    1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         5                    0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         5                    1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         6                    0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         6                    1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         7                    0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         7                    1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         8                    0        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         8                    1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         9                    0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         9                    1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         10                   0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         10                   1        3      9
0-6 months    ki1114097-CMIN             BRAZIL                         11                   0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         11                   1        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         12                   0        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         12                   1        0      9
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0        5     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    1        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    0        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    1        4     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    0        5     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    1        3     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    0        4     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    1        1     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    0        1     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    1        0     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    0        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    1        4     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    0        0     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    1        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    0        1     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    1        1     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    0        1     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    1        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   0        3     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   1        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   0        0     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   1        0     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   0        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   1        2     49
0-6 months    ki1114097-CMIN             PERU                           1                    0        0     52
0-6 months    ki1114097-CMIN             PERU                           1                    1        0     52
0-6 months    ki1114097-CMIN             PERU                           2                    0        3     52
0-6 months    ki1114097-CMIN             PERU                           2                    1        4     52
0-6 months    ki1114097-CMIN             PERU                           3                    0        0     52
0-6 months    ki1114097-CMIN             PERU                           3                    1        7     52
0-6 months    ki1114097-CMIN             PERU                           4                    0        0     52
0-6 months    ki1114097-CMIN             PERU                           4                    1        7     52
0-6 months    ki1114097-CMIN             PERU                           5                    0        1     52
0-6 months    ki1114097-CMIN             PERU                           5                    1        6     52
0-6 months    ki1114097-CMIN             PERU                           6                    0        1     52
0-6 months    ki1114097-CMIN             PERU                           6                    1        4     52
0-6 months    ki1114097-CMIN             PERU                           7                    0        0     52
0-6 months    ki1114097-CMIN             PERU                           7                    1        0     52
0-6 months    ki1114097-CMIN             PERU                           8                    0        0     52
0-6 months    ki1114097-CMIN             PERU                           8                    1        4     52
0-6 months    ki1114097-CMIN             PERU                           9                    0        0     52
0-6 months    ki1114097-CMIN             PERU                           9                    1        0     52
0-6 months    ki1114097-CMIN             PERU                           10                   0        2     52
0-6 months    ki1114097-CMIN             PERU                           10                   1        4     52
0-6 months    ki1114097-CMIN             PERU                           11                   0        1     52
0-6 months    ki1114097-CMIN             PERU                           11                   1        4     52
0-6 months    ki1114097-CMIN             PERU                           12                   0        2     52
0-6 months    ki1114097-CMIN             PERU                           12                   1        2     52
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0       61   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      165   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    0       51   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      121   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    0       54   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1      144   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    0       32   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1      113   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    0       36   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1      125   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    0       47   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1      180   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    0       60   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1      201   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    0       69   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1      184   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    0       60   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1      166   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   0       51   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1      139   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   0       59   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1      174   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   0       66   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1      159   2517
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      146   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      272   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0      127   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1      232   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0      148   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1      264   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    0      116   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1      213   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    0       58   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1      170   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    0       63   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1      176   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    0       65   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1      177   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    0      111   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1      265   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    0      147   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1      393   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   0      171   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1      366   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   0      165   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1      362   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   0      222   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1      309   4738
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
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        3     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0        4     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1        3     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0        6     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1        9     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    0        4     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    0        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1        3     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    0        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    0        5     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1        8     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   0        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1        1     62
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
6-24 months   ki0047075b-MAL-ED          INDIA                          9                    0        8     95
6-24 months   ki0047075b-MAL-ED          INDIA                          9                    1        1     95
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
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        7     23
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           4                    0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           4                    1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           5                    0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           5                    1        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           6                    0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           6                    1        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           7                    0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           7                    1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           8                    0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           8                    1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           9                    0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           9                    1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           10                   0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           10                   1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           11                   0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           11                   1        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           12                   0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           12                   1        0     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       12     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   0        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1        6     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1        5     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   0        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1        6     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        6     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        6     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1        4     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1        3     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1        4     33
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
6-24 months   ki1000109-EE               PAKISTAN                       1                    0       29    149
6-24 months   ki1000109-EE               PAKISTAN                       1                    1        8    149
6-24 months   ki1000109-EE               PAKISTAN                       2                    0       16    149
6-24 months   ki1000109-EE               PAKISTAN                       2                    1       10    149
6-24 months   ki1000109-EE               PAKISTAN                       3                    0       16    149
6-24 months   ki1000109-EE               PAKISTAN                       3                    1        8    149
6-24 months   ki1000109-EE               PAKISTAN                       4                    0        8    149
6-24 months   ki1000109-EE               PAKISTAN                       4                    1        1    149
6-24 months   ki1000109-EE               PAKISTAN                       5                    0        0    149
6-24 months   ki1000109-EE               PAKISTAN                       5                    1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       6                    0        0    149
6-24 months   ki1000109-EE               PAKISTAN                       6                    1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       7                    0        0    149
6-24 months   ki1000109-EE               PAKISTAN                       7                    1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       8                    0        0    149
6-24 months   ki1000109-EE               PAKISTAN                       8                    1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       9                    0        0    149
6-24 months   ki1000109-EE               PAKISTAN                       9                    1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       10                   0        1    149
6-24 months   ki1000109-EE               PAKISTAN                       10                   1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       11                   0       16    149
6-24 months   ki1000109-EE               PAKISTAN                       11                   1       10    149
6-24 months   ki1000109-EE               PAKISTAN                       12                   0       17    149
6-24 months   ki1000109-EE               PAKISTAN                       12                   1        9    149
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0        0     88
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        0     88
6-24 months   ki1000109-ResPak           PAKISTAN                       2                    0        4     88
6-24 months   ki1000109-ResPak           PAKISTAN                       2                    1        2     88
6-24 months   ki1000109-ResPak           PAKISTAN                       3                    0        4     88
6-24 months   ki1000109-ResPak           PAKISTAN                       3                    1        2     88
6-24 months   ki1000109-ResPak           PAKISTAN                       4                    0        6     88
6-24 months   ki1000109-ResPak           PAKISTAN                       4                    1        1     88
6-24 months   ki1000109-ResPak           PAKISTAN                       5                    0       16     88
6-24 months   ki1000109-ResPak           PAKISTAN                       5                    1        5     88
6-24 months   ki1000109-ResPak           PAKISTAN                       6                    0       13     88
6-24 months   ki1000109-ResPak           PAKISTAN                       6                    1        3     88
6-24 months   ki1000109-ResPak           PAKISTAN                       7                    0        7     88
6-24 months   ki1000109-ResPak           PAKISTAN                       7                    1        2     88
6-24 months   ki1000109-ResPak           PAKISTAN                       8                    0        7     88
6-24 months   ki1000109-ResPak           PAKISTAN                       8                    1        3     88
6-24 months   ki1000109-ResPak           PAKISTAN                       9                    0        7     88
6-24 months   ki1000109-ResPak           PAKISTAN                       9                    1        2     88
6-24 months   ki1000109-ResPak           PAKISTAN                       10                   0        1     88
6-24 months   ki1000109-ResPak           PAKISTAN                       10                   1        0     88
6-24 months   ki1000109-ResPak           PAKISTAN                       11                   0        0     88
6-24 months   ki1000109-ResPak           PAKISTAN                       11                   1        0     88
6-24 months   ki1000109-ResPak           PAKISTAN                       12                   0        1     88
6-24 months   ki1000109-ResPak           PAKISTAN                       12                   1        2     88
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
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0       55   1106
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       65   1106
6-24 months   ki1101329-Keneba           GAMBIA                         2                    0       50   1106
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1       60   1106
6-24 months   ki1101329-Keneba           GAMBIA                         3                    0       46   1106
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1       51   1106
6-24 months   ki1101329-Keneba           GAMBIA                         4                    0       24   1106
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1       33   1106
6-24 months   ki1101329-Keneba           GAMBIA                         5                    0       27   1106
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1       29   1106
6-24 months   ki1101329-Keneba           GAMBIA                         6                    0       32   1106
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1       36   1106
6-24 months   ki1101329-Keneba           GAMBIA                         7                    0       38   1106
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1       20   1106
6-24 months   ki1101329-Keneba           GAMBIA                         8                    0       45   1106
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1       48   1106
6-24 months   ki1101329-Keneba           GAMBIA                         9                    0       52   1106
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1       50   1106
6-24 months   ki1101329-Keneba           GAMBIA                         10                   0       73   1106
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1       67   1106
6-24 months   ki1101329-Keneba           GAMBIA                         11                   0       46   1106
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1       38   1106
6-24 months   ki1101329-Keneba           GAMBIA                         12                   0       61   1106
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1       60   1106
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    0        1    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    0       51    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    1       27    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    0       67    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    1       70    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    0       74    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    1       91    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   1        0    381
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
6-24 months   ki1114097-CMIN             BRAZIL                         1                    0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         1                    1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         2                    0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         2                    1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         3                    0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         3                    1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         4                    0        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         4                    1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         5                    0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         5                    1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         6                    0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         6                    1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         7                    0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         7                    1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         8                    0        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         8                    1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         9                    0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         9                    1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         10                   0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         10                   1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         11                   0        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         11                   1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         12                   0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         12                   1        1      4
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0       22    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       11    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    0       10    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1        2    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    0       14    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1       11    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    0       14    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1        2    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    0       16    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1        5    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    0       10    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1        2    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    0       12    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1        4    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    0       10    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1        6    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    0       24    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1       12    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   0       24    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1       14    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   0       17    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1       14    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   0       18    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1       11    285
6-24 months   ki1114097-CMIN             PERU                           1                    0        0     42
6-24 months   ki1114097-CMIN             PERU                           1                    1        0     42
6-24 months   ki1114097-CMIN             PERU                           2                    0        0     42
6-24 months   ki1114097-CMIN             PERU                           2                    1        1     42
6-24 months   ki1114097-CMIN             PERU                           3                    0        3     42
6-24 months   ki1114097-CMIN             PERU                           3                    1        1     42
6-24 months   ki1114097-CMIN             PERU                           4                    0        1     42
6-24 months   ki1114097-CMIN             PERU                           4                    1        4     42
6-24 months   ki1114097-CMIN             PERU                           5                    0        3     42
6-24 months   ki1114097-CMIN             PERU                           5                    1        9     42
6-24 months   ki1114097-CMIN             PERU                           6                    0        3     42
6-24 months   ki1114097-CMIN             PERU                           6                    1        7     42
6-24 months   ki1114097-CMIN             PERU                           7                    0        0     42
6-24 months   ki1114097-CMIN             PERU                           7                    1        1     42
6-24 months   ki1114097-CMIN             PERU                           8                    0        0     42
6-24 months   ki1114097-CMIN             PERU                           8                    1        2     42
6-24 months   ki1114097-CMIN             PERU                           9                    0        0     42
6-24 months   ki1114097-CMIN             PERU                           9                    1        3     42
6-24 months   ki1114097-CMIN             PERU                           10                   0        0     42
6-24 months   ki1114097-CMIN             PERU                           10                   1        0     42
6-24 months   ki1114097-CMIN             PERU                           11                   0        2     42
6-24 months   ki1114097-CMIN             PERU                           11                   1        1     42
6-24 months   ki1114097-CMIN             PERU                           12                   0        0     42
6-24 months   ki1114097-CMIN             PERU                           12                   1        1     42
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      103   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1        7   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0       78   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1        7   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    0       99   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1        6   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    0       70   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1        5   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    0       82   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1        5   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    0       77   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1        7   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    0       67   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1        6   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    0       84   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1        5   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    0       64   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1        2   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   0       78   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1        8   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   0       90   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1        6   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   0       92   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1       10   1058
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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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
![](/tmp/6ec2b29c-328f-4dee-8ff3-8e1f42a74d02/8385a60f-1728-4061-a084-08d7733d6816/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6ec2b29c-328f-4dee-8ff3-8e1f42a74d02/8385a60f-1728-4061-a084-08d7733d6816/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6ec2b29c-328f-4dee-8ff3-8e1f42a74d02/8385a60f-1728-4061-a084-08d7733d6816/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6ec2b29c-328f-4dee-8ff3-8e1f42a74d02/8385a60f-1728-4061-a084-08d7733d6816/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5853659   0.5053220   0.6654098
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6052632   0.5215757   0.6889506
0-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.5347222   0.4467217   0.6227227
0-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.5348837   0.4162863   0.6534812
0-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.5180723   0.3882717   0.6478728
0-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.5531915   0.4526347   0.6537483
0-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.4216867   0.3184857   0.5248878
0-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.5714286   0.4790999   0.6637573
0-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.5379310   0.4521873   0.6236747
0-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.5229885   0.4423174   0.6036596
0-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.5299145   0.4268712   0.6329579
0-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.4965986   0.4049428   0.5882545
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5119048   0.4584066   0.5654030
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.4980545   0.4377275   0.5583814
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.4950495   0.4385715   0.5515275
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.5363636   0.4681857   0.6045416
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.5241935   0.4607350   0.5876521
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.6012862   0.5458838   0.6566886
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.6197605   0.5670677   0.6724533
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.5526316   0.4986991   0.6065640
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.5753425   0.5182276   0.6324573
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.5326087   0.4731880   0.5920294
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.5471125   0.4939446   0.6002803
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.5168196   0.4623813   0.5712578
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4380032   0.3980827   0.4779238
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4385633   0.3959606   0.4811661
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4363636   0.3963019   0.4764254
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.4049430   0.3627257   0.4471602
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.3703704   0.3285854   0.4121553
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.3720930   0.3315845   0.4126016
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.3702929   0.3288951   0.4116907
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4083205   0.3702911   0.4463499
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4792683   0.4450694   0.5134672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4430993   0.4091623   0.4770362
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.4382567   0.4040584   0.4724549
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.4049803   0.3692353   0.4407254
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
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.7045455   0.5693884   0.8397025
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.7619048   0.6305002   0.8933093
0-6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.5531915   0.4108554   0.6955275
0-6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.4482759   0.2755942   0.6209575
0-6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.5185185   0.3401330   0.6969041
0-6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.6153846   0.4321397   0.7986295
0-6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.6000000   0.4056949   0.7943051
0-6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.7000000   0.5576841   0.8423159
0-6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.6511628   0.5076627   0.7946628
0-6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.7058824   0.5479058   0.8638589
0-6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.7272727   0.5785354   0.8760101
0-6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.5000000   0.2936743   0.7063257
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7300885   0.6719709   0.7882061
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7034884   0.6354668   0.7715100
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.7272727   0.6663059   0.7882396
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.7793103   0.7123168   0.8463039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.7763975   0.7117680   0.8410271
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.7929515   0.7404382   0.8454649
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.7701149   0.7188552   0.8213747
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.7272727   0.6721645   0.7823809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.7345133   0.6770648   0.7919618
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.7315789   0.6683049   0.7948530
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.7467811   0.6907520   0.8028103
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.7066667   0.6473314   0.7660020
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6507177   0.6049906   0.6964448
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.6462396   0.5967537   0.6957255
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.6407767   0.5944251   0.6871283
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.6474164   0.5957626   0.6990702
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.7456140   0.6890535   0.8021746
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.7364017   0.6805152   0.7922882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.7314050   0.6755325   0.7872774
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.7047872   0.6588177   0.7507568
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.7277778   0.6902164   0.7653392
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.6815642   0.6421408   0.7209877
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.6869070   0.6473858   0.7264282
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.5819209   0.5399459   0.6238960
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
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5416667   0.4510200   0.6323134
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.5454545   0.4449433   0.6459658
6-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.5257732   0.4163373   0.6352091
6-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.5789474   0.4337238   0.7241709
6-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.5178571   0.3647726   0.6709417
6-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.5294118   0.4107827   0.6480408
6-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.3448276   0.2155382   0.4741170
6-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.5161290   0.4044295   0.6278285
6-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.4901961   0.3907130   0.5896792
6-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.4785714   0.3920918   0.5650510
6-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.4523810   0.3376661   0.5670958
6-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.4958678   0.4010796   0.5906559


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5394218   0.5121870   0.5666566
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5440559   0.5275873   0.5605246
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4223102   0.4111919   0.4334286
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6346154   0.5881865   0.6810443
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7433453   0.7262923   0.7603982
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6751794   0.6618445   0.6885143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576408   0.5054408   0.6098407
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5036166   0.4722232   0.5350101


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
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0339912   0.8512544   1.2559558
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.9134838   0.7375224   1.1314269
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.9137597   0.7041972   1.1856860
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.8850402   0.6652769   1.1773986
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.9450355   0.7527558   1.1864299
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.7203815   0.5442622   0.9534919
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.9761905   0.7899609   1.2063228
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.9189655   0.7448918   1.1337185
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.8934387   0.7270115   1.0979644
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.9052707   0.7137362   1.1482042
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.8483560   0.6742430   1.0674311
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9729436   0.8290992   1.1417443
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9670735   0.8284493   1.1288935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0477801   0.8887963   1.2352022
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0240060   0.8726584   1.2016022
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1746055   1.0218366   1.3502141
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.2106949   1.0580925   1.3853062
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0795594   0.9357182   1.2455122
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.1239248   0.9730513   1.2981916
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0404449   0.8929522   1.2122996
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0687778   0.9266338   1.2327266
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0096010   0.8703772   1.1710948
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0012788   0.8764055   1.1439444
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9962567   0.8753630   1.1338466
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9245205   0.8049643   1.0618337
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8455882   0.7314271   0.9775677
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.8495212   0.7370759   0.9791207
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8454113   0.7318545   0.9765880
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9322317   0.8183329   1.0619834
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0942118   0.9746097   1.2284913
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0116347   0.8980923   1.1395319
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0005786   0.8874486   1.1281302
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9246059   0.8144330   1.0496824
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
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.0814132   0.8355251   1.3996641
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.7851750   0.5696164   1.0823069
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.6362625   0.4137556   0.9784279
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.7359618   0.4963483   1.0912493
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1                 0.8734491   0.6129180   1.2447234
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1                 0.8516129   0.5844887   1.2408186
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1                 0.9935484   0.7512614   1.3139745
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1                 0.9242311   0.6900661   1.2378568
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1                 1.0018975   0.7461174   1.3453629
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1                 1.0322581   0.7798458   1.3663684
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1                 0.7096774   0.4502251   1.1186450
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9635659   0.8501365   1.0921295
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9961433   0.8873929   1.1182209
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0674190   0.9494071   1.2000999
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0634293   0.9477357   1.1932461
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0861033   0.9792649   1.2045979
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0548241   0.9508579   1.1701579
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9961433   0.8924668   1.1118636
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.0060606   0.8998248   1.1248388
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0020415   0.8909142   1.1270301
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0228638   0.9168768   1.1411025
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9679192   0.8621653   1.0866449
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9931181   0.8950840   1.1018895
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9847230   0.8902573   1.0892126
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9949267   0.8945763   1.1065340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.1458333   1.0332690   1.2706604
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.1316761   1.0204773   1.2549919
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.1239973   1.0131813   1.2469338
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.0830921   0.9840713   1.1920768
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.1184232   1.0250397   1.2203141
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0474039   0.9562831   1.1472072
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0556145   0.9639675   1.1559746
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.8942755   0.8086051   0.9890225
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
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0069930   0.7850898   1.2916164
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.9706582   0.7431481   1.2678191
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 1.0688259   0.7905830   1.4449955
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.9560440   0.6806920   1.3427806
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.9773756   0.7389183   1.2927856
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.6366048   0.4222325   0.9598162
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.9528536   0.7247918   1.2526769
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.9049774   0.6956610   1.1772746
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.8835165   0.6906395   1.1302588
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.8351648   0.6163453   1.1316714
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.9154482   0.7100617   1.1802431


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0663766   -0.2308937   0.0981406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0857534   -0.0319095   0.2034163
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0009593   -0.1398662   0.1417847
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0576977   -0.0615111   0.1769065
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0459440   -0.1219050   0.0300169
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0062191   -0.0455140   0.0330758
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0321512   -0.0188029   0.0831053
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0156930   -0.0538504   0.0224644
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1131965   -0.0595023   0.2858953
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0699301   -0.1985965   0.0587364
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0016329   -0.0395174   0.0362516
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0132568   -0.0420777   0.0685912
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0244617   -0.0191255   0.0680489
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0256926   -0.1892618   0.1378766
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0380500   -0.1241947   0.0480946


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1125268   -0.4302983   0.1346449
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2251719   -0.1544827   0.4799761
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0018440   -0.3091534   0.2389621
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0920324   -0.1196086   0.2636665
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0851728   -0.2357358   0.0470456
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0072214   -0.0538995   0.0373893
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0590954   -0.0393928   0.1482512
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0371599   -0.1315544   0.0493602
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2205714   -0.2015354   0.4943895
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1101928   -0.3331845   0.0755007
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0018440   -0.0455525   0.0400373
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0178339   -0.0595065   0.0895288
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0362299   -0.0305508   0.0986832
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0460737   -0.3845951   0.2096821
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0755536   -0.2612274   0.0827860
