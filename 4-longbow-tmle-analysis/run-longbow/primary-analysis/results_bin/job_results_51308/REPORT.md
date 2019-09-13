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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        month    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0        1    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        4    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  0        7    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  1       10    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  0        8    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  1       15    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  0        4    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  1        5    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  0        6    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  1        6    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  0        1    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  1        1    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  0        4    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  1        9    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  0        1    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  1        3    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  0        5    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  1       16    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 0        3    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 1        3    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 0        2    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 1        2    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 0        3    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 1        5    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  1        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  1        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  1        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  1        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  0        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  1        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  1        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 1        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 1        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 1        0     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0        6    178
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        5    178
0-24 months   ki0047075b-MAL-ED          INDIA                          2                  0        4    178
0-24 months   ki0047075b-MAL-ED          INDIA                          2                  1        4    178
0-24 months   ki0047075b-MAL-ED          INDIA                          3                  0        5    178
0-24 months   ki0047075b-MAL-ED          INDIA                          3                  1       14    178
0-24 months   ki0047075b-MAL-ED          INDIA                          4                  0        3    178
0-24 months   ki0047075b-MAL-ED          INDIA                          4                  1        5    178
0-24 months   ki0047075b-MAL-ED          INDIA                          5                  0        5    178
0-24 months   ki0047075b-MAL-ED          INDIA                          5                  1        6    178
0-24 months   ki0047075b-MAL-ED          INDIA                          6                  0        7    178
0-24 months   ki0047075b-MAL-ED          INDIA                          6                  1        8    178
0-24 months   ki0047075b-MAL-ED          INDIA                          7                  0        9    178
0-24 months   ki0047075b-MAL-ED          INDIA                          7                  1       12    178
0-24 months   ki0047075b-MAL-ED          INDIA                          8                  0        7    178
0-24 months   ki0047075b-MAL-ED          INDIA                          8                  1       16    178
0-24 months   ki0047075b-MAL-ED          INDIA                          9                  0        6    178
0-24 months   ki0047075b-MAL-ED          INDIA                          9                  1        7    178
0-24 months   ki0047075b-MAL-ED          INDIA                          10                 0        6    178
0-24 months   ki0047075b-MAL-ED          INDIA                          10                 1        8    178
0-24 months   ki0047075b-MAL-ED          INDIA                          11                 0       11    178
0-24 months   ki0047075b-MAL-ED          INDIA                          11                 1       16    178
0-24 months   ki0047075b-MAL-ED          INDIA                          12                 0        2    178
0-24 months   ki0047075b-MAL-ED          INDIA                          12                 1        6    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        9     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                  0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                  1        6     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                  0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                  1        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                  0        2     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                  1       11     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                  0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                  1       12     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                  0        5     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                  1        7     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                  0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                  1        7     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                  0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                  1        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                  0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                  1        2     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                 0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                 1        2     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                 0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                 1        5     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                 0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                 1        6     93
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        6     34
0-24 months   ki0047075b-MAL-ED          PERU                           2                  0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           2                  1        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           3                  0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           3                  1        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           4                  0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           4                  1        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           5                  0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           5                  1        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           6                  0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           6                  1        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           7                  0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           7                  1        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           8                  0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           8                  1        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           9                  0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           9                  1        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           10                 0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           10                 1        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           11                 0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           11                 1        8     34
0-24 months   ki0047075b-MAL-ED          PERU                           12                 0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           12                 1        0     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        4     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       14     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        6     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        2     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0        1     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        3     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        1     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0        2     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        3     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        5     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0        1     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        2     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0        3     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1       11     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0        3     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        7     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0        3     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1       12     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1       11     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        5     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        2     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        6     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0        3     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        5     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        6     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        6    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       19    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  0        8    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  1       17    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  0        5    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  1       11    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       12    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  1       11    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       15    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  1       19    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  0        8    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  1       19    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       11    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  1       13    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       15    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  1       16    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  0        9    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  1       22    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 0        7    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 1       10    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       10    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 1       30    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       14    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 1       19    326
0-24 months   ki1000108-IRC              INDIA                          1                  0       11    395
0-24 months   ki1000108-IRC              INDIA                          1                  1       20    395
0-24 months   ki1000108-IRC              INDIA                          2                  0        9    395
0-24 months   ki1000108-IRC              INDIA                          2                  1       13    395
0-24 months   ki1000108-IRC              INDIA                          3                  0       10    395
0-24 months   ki1000108-IRC              INDIA                          3                  1       13    395
0-24 months   ki1000108-IRC              INDIA                          4                  0        6    395
0-24 months   ki1000108-IRC              INDIA                          4                  1       15    395
0-24 months   ki1000108-IRC              INDIA                          5                  0       10    395
0-24 months   ki1000108-IRC              INDIA                          5                  1       13    395
0-24 months   ki1000108-IRC              INDIA                          6                  0       19    395
0-24 months   ki1000108-IRC              INDIA                          6                  1       18    395
0-24 months   ki1000108-IRC              INDIA                          7                  0       17    395
0-24 months   ki1000108-IRC              INDIA                          7                  1       23    395
0-24 months   ki1000108-IRC              INDIA                          8                  0       18    395
0-24 months   ki1000108-IRC              INDIA                          8                  1       26    395
0-24 months   ki1000108-IRC              INDIA                          9                  0       14    395
0-24 months   ki1000108-IRC              INDIA                          9                  1       18    395
0-24 months   ki1000108-IRC              INDIA                          10                 0       19    395
0-24 months   ki1000108-IRC              INDIA                          10                 1       23    395
0-24 months   ki1000108-IRC              INDIA                          11                 0       12    395
0-24 months   ki1000108-IRC              INDIA                          11                 1       20    395
0-24 months   ki1000108-IRC              INDIA                          12                 0       17    395
0-24 months   ki1000108-IRC              INDIA                          12                 1       31    395
0-24 months   ki1000109-EE               PAKISTAN                       1                  0       40    257
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       21    257
0-24 months   ki1000109-EE               PAKISTAN                       2                  0       28    257
0-24 months   ki1000109-EE               PAKISTAN                       2                  1       20    257
0-24 months   ki1000109-EE               PAKISTAN                       3                  0       24    257
0-24 months   ki1000109-EE               PAKISTAN                       3                  1       20    257
0-24 months   ki1000109-EE               PAKISTAN                       4                  0       14    257
0-24 months   ki1000109-EE               PAKISTAN                       4                  1        7    257
0-24 months   ki1000109-EE               PAKISTAN                       5                  0        1    257
0-24 months   ki1000109-EE               PAKISTAN                       5                  1        1    257
0-24 months   ki1000109-EE               PAKISTAN                       6                  0        0    257
0-24 months   ki1000109-EE               PAKISTAN                       6                  1        0    257
0-24 months   ki1000109-EE               PAKISTAN                       7                  0        0    257
0-24 months   ki1000109-EE               PAKISTAN                       7                  1        0    257
0-24 months   ki1000109-EE               PAKISTAN                       8                  0        0    257
0-24 months   ki1000109-EE               PAKISTAN                       8                  1        0    257
0-24 months   ki1000109-EE               PAKISTAN                       9                  0        0    257
0-24 months   ki1000109-EE               PAKISTAN                       9                  1        0    257
0-24 months   ki1000109-EE               PAKISTAN                       10                 0        0    257
0-24 months   ki1000109-EE               PAKISTAN                       10                 1        0    257
0-24 months   ki1000109-EE               PAKISTAN                       11                 0       16    257
0-24 months   ki1000109-EE               PAKISTAN                       11                 1       14    257
0-24 months   ki1000109-EE               PAKISTAN                       12                 0       27    257
0-24 months   ki1000109-EE               PAKISTAN                       12                 1       24    257
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  0        2    200
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  1        4    200
0-24 months   ki1000109-ResPak           PAKISTAN                       2                  0        5    200
0-24 months   ki1000109-ResPak           PAKISTAN                       2                  1        2    200
0-24 months   ki1000109-ResPak           PAKISTAN                       3                  0        3    200
0-24 months   ki1000109-ResPak           PAKISTAN                       3                  1       11    200
0-24 months   ki1000109-ResPak           PAKISTAN                       4                  0       18    200
0-24 months   ki1000109-ResPak           PAKISTAN                       4                  1        8    200
0-24 months   ki1000109-ResPak           PAKISTAN                       5                  0       22    200
0-24 months   ki1000109-ResPak           PAKISTAN                       5                  1        8    200
0-24 months   ki1000109-ResPak           PAKISTAN                       6                  0       18    200
0-24 months   ki1000109-ResPak           PAKISTAN                       6                  1       17    200
0-24 months   ki1000109-ResPak           PAKISTAN                       7                  0       13    200
0-24 months   ki1000109-ResPak           PAKISTAN                       7                  1       15    200
0-24 months   ki1000109-ResPak           PAKISTAN                       8                  0       16    200
0-24 months   ki1000109-ResPak           PAKISTAN                       8                  1       10    200
0-24 months   ki1000109-ResPak           PAKISTAN                       9                  0        6    200
0-24 months   ki1000109-ResPak           PAKISTAN                       9                  1        8    200
0-24 months   ki1000109-ResPak           PAKISTAN                       10                 0        4    200
0-24 months   ki1000109-ResPak           PAKISTAN                       10                 1        5    200
0-24 months   ki1000109-ResPak           PAKISTAN                       11                 0        1    200
0-24 months   ki1000109-ResPak           PAKISTAN                       11                 1        1    200
0-24 months   ki1000109-ResPak           PAKISTAN                       12                 0        1    200
0-24 months   ki1000109-ResPak           PAKISTAN                       12                 1        2    200
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0       43    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1       19    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  0       30    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  1        9    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  0       31    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  1       12    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  0       32    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  1       16    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  0       38    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  1       25    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  0       34    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  1       36    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  0       32    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  1       29    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  0       53    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  1       35    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  0       59    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  1       45    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 0       44    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 1       46    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 0       63    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 1       23    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 0       45    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 1       15    814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       35    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        4    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  0       27    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  0       23    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        1    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  0       19    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  0       17    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        2    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  0       20    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  0        8    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        1    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  0        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  0        8    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        2    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 0       12    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 0       17    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        3    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 0       35    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 1        0    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0       27    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       27    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  0       17    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  1       21    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  0       28    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  1       21    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  0       16    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  1       20    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  0       12    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  1       21    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  0       10    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  1       20    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  0       21    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  1       18    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  0       13    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  1       18    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  0        9    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  1       15    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 0       15    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 1       14    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 0       16    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 1       17    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 0       18    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 1        7    421
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       36    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       41    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0       21    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       26    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0       25    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       42    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0       13    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       33    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0       16    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       22    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0       14    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1       21    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0       17    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       30    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0       22    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       41    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0       24    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       57    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0       18    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       43    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0       25    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       48    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0       35    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       43    713
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  0        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  1        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  0        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  1        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  0        6     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  1        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  0        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  1        3     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  0        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  1        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  0        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  1        3     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  0        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  1        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  0        3     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  1        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 0        1     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 1        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 0        3     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 1        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 0        0     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 1        0     38
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0       55    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1        2    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  0       44    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  1        5    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  0       49    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  1        1    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  0       41    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  1        2    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  0       61    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  1        5    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  0       89    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  1        7    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  0       94    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  1        5    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  0       97    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  1        3    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  0       73    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  1        3    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 0       74    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 1        2    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 0       59    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 1        1    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 0       48    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 1        0    820
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0        1    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  1        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  0       72    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  1       59    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  0       95    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  1      115    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  0       94    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  1      113    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 0        3    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 1        2    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 0        3    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 1        4    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 0        0    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 1        0    561
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  0        7    190
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  1       16    190
0-24 months   ki1114097-CMIN             BANGLADESH                     2                  0       10    190
0-24 months   ki1114097-CMIN             BANGLADESH                     2                  1       15    190
0-24 months   ki1114097-CMIN             BANGLADESH                     3                  0        2    190
0-24 months   ki1114097-CMIN             BANGLADESH                     3                  1        7    190
0-24 months   ki1114097-CMIN             BANGLADESH                     4                  0        4    190
0-24 months   ki1114097-CMIN             BANGLADESH                     4                  1       12    190
0-24 months   ki1114097-CMIN             BANGLADESH                     5                  0        8    190
0-24 months   ki1114097-CMIN             BANGLADESH                     5                  1       11    190
0-24 months   ki1114097-CMIN             BANGLADESH                     6                  0        6    190
0-24 months   ki1114097-CMIN             BANGLADESH                     6                  1        6    190
0-24 months   ki1114097-CMIN             BANGLADESH                     7                  0        1    190
0-24 months   ki1114097-CMIN             BANGLADESH                     7                  1        7    190
0-24 months   ki1114097-CMIN             BANGLADESH                     8                  0        5    190
0-24 months   ki1114097-CMIN             BANGLADESH                     8                  1        2    190
0-24 months   ki1114097-CMIN             BANGLADESH                     9                  0        7    190
0-24 months   ki1114097-CMIN             BANGLADESH                     9                  1        8    190
0-24 months   ki1114097-CMIN             BANGLADESH                     10                 0        6    190
0-24 months   ki1114097-CMIN             BANGLADESH                     10                 1        8    190
0-24 months   ki1114097-CMIN             BANGLADESH                     11                 0        1    190
0-24 months   ki1114097-CMIN             BANGLADESH                     11                 1        0    190
0-24 months   ki1114097-CMIN             BANGLADESH                     12                 0       23    190
0-24 months   ki1114097-CMIN             BANGLADESH                     12                 1       18    190
0-24 months   ki1114097-CMIN             BRAZIL                         1                  0        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         1                  1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         2                  0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         2                  1        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         3                  0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         3                  1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         4                  0        2     13
0-24 months   ki1114097-CMIN             BRAZIL                         4                  1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         5                  0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         5                  1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         6                  0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         6                  1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         7                  0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         7                  1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         8                  0        2     13
0-24 months   ki1114097-CMIN             BRAZIL                         8                  1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         9                  0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         9                  1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         10                 0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         10                 1        3     13
0-24 months   ki1114097-CMIN             BRAZIL                         11                 0        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         11                 1        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         12                 0        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         12                 1        1     13
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  0        7    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  1        2    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  0       28    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  1       12    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  0       24    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  1       15    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  0       40    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  1       18    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  0       20    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  1       15    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  0       12    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  1       10    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  0       18    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  1        6    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  0       17    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  1        5    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  0       20    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  1       11    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 0       10    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 1        4    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 0        4    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 1       11    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 0       17    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 1        8    334
0-24 months   ki1114097-CMIN             PERU                           1                  0        0     94
0-24 months   ki1114097-CMIN             PERU                           1                  1        0     94
0-24 months   ki1114097-CMIN             PERU                           2                  0        5     94
0-24 months   ki1114097-CMIN             PERU                           2                  1        5     94
0-24 months   ki1114097-CMIN             PERU                           3                  0        4     94
0-24 months   ki1114097-CMIN             PERU                           3                  1        9     94
0-24 months   ki1114097-CMIN             PERU                           4                  0        2     94
0-24 months   ki1114097-CMIN             PERU                           4                  1       13     94
0-24 months   ki1114097-CMIN             PERU                           5                  0        4     94
0-24 months   ki1114097-CMIN             PERU                           5                  1       13     94
0-24 months   ki1114097-CMIN             PERU                           6                  0        3     94
0-24 months   ki1114097-CMIN             PERU                           6                  1        9     94
0-24 months   ki1114097-CMIN             PERU                           7                  0        2     94
0-24 months   ki1114097-CMIN             PERU                           7                  1        4     94
0-24 months   ki1114097-CMIN             PERU                           8                  0        0     94
0-24 months   ki1114097-CMIN             PERU                           8                  1        4     94
0-24 months   ki1114097-CMIN             PERU                           9                  0        0     94
0-24 months   ki1114097-CMIN             PERU                           9                  1        3     94
0-24 months   ki1114097-CMIN             PERU                           10                 0        1     94
0-24 months   ki1114097-CMIN             PERU                           10                 1        3     94
0-24 months   ki1114097-CMIN             PERU                           11                 0        1     94
0-24 months   ki1114097-CMIN             PERU                           11                 1        3     94
0-24 months   ki1114097-CMIN             PERU                           12                 0        0     94
0-24 months   ki1114097-CMIN             PERU                           12                 1        6     94
0-24 months   ki1114097-CONTENT          PERU                           1                  0        0      9
0-24 months   ki1114097-CONTENT          PERU                           1                  1        1      9
0-24 months   ki1114097-CONTENT          PERU                           2                  0        0      9
0-24 months   ki1114097-CONTENT          PERU                           2                  1        1      9
0-24 months   ki1114097-CONTENT          PERU                           3                  0        0      9
0-24 months   ki1114097-CONTENT          PERU                           3                  1        2      9
0-24 months   ki1114097-CONTENT          PERU                           4                  0        0      9
0-24 months   ki1114097-CONTENT          PERU                           4                  1        0      9
0-24 months   ki1114097-CONTENT          PERU                           5                  0        0      9
0-24 months   ki1114097-CONTENT          PERU                           5                  1        0      9
0-24 months   ki1114097-CONTENT          PERU                           6                  0        1      9
0-24 months   ki1114097-CONTENT          PERU                           6                  1        1      9
0-24 months   ki1114097-CONTENT          PERU                           7                  0        0      9
0-24 months   ki1114097-CONTENT          PERU                           7                  1        0      9
0-24 months   ki1114097-CONTENT          PERU                           8                  0        0      9
0-24 months   ki1114097-CONTENT          PERU                           8                  1        0      9
0-24 months   ki1114097-CONTENT          PERU                           9                  0        0      9
0-24 months   ki1114097-CONTENT          PERU                           9                  1        1      9
0-24 months   ki1114097-CONTENT          PERU                           10                 0        1      9
0-24 months   ki1114097-CONTENT          PERU                           10                 1        1      9
0-24 months   ki1114097-CONTENT          PERU                           11                 0        0      9
0-24 months   ki1114097-CONTENT          PERU                           11                 1        0      9
0-24 months   ki1114097-CONTENT          PERU                           12                 0        0      9
0-24 months   ki1114097-CONTENT          PERU                           12                 1        0      9
0-24 months   ki1119695-PROBIT           BELARUS                        1                  0       39   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                  1      255   4431
0-24 months   ki1119695-PROBIT           BELARUS                        2                  0       37   4431
0-24 months   ki1119695-PROBIT           BELARUS                        2                  1      204   4431
0-24 months   ki1119695-PROBIT           BELARUS                        3                  0       41   4431
0-24 months   ki1119695-PROBIT           BELARUS                        3                  1      255   4431
0-24 months   ki1119695-PROBIT           BELARUS                        4                  0       38   4431
0-24 months   ki1119695-PROBIT           BELARUS                        4                  1      250   4431
0-24 months   ki1119695-PROBIT           BELARUS                        5                  0       49   4431
0-24 months   ki1119695-PROBIT           BELARUS                        5                  1      284   4431
0-24 months   ki1119695-PROBIT           BELARUS                        6                  0       57   4431
0-24 months   ki1119695-PROBIT           BELARUS                        6                  1      271   4431
0-24 months   ki1119695-PROBIT           BELARUS                        7                  0       43   4431
0-24 months   ki1119695-PROBIT           BELARUS                        7                  1      377   4431
0-24 months   ki1119695-PROBIT           BELARUS                        8                  0       62   4431
0-24 months   ki1119695-PROBIT           BELARUS                        8                  1      397   4431
0-24 months   ki1119695-PROBIT           BELARUS                        9                  0       53   4431
0-24 months   ki1119695-PROBIT           BELARUS                        9                  1      346   4431
0-24 months   ki1119695-PROBIT           BELARUS                        10                 0       67   4431
0-24 months   ki1119695-PROBIT           BELARUS                        10                 1      409   4431
0-24 months   ki1119695-PROBIT           BELARUS                        11                 0       72   4431
0-24 months   ki1119695-PROBIT           BELARUS                        11                 1      356   4431
0-24 months   ki1119695-PROBIT           BELARUS                        12                 0       57   4431
0-24 months   ki1119695-PROBIT           BELARUS                        12                 1      412   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      167   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      171   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      123   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  1      124   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  0      154   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  1      151   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  0       95   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  1      124   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      123   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  1      127   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  0      119   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  1      187   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  0      133   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  1      199   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  0      149   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  1      193   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  0      128   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  1      169   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      125   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 1      147   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 0      145   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 1      172   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 0      169   3570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 1      176   3570
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0        5     79
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         2                  0        9     79
0-24 months   ki1148112-LCNI-5           MALAWI                         2                  1        3     79
0-24 months   ki1148112-LCNI-5           MALAWI                         3                  0       12     79
0-24 months   ki1148112-LCNI-5           MALAWI                         3                  1        2     79
0-24 months   ki1148112-LCNI-5           MALAWI                         4                  0        6     79
0-24 months   ki1148112-LCNI-5           MALAWI                         4                  1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         5                  0        6     79
0-24 months   ki1148112-LCNI-5           MALAWI                         5                  1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         6                  0       12     79
0-24 months   ki1148112-LCNI-5           MALAWI                         6                  1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         7                  0        4     79
0-24 months   ki1148112-LCNI-5           MALAWI                         7                  1        2     79
0-24 months   ki1148112-LCNI-5           MALAWI                         8                  0        3     79
0-24 months   ki1148112-LCNI-5           MALAWI                         8                  1        0     79
0-24 months   ki1148112-LCNI-5           MALAWI                         9                  0        2     79
0-24 months   ki1148112-LCNI-5           MALAWI                         9                  1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         10                 0        0     79
0-24 months   ki1148112-LCNI-5           MALAWI                         10                 1        0     79
0-24 months   ki1148112-LCNI-5           MALAWI                         11                 0        5     79
0-24 months   ki1148112-LCNI-5           MALAWI                         11                 1        1     79
0-24 months   ki1148112-LCNI-5           MALAWI                         12                 0        2     79
0-24 months   ki1148112-LCNI-5           MALAWI                         12                 1        0     79
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0      374   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      271   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                  0      294   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                  1      240   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                  0      343   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                  1      263   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                  0      302   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                  1      214   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                  0      302   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                  1      184   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                  0      292   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                  1      169   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                  0      310   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                  1      174   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                  0      365   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                  1      253   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                  0      410   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                  1      382   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                 0      463   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                 1      366   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                 0      449   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                 1      372   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                 0      472   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                 1      311   7575
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0       11   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        2   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  0       94   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  1       34   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  0      134   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  1       50   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  0      275   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  1       97   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  0      209   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  1       60   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  0      131   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  1       57   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  0      282   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  1       82   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  0      127   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  1       64   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  0      120   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  1       55   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 0       85   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 1       26   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 0       47   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 1        6   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 0       19   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 1        2   2069
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        3     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                  0        1     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                  1        6     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                  0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                  1        6     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                  0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                  1        4     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                  0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                  1        4     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                  0        1     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                  1        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                  0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                  1        6     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                  0        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                  1        3     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                  0        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                  1        8     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                 0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                 1        3     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                 0        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                 1        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                 0        1     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                 1        4     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        2     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                  1        2     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                  1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                  1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                  1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                  1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                  1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                  1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                  1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                 0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                 1        3     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                 0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                 1        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                 0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                 1        0     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0        5     83
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          2                  0        2     83
0-6 months    ki0047075b-MAL-ED          INDIA                          2                  1        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          3                  0        2     83
0-6 months    ki0047075b-MAL-ED          INDIA                          3                  1        9     83
0-6 months    ki0047075b-MAL-ED          INDIA                          4                  0        1     83
0-6 months    ki0047075b-MAL-ED          INDIA                          4                  1        4     83
0-6 months    ki0047075b-MAL-ED          INDIA                          5                  0        1     83
0-6 months    ki0047075b-MAL-ED          INDIA                          5                  1        4     83
0-6 months    ki0047075b-MAL-ED          INDIA                          6                  0        5     83
0-6 months    ki0047075b-MAL-ED          INDIA                          6                  1        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          7                  0        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          7                  1        7     83
0-6 months    ki0047075b-MAL-ED          INDIA                          8                  0        1     83
0-6 months    ki0047075b-MAL-ED          INDIA                          8                  1        7     83
0-6 months    ki0047075b-MAL-ED          INDIA                          9                  0        0     83
0-6 months    ki0047075b-MAL-ED          INDIA                          9                  1        5     83
0-6 months    ki0047075b-MAL-ED          INDIA                          10                 0        2     83
0-6 months    ki0047075b-MAL-ED          INDIA                          10                 1        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          11                 0        2     83
0-6 months    ki0047075b-MAL-ED          INDIA                          11                 1        7     83
0-6 months    ki0047075b-MAL-ED          INDIA                          12                 0        2     83
0-6 months    ki0047075b-MAL-ED          INDIA                          12                 1        2     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        4     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                  0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                  1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                  0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                  1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                  0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                  1        7     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                  0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                  1        5     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                  0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                  1        3     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                  0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                  1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                  0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                  1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                  0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                  1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                 0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                 1        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                 0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                 1        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                 0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                 1        3     43
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           2                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           2                  1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           3                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           3                  1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           4                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           4                  1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           5                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           5                  1        2     11
0-6 months    ki0047075b-MAL-ED          PERU                           6                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           6                  1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           7                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           7                  1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           8                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           8                  1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           9                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           9                  1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           10                 0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           10                 1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           11                 0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           11                 1        4     11
0-6 months    ki0047075b-MAL-ED          PERU                           12                 0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           12                 1        0     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        4     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        3     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        5     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        6     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        3     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        2     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        2     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        4     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        2    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       13    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                  0        6    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        9    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                  0        4    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        8    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                  0        7    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        9    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                  0        9    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                  1       13    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                  0        5    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                  1       14    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                  0        5    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                  1        9    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                  0        5    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                  1       11    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                  0        5    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                  1       12    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                 0        3    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        8    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                 0        7    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                 1       20    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                 0        8    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                 1       11    203
0-6 months    ki1000108-IRC              INDIA                          1                  0        7    240
0-6 months    ki1000108-IRC              INDIA                          1                  1        9    240
0-6 months    ki1000108-IRC              INDIA                          2                  0        5    240
0-6 months    ki1000108-IRC              INDIA                          2                  1        6    240
0-6 months    ki1000108-IRC              INDIA                          3                  0        8    240
0-6 months    ki1000108-IRC              INDIA                          3                  1        9    240
0-6 months    ki1000108-IRC              INDIA                          4                  0        2    240
0-6 months    ki1000108-IRC              INDIA                          4                  1        9    240
0-6 months    ki1000108-IRC              INDIA                          5                  0        4    240
0-6 months    ki1000108-IRC              INDIA                          5                  1       10    240
0-6 months    ki1000108-IRC              INDIA                          6                  0       12    240
0-6 months    ki1000108-IRC              INDIA                          6                  1       11    240
0-6 months    ki1000108-IRC              INDIA                          7                  0        9    240
0-6 months    ki1000108-IRC              INDIA                          7                  1       18    240
0-6 months    ki1000108-IRC              INDIA                          8                  0        9    240
0-6 months    ki1000108-IRC              INDIA                          8                  1       17    240
0-6 months    ki1000108-IRC              INDIA                          9                  0        4    240
0-6 months    ki1000108-IRC              INDIA                          9                  1       12    240
0-6 months    ki1000108-IRC              INDIA                          10                 0        9    240
0-6 months    ki1000108-IRC              INDIA                          10                 1       15    240
0-6 months    ki1000108-IRC              INDIA                          11                 0        6    240
0-6 months    ki1000108-IRC              INDIA                          11                 1       16    240
0-6 months    ki1000108-IRC              INDIA                          12                 0       12    240
0-6 months    ki1000108-IRC              INDIA                          12                 1       21    240
0-6 months    ki1000109-EE               PAKISTAN                       1                  0       14    108
0-6 months    ki1000109-EE               PAKISTAN                       1                  1       16    108
0-6 months    ki1000109-EE               PAKISTAN                       2                  0       10    108
0-6 months    ki1000109-EE               PAKISTAN                       2                  1        8    108
0-6 months    ki1000109-EE               PAKISTAN                       3                  0        6    108
0-6 months    ki1000109-EE               PAKISTAN                       3                  1       11    108
0-6 months    ki1000109-EE               PAKISTAN                       4                  0        3    108
0-6 months    ki1000109-EE               PAKISTAN                       4                  1        5    108
0-6 months    ki1000109-EE               PAKISTAN                       5                  0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       5                  1        1    108
0-6 months    ki1000109-EE               PAKISTAN                       6                  0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       6                  1        0    108
0-6 months    ki1000109-EE               PAKISTAN                       7                  0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       7                  1        0    108
0-6 months    ki1000109-EE               PAKISTAN                       8                  0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       8                  1        0    108
0-6 months    ki1000109-EE               PAKISTAN                       9                  0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       9                  1        0    108
0-6 months    ki1000109-EE               PAKISTAN                       10                 0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       10                 1        0    108
0-6 months    ki1000109-EE               PAKISTAN                       11                 0        6    108
0-6 months    ki1000109-EE               PAKISTAN                       11                 1        6    108
0-6 months    ki1000109-EE               PAKISTAN                       12                 0        8    108
0-6 months    ki1000109-EE               PAKISTAN                       12                 1       14    108
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  0        2    112
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  1        3    112
0-6 months    ki1000109-ResPak           PAKISTAN                       2                  0        3    112
0-6 months    ki1000109-ResPak           PAKISTAN                       2                  1        2    112
0-6 months    ki1000109-ResPak           PAKISTAN                       3                  0        1    112
0-6 months    ki1000109-ResPak           PAKISTAN                       3                  1        8    112
0-6 months    ki1000109-ResPak           PAKISTAN                       4                  0        8    112
0-6 months    ki1000109-ResPak           PAKISTAN                       4                  1        6    112
0-6 months    ki1000109-ResPak           PAKISTAN                       5                  0       10    112
0-6 months    ki1000109-ResPak           PAKISTAN                       5                  1        7    112
0-6 months    ki1000109-ResPak           PAKISTAN                       6                  0        4    112
0-6 months    ki1000109-ResPak           PAKISTAN                       6                  1       10    112
0-6 months    ki1000109-ResPak           PAKISTAN                       7                  0        4    112
0-6 months    ki1000109-ResPak           PAKISTAN                       7                  1       13    112
0-6 months    ki1000109-ResPak           PAKISTAN                       8                  0        9    112
0-6 months    ki1000109-ResPak           PAKISTAN                       8                  1        8    112
0-6 months    ki1000109-ResPak           PAKISTAN                       9                  0        1    112
0-6 months    ki1000109-ResPak           PAKISTAN                       9                  1        6    112
0-6 months    ki1000109-ResPak           PAKISTAN                       10                 0        1    112
0-6 months    ki1000109-ResPak           PAKISTAN                       10                 1        4    112
0-6 months    ki1000109-ResPak           PAKISTAN                       11                 0        0    112
0-6 months    ki1000109-ResPak           PAKISTAN                       11                 1        1    112
0-6 months    ki1000109-ResPak           PAKISTAN                       12                 0        0    112
0-6 months    ki1000109-ResPak           PAKISTAN                       12                 1        1    112
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0       18    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       13    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                  0       11    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                  1        6    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                  0       12    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                  1        6    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                  0       14    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                  1        7    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                  0       18    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                  1       16    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                  0        9    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                  1       25    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                  0       10    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                  1       13    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                  0       13    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                  1       17    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                  0       10    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                  1       25    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                 0       18    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                 1       24    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                 0       22    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                 1       10    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                 0       11    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                 1       13    341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       12     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                  0        9     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                  0        9     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                  0        7     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                  0        4     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                  0        8     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                  0        4     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                  0        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                  0        2     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                 0        6     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                 0        2     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                 0       15     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                 1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  0       10    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  1       19    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                  0        3    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                  1       16    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                  0       12    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                  1       13    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                  0        6    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                  1       16    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                  0        3    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                  1       17    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                  0        4    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                  1       14    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                  0        8    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                  1       14    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                  0        2    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                  1       13    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                  0        2    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                  1       12    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                 0        5    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                 1       10    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                 0        5    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                 1       11    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                 0        4    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                 1        4    223
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       18    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       24    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0        7    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       14    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0       14    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       21    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0        4    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       18    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0        8    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       11    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0        4    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        8    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0        2    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       16    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0        6    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       24    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0        8    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       33    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0        4    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       21    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0        9    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       27    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0       17    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       22    340
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                  0        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                  1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                  0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                  1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                  0        3     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                  1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                  0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                  1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                  0        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                  1        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                  0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                  1        2     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                  0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                  1        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                  0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                  1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                 0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                 1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                 0        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                 1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                 0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                 1        0     10
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                  0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                  1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                  0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                  1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                  0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                  1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                  0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                  1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                  0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                  1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                  0       17    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                  1       30    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                  0       26    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                  1       47    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                  0       29    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                  1       26    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                 0        2    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                 1        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                 0        1    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                 1        2    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                 0        0    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                 1        0    180
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  0        3     52
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  1        5     52
0-6 months    ki1114097-CMIN             BANGLADESH                     2                  0        4     52
0-6 months    ki1114097-CMIN             BANGLADESH                     2                  1        4     52
0-6 months    ki1114097-CMIN             BANGLADESH                     3                  0        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     3                  1        3     52
0-6 months    ki1114097-CMIN             BANGLADESH                     4                  0        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     4                  1        3     52
0-6 months    ki1114097-CMIN             BANGLADESH                     5                  0        4     52
0-6 months    ki1114097-CMIN             BANGLADESH                     5                  1        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     6                  0        4     52
0-6 months    ki1114097-CMIN             BANGLADESH                     6                  1        1     52
0-6 months    ki1114097-CMIN             BANGLADESH                     7                  0        1     52
0-6 months    ki1114097-CMIN             BANGLADESH                     7                  1        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     8                  0        1     52
0-6 months    ki1114097-CMIN             BANGLADESH                     8                  1        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     9                  0        1     52
0-6 months    ki1114097-CMIN             BANGLADESH                     9                  1        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     10                 0        1     52
0-6 months    ki1114097-CMIN             BANGLADESH                     10                 1        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     11                 0        1     52
0-6 months    ki1114097-CMIN             BANGLADESH                     11                 1        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     12                 0        3     52
0-6 months    ki1114097-CMIN             BANGLADESH                     12                 1        5     52
0-6 months    ki1114097-CMIN             BRAZIL                         1                  0        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         1                  1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         2                  0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         2                  1        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         3                  0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         3                  1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         4                  0        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         4                  1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         5                  0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         5                  1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         6                  0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         6                  1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         7                  0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         7                  1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         8                  0        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         8                  1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         9                  0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         9                  1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         10                 0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         10                 1        3      9
0-6 months    ki1114097-CMIN             BRAZIL                         11                 0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         11                 1        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         12                 0        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         12                 1        0      9
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                  0        1     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                  1        1     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                  0        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                  1        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                  0        4     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                  1        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                  0        5     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                  1        3     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                  0        3     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                  1        4     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                  0        4     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                  1        1     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                  0        1     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                  1        3     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                  0        3     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                  1        0     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                  0        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                  1        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                 0        0     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                 1        3     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                 0        0     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                 1        2     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                 0        1     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                 1        0     49
0-6 months    ki1114097-CMIN             PERU                           1                  0        0     52
0-6 months    ki1114097-CMIN             PERU                           1                  1        0     52
0-6 months    ki1114097-CMIN             PERU                           2                  0        4     52
0-6 months    ki1114097-CMIN             PERU                           2                  1        1     52
0-6 months    ki1114097-CMIN             PERU                           3                  0        2     52
0-6 months    ki1114097-CMIN             PERU                           3                  1        5     52
0-6 months    ki1114097-CMIN             PERU                           4                  0        0     52
0-6 months    ki1114097-CMIN             PERU                           4                  1        9     52
0-6 months    ki1114097-CMIN             PERU                           5                  0        1     52
0-6 months    ki1114097-CMIN             PERU                           5                  1        8     52
0-6 months    ki1114097-CMIN             PERU                           6                  0        1     52
0-6 months    ki1114097-CMIN             PERU                           6                  1        3     52
0-6 months    ki1114097-CMIN             PERU                           7                  0        0     52
0-6 months    ki1114097-CMIN             PERU                           7                  1        2     52
0-6 months    ki1114097-CMIN             PERU                           8                  0        0     52
0-6 months    ki1114097-CMIN             PERU                           8                  1        3     52
0-6 months    ki1114097-CMIN             PERU                           9                  0        0     52
0-6 months    ki1114097-CMIN             PERU                           9                  1        1     52
0-6 months    ki1114097-CMIN             PERU                           10                 0        1     52
0-6 months    ki1114097-CMIN             PERU                           10                 1        2     52
0-6 months    ki1114097-CMIN             PERU                           11                 0        1     52
0-6 months    ki1114097-CMIN             PERU                           11                 1        3     52
0-6 months    ki1114097-CMIN             PERU                           12                 0        0     52
0-6 months    ki1114097-CMIN             PERU                           12                 1        5     52
0-6 months    ki1114097-CONTENT          PERU                           1                  0        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                  1        1      4
0-6 months    ki1114097-CONTENT          PERU                           2                  0        0      4
0-6 months    ki1114097-CONTENT          PERU                           2                  1        1      4
0-6 months    ki1114097-CONTENT          PERU                           3                  0        0      4
0-6 months    ki1114097-CONTENT          PERU                           3                  1        2      4
0-6 months    ki1114097-CONTENT          PERU                           4                  0        0      4
0-6 months    ki1114097-CONTENT          PERU                           4                  1        0      4
0-6 months    ki1114097-CONTENT          PERU                           5                  0        0      4
0-6 months    ki1114097-CONTENT          PERU                           5                  1        0      4
0-6 months    ki1114097-CONTENT          PERU                           6                  0        0      4
0-6 months    ki1114097-CONTENT          PERU                           6                  1        0      4
0-6 months    ki1114097-CONTENT          PERU                           7                  0        0      4
0-6 months    ki1114097-CONTENT          PERU                           7                  1        0      4
0-6 months    ki1114097-CONTENT          PERU                           8                  0        0      4
0-6 months    ki1114097-CONTENT          PERU                           8                  1        0      4
0-6 months    ki1114097-CONTENT          PERU                           9                  0        0      4
0-6 months    ki1114097-CONTENT          PERU                           9                  1        0      4
0-6 months    ki1114097-CONTENT          PERU                           10                 0        0      4
0-6 months    ki1114097-CONTENT          PERU                           10                 1        0      4
0-6 months    ki1114097-CONTENT          PERU                           11                 0        0      4
0-6 months    ki1114097-CONTENT          PERU                           11                 1        0      4
0-6 months    ki1114097-CONTENT          PERU                           12                 0        0      4
0-6 months    ki1114097-CONTENT          PERU                           12                 1        0      4
0-6 months    ki1119695-PROBIT           BELARUS                        1                  0       32   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                  1      254   4263
0-6 months    ki1119695-PROBIT           BELARUS                        2                  0       31   4263
0-6 months    ki1119695-PROBIT           BELARUS                        2                  1      201   4263
0-6 months    ki1119695-PROBIT           BELARUS                        3                  0       32   4263
0-6 months    ki1119695-PROBIT           BELARUS                        3                  1      252   4263
0-6 months    ki1119695-PROBIT           BELARUS                        4                  0       29   4263
0-6 months    ki1119695-PROBIT           BELARUS                        4                  1      248   4263
0-6 months    ki1119695-PROBIT           BELARUS                        5                  0       39   4263
0-6 months    ki1119695-PROBIT           BELARUS                        5                  1      284   4263
0-6 months    ki1119695-PROBIT           BELARUS                        6                  0       48   4263
0-6 months    ki1119695-PROBIT           BELARUS                        6                  1      270   4263
0-6 months    ki1119695-PROBIT           BELARUS                        7                  0       31   4263
0-6 months    ki1119695-PROBIT           BELARUS                        7                  1      372   4263
0-6 months    ki1119695-PROBIT           BELARUS                        8                  0       50   4263
0-6 months    ki1119695-PROBIT           BELARUS                        8                  1      392   4263
0-6 months    ki1119695-PROBIT           BELARUS                        9                  0       42   4263
0-6 months    ki1119695-PROBIT           BELARUS                        9                  1      343   4263
0-6 months    ki1119695-PROBIT           BELARUS                        10                 0       55   4263
0-6 months    ki1119695-PROBIT           BELARUS                        10                 1      400   4263
0-6 months    ki1119695-PROBIT           BELARUS                        11                 0       59   4263
0-6 months    ki1119695-PROBIT           BELARUS                        11                 1      351   4263
0-6 months    ki1119695-PROBIT           BELARUS                        12                 0       40   4263
0-6 months    ki1119695-PROBIT           BELARUS                        12                 1      408   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  0       61   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      164   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                  0       48   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                  1      117   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                  0       57   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                  1      145   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                  0       31   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                  1      119   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                  0       38   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                  1      122   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                  0       45   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                  1      180   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                  0       62   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                  1      193   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                  0       67   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                  1      188   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                  0       60   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                  1      167   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                 0       49   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                 1      140   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                 0       59   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                 1      167   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                 0       69   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                 1      166   2514
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         2                  0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         2                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         3                  0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         3                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         4                  0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         4                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         5                  0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         5                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         6                  0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         6                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         7                  0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         7                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         8                  0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         8                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         9                  0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         9                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         10                 0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         10                 1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         11                 0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         11                 1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         12                 0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         12                 1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0      160   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      271   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                  0      123   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                  1      240   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                  0      153   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                  1      263   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                  0      114   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                  1      214   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                  0       61   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                  1      184   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                  0       65   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                  1      169   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                  0       70   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                  1      174   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                  0       99   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                  1      253   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                  0      141   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                  1      382   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                 0      171   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                 1      366   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                 0      163   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                 1      372   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                 0      219   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                 1      311   4738
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0        3    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                  0       18    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                  1       16    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                  0       25    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                  1       27    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                  0       33    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                  1       63    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                  0       31    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                  1       34    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                  0       23    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                  1       30    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                  0       62    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                  1       37    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                  0       18    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                  1       40    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                  0       15    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                  1       41    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                 0        7    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                 1       18    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                 0        6    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                 1        2    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                 0        3    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                 1        1    553
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  0        6     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  1        4     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  0        6     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  1        9     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  1        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  0        4     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  1        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  0        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  1        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  1        3     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  0        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  1        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  0        5     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  1        8     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 0        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 1        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 1        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 1        1     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0        1     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          2                  0        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          2                  1        1     95
6-24 months   ki0047075b-MAL-ED          INDIA                          3                  0        3     95
6-24 months   ki0047075b-MAL-ED          INDIA                          3                  1        5     95
6-24 months   ki0047075b-MAL-ED          INDIA                          4                  0        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          4                  1        1     95
6-24 months   ki0047075b-MAL-ED          INDIA                          5                  0        4     95
6-24 months   ki0047075b-MAL-ED          INDIA                          5                  1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          6                  0        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          6                  1        5     95
6-24 months   ki0047075b-MAL-ED          INDIA                          7                  0        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          7                  1        5     95
6-24 months   ki0047075b-MAL-ED          INDIA                          8                  0        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          8                  1        9     95
6-24 months   ki0047075b-MAL-ED          INDIA                          9                  0        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          9                  1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          10                 0        4     95
6-24 months   ki0047075b-MAL-ED          INDIA                          10                 1        5     95
6-24 months   ki0047075b-MAL-ED          INDIA                          11                 0        9     95
6-24 months   ki0047075b-MAL-ED          INDIA                          11                 1        9     95
6-24 months   ki0047075b-MAL-ED          INDIA                          12                 0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          12                 1        4     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        5     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                  0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                  1        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                  0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                  1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                  0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                  1        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                  0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                  1        7     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                  0        3     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                  1        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                  0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                  1        5     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                  0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                  1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                  0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                  1        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                 0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                 1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                 0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                 1        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                 0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                 1        3     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        5     23
6-24 months   ki0047075b-MAL-ED          PERU                           2                  0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           2                  1        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           3                  0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           3                  1        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           4                  0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           4                  1        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           5                  0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           5                  1        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           6                  0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           6                  1        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           7                  0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           7                  1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           8                  0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           8                  1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           9                  0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           9                  1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           10                 0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           10                 1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           11                 0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           11                 1        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           12                 0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           12                 1        0     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       12     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        6     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        5     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        6     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        8     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        5     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        2     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        4     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0        2     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        3     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        2     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        4    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        6    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  0        2    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        8    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  0        1    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        3    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  0        5    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        2    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  0        6    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  1        6    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  0        3    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        5    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  0        6    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  1        4    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       10    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  1        5    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  0        4    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  1       10    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 0        4    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        2    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 0        3    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 1       10    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 0        6    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 1        8    123
6-24 months   ki1000108-IRC              INDIA                          1                  0        4    155
6-24 months   ki1000108-IRC              INDIA                          1                  1       11    155
6-24 months   ki1000108-IRC              INDIA                          2                  0        4    155
6-24 months   ki1000108-IRC              INDIA                          2                  1        7    155
6-24 months   ki1000108-IRC              INDIA                          3                  0        2    155
6-24 months   ki1000108-IRC              INDIA                          3                  1        4    155
6-24 months   ki1000108-IRC              INDIA                          4                  0        4    155
6-24 months   ki1000108-IRC              INDIA                          4                  1        6    155
6-24 months   ki1000108-IRC              INDIA                          5                  0        6    155
6-24 months   ki1000108-IRC              INDIA                          5                  1        3    155
6-24 months   ki1000108-IRC              INDIA                          6                  0        7    155
6-24 months   ki1000108-IRC              INDIA                          6                  1        7    155
6-24 months   ki1000108-IRC              INDIA                          7                  0        8    155
6-24 months   ki1000108-IRC              INDIA                          7                  1        5    155
6-24 months   ki1000108-IRC              INDIA                          8                  0        9    155
6-24 months   ki1000108-IRC              INDIA                          8                  1        9    155
6-24 months   ki1000108-IRC              INDIA                          9                  0       10    155
6-24 months   ki1000108-IRC              INDIA                          9                  1        6    155
6-24 months   ki1000108-IRC              INDIA                          10                 0       10    155
6-24 months   ki1000108-IRC              INDIA                          10                 1        8    155
6-24 months   ki1000108-IRC              INDIA                          11                 0        6    155
6-24 months   ki1000108-IRC              INDIA                          11                 1        4    155
6-24 months   ki1000108-IRC              INDIA                          12                 0        5    155
6-24 months   ki1000108-IRC              INDIA                          12                 1       10    155
6-24 months   ki1000109-EE               PAKISTAN                       1                  0       26    149
6-24 months   ki1000109-EE               PAKISTAN                       1                  1        5    149
6-24 months   ki1000109-EE               PAKISTAN                       2                  0       18    149
6-24 months   ki1000109-EE               PAKISTAN                       2                  1       12    149
6-24 months   ki1000109-EE               PAKISTAN                       3                  0       18    149
6-24 months   ki1000109-EE               PAKISTAN                       3                  1        9    149
6-24 months   ki1000109-EE               PAKISTAN                       4                  0       11    149
6-24 months   ki1000109-EE               PAKISTAN                       4                  1        2    149
6-24 months   ki1000109-EE               PAKISTAN                       5                  0        1    149
6-24 months   ki1000109-EE               PAKISTAN                       5                  1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       6                  0        0    149
6-24 months   ki1000109-EE               PAKISTAN                       6                  1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       7                  0        0    149
6-24 months   ki1000109-EE               PAKISTAN                       7                  1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       8                  0        0    149
6-24 months   ki1000109-EE               PAKISTAN                       8                  1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       9                  0        0    149
6-24 months   ki1000109-EE               PAKISTAN                       9                  1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       10                 0        0    149
6-24 months   ki1000109-EE               PAKISTAN                       10                 1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       11                 0       10    149
6-24 months   ki1000109-EE               PAKISTAN                       11                 1        8    149
6-24 months   ki1000109-EE               PAKISTAN                       12                 0       19    149
6-24 months   ki1000109-EE               PAKISTAN                       12                 1       10    149
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  0        0     88
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  1        1     88
6-24 months   ki1000109-ResPak           PAKISTAN                       2                  0        2     88
6-24 months   ki1000109-ResPak           PAKISTAN                       2                  1        0     88
6-24 months   ki1000109-ResPak           PAKISTAN                       3                  0        2     88
6-24 months   ki1000109-ResPak           PAKISTAN                       3                  1        3     88
6-24 months   ki1000109-ResPak           PAKISTAN                       4                  0       10     88
6-24 months   ki1000109-ResPak           PAKISTAN                       4                  1        2     88
6-24 months   ki1000109-ResPak           PAKISTAN                       5                  0       12     88
6-24 months   ki1000109-ResPak           PAKISTAN                       5                  1        1     88
6-24 months   ki1000109-ResPak           PAKISTAN                       6                  0       14     88
6-24 months   ki1000109-ResPak           PAKISTAN                       6                  1        7     88
6-24 months   ki1000109-ResPak           PAKISTAN                       7                  0        9     88
6-24 months   ki1000109-ResPak           PAKISTAN                       7                  1        2     88
6-24 months   ki1000109-ResPak           PAKISTAN                       8                  0        7     88
6-24 months   ki1000109-ResPak           PAKISTAN                       8                  1        2     88
6-24 months   ki1000109-ResPak           PAKISTAN                       9                  0        5     88
6-24 months   ki1000109-ResPak           PAKISTAN                       9                  1        2     88
6-24 months   ki1000109-ResPak           PAKISTAN                       10                 0        3     88
6-24 months   ki1000109-ResPak           PAKISTAN                       10                 1        1     88
6-24 months   ki1000109-ResPak           PAKISTAN                       11                 0        1     88
6-24 months   ki1000109-ResPak           PAKISTAN                       11                 1        0     88
6-24 months   ki1000109-ResPak           PAKISTAN                       12                 0        1     88
6-24 months   ki1000109-ResPak           PAKISTAN                       12                 1        1     88
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0       25    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1        6    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  0       19    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  1        3    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  0       19    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  1        6    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  0       18    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  1        9    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  0       20    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  1        9    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  0       25    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  1       11    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  0       22    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  1       16    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  0       40    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  1       18    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  0       49    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  1       20    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 0       26    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 1       22    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 0       41    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 1       13    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 0       34    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 1        2    473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       23    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        4    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  0       18    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  0       14    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        1    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  0       12    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  0       13    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        2    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  0       12    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  0        4    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        1    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  0        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  0        6    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        2    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 0        6    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 0       15    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        3    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 0       20    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 1        0    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0       17    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1        8    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  0       14    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  1        5    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  0       16    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  1        8    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  0       10    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  1        4    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  0        9    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  1        4    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  0        6    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  1        6    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  0       13    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  1        4    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  0       11    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  1        5    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  0        7    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  1        3    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 0       10    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 1        4    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 0       11    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 1        6    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 0       14    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 1        3    198
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       18    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       17    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0       14    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       12    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0       11    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       21    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0        9    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       15    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0        8    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       11    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0       10    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1       13    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0       15    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       14    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0       16    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       17    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0       16    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       24    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0       14    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       22    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0       16    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       21    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0       18    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       21    373
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  0        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  1        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  0        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  1        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  0        3     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  1        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  0        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  1        3     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  0        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  1        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  0        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  1        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  0        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  1        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  0        3     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  1        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 0        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 1        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 0        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 1        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 0        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 1        0     28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0       55    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1        2    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  0       44    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  1        5    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  0       49    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  1        1    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  0       41    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  1        2    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  0       61    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  1        5    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  0       89    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  1        7    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  0       94    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  1        5    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  0       97    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  1        3    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  0       73    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  1        3    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 0       74    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 1        2    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 0       59    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 1        1    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 0       48    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 1        0    820
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0        1    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  1        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  0       55    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  1       29    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  0       69    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  1       68    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  0       65    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  1       87    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 0        1    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 1        2    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 0        2    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 1        2    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 0        0    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 1        0    381
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  0        4    138
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  1       11    138
6-24 months   ki1114097-CMIN             BANGLADESH                     2                  0        6    138
6-24 months   ki1114097-CMIN             BANGLADESH                     2                  1       11    138
6-24 months   ki1114097-CMIN             BANGLADESH                     3                  0        2    138
6-24 months   ki1114097-CMIN             BANGLADESH                     3                  1        4    138
6-24 months   ki1114097-CMIN             BANGLADESH                     4                  0        2    138
6-24 months   ki1114097-CMIN             BANGLADESH                     4                  1        9    138
6-24 months   ki1114097-CMIN             BANGLADESH                     5                  0        4    138
6-24 months   ki1114097-CMIN             BANGLADESH                     5                  1        9    138
6-24 months   ki1114097-CMIN             BANGLADESH                     6                  0        2    138
6-24 months   ki1114097-CMIN             BANGLADESH                     6                  1        5    138
6-24 months   ki1114097-CMIN             BANGLADESH                     7                  0        0    138
6-24 months   ki1114097-CMIN             BANGLADESH                     7                  1        5    138
6-24 months   ki1114097-CMIN             BANGLADESH                     8                  0        4    138
6-24 months   ki1114097-CMIN             BANGLADESH                     8                  1        2    138
6-24 months   ki1114097-CMIN             BANGLADESH                     9                  0        6    138
6-24 months   ki1114097-CMIN             BANGLADESH                     9                  1        6    138
6-24 months   ki1114097-CMIN             BANGLADESH                     10                 0        5    138
6-24 months   ki1114097-CMIN             BANGLADESH                     10                 1        8    138
6-24 months   ki1114097-CMIN             BANGLADESH                     11                 0        0    138
6-24 months   ki1114097-CMIN             BANGLADESH                     11                 1        0    138
6-24 months   ki1114097-CMIN             BANGLADESH                     12                 0       20    138
6-24 months   ki1114097-CMIN             BANGLADESH                     12                 1       13    138
6-24 months   ki1114097-CMIN             BRAZIL                         1                  0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         1                  1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         2                  0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         2                  1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         3                  0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         3                  1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         4                  0        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         4                  1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         5                  0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         5                  1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         6                  0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         6                  1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         7                  0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         7                  1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         8                  0        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         8                  1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         9                  0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         9                  1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         10                 0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         10                 1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         11                 0        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         11                 1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         12                 0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         12                 1        1      4
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  0        6    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  1        1    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  0       26    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  1       10    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  0       20    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  1       13    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  0       35    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  1       15    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  0       17    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  1       11    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  0        8    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  1        9    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  0       17    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  1        3    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  0       14    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  1        5    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  0       18    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  1        9    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 0       10    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 1        1    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 0        4    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 1        9    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 0       16    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 1        8    285
6-24 months   ki1114097-CMIN             PERU                           1                  0        0     42
6-24 months   ki1114097-CMIN             PERU                           1                  1        0     42
6-24 months   ki1114097-CMIN             PERU                           2                  0        1     42
6-24 months   ki1114097-CMIN             PERU                           2                  1        4     42
6-24 months   ki1114097-CMIN             PERU                           3                  0        2     42
6-24 months   ki1114097-CMIN             PERU                           3                  1        4     42
6-24 months   ki1114097-CMIN             PERU                           4                  0        2     42
6-24 months   ki1114097-CMIN             PERU                           4                  1        4     42
6-24 months   ki1114097-CMIN             PERU                           5                  0        3     42
6-24 months   ki1114097-CMIN             PERU                           5                  1        5     42
6-24 months   ki1114097-CMIN             PERU                           6                  0        2     42
6-24 months   ki1114097-CMIN             PERU                           6                  1        6     42
6-24 months   ki1114097-CMIN             PERU                           7                  0        2     42
6-24 months   ki1114097-CMIN             PERU                           7                  1        2     42
6-24 months   ki1114097-CMIN             PERU                           8                  0        0     42
6-24 months   ki1114097-CMIN             PERU                           8                  1        1     42
6-24 months   ki1114097-CMIN             PERU                           9                  0        0     42
6-24 months   ki1114097-CMIN             PERU                           9                  1        2     42
6-24 months   ki1114097-CMIN             PERU                           10                 0        0     42
6-24 months   ki1114097-CMIN             PERU                           10                 1        1     42
6-24 months   ki1114097-CMIN             PERU                           11                 0        0     42
6-24 months   ki1114097-CMIN             PERU                           11                 1        0     42
6-24 months   ki1114097-CMIN             PERU                           12                 0        0     42
6-24 months   ki1114097-CMIN             PERU                           12                 1        1     42
6-24 months   ki1114097-CONTENT          PERU                           1                  0        0      5
6-24 months   ki1114097-CONTENT          PERU                           1                  1        0      5
6-24 months   ki1114097-CONTENT          PERU                           2                  0        0      5
6-24 months   ki1114097-CONTENT          PERU                           2                  1        0      5
6-24 months   ki1114097-CONTENT          PERU                           3                  0        0      5
6-24 months   ki1114097-CONTENT          PERU                           3                  1        0      5
6-24 months   ki1114097-CONTENT          PERU                           4                  0        0      5
6-24 months   ki1114097-CONTENT          PERU                           4                  1        0      5
6-24 months   ki1114097-CONTENT          PERU                           5                  0        0      5
6-24 months   ki1114097-CONTENT          PERU                           5                  1        0      5
6-24 months   ki1114097-CONTENT          PERU                           6                  0        1      5
6-24 months   ki1114097-CONTENT          PERU                           6                  1        1      5
6-24 months   ki1114097-CONTENT          PERU                           7                  0        0      5
6-24 months   ki1114097-CONTENT          PERU                           7                  1        0      5
6-24 months   ki1114097-CONTENT          PERU                           8                  0        0      5
6-24 months   ki1114097-CONTENT          PERU                           8                  1        0      5
6-24 months   ki1114097-CONTENT          PERU                           9                  0        0      5
6-24 months   ki1114097-CONTENT          PERU                           9                  1        1      5
6-24 months   ki1114097-CONTENT          PERU                           10                 0        1      5
6-24 months   ki1114097-CONTENT          PERU                           10                 1        1      5
6-24 months   ki1114097-CONTENT          PERU                           11                 0        0      5
6-24 months   ki1114097-CONTENT          PERU                           11                 1        0      5
6-24 months   ki1114097-CONTENT          PERU                           12                 0        0      5
6-24 months   ki1114097-CONTENT          PERU                           12                 1        0      5
6-24 months   ki1119695-PROBIT           BELARUS                        1                  0        7    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                  1        1    168
6-24 months   ki1119695-PROBIT           BELARUS                        2                  0        6    168
6-24 months   ki1119695-PROBIT           BELARUS                        2                  1        3    168
6-24 months   ki1119695-PROBIT           BELARUS                        3                  0        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        3                  1        3    168
6-24 months   ki1119695-PROBIT           BELARUS                        4                  0        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        4                  1        2    168
6-24 months   ki1119695-PROBIT           BELARUS                        5                  0       10    168
6-24 months   ki1119695-PROBIT           BELARUS                        5                  1        0    168
6-24 months   ki1119695-PROBIT           BELARUS                        6                  0        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        6                  1        1    168
6-24 months   ki1119695-PROBIT           BELARUS                        7                  0       12    168
6-24 months   ki1119695-PROBIT           BELARUS                        7                  1        5    168
6-24 months   ki1119695-PROBIT           BELARUS                        8                  0       12    168
6-24 months   ki1119695-PROBIT           BELARUS                        8                  1        5    168
6-24 months   ki1119695-PROBIT           BELARUS                        9                  0       11    168
6-24 months   ki1119695-PROBIT           BELARUS                        9                  1        3    168
6-24 months   ki1119695-PROBIT           BELARUS                        10                 0       12    168
6-24 months   ki1119695-PROBIT           BELARUS                        10                 1        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        11                 0       13    168
6-24 months   ki1119695-PROBIT           BELARUS                        11                 1        5    168
6-24 months   ki1119695-PROBIT           BELARUS                        12                 0       17    168
6-24 months   ki1119695-PROBIT           BELARUS                        12                 1        4    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      106   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1        7   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  0       75   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  1        7   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  0       97   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  1        6   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  0       64   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  1        5   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  0       85   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  1        5   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  0       74   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  1        7   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  0       71   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  1        6   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  0       82   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  1        5   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  0       68   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  1        2   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 0       76   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 1        7   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 0       86   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 1        5   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 0      100   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 1       10   1056
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0        5     75
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         2                  0        9     75
6-24 months   ki1148112-LCNI-5           MALAWI                         2                  1        3     75
6-24 months   ki1148112-LCNI-5           MALAWI                         3                  0       11     75
6-24 months   ki1148112-LCNI-5           MALAWI                         3                  1        2     75
6-24 months   ki1148112-LCNI-5           MALAWI                         4                  0        5     75
6-24 months   ki1148112-LCNI-5           MALAWI                         4                  1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         5                  0        5     75
6-24 months   ki1148112-LCNI-5           MALAWI                         5                  1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         6                  0       12     75
6-24 months   ki1148112-LCNI-5           MALAWI                         6                  1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         7                  0        3     75
6-24 months   ki1148112-LCNI-5           MALAWI                         7                  1        2     75
6-24 months   ki1148112-LCNI-5           MALAWI                         8                  0        3     75
6-24 months   ki1148112-LCNI-5           MALAWI                         8                  1        0     75
6-24 months   ki1148112-LCNI-5           MALAWI                         9                  0        2     75
6-24 months   ki1148112-LCNI-5           MALAWI                         9                  1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         10                 0        0     75
6-24 months   ki1148112-LCNI-5           MALAWI                         10                 1        0     75
6-24 months   ki1148112-LCNI-5           MALAWI                         11                 0        5     75
6-24 months   ki1148112-LCNI-5           MALAWI                         11                 1        1     75
6-24 months   ki1148112-LCNI-5           MALAWI                         12                 0        2     75
6-24 months   ki1148112-LCNI-5           MALAWI                         12                 1        0     75
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0      214   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                  0      171   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                  1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                  0      190   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                  1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                  0      188   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                  1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                  0      241   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                  1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                  0      227   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                  1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                  0      240   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                  1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                  0      266   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                  1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                  0      269   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                  1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                 0      292   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                 1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                 0      286   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                 1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                 0      253   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                 1        0   2837
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0        8   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        2   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  0       76   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  1       18   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  0      109   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  1       23   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  0      242   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  1       34   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  0      178   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  1       26   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  0      108   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  1       27   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  0      220   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  1       45   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  0      109   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  1       24   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  0      105   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  1       14   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 0       78   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 1        8   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 0       41   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 1        4   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 0       16   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 1        1   1516


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




