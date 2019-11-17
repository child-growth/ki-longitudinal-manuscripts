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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        brthmon    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0       24     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1        5     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     0       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     1        3     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     0       20     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     1        2     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     0       11     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     1        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     0       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     0       25     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     0       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     1        2     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    0       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    1        3     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    0       17     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    1        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    0       25     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    1        3     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       25     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     0       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     0       23     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     0        8     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     0       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     0       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     0       32     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        0     233
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       19     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       20     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     0       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        0     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       22     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     0       21     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     0       20     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    0       24     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    0       23     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                    0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                    1        1     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       19     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                     0       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                     1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                     0       20     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                     1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                     0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                     0       20     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                     0       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                     1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                     0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                    0       20     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                    1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                    0       24     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                    1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                    0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                    1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       41     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           2                     0       23     302
0-24 months   ki0047075b-MAL-ED          PERU                           2                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           3                     0       22     302
0-24 months   ki0047075b-MAL-ED          PERU                           3                     1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           4                     0       21     302
0-24 months   ki0047075b-MAL-ED          PERU                           4                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           5                     0       27     302
0-24 months   ki0047075b-MAL-ED          PERU                           5                     1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           6                     0       17     302
0-24 months   ki0047075b-MAL-ED          PERU                           6                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           7                     0       24     302
0-24 months   ki0047075b-MAL-ED          PERU                           7                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           8                     0       18     302
0-24 months   ki0047075b-MAL-ED          PERU                           8                     1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           9                     0       22     302
0-24 months   ki0047075b-MAL-ED          PERU                           9                     1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           10                    0       27     302
0-24 months   ki0047075b-MAL-ED          PERU                           10                    1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           11                    0       33     302
0-24 months   ki0047075b-MAL-ED          PERU                           11                    1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           12                    0       23     302
0-24 months   ki0047075b-MAL-ED          PERU                           12                    1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       40     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        2     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       30     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       17     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       22     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       25     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0       12     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       25     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       27     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1        4     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       26     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1        5     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       42     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1        2     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       29     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        9     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       22     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0       12     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0       26     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0       32     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1        2     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     0       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     0       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     0       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       15     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       34     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    0       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    1        5     373
0-24 months   ki1000108-IRC              INDIA                          1                     0       28     410
0-24 months   ki1000108-IRC              INDIA                          1                     1       10     410
0-24 months   ki1000108-IRC              INDIA                          2                     0       21     410
0-24 months   ki1000108-IRC              INDIA                          2                     1        7     410
0-24 months   ki1000108-IRC              INDIA                          3                     0       18     410
0-24 months   ki1000108-IRC              INDIA                          3                     1        9     410
0-24 months   ki1000108-IRC              INDIA                          4                     0       18     410
0-24 months   ki1000108-IRC              INDIA                          4                     1        3     410
0-24 months   ki1000108-IRC              INDIA                          5                     0       14     410
0-24 months   ki1000108-IRC              INDIA                          5                     1        8     410
0-24 months   ki1000108-IRC              INDIA                          6                     0       23     410
0-24 months   ki1000108-IRC              INDIA                          6                     1       14     410
0-24 months   ki1000108-IRC              INDIA                          7                     0       19     410
0-24 months   ki1000108-IRC              INDIA                          7                     1       17     410
0-24 months   ki1000108-IRC              INDIA                          8                     0       27     410
0-24 months   ki1000108-IRC              INDIA                          8                     1       17     410
0-24 months   ki1000108-IRC              INDIA                          9                     0       17     410
0-24 months   ki1000108-IRC              INDIA                          9                     1       10     410
0-24 months   ki1000108-IRC              INDIA                          10                    0       23     410
0-24 months   ki1000108-IRC              INDIA                          10                    1       15     410
0-24 months   ki1000108-IRC              INDIA                          11                    0       28     410
0-24 months   ki1000108-IRC              INDIA                          11                    1       12     410
0-24 months   ki1000108-IRC              INDIA                          12                    0       34     410
0-24 months   ki1000108-IRC              INDIA                          12                    1       18     410
0-24 months   ki1000109-EE               PAKISTAN                       1                     0       70     380
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       25     380
0-24 months   ki1000109-EE               PAKISTAN                       2                     0       52     380
0-24 months   ki1000109-EE               PAKISTAN                       2                     1       15     380
0-24 months   ki1000109-EE               PAKISTAN                       3                     0       33     380
0-24 months   ki1000109-EE               PAKISTAN                       3                     1       10     380
0-24 months   ki1000109-EE               PAKISTAN                       4                     0       14     380
0-24 months   ki1000109-EE               PAKISTAN                       4                     1        2     380
0-24 months   ki1000109-EE               PAKISTAN                       5                     0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       5                     1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       6                     0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       6                     1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       7                     0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       7                     1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       8                     0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       8                     1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       9                     0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       9                     1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       10                    0        4     380
0-24 months   ki1000109-EE               PAKISTAN                       10                    1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       11                    0       56     380
0-24 months   ki1000109-EE               PAKISTAN                       11                    1       15     380
0-24 months   ki1000109-EE               PAKISTAN                       12                    0       71     380
0-24 months   ki1000109-EE               PAKISTAN                       12                    1       13     380
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     0       10     284
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        2     284
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        9     284
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        2     284
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     0       14     284
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     1       14     284
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     0       21     284
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     1        9     284
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       44     284
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     1       11     284
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       39     284
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     1        8     284
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     0       27     284
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     1        4     284
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       30     284
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     1       11     284
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       11     284
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        5     284
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        5     284
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        1     284
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        4     284
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        0     284
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        1     284
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        2     284
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       93    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1       18    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0       82    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1        8    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     0       73    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     1        8    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     0       64    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     1       10    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     0       83    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     1       16    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     0       87    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     1       22    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     0      113    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     1       23    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     0      156    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     1       23    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     0      157    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     1       34    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    0      138    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    1       27    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    0      118    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    1       22    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    0      126    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    1       12    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        2     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       30     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        6     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     0       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        3     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        3     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        1     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        9     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        5     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     0       19     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     1        6     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     0       32     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     1        5     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       58     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     1        9     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     0       56     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     1       10     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    0       44     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    1        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    0       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    1        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    0       28     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    1       10     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       58     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       15     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       50     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1        7     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       49     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1       10     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       44     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       41     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       42     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       31     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1       10     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0       31     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       43     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1        4     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       41     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       44     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1        9     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       51     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1        4     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       36     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1        2     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     0       75     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     1        4     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                     0       41     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                     1        1     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                     0       31     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                     1        0     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     5                     0       33     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     5                     1        2     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     6                     0       52     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     6                     1        1     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     7                     0       39     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     7                     1        0     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     8                     0       48     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     8                     1        4     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     9                     0       85     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     9                     1        9     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     10                    0       86     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     10                    1        6     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     11                    0       61     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     11                    1        8     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     12                    0       71     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     12                    1        5     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      156    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       15    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      166    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       12    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      158    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        6    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      175    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       15    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      175    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       10    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      153    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       13    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      203    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       15    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      220    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       12    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      205    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       11    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      233    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       17    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      204    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       17    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      190    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       15    2396
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0      232    2920
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1       64    2920
0-24 months   ki1101329-Keneba           GAMBIA                         2                     0      213    2920
0-24 months   ki1101329-Keneba           GAMBIA                         2                     1       45    2920
0-24 months   ki1101329-Keneba           GAMBIA                         3                     0      249    2920
0-24 months   ki1101329-Keneba           GAMBIA                         3                     1       57    2920
0-24 months   ki1101329-Keneba           GAMBIA                         4                     0      170    2920
0-24 months   ki1101329-Keneba           GAMBIA                         4                     1       27    2920
0-24 months   ki1101329-Keneba           GAMBIA                         5                     0      166    2920
0-24 months   ki1101329-Keneba           GAMBIA                         5                     1       37    2920
0-24 months   ki1101329-Keneba           GAMBIA                         6                     0      135    2920
0-24 months   ki1101329-Keneba           GAMBIA                         6                     1       29    2920
0-24 months   ki1101329-Keneba           GAMBIA                         7                     0      113    2920
0-24 months   ki1101329-Keneba           GAMBIA                         7                     1       28    2920
0-24 months   ki1101329-Keneba           GAMBIA                         8                     0      195    2920
0-24 months   ki1101329-Keneba           GAMBIA                         8                     1       41    2920
0-24 months   ki1101329-Keneba           GAMBIA                         9                     0      204    2920
0-24 months   ki1101329-Keneba           GAMBIA                         9                     1       49    2920
0-24 months   ki1101329-Keneba           GAMBIA                         10                    0      295    2920
0-24 months   ki1101329-Keneba           GAMBIA                         10                    1       57    2920
0-24 months   ki1101329-Keneba           GAMBIA                         11                    0      210    2920
0-24 months   ki1101329-Keneba           GAMBIA                         11                    1       45    2920
0-24 months   ki1101329-Keneba           GAMBIA                         12                    0      212    2920
0-24 months   ki1101329-Keneba           GAMBIA                         12                    1       47    2920
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       28     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     0       26     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     0       27     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     0       31     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     0       35     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     0       25     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     0       22     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     0       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     0       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    0       31     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    0       23     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    0       33     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    1        0     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      309    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       14    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     0      170    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     1       11    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     0      187    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     1       10    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     0      198    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     1       11    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     0      207    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     1       11    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     0      181    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     1       11    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     0      190    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     1        6    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     0      290    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     1       13    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     0      388    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     1       23    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    0      356    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    1       16    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    0      319    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    1       24    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    0      306    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    1       15    3266
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        1     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0      119     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       49     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0      203     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1       60     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0      187     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1       67     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0     686
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     0       24     272
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     1        4     272
0-24 months   ki1114097-CMIN             BANGLADESH                     2                     0       26     272
0-24 months   ki1114097-CMIN             BANGLADESH                     2                     1        1     272
0-24 months   ki1114097-CMIN             BANGLADESH                     3                     0       17     272
0-24 months   ki1114097-CMIN             BANGLADESH                     3                     1        3     272
0-24 months   ki1114097-CMIN             BANGLADESH                     4                     0       20     272
0-24 months   ki1114097-CMIN             BANGLADESH                     4                     1        2     272
0-24 months   ki1114097-CMIN             BANGLADESH                     5                     0       19     272
0-24 months   ki1114097-CMIN             BANGLADESH                     5                     1        1     272
0-24 months   ki1114097-CMIN             BANGLADESH                     6                     0        9     272
0-24 months   ki1114097-CMIN             BANGLADESH                     6                     1        1     272
0-24 months   ki1114097-CMIN             BANGLADESH                     7                     0       15     272
0-24 months   ki1114097-CMIN             BANGLADESH                     7                     1        2     272
0-24 months   ki1114097-CMIN             BANGLADESH                     8                     0       20     272
0-24 months   ki1114097-CMIN             BANGLADESH                     8                     1        2     272
0-24 months   ki1114097-CMIN             BANGLADESH                     9                     0       19     272
0-24 months   ki1114097-CMIN             BANGLADESH                     9                     1        3     272
0-24 months   ki1114097-CMIN             BANGLADESH                     10                    0       20     272
0-24 months   ki1114097-CMIN             BANGLADESH                     10                    1        7     272
0-24 months   ki1114097-CMIN             BANGLADESH                     11                    0       23     272
0-24 months   ki1114097-CMIN             BANGLADESH                     11                    1        6     272
0-24 months   ki1114097-CMIN             BANGLADESH                     12                    0       18     272
0-24 months   ki1114097-CMIN             BANGLADESH                     12                    1       10     272
0-24 months   ki1114097-CONTENT          PERU                           1                     0       10     215
0-24 months   ki1114097-CONTENT          PERU                           1                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                     0       18     215
0-24 months   ki1114097-CONTENT          PERU                           2                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                     0       30     215
0-24 months   ki1114097-CONTENT          PERU                           3                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           4                     0       19     215
0-24 months   ki1114097-CONTENT          PERU                           4                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           5                     0       14     215
0-24 months   ki1114097-CONTENT          PERU                           5                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           6                     0       13     215
0-24 months   ki1114097-CONTENT          PERU                           6                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           7                     0       28     215
0-24 months   ki1114097-CONTENT          PERU                           7                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           8                     0       23     215
0-24 months   ki1114097-CONTENT          PERU                           8                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           9                     0       26     215
0-24 months   ki1114097-CONTENT          PERU                           9                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           10                    0       14     215
0-24 months   ki1114097-CONTENT          PERU                           10                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           11                    0        9     215
0-24 months   ki1114097-CONTENT          PERU                           11                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           12                    0       11     215
0-24 months   ki1114097-CONTENT          PERU                           12                    1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                     0      950   16898
0-24 months   ki1119695-PROBIT           BELARUS                        1                     1       76   16898
0-24 months   ki1119695-PROBIT           BELARUS                        2                     0      912   16898
0-24 months   ki1119695-PROBIT           BELARUS                        2                     1       71   16898
0-24 months   ki1119695-PROBIT           BELARUS                        3                     0     1055   16898
0-24 months   ki1119695-PROBIT           BELARUS                        3                     1       90   16898
0-24 months   ki1119695-PROBIT           BELARUS                        4                     0     1085   16898
0-24 months   ki1119695-PROBIT           BELARUS                        4                     1       78   16898
0-24 months   ki1119695-PROBIT           BELARUS                        5                     0     1065   16898
0-24 months   ki1119695-PROBIT           BELARUS                        5                     1      109   16898
0-24 months   ki1119695-PROBIT           BELARUS                        6                     0     1117   16898
0-24 months   ki1119695-PROBIT           BELARUS                        6                     1       94   16898
0-24 months   ki1119695-PROBIT           BELARUS                        7                     0     1436   16898
0-24 months   ki1119695-PROBIT           BELARUS                        7                     1      154   16898
0-24 months   ki1119695-PROBIT           BELARUS                        8                     0     1477   16898
0-24 months   ki1119695-PROBIT           BELARUS                        8                     1      111   16898
0-24 months   ki1119695-PROBIT           BELARUS                        9                     0     1501   16898
0-24 months   ki1119695-PROBIT           BELARUS                        9                     1      126   16898
0-24 months   ki1119695-PROBIT           BELARUS                        10                    0     1669   16898
0-24 months   ki1119695-PROBIT           BELARUS                        10                    1      146   16898
0-24 months   ki1119695-PROBIT           BELARUS                        11                    0     1581   16898
0-24 months   ki1119695-PROBIT           BELARUS                        11                    1      121   16898
0-24 months   ki1119695-PROBIT           BELARUS                        12                    0     1741   16898
0-24 months   ki1119695-PROBIT           BELARUS                        12                    1      133   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1226   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      119   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      964   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      101   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0     1082   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      109   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      913   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1       82   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      932   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1       97   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0     1022   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      122   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0     1042   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      125   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0     1136   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      119   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0     1188   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      108   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      960   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       87   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0     1092   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1       99   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0     1103   13946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      118   13946
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       68     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                     0       45     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                     1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                     0       25     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                     1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                     0       39     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                     1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                     0       44     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                     1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                     0       33     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                     1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                     0       62     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                     1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       92     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       91     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     1        2     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    0      134     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    0      105     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       94     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    1        1     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2382   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      116   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1929   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1      118   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2287   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1      129   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1651   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1      121   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0     1229   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1       91   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0     1291   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1       98   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0     1453   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1      103   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1986   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1      143   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0     2608   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1      169   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0     2746   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1      195   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0     2831   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1      176   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0     2918   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1      186   26956
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      869    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1       48    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      961    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1       63    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      711    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1       62    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      600    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1       41    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      423    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1       37    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      511    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1       26    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      525    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1       30    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0      371    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1       32    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0      129    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1        4    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    5443
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       21     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     0       25     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     0       20     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     1        4     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                     0       19     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                     1        3     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                     0       20     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                     1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                     0       11     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                     1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                     0       19     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                     1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                     0       25     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                     1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                     0       22     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                     1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                    0       22     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                    1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                    0       17     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                    1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                    0       26     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                    1        2     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     0       25     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                     0       12     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                     0       23     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                     0        8     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                     1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                     0       18     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                     0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                     0       32     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                    0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                     0       16     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                     1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                     0        8     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                     1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                     0       17     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                     0       22     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                     0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    0       24     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    0       24     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                    0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                    1        0     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     0       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                     0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                     1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                     0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                     1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                     0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                     0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                     0       22     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                     0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                    0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                    1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                    0       24     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                    1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                    0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                    1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       41     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           2                     0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           2                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           3                     0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           3                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           4                     0       21     302
0-6 months    ki0047075b-MAL-ED          PERU                           4                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           5                     0       27     302
0-6 months    ki0047075b-MAL-ED          PERU                           5                     1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           6                     0       17     302
0-6 months    ki0047075b-MAL-ED          PERU                           6                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           7                     0       24     302
0-6 months    ki0047075b-MAL-ED          PERU                           7                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           8                     0       19     302
0-6 months    ki0047075b-MAL-ED          PERU                           8                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           9                     0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           9                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           10                    0       27     302
0-6 months    ki0047075b-MAL-ED          PERU                           10                    1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           11                    0       33     302
0-6 months    ki0047075b-MAL-ED          PERU                           11                    1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           12                    0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           12                    1        0     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       42     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       30     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       17     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       15     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       16     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       22     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       25     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0       12     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       25     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       30     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       28     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       44     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1        0     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       30     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        9     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0       20     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       23     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0       12     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0       23     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0       24     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0       27     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0       32     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       30     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        1     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     1        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                     0       25     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                     0       30     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                     1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                     0       35     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                     1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                     0       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       35     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                    1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                    0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                    1        2     368
0-6 months    ki1000108-IRC              INDIA                          1                     0       29     410
0-6 months    ki1000108-IRC              INDIA                          1                     1        9     410
0-6 months    ki1000108-IRC              INDIA                          2                     0       23     410
0-6 months    ki1000108-IRC              INDIA                          2                     1        5     410
0-6 months    ki1000108-IRC              INDIA                          3                     0       18     410
0-6 months    ki1000108-IRC              INDIA                          3                     1        9     410
0-6 months    ki1000108-IRC              INDIA                          4                     0       18     410
0-6 months    ki1000108-IRC              INDIA                          4                     1        3     410
0-6 months    ki1000108-IRC              INDIA                          5                     0       14     410
0-6 months    ki1000108-IRC              INDIA                          5                     1        8     410
0-6 months    ki1000108-IRC              INDIA                          6                     0       25     410
0-6 months    ki1000108-IRC              INDIA                          6                     1       12     410
0-6 months    ki1000108-IRC              INDIA                          7                     0       22     410
0-6 months    ki1000108-IRC              INDIA                          7                     1       14     410
0-6 months    ki1000108-IRC              INDIA                          8                     0       27     410
0-6 months    ki1000108-IRC              INDIA                          8                     1       17     410
0-6 months    ki1000108-IRC              INDIA                          9                     0       17     410
0-6 months    ki1000108-IRC              INDIA                          9                     1       10     410
0-6 months    ki1000108-IRC              INDIA                          10                    0       23     410
0-6 months    ki1000108-IRC              INDIA                          10                    1       15     410
0-6 months    ki1000108-IRC              INDIA                          11                    0       30     410
0-6 months    ki1000108-IRC              INDIA                          11                    1       10     410
0-6 months    ki1000108-IRC              INDIA                          12                    0       38     410
0-6 months    ki1000108-IRC              INDIA                          12                    1       14     410
0-6 months    ki1000109-EE               PAKISTAN                       1                     0       81     380
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       14     380
0-6 months    ki1000109-EE               PAKISTAN                       2                     0       64     380
0-6 months    ki1000109-EE               PAKISTAN                       2                     1        3     380
0-6 months    ki1000109-EE               PAKISTAN                       3                     0       39     380
0-6 months    ki1000109-EE               PAKISTAN                       3                     1        4     380
0-6 months    ki1000109-EE               PAKISTAN                       4                     0       16     380
0-6 months    ki1000109-EE               PAKISTAN                       4                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       5                     0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       5                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       6                     0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       6                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       7                     0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       7                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       8                     0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       8                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       9                     0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       9                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       10                    0        4     380
0-6 months    ki1000109-EE               PAKISTAN                       10                    1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       11                    0       63     380
0-6 months    ki1000109-EE               PAKISTAN                       11                    1        8     380
0-6 months    ki1000109-EE               PAKISTAN                       12                    0       77     380
0-6 months    ki1000109-EE               PAKISTAN                       12                    1        7     380
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     0       10     282
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     1        2     282
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     0       10     282
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     1        1     282
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     0       18     282
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     1        9     282
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     0       26     282
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     1        4     282
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     0       48     282
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     1        7     282
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     0       42     282
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     1        4     282
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     0       27     282
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     1        4     282
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     0       35     282
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     1        6     282
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     0       12     282
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     1        4     282
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    0        6     282
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    1        0     282
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    0        4     282
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    1        0     282
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    0        1     282
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    1        2     282
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     0      102    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     1        7    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     0       85    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     1        5    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                     0       78    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                     1        3    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                     0       67    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                     1        7    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                     0       93    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                     1        6    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                     0       93    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                     1       16    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                     0      125    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                     1        9    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                     0      168    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                     1       11    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                     0      178    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                     1       11    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                    0      152    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                    1       12    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                    0      132    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                    1        8    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                    0      132    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                    1        5    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       25     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        1     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       34     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        2     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                     0       21     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        0     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        3     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        1     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                     0       12     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        2     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                     0       22     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                     1        3     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                     0       37     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                     1        0     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       66     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                     1        1     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                     0       63     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                     1        3     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                    0       50     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                    1        1     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                    0       30     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                    1        3     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                    0       35     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                    1        3     418
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0       60     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1       12     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                     0       54     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                     1        3     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                     0       55     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                     1        4     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                     0       45     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                     1        6     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                     0       46     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                     1        3     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                     0       45     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                     1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                     0       35     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                     1        6     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                     0       34     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                     1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                     0       46     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                     1        1     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                    0       46     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                    1        3     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                    0       48     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                    1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                    0       52     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                    1        3     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       37     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1        1     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                     0       78     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                     1        1     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                     0       41     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                     1        1     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4                     0       31     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4                     1        0     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     5                     0       33     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     5                     1        2     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     6                     0       53     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     6                     1        0     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     7                     0       39     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     7                     1        0     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     8                     0       48     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     8                     1        4     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     9                     0       88     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     9                     1        6     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     10                    0       86     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     10                    1        6     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     11                    0       63     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     11                    1        6     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     12                    0       74     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     12                    1        2     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      164    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        7    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      173    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1        5    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      162    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      184    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1        6    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      181    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1        4    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      160    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        6    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      210    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1        8    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      226    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1        6    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      214    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      237    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       13    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      212    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1        9    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      194    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       11    2396
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      230    2466
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       30    2466
0-6 months    ki1101329-Keneba           GAMBIA                         2                     0      199    2466
0-6 months    ki1101329-Keneba           GAMBIA                         2                     1       18    2466
0-6 months    ki1101329-Keneba           GAMBIA                         3                     0      241    2466
0-6 months    ki1101329-Keneba           GAMBIA                         3                     1       21    2466
0-6 months    ki1101329-Keneba           GAMBIA                         4                     0      153    2466
0-6 months    ki1101329-Keneba           GAMBIA                         4                     1       14    2466
0-6 months    ki1101329-Keneba           GAMBIA                         5                     0      150    2466
0-6 months    ki1101329-Keneba           GAMBIA                         5                     1       18    2466
0-6 months    ki1101329-Keneba           GAMBIA                         6                     0      128    2466
0-6 months    ki1101329-Keneba           GAMBIA                         6                     1       13    2466
0-6 months    ki1101329-Keneba           GAMBIA                         7                     0       93    2466
0-6 months    ki1101329-Keneba           GAMBIA                         7                     1       12    2466
0-6 months    ki1101329-Keneba           GAMBIA                         8                     0      175    2466
0-6 months    ki1101329-Keneba           GAMBIA                         8                     1       22    2466
0-6 months    ki1101329-Keneba           GAMBIA                         9                     0      189    2466
0-6 months    ki1101329-Keneba           GAMBIA                         9                     1       25    2466
0-6 months    ki1101329-Keneba           GAMBIA                         10                    0      273    2466
0-6 months    ki1101329-Keneba           GAMBIA                         10                    1       19    2466
0-6 months    ki1101329-Keneba           GAMBIA                         11                    0      198    2466
0-6 months    ki1101329-Keneba           GAMBIA                         11                    1       20    2466
0-6 months    ki1101329-Keneba           GAMBIA                         12                    0      206    2466
0-6 months    ki1101329-Keneba           GAMBIA                         12                    1       19    2466
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     0       29     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                     0       23     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                     0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                     0       30     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                     0       35     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                     0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                     0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                     0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                     0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                    0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                    1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                    0       20     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                    1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                    0       31     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                    1        0     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     0        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     1        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     0        1     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     1        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     0        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     1        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     0      146     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     1       22     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     0      233     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     1       30     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     0      227     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     1       27     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     0        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     1        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    0        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    1        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    0        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    1        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    0        0     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    1        0     686
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     0       26     272
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     1        2     272
0-6 months    ki1114097-CMIN             BANGLADESH                     2                     0       27     272
0-6 months    ki1114097-CMIN             BANGLADESH                     2                     1        0     272
0-6 months    ki1114097-CMIN             BANGLADESH                     3                     0       19     272
0-6 months    ki1114097-CMIN             BANGLADESH                     3                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     4                     0       21     272
0-6 months    ki1114097-CMIN             BANGLADESH                     4                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     5                     0       19     272
0-6 months    ki1114097-CMIN             BANGLADESH                     5                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     6                     0        9     272
0-6 months    ki1114097-CMIN             BANGLADESH                     6                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     7                     0       17     272
0-6 months    ki1114097-CMIN             BANGLADESH                     7                     1        0     272
0-6 months    ki1114097-CMIN             BANGLADESH                     8                     0       21     272
0-6 months    ki1114097-CMIN             BANGLADESH                     8                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     9                     0       21     272
0-6 months    ki1114097-CMIN             BANGLADESH                     9                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     10                    0       27     272
0-6 months    ki1114097-CMIN             BANGLADESH                     10                    1        0     272
0-6 months    ki1114097-CMIN             BANGLADESH                     11                    0       27     272
0-6 months    ki1114097-CMIN             BANGLADESH                     11                    1        2     272
0-6 months    ki1114097-CMIN             BANGLADESH                     12                    0       24     272
0-6 months    ki1114097-CMIN             BANGLADESH                     12                    1        4     272
0-6 months    ki1114097-CONTENT          PERU                           1                     0       10     215
0-6 months    ki1114097-CONTENT          PERU                           1                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                     0       18     215
0-6 months    ki1114097-CONTENT          PERU                           2                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                     0       30     215
0-6 months    ki1114097-CONTENT          PERU                           3                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           4                     0       19     215
0-6 months    ki1114097-CONTENT          PERU                           4                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           5                     0       14     215
0-6 months    ki1114097-CONTENT          PERU                           5                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           6                     0       13     215
0-6 months    ki1114097-CONTENT          PERU                           6                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           7                     0       28     215
0-6 months    ki1114097-CONTENT          PERU                           7                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           8                     0       23     215
0-6 months    ki1114097-CONTENT          PERU                           8                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           9                     0       26     215
0-6 months    ki1114097-CONTENT          PERU                           9                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           10                    0       14     215
0-6 months    ki1114097-CONTENT          PERU                           10                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           11                    0        9     215
0-6 months    ki1114097-CONTENT          PERU                           11                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           12                    0       11     215
0-6 months    ki1114097-CONTENT          PERU                           12                    1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        1                     0      950   16895
0-6 months    ki1119695-PROBIT           BELARUS                        1                     1       75   16895
0-6 months    ki1119695-PROBIT           BELARUS                        2                     0      915   16895
0-6 months    ki1119695-PROBIT           BELARUS                        2                     1       68   16895
0-6 months    ki1119695-PROBIT           BELARUS                        3                     0     1058   16895
0-6 months    ki1119695-PROBIT           BELARUS                        3                     1       87   16895
0-6 months    ki1119695-PROBIT           BELARUS                        4                     0     1083   16895
0-6 months    ki1119695-PROBIT           BELARUS                        4                     1       78   16895
0-6 months    ki1119695-PROBIT           BELARUS                        5                     0     1067   16895
0-6 months    ki1119695-PROBIT           BELARUS                        5                     1      107   16895
0-6 months    ki1119695-PROBIT           BELARUS                        6                     0     1120   16895
0-6 months    ki1119695-PROBIT           BELARUS                        6                     1       91   16895
0-6 months    ki1119695-PROBIT           BELARUS                        7                     0     1438   16895
0-6 months    ki1119695-PROBIT           BELARUS                        7                     1      152   16895
0-6 months    ki1119695-PROBIT           BELARUS                        8                     0     1479   16895
0-6 months    ki1119695-PROBIT           BELARUS                        8                     1      109   16895
0-6 months    ki1119695-PROBIT           BELARUS                        9                     0     1501   16895
0-6 months    ki1119695-PROBIT           BELARUS                        9                     1      126   16895
0-6 months    ki1119695-PROBIT           BELARUS                        10                    0     1671   16895
0-6 months    ki1119695-PROBIT           BELARUS                        10                    1      144   16895
0-6 months    ki1119695-PROBIT           BELARUS                        11                    0     1583   16895
0-6 months    ki1119695-PROBIT           BELARUS                        11                    1      119   16895
0-6 months    ki1119695-PROBIT           BELARUS                        12                    0     1745   16895
0-6 months    ki1119695-PROBIT           BELARUS                        12                    1      129   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1242   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       87   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      980   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     1       68   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     0     1101   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     1       78   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      930   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     1       60   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      955   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     1       66   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     0     1050   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     1       90   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     0     1062   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      102   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     0     1160   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     1       91   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     0     1203   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     1       88   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      976   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       64   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    0     1110   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    1       71   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    0     1131   13853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    1       88   13853
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0       29     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                     0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                     0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                     0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                     0       10     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                     0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                     0        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                     0       32     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                     0       53     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                    0       69     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                    0       30     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                    0       28     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                    1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2403   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1       87   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1944   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1       96   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2328   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     1       84   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1687   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     1       79   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     0     1269   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     1       44   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     0     1332   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     1       47   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     0     1497   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     1       57   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     0     2034   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     1       91   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     0     2640   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     1      126   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    0     2794   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    1      134   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    0     2861   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    1      132   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    0     2959   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    1      134   26859
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     0      768    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     1       14    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     0      915    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     1       15    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     0      704    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     1       20    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     0      590    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     1       13    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     0      437    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     1       14    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     0      524    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     1       10    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     0      535    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     1       15    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     0      382    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     1        9    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    0      130    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    1        1    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    5096
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       18     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0       19     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     0       21     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     0       10     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     0       18     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     0       23     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     0       19     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    0       21     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    0       15     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    0       27     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       15     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       22     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     0       11     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     0       21     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     0        8     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     0       30     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    0       19     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       20     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0       12     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       19     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       21     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     0       12     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     1        2     235
6-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        8     235
6-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       19     235
6-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       23     235
6-24 months   ki0047075b-MAL-ED          INDIA                          7                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          8                     0       22     235
6-24 months   ki0047075b-MAL-ED          INDIA                          8                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          9                     0       19     235
6-24 months   ki0047075b-MAL-ED          INDIA                          9                     1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          10                    0       26     235
6-24 months   ki0047075b-MAL-ED          INDIA                          10                    1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          11                    0       24     235
6-24 months   ki0047075b-MAL-ED          INDIA                          11                    1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          12                    0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          12                    1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       20     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       19     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0       17     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                     0       22     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                     0       19     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                     1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                     0       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                     0       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                     0       23     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                     1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                     0       15     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                    0       21     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                    0       24     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                    0       17     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                    1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0       38     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                     0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                     0       21     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                     1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           4                     0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           4                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           5                     0       26     270
6-24 months   ki0047075b-MAL-ED          PERU                           5                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           6                     0       15     270
6-24 months   ki0047075b-MAL-ED          PERU                           6                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           7                     0       22     270
6-24 months   ki0047075b-MAL-ED          PERU                           7                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           8                     0       15     270
6-24 months   ki0047075b-MAL-ED          PERU                           8                     1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           9                     0       22     270
6-24 months   ki0047075b-MAL-ED          PERU                           9                     1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           10                    0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           10                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           11                    0       32     270
6-24 months   ki0047075b-MAL-ED          PERU                           11                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           12                    0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           12                    1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       35     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        2     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       24     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       15     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       13     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       12     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       18     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       23     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0        9     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       19     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       24     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1        3     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       24     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1        2     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       33     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1        2     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       17     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       29     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        9     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0       19     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       22     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0       12     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0       26     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0       28     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1        0     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       31     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       28     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       41     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     0       36     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     1        0     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     0       36     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     0       33     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     0       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       20     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       26     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       40     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    0       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    1        3     373
6-24 months   ki1000108-IRC              INDIA                          1                     0       36     410
6-24 months   ki1000108-IRC              INDIA                          1                     1        2     410
6-24 months   ki1000108-IRC              INDIA                          2                     0       26     410
6-24 months   ki1000108-IRC              INDIA                          2                     1        2     410
6-24 months   ki1000108-IRC              INDIA                          3                     0       26     410
6-24 months   ki1000108-IRC              INDIA                          3                     1        1     410
6-24 months   ki1000108-IRC              INDIA                          4                     0       21     410
6-24 months   ki1000108-IRC              INDIA                          4                     1        0     410
6-24 months   ki1000108-IRC              INDIA                          5                     0       21     410
6-24 months   ki1000108-IRC              INDIA                          5                     1        1     410
6-24 months   ki1000108-IRC              INDIA                          6                     0       33     410
6-24 months   ki1000108-IRC              INDIA                          6                     1        4     410
6-24 months   ki1000108-IRC              INDIA                          7                     0       33     410
6-24 months   ki1000108-IRC              INDIA                          7                     1        3     410
6-24 months   ki1000108-IRC              INDIA                          8                     0       42     410
6-24 months   ki1000108-IRC              INDIA                          8                     1        2     410
6-24 months   ki1000108-IRC              INDIA                          9                     0       25     410
6-24 months   ki1000108-IRC              INDIA                          9                     1        2     410
6-24 months   ki1000108-IRC              INDIA                          10                    0       36     410
6-24 months   ki1000108-IRC              INDIA                          10                    1        2     410
6-24 months   ki1000108-IRC              INDIA                          11                    0       38     410
6-24 months   ki1000108-IRC              INDIA                          11                    1        2     410
6-24 months   ki1000108-IRC              INDIA                          12                    0       47     410
6-24 months   ki1000108-IRC              INDIA                          12                    1        5     410
6-24 months   ki1000109-EE               PAKISTAN                       1                     0       79     374
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       13     374
6-24 months   ki1000109-EE               PAKISTAN                       2                     0       54     374
6-24 months   ki1000109-EE               PAKISTAN                       2                     1       12     374
6-24 months   ki1000109-EE               PAKISTAN                       3                     0       33     374
6-24 months   ki1000109-EE               PAKISTAN                       3                     1        9     374
6-24 months   ki1000109-EE               PAKISTAN                       4                     0       14     374
6-24 months   ki1000109-EE               PAKISTAN                       4                     1        2     374
6-24 months   ki1000109-EE               PAKISTAN                       5                     0        0     374
6-24 months   ki1000109-EE               PAKISTAN                       5                     1        0     374
6-24 months   ki1000109-EE               PAKISTAN                       6                     0        0     374
6-24 months   ki1000109-EE               PAKISTAN                       6                     1        0     374
6-24 months   ki1000109-EE               PAKISTAN                       7                     0        0     374
6-24 months   ki1000109-EE               PAKISTAN                       7                     1        0     374
6-24 months   ki1000109-EE               PAKISTAN                       8                     0        0     374
6-24 months   ki1000109-EE               PAKISTAN                       8                     1        0     374
6-24 months   ki1000109-EE               PAKISTAN                       9                     0        0     374
6-24 months   ki1000109-EE               PAKISTAN                       9                     1        0     374
6-24 months   ki1000109-EE               PAKISTAN                       10                    0        4     374
6-24 months   ki1000109-EE               PAKISTAN                       10                    1        0     374
6-24 months   ki1000109-EE               PAKISTAN                       11                    0       62     374
6-24 months   ki1000109-EE               PAKISTAN                       11                    1        8     374
6-24 months   ki1000109-EE               PAKISTAN                       12                    0       77     374
6-24 months   ki1000109-EE               PAKISTAN                       12                    1        7     374
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     0       12     236
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        0     236
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        7     236
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        2     236
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     0       22     236
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     1        5     236
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     0       14     236
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     1        5     236
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       39     236
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     1        7     236
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       35     236
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     1        5     236
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     0       23     236
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     1        1     236
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       28     236
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     1        5     236
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       14     236
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        2     236
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        4     236
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        1     236
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        2     236
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        0     236
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        3     236
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        0     236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       83    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1       13    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0       79    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1        3    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     0       72    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     1        5    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     0       64    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     1        4    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     0       82    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     1       11    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     0       91    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     1        8    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     0      109    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     1       16    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     0      155    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     1       12    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     0      154    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     1       24    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    0      134    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    1       16    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    0      110    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    1       14    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    0      122    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    1        8    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       25     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        1     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       31     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        4     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     0       18     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        3     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        4     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        0     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        9     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        3     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     0       22     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     1        3     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     0       31     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     1        5     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       57     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     1        8     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     0       55     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     1        7     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    0       42     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    1        6     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    0       27     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    1        4     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    0       30     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    1        7     402
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       49     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1        5     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       45     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1        4     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       45     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1        6     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       40     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1        3     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       39     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1        5     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       41     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1        3     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       35     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1        4     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0       30     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1        4     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       38     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1        3     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       38     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1        5     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       45     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1        4     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       49     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1        2     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       35     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1        1     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     0       65     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     1        3     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                     0       39     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                     1        0     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                     0       29     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                     1        0     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     5                     0       34     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     5                     1        0     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     6                     0       43     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     6                     1        1     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     7                     0       36     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     7                     1        0     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     8                     0       44     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     8                     1        0     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     9                     0       75     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     9                     1        3     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     10                    0       76     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     10                    1        0     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     11                    0       60     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     11                    1        2     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     12                    0       66     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     12                    1        3     615
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      130    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        9    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      145    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1        7    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      136    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        4    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      137    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       10    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      143    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1        6    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      133    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        7    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      189    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1        7    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      196    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1        6    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      175    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1        9    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      203    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1        5    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      183    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1        9    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      165    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1        4    2018
6-24 months   ki1101329-Keneba           GAMBIA                         1                     0      237    2738
6-24 months   ki1101329-Keneba           GAMBIA                         1                     1       37    2738
6-24 months   ki1101329-Keneba           GAMBIA                         2                     0      217    2738
6-24 months   ki1101329-Keneba           GAMBIA                         2                     1       29    2738
6-24 months   ki1101329-Keneba           GAMBIA                         3                     0      242    2738
6-24 months   ki1101329-Keneba           GAMBIA                         3                     1       41    2738
6-24 months   ki1101329-Keneba           GAMBIA                         4                     0      173    2738
6-24 months   ki1101329-Keneba           GAMBIA                         4                     1       14    2738
6-24 months   ki1101329-Keneba           GAMBIA                         5                     0      171    2738
6-24 months   ki1101329-Keneba           GAMBIA                         5                     1       21    2738
6-24 months   ki1101329-Keneba           GAMBIA                         6                     0      138    2738
6-24 months   ki1101329-Keneba           GAMBIA                         6                     1       16    2738
6-24 months   ki1101329-Keneba           GAMBIA                         7                     0      117    2738
6-24 months   ki1101329-Keneba           GAMBIA                         7                     1       18    2738
6-24 months   ki1101329-Keneba           GAMBIA                         8                     0      203    2738
6-24 months   ki1101329-Keneba           GAMBIA                         8                     1       21    2738
6-24 months   ki1101329-Keneba           GAMBIA                         9                     0      208    2738
6-24 months   ki1101329-Keneba           GAMBIA                         9                     1       27    2738
6-24 months   ki1101329-Keneba           GAMBIA                         10                    0      287    2738
6-24 months   ki1101329-Keneba           GAMBIA                         10                    1       41    2738
6-24 months   ki1101329-Keneba           GAMBIA                         11                    0      210    2738
6-24 months   ki1101329-Keneba           GAMBIA                         11                    1       27    2738
6-24 months   ki1101329-Keneba           GAMBIA                         12                    0      214    2738
6-24 months   ki1101329-Keneba           GAMBIA                         12                    1       29    2738
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       27     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     0       23     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     0       27     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     0       30     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     0       27     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     0       19     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     0       20     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     0       12     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     0       14     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    0       27     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    0       21     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    0       28     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    1        0     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      309    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       14    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     0      170    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     1       11    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     0      187    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     1       10    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     0      198    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     1       11    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     0      207    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     1       11    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     0      181    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     1       11    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     0      190    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     1        6    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     0      290    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     1       13    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     0      388    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     1       23    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    0      356    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    1       16    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    0      319    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    1       24    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    0      306    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    1       15    3266
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        1     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       96     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       30     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0      194     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1       37     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0      188     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1       44     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0     590
6-24 months   ki1114097-CMIN             BANGLADESH                     1                     0       25     252
6-24 months   ki1114097-CMIN             BANGLADESH                     1                     1        2     252
6-24 months   ki1114097-CMIN             BANGLADESH                     2                     0       24     252
6-24 months   ki1114097-CMIN             BANGLADESH                     2                     1        1     252
6-24 months   ki1114097-CMIN             BANGLADESH                     3                     0       16     252
6-24 months   ki1114097-CMIN             BANGLADESH                     3                     1        2     252
6-24 months   ki1114097-CMIN             BANGLADESH                     4                     0       21     252
6-24 months   ki1114097-CMIN             BANGLADESH                     4                     1        1     252
6-24 months   ki1114097-CMIN             BANGLADESH                     5                     0       17     252
6-24 months   ki1114097-CMIN             BANGLADESH                     5                     1        0     252
6-24 months   ki1114097-CMIN             BANGLADESH                     6                     0        9     252
6-24 months   ki1114097-CMIN             BANGLADESH                     6                     1        0     252
6-24 months   ki1114097-CMIN             BANGLADESH                     7                     0       14     252
6-24 months   ki1114097-CMIN             BANGLADESH                     7                     1        2     252
6-24 months   ki1114097-CMIN             BANGLADESH                     8                     0       18     252
6-24 months   ki1114097-CMIN             BANGLADESH                     8                     1        1     252
6-24 months   ki1114097-CMIN             BANGLADESH                     9                     0       18     252
6-24 months   ki1114097-CMIN             BANGLADESH                     9                     1        2     252
6-24 months   ki1114097-CMIN             BANGLADESH                     10                    0       19     252
6-24 months   ki1114097-CMIN             BANGLADESH                     10                    1        7     252
6-24 months   ki1114097-CMIN             BANGLADESH                     11                    0       22     252
6-24 months   ki1114097-CMIN             BANGLADESH                     11                    1        4     252
6-24 months   ki1114097-CMIN             BANGLADESH                     12                    0       20     252
6-24 months   ki1114097-CMIN             BANGLADESH                     12                    1        7     252
6-24 months   ki1114097-CONTENT          PERU                           1                     0       10     215
6-24 months   ki1114097-CONTENT          PERU                           1                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                     0       18     215
6-24 months   ki1114097-CONTENT          PERU                           2                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                     0       30     215
6-24 months   ki1114097-CONTENT          PERU                           3                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           4                     0       19     215
6-24 months   ki1114097-CONTENT          PERU                           4                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           5                     0       14     215
6-24 months   ki1114097-CONTENT          PERU                           5                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           6                     0       13     215
6-24 months   ki1114097-CONTENT          PERU                           6                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           7                     0       28     215
6-24 months   ki1114097-CONTENT          PERU                           7                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           8                     0       23     215
6-24 months   ki1114097-CONTENT          PERU                           8                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           9                     0       26     215
6-24 months   ki1114097-CONTENT          PERU                           9                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           10                    0       14     215
6-24 months   ki1114097-CONTENT          PERU                           10                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           11                    0        9     215
6-24 months   ki1114097-CONTENT          PERU                           11                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           12                    0       11     215
6-24 months   ki1114097-CONTENT          PERU                           12                    1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        1                     0     1011   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                     1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        2                     0      966   16598
6-24 months   ki1119695-PROBIT           BELARUS                        2                     1        4   16598
6-24 months   ki1119695-PROBIT           BELARUS                        3                     0     1126   16598
6-24 months   ki1119695-PROBIT           BELARUS                        3                     1        3   16598
6-24 months   ki1119695-PROBIT           BELARUS                        4                     0     1143   16598
6-24 months   ki1119695-PROBIT           BELARUS                        4                     1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        5                     0     1144   16598
6-24 months   ki1119695-PROBIT           BELARUS                        5                     1        3   16598
6-24 months   ki1119695-PROBIT           BELARUS                        6                     0     1189   16598
6-24 months   ki1119695-PROBIT           BELARUS                        6                     1        3   16598
6-24 months   ki1119695-PROBIT           BELARUS                        7                     0     1552   16598
6-24 months   ki1119695-PROBIT           BELARUS                        7                     1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        8                     0     1562   16598
6-24 months   ki1119695-PROBIT           BELARUS                        8                     1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        9                     0     1585   16598
6-24 months   ki1119695-PROBIT           BELARUS                        9                     1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        10                    0     1790   16598
6-24 months   ki1119695-PROBIT           BELARUS                        10                    1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        11                    0     1672   16598
6-24 months   ki1119695-PROBIT           BELARUS                        11                    1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        12                    0     1832   16598
6-24 months   ki1119695-PROBIT           BELARUS                        12                    1        4   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1026   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       35   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      799   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1       35   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      884   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1       33   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      760   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1       25   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      748   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1       33   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      849   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1       33   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      869   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1       25   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      920   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1       29   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0      985   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1       21   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      764   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       25   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      906   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1       29   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      949   10815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1       33   10815
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       67     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         2                     0       45     826
6-24 months   ki1148112-LCNI-5           MALAWI                         2                     1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         3                     0       25     826
6-24 months   ki1148112-LCNI-5           MALAWI                         3                     1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         4                     0       39     826
6-24 months   ki1148112-LCNI-5           MALAWI                         4                     1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         5                     0       42     826
6-24 months   ki1148112-LCNI-5           MALAWI                         5                     1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         6                     0       33     826
6-24 months   ki1148112-LCNI-5           MALAWI                         6                     1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         7                     0       62     826
6-24 months   ki1148112-LCNI-5           MALAWI                         7                     1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       91     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       89     826
6-24 months   ki1148112-LCNI-5           MALAWI                         9                     1        2     826
6-24 months   ki1148112-LCNI-5           MALAWI                         10                    0      129     826
6-24 months   ki1148112-LCNI-5           MALAWI                         10                    1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         11                    0      103     826
6-24 months   ki1148112-LCNI-5           MALAWI                         11                    1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       93     826
6-24 months   ki1148112-LCNI-5           MALAWI                         12                    1        1     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1347   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1       31   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1160   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1       23   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     1415   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1       45   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1165   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1       44   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0     1121   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1       49   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0     1193   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1       54   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0     1257   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1       47   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1497   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1       57   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1614   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1       43   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1646   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1       64   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0     1741   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1       44   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0     1589   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1       52   17298
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      882    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1       35    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      969    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1       49    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      728    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1       43    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      610    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1       29    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      433    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1       26    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      521    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1       16    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      540    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1       15    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0      378    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1       23    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0      130    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1        3    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    5430


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
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/952f96ea-e38c-4cfa-b8b5-b9398696f46e/bfcf0fe9-9f12-4c86-8d7d-e9446428c8f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/952f96ea-e38c-4cfa-b8b5-b9398696f46e/bfcf0fe9-9f12-4c86-8d7d-e9446428c8f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/952f96ea-e38c-4cfa-b8b5-b9398696f46e/bfcf0fe9-9f12-4c86-8d7d-e9446428c8f3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/952f96ea-e38c-4cfa-b8b5-b9398696f46e/bfcf0fe9-9f12-4c86-8d7d-e9446428c8f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1621622    0.0998823   0.2244420
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0888889    0.0421925   0.1355853
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.0987654    0.0364389   0.1610919
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.1351351    0.0816900   0.1885803
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.1616162    0.1000143   0.2232181
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.2018349    0.1224321   0.2812376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.1691176    0.1048189   0.2334164
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.1284916    0.0694079   0.1875754
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.1780105    0.1217106   0.2343103
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.1636364    0.1087663   0.2185064
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.1571429    0.1007371   0.2135487
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.0869565    0.0581316   0.1157815
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0877193    0.0453108   0.1301278
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0674157    0.0305729   0.1042586
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0365854    0.0078460   0.0653247
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0789474    0.0405967   0.1172980
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0540541    0.0214629   0.0866452
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0783133    0.0374348   0.1191917
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0688073    0.0351990   0.1024157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0517241    0.0232199   0.0802283
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0509259    0.0216014   0.0802505
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0680000    0.0367873   0.0992127
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0769231    0.0417840   0.1120621
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0731707    0.0375149   0.1088265
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2162162    0.1693112   0.2631212
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1744186    0.1281071   0.2207301
0-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1862745    0.1426453   0.2299037
0-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1370558    0.0890240   0.1850877
0-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.1822660    0.1291490   0.2353830
0-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.1768293    0.1184280   0.2352306
0-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.1985816    0.1327230   0.2644401
0-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.1737288    0.1253825   0.2220752
0-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.1936759    0.1449730   0.2423788
0-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.1619318    0.1234410   0.2004226
0-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.1764706    0.1296725   0.2232687
0-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.1814672    0.1345221   0.2284122
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0433437    0.0198991   0.0667882
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.0607735    0.0224422   0.0991048
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.0507614    0.0284726   0.0730503
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.0526316   -0.0420863   0.1473495
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.0504587    0.0256286   0.0752888
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.0572917    0.0207105   0.0938728
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.0306122    0.0112769   0.0499476
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.0429043    0.0152235   0.0705851
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.0559611    0.0264954   0.0854267
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.0430108    0.0091555   0.0768660
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.0699708    0.0375841   0.1023576
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.0467290    0.0115597   0.0818982
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0740741    0.0270551   0.1210931
0-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.0722279    0.0272804   0.1171753
0-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.0786026    0.0371597   0.1200455
0-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0670679    0.0348665   0.0992694
0-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0928450    0.0433926   0.1422974
0-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0776218    0.0482033   0.1070403
0-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0968553    0.0563808   0.1373299
0-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0698992    0.0379536   0.1018449
0-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0774431    0.0321646   0.1227217
0-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.0804408    0.0468909   0.1139907
0-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.0710928    0.0379568   0.1042289
0-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.0709712    0.0381951   0.1037472
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0884758    0.0732984   0.1036533
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0948357    0.0772387   0.1124327
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0915197    0.0751432   0.1078963
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0824121    0.0653248   0.0994993
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0942663    0.0764123   0.1121202
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1066434    0.0887567   0.1245300
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1071123    0.0893685   0.1248560
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0948207    0.0786115   0.1110299
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0833333    0.0682854   0.0983812
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0830946    0.0663745   0.0998147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0831234    0.0674442   0.0988027
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0966421    0.0800684   0.1132158
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0464372    0.0365988   0.0562755
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0576453    0.0471384   0.0681523
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0533940    0.0438940   0.0628941
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0682844    0.0557362   0.0808326
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0689394    0.0545056   0.0833732
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0705544    0.0549151   0.0861936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0661954    0.0531844   0.0792063
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0671677    0.0558491   0.0784863
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0608570    0.0512338   0.0704803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0663040    0.0555781   0.0770298
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0585301    0.0493823   0.0676779
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0599227    0.0503409   0.0695044
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1153846    0.0765427   0.1542265
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0829493    0.0462457   0.1196530
0-6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.0801527    0.0472673   0.1130380
0-6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.0838323    0.0417915   0.1258732
0-6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.1071429    0.0603635   0.1539222
0-6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.0921986    0.0444364   0.1399608
0-6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.1142857    0.0534184   0.1751531
0-6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.1116751    0.0676838   0.1556665
0-6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.1168224    0.0737781   0.1598668
0-6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.0650685    0.0367728   0.0933642
0-6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.0917431    0.0534166   0.1300696
0-6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.0844444    0.0481055   0.1207834
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0731707    0.0259593   0.1203822
0-6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0691760    0.0237567   0.1145953
0-6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0759825    0.0343370   0.1176281
0-6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0671835    0.0349617   0.0994052
0-6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0911414    0.0416951   0.1405877
0-6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0751445    0.0459727   0.1043163
0-6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0955975    0.0548216   0.1363734
0-6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0686398    0.0363403   0.1009393
0-6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0774431    0.0321705   0.1227158
0-6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0793388    0.0450108   0.1136669
0-6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0699177    0.0375488   0.1022867
0-6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0688367    0.0359324   0.1017410
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0654628    0.0521644   0.0787611
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0648855    0.0499717   0.0797993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0661578    0.0519693   0.0803462
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0606061    0.0457423   0.0754698
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0646425    0.0495591   0.0797259
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0789474    0.0632935   0.0946013
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0876289    0.0713847   0.1038730
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0727418    0.0583496   0.0871340
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0681642    0.0544159   0.0819125
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0615385    0.0469326   0.0761444
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0601185    0.0465610   0.0736760
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0721903    0.0576615   0.0867192
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0349398    0.0262828   0.0435967
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0470588    0.0375152   0.0566025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0348259    0.0271632   0.0424885
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0447339    0.0350118   0.0544559
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0335110    0.0233330   0.0436890
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0340827    0.0232718   0.0448936
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0366795    0.0268688   0.0464903
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0428235    0.0331694   0.0524777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0455531    0.0367616   0.0543447
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0457650    0.0368636   0.0546665
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0441029    0.0359558   0.0522500
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0433236    0.0351397   0.0515075
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1350365    0.0945625   0.1755105
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1178862    0.0775817   0.1581907
6-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1448763    0.1038609   0.1858918
6-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.0748663    0.0371393   0.1125933
6-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.1093750    0.0652197   0.1535303
6-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.1038961    0.0556962   0.1520960
6-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.1333333    0.0759804   0.1906863
6-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.0937500    0.0555720   0.1319280
6-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.1148936    0.0741144   0.1556729
6-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.1250000    0.0892028   0.1607972
6-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.1139241    0.0734668   0.1543813
6-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.1193416    0.0785731   0.1601100
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0433437    0.0198991   0.0667882
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.0607735    0.0224422   0.0991048
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.0507614    0.0284726   0.0730503
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.0526316   -0.0420863   0.1473495
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.0504587    0.0256286   0.0752888
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.0572917    0.0207105   0.0938728
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.0306122    0.0112769   0.0499476
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.0429043    0.0152235   0.0705851
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.0559611    0.0264954   0.0854267
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.0430108    0.0091555   0.0768660
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.0699708    0.0375841   0.1023576
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.0467290    0.0115597   0.0818982
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0329877    0.0222404   0.0437351
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0419664    0.0283574   0.0555754
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0359869    0.0239311   0.0480427
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0318471    0.0195631   0.0441312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0422535    0.0281444   0.0563626
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0374150    0.0248900   0.0499399
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0279642    0.0171563   0.0387721
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0305585    0.0196073   0.0415097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0208748    0.0120399   0.0297096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0316857    0.0194629   0.0439084
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0310160    0.0199035   0.0421286
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0336049    0.0223331   0.0448766
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0224964    0.0141581   0.0308347
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0194421    0.0109504   0.0279338
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0308219    0.0212119   0.0404319
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0363937    0.0254211   0.0473663
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0418803    0.0294506   0.0543100
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0433039    0.0298859   0.0567219
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0360429    0.0257196   0.0463663
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0366795    0.0270455   0.0463135
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0259505    0.0182629   0.0336382
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0374269    0.0271507   0.0477031
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0246499    0.0171240   0.0321757
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0316880    0.0228502   0.0405258


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0659432   0.0560037   0.0758828
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1801370   0.1661957   0.1940783
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0774648   0.0450418   0.1098878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0922128   0.0874108   0.0970149
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0610254   0.0575469   0.0645038
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0936740   0.0821715   0.1051764
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0760580   0.0435003   0.1086157
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0687938   0.0645788   0.0730087
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0413642   0.0383846   0.0443438
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1172389   0.1051866   0.1292911
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329172   0.0295545   0.0362800
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319690   0.0290813   0.0348568


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.5481482   0.2747140   1.0937429
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.6090535   0.2876798   1.2894412
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.8333333   0.5400637   1.2858565
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.9966330   0.4862095   2.0428997
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.2446483   0.8263132   1.8747728
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0428922   0.6681305   1.6278616
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 0.7923650   0.4847086   1.2952985
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 1.0977312   0.7292891   1.6523131
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.0090909   0.6011482   1.6938660
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.9690476   0.6124283   1.5333277
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.5362320   0.4192877   0.6857935
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7685393   0.3704941   1.5942295
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.4170734   0.1658146   1.0490644
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.9000000   0.4535214   1.7860236
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6162162   0.2845104   1.3346520
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.8927711   0.4382780   1.8185724
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.7844037   0.3945236   1.5595751
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.5896552   0.2832835   1.2273683
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.5805556   0.2737229   1.2313358
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7752000   0.3980081   1.5098562
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.8769231   0.4509179   1.7053971
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8341463   0.4198837   1.6571259
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8066860   0.5725283   1.1366118
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.8615196   0.6260615   1.1855321
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.6338832   0.4197672   0.9572162
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.8429803   0.5861874   1.2122673
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.8178354   0.5508799   1.2141569
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.9184397   0.6179341   1.3650832
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.8034958   0.5646016   1.1434709
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.8957510   0.6426202   1.2485911
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.7489347   0.5428552   1.0332463
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.8161765   0.5794120   1.1496898
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.8392857   0.5988039   1.1763458
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.4021310   0.6098925   3.2234720
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.1711385   0.6044760   2.2690155
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.2142857   0.1884255   7.8253207
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.1641547   0.6105681   2.2196641
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.3218006   0.5830174   2.9967488
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.7062682   0.3287114   1.5174854
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.9898633   0.4100658   2.3894440
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.2911018   0.6091635   2.7364478
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9923195   0.3601550   2.7340954
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.6143274   0.9266839   2.8122349
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0781041   0.4136187   2.8100963
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 0.9750763   0.6697598   1.4195743
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 1.0611354   0.7353761   1.5312005
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.9054170   0.6161681   1.3304485
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 1.2534072   0.7942440   1.9780188
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 1.0478943   0.6390363   1.7183413
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 1.3075472   0.7703185   2.2194451
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.9436398   0.5410250   1.6458686
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 1.0454825   0.6478244   1.6872376
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 1.0859504   0.6595416   1.7880424
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.9597532   0.6029551   1.5276863
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.9581110   0.5813551   1.5790291
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0718823   0.8325325   1.3800441
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0344037   0.8073003   1.3253940
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9314640   0.7116985   1.2190911
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0654466   0.8251888   1.3756566
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.2053388   0.9482348   1.5321538
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.2106385   0.9537779   1.5366739
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0717131   0.8412064   1.3653831
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9418768   0.7342189   1.2082661
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9391780   0.7209639   1.2234388
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9395043   0.7280631   1.2123512
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0922993   0.8570318   1.3921511
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.2413624   0.9334046   1.6509248
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.1498130   0.8821344   1.4987171
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.4704697   1.1116734   1.9450688
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.4845742   1.0967695   2.0095019
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.5193515   1.1176165   2.0654931
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.4254831   1.0596199   1.9176707
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.4464213   1.1144384   1.8772995
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.3105249   1.0091300   1.7019368
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.4278219   1.0984528   1.8559517
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2604153   0.9826912   1.6166287
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.2904039   0.9832016   1.6935919
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7188940   0.4122939   1.2534956
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.6946565   0.4085883   1.1810120
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.7265469   0.3971480   1.3291530
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.9285714   0.5350364   1.6115632
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1                 0.7990544   0.4307921   1.4821253
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1                 0.9904762   0.5274898   1.8598334
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1                 0.9678511   0.5764644   1.6249672
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1                 1.0124611   0.6146529   1.6677337
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1                 0.5639269   0.3253804   0.9773595
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1                 0.7951070   0.4649675   1.3596545
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1                 0.7318519   0.4237837   1.2638692
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.9454052   0.6430351   1.3899569
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1                 1.0384279   0.7193177   1.4991047
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.9181740   0.6202312   1.3592406
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1                 1.2455991   0.7943324   1.9532341
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1                 1.0269750   0.6215188   1.6969358
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1                 1.3064990   0.7650006   2.2312918
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.9380772   0.5363449   1.6407145
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1                 1.0583897   0.6534813   1.7141862
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1                 1.0842975   0.6504159   1.8076144
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.9555425   0.6031356   1.5138577
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.9407684   0.5679002   1.5584520
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9911819   0.7293435   1.3470217
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0106168   0.7521345   1.3579305
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9258098   0.6733133   1.2729941
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9874700   0.7247100   1.3454996
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.2059891   0.9079448   1.6018703
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.3386065   1.0167574   1.7623351
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1111938   0.8368276   1.4755149
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.0412671   0.7820580   1.3863898
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9400531   0.6878190   1.2847852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9183626   0.6779505   1.2440287
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.1027694   0.8285045   1.4678257
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.3468560   0.9740868   1.8622786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9967404   0.7182117   1.3832851
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.2803140   0.9237146   1.7745783
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9591092   0.6476900   1.4202634
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9754695   0.6624077   1.4364879
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.0497936   0.7224725   1.5254100
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.2256389   0.8923539   1.6834026
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.3037624   0.9603110   1.7700480
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.3098266   0.9709809   1.7669203
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2622556   0.9407689   1.6936032
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.2399523   0.9017062   1.7050804
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8729949   0.5540512   1.3755410
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 1.0728679   0.7103784   1.6203274
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.5544154   0.3084593   0.9964894
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.8099662   0.4898924   1.3391620
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.7693928   0.4428708   1.3366546
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.9873874   0.5845187   1.6679257
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.6942568   0.4187189   1.1511123
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.8508338   0.5346762   1.3539374
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.9256757   0.6115385   1.4011799
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.8436538   0.5300855   1.3427112
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.8837727   0.5610104   1.3922276
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.4021310   0.6098925   3.2234720
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.1711385   0.6044760   2.2690155
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.2142857   0.1884255   7.8253207
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.1641547   0.6105681   2.2196641
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.3218006   0.5830174   2.9967488
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.7062682   0.3287114   1.5174854
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.9898633   0.4100658   2.3894440
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.2911018   0.6091635   2.7364478
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9923195   0.3601550   2.7340954
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.6143274   0.9266839   2.8122349
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0781041   0.4136187   2.8100963
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2721823   0.8033657   2.0145841
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0909176   0.6836658   1.7407646
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9654231   0.5826967   1.5995317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.2808853   0.8033438   2.0422978
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1342080   0.7109218   1.8095206
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8477149   0.5113499   1.4053402
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9263586   0.5707400   1.5035572
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.6328032   0.3709447   1.0795138
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9605287   0.5797283   1.5914616
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9402292   0.5793221   1.5259748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0187082   0.6382236   1.6260231
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8642326   0.4825462   1.5478266
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.3700840   0.8640265   2.1725375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.6177593   1.0035740   2.6078248
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.8616487   1.1675301   2.9684340
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.9249295   1.1808726   3.1378097
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.6021670   1.0150277   2.5289350
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.6304646   1.0340066   2.5709842
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.1535422   0.7162150   1.8579050
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.6636861   1.0487480   2.6391959
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0957260   0.7005546   1.7138073
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.4085825   0.8784097   2.2587463


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0147729   -0.0692896   0.0397439
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0217761   -0.0622799   0.0187278
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0360792   -0.0802198   0.0080614
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0071769   -0.0157387   0.0300924
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0033907   -0.0246369   0.0314184
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0037370   -0.0107192   0.0181932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0145882    0.0052183   0.0239581
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0217106   -0.0580819   0.0146606
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0028873   -0.0249326   0.0307072
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0033310   -0.0093449   0.0160069
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0064244   -0.0016328   0.0144817
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0177976   -0.0559491   0.0203539
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0071769   -0.0157387   0.0300924
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0000705   -0.0102760   0.0101349
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0094726    0.0014704   0.0174749


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1002303   -0.5400317   0.2139729
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3302243   -1.1082504   0.1606800
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2002877   -0.4718476   0.0211686
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1420584   -0.4448819   0.4905716
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0437710   -0.4021647   0.3478842
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0405256   -0.1297655   0.1851486
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2390518    0.0689769   0.3780582
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.2317682   -0.6871425   0.1006966
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0379615   -0.4127545   0.3448840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0484202   -0.1548638   0.2159213
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1553132   -0.0645052   0.3297396
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1518066   -0.5275014   0.1314846
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1420584   -0.4448819   0.4905716
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0021418   -0.3654860   0.2645195
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2963070   -0.0039963   0.5067872
