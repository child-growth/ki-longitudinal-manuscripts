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
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       20     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        1     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       20     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     0       16     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     1        1     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        0     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       22     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     0       21     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     0       21     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    0       24     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    0       22     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    1        3     251
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
0-24 months   ki0047075b-MAL-ED          PERU                           9                     0       23     302
0-24 months   ki0047075b-MAL-ED          PERU                           9                     1        0     302
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       16     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       22     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       26     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        0     312
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
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0       10     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        0     261
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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       13     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1        9     373
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
0-24 months   ki1000109-EE               PAKISTAN                       1                     0       71     380
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       24     380
0-24 months   ki1000109-EE               PAKISTAN                       2                     0       55     380
0-24 months   ki1000109-EE               PAKISTAN                       2                     1       12     380
0-24 months   ki1000109-EE               PAKISTAN                       3                     0       35     380
0-24 months   ki1000109-EE               PAKISTAN                       3                     1        8     380
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
0-24 months   ki1000109-EE               PAKISTAN                       11                    0       62     380
0-24 months   ki1000109-EE               PAKISTAN                       11                    1        8     380
0-24 months   ki1000109-EE               PAKISTAN                       12                    0       76     380
0-24 months   ki1000109-EE               PAKISTAN                       12                    1        9     380
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     0        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        8     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        4     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     0       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     1       11     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     0       18     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     1        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       43     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     1       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       39     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     1       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     0       30     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     1        4     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       29     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     1        8     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       12     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        8     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        0     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        2     278
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
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       51     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1        6     624
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
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0      242    2919
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1       54    2919
0-24 months   ki1101329-Keneba           GAMBIA                         2                     0      221    2919
0-24 months   ki1101329-Keneba           GAMBIA                         2                     1       37    2919
0-24 months   ki1101329-Keneba           GAMBIA                         3                     0      257    2919
0-24 months   ki1101329-Keneba           GAMBIA                         3                     1       49    2919
0-24 months   ki1101329-Keneba           GAMBIA                         4                     0      172    2919
0-24 months   ki1101329-Keneba           GAMBIA                         4                     1       24    2919
0-24 months   ki1101329-Keneba           GAMBIA                         5                     0      174    2919
0-24 months   ki1101329-Keneba           GAMBIA                         5                     1       29    2919
0-24 months   ki1101329-Keneba           GAMBIA                         6                     0      139    2919
0-24 months   ki1101329-Keneba           GAMBIA                         6                     1       25    2919
0-24 months   ki1101329-Keneba           GAMBIA                         7                     0      118    2919
0-24 months   ki1101329-Keneba           GAMBIA                         7                     1       23    2919
0-24 months   ki1101329-Keneba           GAMBIA                         8                     0      202    2919
0-24 months   ki1101329-Keneba           GAMBIA                         8                     1       34    2919
0-24 months   ki1101329-Keneba           GAMBIA                         9                     0      213    2919
0-24 months   ki1101329-Keneba           GAMBIA                         9                     1       40    2919
0-24 months   ki1101329-Keneba           GAMBIA                         10                    0      302    2919
0-24 months   ki1101329-Keneba           GAMBIA                         10                    1       50    2919
0-24 months   ki1101329-Keneba           GAMBIA                         11                    0      218    2919
0-24 months   ki1101329-Keneba           GAMBIA                         11                    1       37    2919
0-24 months   ki1101329-Keneba           GAMBIA                         12                    0      220    2919
0-24 months   ki1101329-Keneba           GAMBIA                         12                    1       39    2919
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       88     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       41     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0      181     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1       54     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0      177     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1       60     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0     602
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
0-24 months   ki1114097-CMIN             BRAZIL                         1                     0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                     0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                     1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                     0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                     0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                     0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                     0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                     0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                     0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                     0        8     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                    0       16     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                    1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                    0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                    1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                    0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                    1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0      146    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1        5    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     0      113    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     1        2    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     0      106    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     1       13    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     0       97    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     1        5    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     0      106    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     1        6    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     0       81    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     1        4    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     0       95    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     1        5    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     0      120    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     1        3    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     0      154    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     1        9    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    0      144    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    1       12    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    0      131    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    1        6    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    0      133    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    1       11    1507
0-24 months   ki1114097-CMIN             PERU                           1                     0       50     929
0-24 months   ki1114097-CMIN             PERU                           1                     1        0     929
0-24 months   ki1114097-CMIN             PERU                           2                     0       78     929
0-24 months   ki1114097-CMIN             PERU                           2                     1        3     929
0-24 months   ki1114097-CMIN             PERU                           3                     0       96     929
0-24 months   ki1114097-CMIN             PERU                           3                     1        2     929
0-24 months   ki1114097-CMIN             PERU                           4                     0       90     929
0-24 months   ki1114097-CMIN             PERU                           4                     1        2     929
0-24 months   ki1114097-CMIN             PERU                           5                     0       91     929
0-24 months   ki1114097-CMIN             PERU                           5                     1        2     929
0-24 months   ki1114097-CMIN             PERU                           6                     0       80     929
0-24 months   ki1114097-CMIN             PERU                           6                     1        3     929
0-24 months   ki1114097-CMIN             PERU                           7                     0       75     929
0-24 months   ki1114097-CMIN             PERU                           7                     1        0     929
0-24 months   ki1114097-CMIN             PERU                           8                     0       87     929
0-24 months   ki1114097-CMIN             PERU                           8                     1        0     929
0-24 months   ki1114097-CMIN             PERU                           9                     0       72     929
0-24 months   ki1114097-CMIN             PERU                           9                     1        0     929
0-24 months   ki1114097-CMIN             PERU                           10                    0       63     929
0-24 months   ki1114097-CMIN             PERU                           10                    1        3     929
0-24 months   ki1114097-CMIN             PERU                           11                    0       58     929
0-24 months   ki1114097-CMIN             PERU                           11                    1        2     929
0-24 months   ki1114097-CMIN             PERU                           12                    0       71     929
0-24 months   ki1114097-CMIN             PERU                           12                    1        1     929
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1226   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      119   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      964   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      100   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0     1083   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      108   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      913   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1       82   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      931   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1       97   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0     1022   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      121   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0     1040   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      124   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0     1139   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      116   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0     1187   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      108   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      960   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       87   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0     1093   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1       98   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0     1105   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      116   13939
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
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       91     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     1        2     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       91     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     1        2     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    0      134     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    0      105     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       94     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    1        1     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2382   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      116   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1929   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1      118   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2287   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1      129   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1650   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1      122   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0     1230   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1       91   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0     1291   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1       99   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0     1453   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1      103   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1986   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1      143   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0     2610   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1      167   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0     2746   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1      195   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0     2832   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1      175   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0     2921   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1      185   26960
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    0       22     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     1        1     251
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
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     0       22     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    0       24     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    0       23     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    1        2     251
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       26     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        0     312
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
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0       10     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        0     261
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
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     1        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    1        6     368
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
0-6 months    ki1000109-EE               PAKISTAN                       1                     0       82     380
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       13     380
0-6 months    ki1000109-EE               PAKISTAN                       2                     0       64     380
0-6 months    ki1000109-EE               PAKISTAN                       2                     1        3     380
0-6 months    ki1000109-EE               PAKISTAN                       3                     0       40     380
0-6 months    ki1000109-EE               PAKISTAN                       3                     1        3     380
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
0-6 months    ki1000109-EE               PAKISTAN                       11                    0       68     380
0-6 months    ki1000109-EE               PAKISTAN                       11                    1        2     380
0-6 months    ki1000109-EE               PAKISTAN                       12                    0       79     380
0-6 months    ki1000109-EE               PAKISTAN                       12                    1        6     380
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     0        9     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     0        9     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     1        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     0       15     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     1        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     0       23     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     0       47     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     1        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     0       44     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     1        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     0       30     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     0       31     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     1        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     0       15     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     1        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    0        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    1        2     278
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
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      235    2437
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       17    2437
0-6 months    ki1101329-Keneba           GAMBIA                         2                     0      205    2437
0-6 months    ki1101329-Keneba           GAMBIA                         2                     1        9    2437
0-6 months    ki1101329-Keneba           GAMBIA                         3                     0      245    2437
0-6 months    ki1101329-Keneba           GAMBIA                         3                     1       13    2437
0-6 months    ki1101329-Keneba           GAMBIA                         4                     0      154    2437
0-6 months    ki1101329-Keneba           GAMBIA                         4                     1       11    2437
0-6 months    ki1101329-Keneba           GAMBIA                         5                     0      156    2437
0-6 months    ki1101329-Keneba           GAMBIA                         5                     1       11    2437
0-6 months    ki1101329-Keneba           GAMBIA                         6                     0      132    2437
0-6 months    ki1101329-Keneba           GAMBIA                         6                     1        9    2437
0-6 months    ki1101329-Keneba           GAMBIA                         7                     0       99    2437
0-6 months    ki1101329-Keneba           GAMBIA                         7                     1        6    2437
0-6 months    ki1101329-Keneba           GAMBIA                         8                     0      181    2437
0-6 months    ki1101329-Keneba           GAMBIA                         8                     1       14    2437
0-6 months    ki1101329-Keneba           GAMBIA                         9                     0      197    2437
0-6 months    ki1101329-Keneba           GAMBIA                         9                     1       16    2437
0-6 months    ki1101329-Keneba           GAMBIA                         10                    0      281    2437
0-6 months    ki1101329-Keneba           GAMBIA                         10                    1       10    2437
0-6 months    ki1101329-Keneba           GAMBIA                         11                    0      200    2437
0-6 months    ki1101329-Keneba           GAMBIA                         11                    1       12    2437
0-6 months    ki1101329-Keneba           GAMBIA                         12                    0      213    2437
0-6 months    ki1101329-Keneba           GAMBIA                         12                    1       11    2437
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     0        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     0      115     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     1       14     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     0      211     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     1       24     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     0      219     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     1       18     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    1        0     602
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
0-6 months    ki1114097-CMIN             BRAZIL                         1                     0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                     0        6     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                     0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                     0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                     0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                     0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                     0        4     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                     0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                     0        8     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                    0       16     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                    1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                    0       11     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                    1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                    0       11     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                    1        0     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     0      112     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     1        3     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                     0       79     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                     1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                     0       69     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                     1        4     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                     0       53     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                     1        3     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                     0       64     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                     1        1     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                     0       55     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                     1        2     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                     0       64     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                     1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                     0       62     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                     1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                     0      102     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                     1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                    0       95     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                    1        1     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                    0       86     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                    1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                    0      110     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                    1        1     966
0-6 months    ki1114097-CMIN             PERU                           1                     0       43     699
0-6 months    ki1114097-CMIN             PERU                           1                     1        0     699
0-6 months    ki1114097-CMIN             PERU                           2                     0       64     699
0-6 months    ki1114097-CMIN             PERU                           2                     1        3     699
0-6 months    ki1114097-CMIN             PERU                           3                     0       71     699
0-6 months    ki1114097-CMIN             PERU                           3                     1        1     699
0-6 months    ki1114097-CMIN             PERU                           4                     0       60     699
0-6 months    ki1114097-CMIN             PERU                           4                     1        2     699
0-6 months    ki1114097-CMIN             PERU                           5                     0       63     699
0-6 months    ki1114097-CMIN             PERU                           5                     1        2     699
0-6 months    ki1114097-CMIN             PERU                           6                     0       57     699
0-6 months    ki1114097-CMIN             PERU                           6                     1        1     699
0-6 months    ki1114097-CMIN             PERU                           7                     0       57     699
0-6 months    ki1114097-CMIN             PERU                           7                     1        0     699
0-6 months    ki1114097-CMIN             PERU                           8                     0       73     699
0-6 months    ki1114097-CMIN             PERU                           8                     1        0     699
0-6 months    ki1114097-CMIN             PERU                           9                     0       56     699
0-6 months    ki1114097-CMIN             PERU                           9                     1        0     699
0-6 months    ki1114097-CMIN             PERU                           10                    0       50     699
0-6 months    ki1114097-CMIN             PERU                           10                    1        3     699
0-6 months    ki1114097-CMIN             PERU                           11                    0       41     699
0-6 months    ki1114097-CMIN             PERU                           11                    1        1     699
0-6 months    ki1114097-CMIN             PERU                           12                    0       50     699
0-6 months    ki1114097-CMIN             PERU                           12                    1        1     699
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1241   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       87   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      980   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     1       68   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     0     1100   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     1       78   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      930   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     1       60   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      954   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     1       66   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     0     1050   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     1       90   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     0     1060   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      102   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     0     1161   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     1       90   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     0     1203   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     1       88   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      975   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       64   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    0     1111   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    1       70   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    0     1131   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    1       88   13847
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2403   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1       87   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1944   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1       96   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2328   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     1       84   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1686   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     1       80   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     0     1270   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     1       44   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     0     1332   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     1       48   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     0     1497   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     1       57   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     0     2034   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     1       91   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     0     2642   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     1      124   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    0     2794   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    1      134   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    0     2862   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    1      131   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    0     2962   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    1      133   26863
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
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       19     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0       12     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       19     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       21     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     0       13     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     1        1     235
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
6-24 months   ki0047075b-MAL-ED          PERU                           9                     0       23     270
6-24 months   ki0047075b-MAL-ED          PERU                           9                     1        0     270
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       13     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        0     259
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
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       23     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        0     245
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
6-24 months   ki1000109-EE               PAKISTAN                       1                     0       80     375
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       12     375
6-24 months   ki1000109-EE               PAKISTAN                       2                     0       57     375
6-24 months   ki1000109-EE               PAKISTAN                       2                     1        9     375
6-24 months   ki1000109-EE               PAKISTAN                       3                     0       36     375
6-24 months   ki1000109-EE               PAKISTAN                       3                     1        6     375
6-24 months   ki1000109-EE               PAKISTAN                       4                     0       14     375
6-24 months   ki1000109-EE               PAKISTAN                       4                     1        2     375
6-24 months   ki1000109-EE               PAKISTAN                       5                     0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       5                     1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       6                     0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       6                     1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       7                     0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       7                     1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       8                     0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       8                     1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       9                     0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       9                     1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       10                    0        4     375
6-24 months   ki1000109-EE               PAKISTAN                       10                    1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       11                    0       64     375
6-24 months   ki1000109-EE               PAKISTAN                       11                    1        6     375
6-24 months   ki1000109-EE               PAKISTAN                       12                    0       81     375
6-24 months   ki1000109-EE               PAKISTAN                       12                    1        4     375
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     0       10     230
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        9     230
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        2     230
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     0       15     230
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     1        5     230
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     0       11     230
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     1        5     230
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       39     230
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     1        7     230
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       34     230
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     1        6     230
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     0       26     230
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       27     230
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     1        3     230
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       16     230
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        5     230
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        0     230
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
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       49     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1        5     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       45     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1        3     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       45     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1        6     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       40     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1        3     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       39     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1        5     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       41     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1        3     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       35     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1        4     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0       30     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1        4     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       38     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1        3     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       38     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1        5     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       45     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1        4     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       49     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1        2     541
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0      187     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1       45     590
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
6-24 months   ki1114097-CMIN             BRAZIL                         1                     0       14     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         2                     0        7     119
6-24 months   ki1114097-CMIN             BRAZIL                         2                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         3                     0       13     119
6-24 months   ki1114097-CMIN             BRAZIL                         3                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         4                     0        9     119
6-24 months   ki1114097-CMIN             BRAZIL                         4                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         5                     0        5     119
6-24 months   ki1114097-CMIN             BRAZIL                         5                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         6                     0        7     119
6-24 months   ki1114097-CMIN             BRAZIL                         6                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         7                     0        4     119
6-24 months   ki1114097-CMIN             BRAZIL                         7                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         8                     0       14     119
6-24 months   ki1114097-CMIN             BRAZIL                         8                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         9                     0        8     119
6-24 months   ki1114097-CMIN             BRAZIL                         9                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         10                    0       16     119
6-24 months   ki1114097-CMIN             BRAZIL                         10                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         11                    0       11     119
6-24 months   ki1114097-CMIN             BRAZIL                         11                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         12                    0       11     119
6-24 months   ki1114097-CMIN             BRAZIL                         12                    1        0     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0      147    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1        2    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     0      111    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     1        2    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     0      108    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     1        9    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     0       99    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     1        2    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     0      105    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     1        5    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     0       80    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     1        3    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     0       91    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     1        5    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     0      118    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     1        3    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     0      151    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     1        9    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    0      143    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    1       11    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    0      129    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    1        6    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    0      133    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    1       10    1482
6-24 months   ki1114097-CMIN             PERU                           1                     0       48     878
6-24 months   ki1114097-CMIN             PERU                           1                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           2                     0       75     878
6-24 months   ki1114097-CMIN             PERU                           2                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           3                     0       96     878
6-24 months   ki1114097-CMIN             PERU                           3                     1        1     878
6-24 months   ki1114097-CMIN             PERU                           4                     0       90     878
6-24 months   ki1114097-CMIN             PERU                           4                     1        1     878
6-24 months   ki1114097-CMIN             PERU                           5                     0       90     878
6-24 months   ki1114097-CMIN             PERU                           5                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           6                     0       78     878
6-24 months   ki1114097-CMIN             PERU                           6                     1        2     878
6-24 months   ki1114097-CMIN             PERU                           7                     0       74     878
6-24 months   ki1114097-CMIN             PERU                           7                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           8                     0       84     878
6-24 months   ki1114097-CMIN             PERU                           8                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           9                     0       65     878
6-24 months   ki1114097-CMIN             PERU                           9                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           10                    0       57     878
6-24 months   ki1114097-CMIN             PERU                           10                    1        0     878
6-24 months   ki1114097-CMIN             PERU                           11                    0       53     878
6-24 months   ki1114097-CMIN             PERU                           11                    1        1     878
6-24 months   ki1114097-CMIN             PERU                           12                    0       63     878
6-24 months   ki1114097-CMIN             PERU                           12                    1        0     878
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1016   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       35   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      790   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1       34   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      875   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1       32   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      756   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1       25   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      741   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1       33   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      836   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1       32   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      854   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1       24   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      907   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1       27   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0      975   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1       21   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      756   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       25   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      900   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1       29   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      940   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1       31   10694
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
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       90     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     1        2     826
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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/0d895f57-5d9e-4693-a88c-95653f4e4123/02a069eb-5519-4785-a4da-4aa94835fd86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d895f57-5d9e-4693-a88c-95653f4e4123/02a069eb-5519-4785-a4da-4aa94835fd86/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0d895f57-5d9e-4693-a88c-95653f4e4123/02a069eb-5519-4785-a4da-4aa94835fd86/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d895f57-5d9e-4693-a88c-95653f4e4123/02a069eb-5519-4785-a4da-4aa94835fd86/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1824324    0.1384287   0.2264362
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1434109    0.1006359   0.1861858
0-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1601307    0.1190342   0.2012272
0-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1224490    0.0765495   0.1683485
0-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.1428571    0.0947120   0.1910022
0-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.1524390    0.0974173   0.2074607
0-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.1631206    0.1021249   0.2241162
0-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.1440678    0.0992583   0.1888772
0-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.1581028    0.1131391   0.2030664
0-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.1420455    0.1055703   0.1785206
0-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.1450980    0.1018625   0.1883336
0-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.1505792    0.1070163   0.1941420
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0939850    0.0764506   0.1115193
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0906801    0.0743713   0.1069889
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0824121    0.0653248   0.0994993
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0943580    0.0764876   0.1122284
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1058618    0.0880252   0.1236984
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1065292    0.0888052   0.1242532
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0924303    0.0764056   0.1084549
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0833977    0.0683387   0.0984567
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0830946    0.0663745   0.0998147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0822838    0.0666768   0.0978908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0950041    0.0785566   0.1114516
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0464372    0.0365977   0.0562766
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0576453    0.0471382   0.0681525
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0533940    0.0438941   0.0628940
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0688488    0.0563051   0.0813924
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0688872    0.0544614   0.0833130
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0712230    0.0555832   0.0868628
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0661954    0.0531827   0.0792081
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0671677    0.0558486   0.0784868
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0601368    0.0505821   0.0696916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0663040    0.0555770   0.0770310
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0581975    0.0490574   0.0673377
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0595621    0.0499892   0.0691350
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0674603    0.0364865   0.0984341
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0420561    0.0151584   0.0689537
0-6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.0503876    0.0236906   0.0770846
0-6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.0666667    0.0285980   0.1047354
0-6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.0658683    0.0282394   0.1034971
0-6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.0638298    0.0234730   0.1041866
0-6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.0571429    0.0127364   0.1015494
0-6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.0717949    0.0355548   0.1080349
0-6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.0751174    0.0397127   0.1105221
0-6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.0343643    0.0134303   0.0552982
0-6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.0566038    0.0254910   0.0877166
0-6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.0491071    0.0208029   0.0774114
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0655120    0.0522041   0.0788200
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0648855    0.0499717   0.0797993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0662139    0.0520139   0.0804140
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0606061    0.0457423   0.0754698
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0647059    0.0496082   0.0798035
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0789474    0.0632935   0.0946013
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0877797    0.0715089   0.1040504
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0719424    0.0576234   0.0862615
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0681642    0.0544159   0.0819125
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0615977    0.0469782   0.0762172
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0592718    0.0458041   0.0727396
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0721903    0.0576615   0.0867192
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0349398    0.0262817   0.0435979
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0470588    0.0375154   0.0566022
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0348259    0.0271642   0.0424876
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0453001    0.0355742   0.0550260
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0334855    0.0233135   0.0436576
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0347826    0.0239327   0.0456325
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0366795    0.0268674   0.0464917
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0428235    0.0331697   0.0524773
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0448301    0.0361202   0.0535400
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0457650    0.0368627   0.0546674
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0437688    0.0356322   0.0519054
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0429725    0.0348001   0.0511450
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0333016    0.0224537   0.0441495
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0412621    0.0276812   0.0548431
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0352811    0.0232741   0.0472882
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0320102    0.0196643   0.0443561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0426357    0.0284018   0.0568695
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0368664    0.0243301   0.0494026
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0273349    0.0165488   0.0381209
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0289079    0.0181623   0.0396536
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0210843    0.0121617   0.0300069
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0320102    0.0196643   0.0443561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0312164    0.0200332   0.0423995
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0319258    0.0208677   0.0429840
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
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1510791   0.1380852   0.1640731
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0774648   0.0450418   0.1098878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0915417   0.0867542   0.0963292
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0609421   0.0574707   0.0644136
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0570373   0.0478278   0.0662468
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0760580   0.0435003   0.1086157
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0686791   0.0644666   0.0728917
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0412835   0.0383098   0.0442573
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1172389   0.1051866   0.1292911
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325416   0.0291786   0.0359047
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
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.7861039   0.5356574   1.1536466
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.8777536   0.6171821   1.2483371
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.6712018   0.4298015   1.0481859
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.7830688   0.5173820   1.1851914
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.8355917   0.5413255   1.2898219
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.8941424   0.5730019   1.3952669
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.7897050   0.5327544   1.1705842
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.8666374   0.5968777   1.2583154
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.7786195   0.5474207   1.1074633
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.7953522   0.5420831   1.1669523
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.8253968   0.5663431   1.2029455
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0622670   0.8244501   1.3686835
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0249137   0.7993682   1.3140980
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9314640   0.7116985   1.2190911
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0664830   0.8259974   1.3769850
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1965048   0.9407811   1.5217396
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.2040486   0.9481107   1.5290758
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0446952   0.8185923   1.3332498
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9426041   0.7347892   1.2091936
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9391780   0.7209639   1.2234388
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9300143   0.7201504   1.2010361
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0737858   0.8415339   1.3701360
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.2413624   0.9333951   1.6509415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.1498130   0.8821326   1.4987203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.4826224   1.1219197   1.9592928
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.4834503   1.0958582   2.0081293
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.5337509   1.1294166   2.0828380
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.4254831   1.0595788   1.9177451
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.4464213   1.1144253   1.8773215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.2950157   0.9970145   1.6820875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.4278219   1.0984250   1.8559987
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2532539   0.9768492   1.6078687
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.2826398   0.9768813   1.6840990
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.6234195   0.2836979   1.3699498
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.7469220   0.3705048   1.5057633
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.9882353   0.4749433   2.0562645
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.9764001   0.4691660   2.0320252
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1                 0.9461827   0.4331365   2.0669277
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1                 0.8470588   0.3434885   2.0888868
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1                 1.0642534   0.5379017   2.1056546
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1                 1.1135046   0.5766711   2.1500859
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1                 0.5093996   0.2375561   1.0923229
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1                 0.8390677   0.4099748   1.7172631
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1                 0.7279412   0.3483893   1.5209950
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9904361   0.7287973   1.3460033
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0107137   0.7522128   1.3580493
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9251132   0.6728089   1.2720319
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9876944   0.7248816   1.3457925
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.2050817   0.9072651   1.6006588
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.3399015   1.0177556   1.7640148
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0981560   0.8263294   1.4594017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.0404836   0.7814725   1.3853414
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9402498   0.6879693   1.2850423
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9047466   0.6670532   1.2271382
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.1019396   0.8278843   1.4667157
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.3468560   0.9740714   1.8623081
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9967404   0.7182195   1.3832700
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.2965205   0.9369101   1.7941587
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9583793   0.6471638   1.4192556
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9955022   0.6782010   1.4612551
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.0497936   0.7224328   1.5254938
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.2256389   0.8923531   1.6834040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.2830678   0.9446909   1.7426472
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.3098266   0.9709468   1.7669824
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2526931   0.9332017   1.6815657
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.2299036   0.8937647   1.6924622
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2390430   0.7797821   1.9687903
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0594424   0.6614283   1.6969614
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9612219   0.5801950   1.5924775
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.2802879   0.8030368   2.0411731
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1070441   0.6912865   1.7728492
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8208266   0.4920780   1.3692062
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8680636   0.5295412   1.4229950
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.6331325   0.3711629   1.0800023
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9612219   0.5801950   1.5924775
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9373827   0.5776045   1.5212597
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9586877   0.5959058   1.5423278
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
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0313533   -0.0727352   0.0100287
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0071769   -0.0157387   0.0300924
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0033907   -0.0246369   0.0314184
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0030659   -0.0113847   0.0175165
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0145050    0.0051385   0.0238715
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0104230   -0.0395053   0.0186594
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0028873   -0.0249326   0.0307072
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0031671   -0.0095167   0.0158509
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0063438   -0.0017107   0.0143983
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0177976   -0.0559491   0.0203539
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0071769   -0.0157387   0.0300924
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0007600   -0.0110487   0.0095286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0094726    0.0014704   0.0174749


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1002303   -0.5400317   0.2139729
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3302243   -1.1082504   0.1606800
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2075290   -0.5145763   0.0372712
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1420584   -0.4448819   0.4905716
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0437710   -0.4021647   0.3478842
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0334916   -0.1379804   0.1791261
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2380124    0.0677452   0.3771820
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1827395   -0.8190552   0.2309894
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0379615   -0.4127545   0.3448840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0461143   -0.1576347   0.2140025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1536639   -0.0665153   0.3283877
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1518066   -0.5275014   0.1314846
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1420584   -0.4448819   0.4905716
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0233549   -0.3937968   0.2486314
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2963070   -0.0039963   0.5067872