# Results Detail

## Results Plots
![](/tmp/978e749c-a96b-44d1-a04d-da7a26d9afa3/f0d5c033-0a9a-493d-a65d-935548b60091/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/978e749c-a96b-44d1-a04d-da7a26d9afa3/f0d5c033-0a9a-493d-a65d-935548b60091/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/978e749c-a96b-44d1-a04d-da7a26d9afa3/f0d5c033-0a9a-493d-a65d-935548b60091/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/978e749c-a96b-44d1-a04d-da7a26d9afa3/f0d5c033-0a9a-493d-a65d-935548b60091/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7600000   0.5656718   0.9543282
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.6800000   0.5077047   0.8522953
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.6875000   0.3966545   0.9783455
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.4782609   0.2582143   0.6983074
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.5588235   0.3712718   0.7463752
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.7037037   0.4793229   0.9280846
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.5416667   0.3290423   0.7542910
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.5161290   0.3249217   0.7073364
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.7096774   0.5580315   0.8613233
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.5882353   0.3614266   0.8150440
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.7500000   0.6379030   0.8620970
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.5757576   0.4020693   0.7494459
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6451613   0.4725102   0.8178124
0-24 months   ki1000108-IRC              INDIA                          2                    NA                0.5909091   0.3417111   0.8401070
0-24 months   ki1000108-IRC              INDIA                          3                    NA                0.5652174   0.3222657   0.8081691
0-24 months   ki1000108-IRC              INDIA                          4                    NA                0.7142857   0.5128519   0.9157195
0-24 months   ki1000108-IRC              INDIA                          5                    NA                0.5652174   0.3263159   0.8041189
0-24 months   ki1000108-IRC              INDIA                          6                    NA                0.4864865   0.3200836   0.6528893
0-24 months   ki1000108-IRC              INDIA                          7                    NA                0.5750000   0.4192159   0.7307841
0-24 months   ki1000108-IRC              INDIA                          8                    NA                0.5909091   0.4299225   0.7518956
0-24 months   ki1000108-IRC              INDIA                          9                    NA                0.5625000   0.4064115   0.7185885
0-24 months   ki1000108-IRC              INDIA                          10                   NA                0.5476190   0.4075303   0.6877078
0-24 months   ki1000108-IRC              INDIA                          11                   NA                0.6250000   0.4423429   0.8076571
0-24 months   ki1000108-IRC              INDIA                          12                   NA                0.6458333   0.4853215   0.8063452
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3064516   0.1791303   0.4337729
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2307692   0.0878681   0.3736704
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.2790698   0.1465175   0.4116220
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.3333333   0.1840436   0.4826231
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.3968254   0.2795968   0.5140540
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.5142857   0.3934607   0.6351107
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.4754098   0.3376072   0.6132125
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.3977273   0.2869962   0.5084584
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.4326923   0.3362464   0.5291383
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.5111111   0.3990064   0.6232159
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2674419   0.1720024   0.3628813
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2500000   0.1357935   0.3642065
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5000000   0.3562585   0.6437415
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.5526316   0.3869369   0.7183263
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4285714   0.2804559   0.5766869
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.5555556   0.4250800   0.6860311
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6363636   0.4903481   0.7823792
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.6666667   0.4818376   0.8514958
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4615385   0.2907262   0.6323507
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5806452   0.4060738   0.7552165
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.6250000   0.4574566   0.7925434
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.4827586   0.2745559   0.6909613
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5151515   0.3166506   0.7136524
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.2800000   0.0641191   0.4958809
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5324675   0.4145594   0.6503757
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5531915   0.4045085   0.7018745
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6268657   0.5021189   0.7516124
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.7173913   0.5704934   0.8642892
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.5789474   0.3960709   0.7618238
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.6000000   0.4388735   0.7611265
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.6382979   0.4951070   0.7814887
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.6507937   0.5259798   0.7756075
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.7037037   0.6010671   0.8063403
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.7049180   0.5958327   0.8140034
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.6575342   0.5374504   0.7776181
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.5512821   0.4378198   0.6647443
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8673469   0.8288625   0.9058314
0-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.8464730   0.8010700   0.8918761
0-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.8614865   0.8225241   0.9004489
0-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.8680556   0.8297755   0.9063356
0-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.8528529   0.8152664   0.8904393
0-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.8262195   0.7846411   0.8677980
0-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.8976190   0.8690501   0.9261880
0-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.8649237   0.8338036   0.8960439
0-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.8671679   0.8338588   0.9004770
0-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.8592437   0.8278861   0.8906013
0-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.8317757   0.7969166   0.8666349
0-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.8784648   0.8497112   0.9072185
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5059172   0.4526100   0.5592243
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5020243   0.4407930   0.5632556
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.4950820   0.4387477   0.5514162
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.5662100   0.4984718   0.6339483
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.5080000   0.4444598   0.5715402
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.6111111   0.5554823   0.6667399
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.5993976   0.5458225   0.6529727
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.5643275   0.5108483   0.6178067
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.5690236   0.5123016   0.6257455
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.5404412   0.4805984   0.6002840
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.5425868   0.4881494   0.5970241
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.5101449   0.4572165   0.5630733
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4201550   0.3813082   0.4590019
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4494382   0.4065392   0.4923372
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4339934   0.3941157   0.4738711
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.4147287   0.3718557   0.4576017
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.3786008   0.3373726   0.4198290
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.3665944   0.3258473   0.4073414
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.3595041   0.3182852   0.4007231
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4093851   0.3708772   0.4478930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4823232   0.4476821   0.5169643
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4414958   0.4074958   0.4754958
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.4531060   0.4188230   0.4873889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.3971903   0.3619417   0.4324389
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4193548   0.2401305   0.5985791
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3529412   0.1315953   0.5742870
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.3333333   0.1239908   0.5426759
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.3333333   0.1253083   0.5413584
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.4705882   0.3063815   0.6347950
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.7352941   0.5831042   0.8874840
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.5652174   0.3561860   0.7742487
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.5666667   0.3837110   0.7496223
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.7142857   0.5598672   0.8687043
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.5714286   0.4247895   0.7180676
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.3125000   0.1602508   0.4647492
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.5416667   0.3359911   0.7473422
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.8881119   0.8512099   0.9250139
0-6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.8663793   0.8221754   0.9105832
0-6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.8873239   0.8501953   0.9244525
0-6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.8953069   0.8588889   0.9317248
0-6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.8792570   0.8433726   0.9151413
0-6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.8490566   0.8093264   0.8887868
0-6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.9230769   0.8968089   0.9493449
0-6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.8868778   0.8570664   0.9166893
0-6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.8909091   0.8597280   0.9220901
0-6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.8791209   0.8490841   0.9091577
0-6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.8560976   0.8220220   0.8901731
0-6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.9107143   0.8840572   0.9373713
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7288889   0.6705607   0.7872171
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7090909   0.6400580   0.7781239
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.7178218   0.6567609   0.7788827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.7933333   0.7290430   0.8576237
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.7625000   0.6962848   0.8287152
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.8000000   0.7479470   0.8520530
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.7568627   0.7039902   0.8097353
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.7372549   0.6830084   0.7915014
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.7356828   0.6784414   0.7929242
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.7407407   0.6780021   0.8034794
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.7389381   0.6814805   0.7963957
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.7063830   0.6482901   0.7644759
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6287703   0.5831345   0.6744061
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.6611570   0.6124406   0.7098735
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.6322115   0.5858497   0.6785734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.6524390   0.6008775   0.7040006
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.7510204   0.6968450   0.8051958
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.7222222   0.6648035   0.7796409
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.7131148   0.6563320   0.7698975
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.7187500   0.6719374   0.7655626
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.7304015   0.6923505   0.7684525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.6815642   0.6421408   0.7209877
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.6953271   0.6563976   0.7342566
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.5867925   0.5448488   0.6287361
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4857143   0.3064263   0.6650023
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4615385   0.2493436   0.6737334
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6562500   0.4923737   0.8201263
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.6250000   0.4073672   0.8426328
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.5789474   0.3375529   0.8203419
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.5652174   0.3623280   0.7681068
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.4827586   0.2917694   0.6737478
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.5151515   0.3440691   0.6862339
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.6000000   0.4412050   0.7587950
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.6111111   0.4596657   0.7625566
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.5675676   0.4016409   0.7334942
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.5384615   0.3852970   0.6916261


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5434174   0.5269343   0.5599005
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4223102   0.4111919   0.4334286
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7430390   0.7259692   0.7601088
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6751794   0.6618445   0.6885143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576408   0.5054408   0.6098407


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.8947368   0.6242845   1.2823545
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.9046053   0.5518016   1.4829799
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.6292906   0.3717822   1.0651578
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 0.7352941   0.4822107   1.1212058
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 0.9259259   0.6152395   1.3935041
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 0.7127193   0.4460851   1.1387263
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 0.6791171   0.4329945   1.0651407
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 0.9337861   0.6691942   1.3029945
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 0.7739938   0.4873228   1.2293011
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 0.9868421   0.7339288   1.3269098
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 0.7575758   0.5101177   1.1250758
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2                    1                 0.9159091   0.5558321   1.5092497
0-24 months   ki1000108-IRC              INDIA                          3                    1                 0.8760870   0.5279892   1.4536818
0-24 months   ki1000108-IRC              INDIA                          4                    1                 1.1071429   0.7505893   1.6330705
0-24 months   ki1000108-IRC              INDIA                          5                    1                 0.8760870   0.5312591   1.4447346
0-24 months   ki1000108-IRC              INDIA                          6                    1                 0.7540541   0.4884282   1.1641374
0-24 months   ki1000108-IRC              INDIA                          7                    1                 0.8912500   0.6089788   1.3043582
0-24 months   ki1000108-IRC              INDIA                          8                    1                 0.9159091   0.6251691   1.3418601
0-24 months   ki1000108-IRC              INDIA                          9                    1                 0.8718750   0.5929608   1.2819835
0-24 months   ki1000108-IRC              INDIA                          10                   1                 0.8488095   0.5862266   1.2290088
0-24 months   ki1000108-IRC              INDIA                          11                   1                 0.9687500   0.6518089   1.4398032
0-24 months   ki1000108-IRC              INDIA                          12                   1                 1.0010417   0.6947586   1.4423490
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7530364   0.3572460   1.5873202
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.9106487   0.4845544   1.7114304
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.0877193   0.5904410   2.0038129
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.2949039   0.7778575   2.1556340
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.6781955   1.0413652   2.7044691
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.5513374   0.9348001   2.5745051
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.2978469   0.7872063   2.1397270
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 1.4119433   0.8812153   2.2623121
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.6678363   1.0426118   2.6679899
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8727050   0.5046604   1.5091616
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.8157895   0.4399406   1.5127324
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.1052632   0.7296068   1.6743357
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8571429   0.5468452   1.3435134
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.1111111   0.7666315   1.6103799
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.2727273   0.8811436   1.8383322
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.3333333   0.8943789   1.9877232
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9230769   0.5777349   1.4748477
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.1612903   0.7661228   1.7602859
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 1.2500000   0.8438751   1.8515773
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.9655172   0.5749832   1.6213056
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.0303030   0.6370035   1.6664339
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.5600000   0.2459415   1.2751000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0389206   0.7333819   1.4717516
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1772843   0.8741455   1.5855465
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3472959   0.9965113   1.8215609
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.0872914   0.7393022   1.5990789
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1268293   0.7955690   1.5960203
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.1987545   0.8746635   1.6429317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2222222   0.9118542   1.6382302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.3215899   1.0137772   1.7228636
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.3238705   1.0104831   1.7344506
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.2348814   0.9267442   1.6454724
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0353346   0.7652030   1.4008279
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 0.9759336   0.9103078   1.0462905
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.9932432   0.9322654   1.0582096
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 1.0008170   0.9401263   1.0654256
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.9832892   0.9236791   1.0467462
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.9525825   0.8907694   1.0186849
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 1.0349020   0.9799061   1.0929844
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.9972062   0.9418369   1.0558306
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.9997936   0.9428072   1.0602245
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.9906574   0.9353476   1.0492379
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.9589885   0.9022080   1.0193424
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 1.0128183   0.9584858   1.0702306
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9923053   0.8445833   1.1658647
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9785831   0.8380047   1.1427439
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.1191754   0.9542479   1.3126082
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0041170   0.8526207   1.1825316
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.2079272   1.0509116   1.3884024
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1847742   1.0318745   1.3603300
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1154543   0.9680645   1.2852845
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.1247366   0.9728705   1.3003092
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0682405   0.9168241   1.2446636
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0724814   0.9272588   1.2404481
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0083566   0.8697457   1.1690580
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0696961   0.9365861   1.2217240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.0329363   0.9066979   1.1767508
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9870849   0.8592545   1.1339325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9010979   0.7811446   1.0394714
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.8725216   0.7550683   1.0082452
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8556464   0.7384595   0.9914298
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9743668   0.8539669   1.1117417
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.1479649   1.0211347   1.2905480
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0507925   0.9316622   1.1851559
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0784256   0.9569840   1.2152783
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9453422   0.8316319   1.0746003
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8416290   0.3940249   1.7977019
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.7948718   0.3718637   1.6990664
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.7948718   0.3730796   1.6935290
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.1221719   0.6463136   1.9483884
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.7533937   1.0905591   2.8190947
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.3478261   0.7659152   2.3718490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.3512821   0.7909093   2.3086884
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 1.7032967   1.0550814   2.7497591
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.3626374   0.8277176   2.2432537
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.7451923   0.3897697   1.4247173
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 1.2916667   0.7292345   2.2878824
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.9755295   0.9134057   1.0418785
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.9991128   0.9418995   1.0598014
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1                 1.0081014   0.9511551   1.0684572
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.9900295   0.9340153   1.0494029
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.9560244   0.8980310   1.0177629
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1                 1.0393701   0.9883220   1.0930549
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.9986105   0.9466407   1.0534333
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1                 1.0031496   0.9501054   1.0591553
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.9898763   0.9380332   1.0445846
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.9639524   0.9100525   1.0210445
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1                 1.0254499   0.9746331   1.0789164
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9728381   0.8576495   1.1034974
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9848165   0.8762630   1.1068178
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0884146   0.9712533   1.2197090
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0461128   0.9295941   1.1772363
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0975610   0.9900030   1.2168044
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0383788   0.9337330   1.1547524
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0114778   0.9072869   1.1276337
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.0093209   0.9027258   1.1285029
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0162602   0.9044823   1.1418518
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0137870   0.9067519   1.1334567
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9691230   0.8640609   1.0869597
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0515080   0.9481892   1.1660850
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.0054730   0.9069038   1.1147554
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.0376429   0.9320688   1.1551751
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.1944273   1.0782477   1.3231251
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.1486265   1.0313999   1.2791768
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.1341419   1.0183007   1.2631611
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.1431042   1.0368938   1.2601940
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.1616349   1.0623544   1.2701934
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0839638   0.9878892   1.1893818
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1058523   1.0089922   1.2120107
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9332382   0.8428529   1.0333162
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9502262   0.5269450   1.7135182
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.3511029   0.8652460   2.1097806
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.2867647   0.7745973   2.1375796
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.1919505   0.6830056   2.0801379
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1636829   0.6953098   1.9475602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9939148   0.5786091   1.7073127
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.0606061   0.6455315   1.7425721
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.2352941   0.7843591   1.9454757
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.2581699   0.8066267   1.9624834
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.1685215   0.7296774   1.8712959
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.1085973   0.6956412   1.7666981


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1280982   -0.3156692   0.0594729
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0552879   -0.2222494   0.1116737
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0743838   -0.0480880   0.1968556
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0201900   -0.1136125   0.1539925
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0944609   -0.0164284   0.2053503
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0061418   -0.0433776   0.0310940
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0375002   -0.0132593   0.0882597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0021552   -0.0349353   0.0392457
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0938416   -0.0768830   0.2645663
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0025853   -0.0382468   0.0330763
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0141501   -0.0413889   0.0696891
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0464091    0.0030323   0.0897859
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0719265   -0.0977237   0.2415767


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2027184   -0.5406919   0.0611155
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0937284   -0.4174182   0.1560418
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1953174   -0.2007108   0.4607243
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0388128   -0.2562172   0.2645533
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1506726   -0.0465071   0.3107003
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0071316   -0.0513110   0.0351912
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0690081   -0.0292634   0.1578969
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0051033   -0.0867194   0.0891675
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1828571   -0.2287268   0.4565737
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0029195   -0.0440106   0.0365544
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0190435   -0.0586315   0.0910193
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0687360    0.0021786   0.1308538
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1289835   -0.2360974   0.3862379
