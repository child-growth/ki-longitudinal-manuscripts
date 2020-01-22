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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        month    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0       20     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1        0     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              0       18     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              1        0     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              0       21     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              1        2     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              0       19     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              1        2     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              0       17     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              1        0     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              0        6     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              1        0     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              0       12     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              1        0     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              0       23     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              1        1     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              0       15     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              1        1     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             0       18     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             1        1     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             0       13     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             1        0     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             0       25     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             1        1     215  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        5      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         2              0        8      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         2              1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         3              0        9      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         3              1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         4              0        5      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         4              1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         5              0        1      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         5              1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         6              0        5      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         6              1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         7              0        5      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         7              1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         8              0        6      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         8              1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         9              0        6      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         9              1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         10             0        4      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         10             1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         11             0        5      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         11             1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         12             0        3      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         12             1        0      62  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1              0        2      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1              1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          2              0        3      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          2              1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          3              0        5      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          3              1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          4              0        6      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          4              1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          5              0        2      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          5              1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          6              0        3      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          6              1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          7              0        3      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          7              1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          8              0        7      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          8              1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          9              0        4      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          9              1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          10             0        6      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          10             1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          11             0        3      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          11             1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          12             0        1      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          12             1        0      45  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1              0        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        1      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          2              0        3      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          2              1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          3              0        1      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          3              1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          4              0        2      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          4              1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          5              0        2      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          5              1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          6              0        3      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          6              1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          7              0        1      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          7              1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          8              0        1      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          8              1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          9              0        3      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          9              1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          10             0        3      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          10             1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          11             0        4      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          11             1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          12             0        2      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          12             1        0      26  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1              0       24     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1              1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           2              0       20     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           2              1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           3              0       21     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           3              1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           4              0       13     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           4              1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           5              0       18     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           5              1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           6              0       15     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           6              1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           7              0       20     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           7              1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           8              0       14     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           8              1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           9              0       20     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           9              1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           10             0       20     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           10             1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           11             0       29     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           11             1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           12             0       14     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           12             1        0     228  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0        7     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       13     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       10     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              0        7     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              0        5     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              0        7     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       14     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        4     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       10     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       10     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       15     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       18     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        0     120  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        8     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       14     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       15     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        7     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0       10     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0        8     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       15     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0        7     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0        1     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0        6     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       14     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       10     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        0     115  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0        9      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              0        1      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              0        7      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4              0        9      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4              1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              0        9      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6              0       10      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6              1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7              0        7      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7              1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8              0        4      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8              1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9              0        7      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9              1        1      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10             0        8      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10             1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             0       11      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12             0        3      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12             1        0      86  swasted          
Birth       ki1000108-IRC              INDIA                          1              0       28     343  swasted          
Birth       ki1000108-IRC              INDIA                          1              1        2     343  swasted          
Birth       ki1000108-IRC              INDIA                          2              0       21     343  swasted          
Birth       ki1000108-IRC              INDIA                          2              1        1     343  swasted          
Birth       ki1000108-IRC              INDIA                          3              0       21     343  swasted          
Birth       ki1000108-IRC              INDIA                          3              1        5     343  swasted          
Birth       ki1000108-IRC              INDIA                          4              0       17     343  swasted          
Birth       ki1000108-IRC              INDIA                          4              1        2     343  swasted          
Birth       ki1000108-IRC              INDIA                          5              0       11     343  swasted          
Birth       ki1000108-IRC              INDIA                          5              1        4     343  swasted          
Birth       ki1000108-IRC              INDIA                          6              0       20     343  swasted          
Birth       ki1000108-IRC              INDIA                          6              1        5     343  swasted          
Birth       ki1000108-IRC              INDIA                          7              0       26     343  swasted          
Birth       ki1000108-IRC              INDIA                          7              1        5     343  swasted          
Birth       ki1000108-IRC              INDIA                          8              0       31     343  swasted          
Birth       ki1000108-IRC              INDIA                          8              1        6     343  swasted          
Birth       ki1000108-IRC              INDIA                          9              0       17     343  swasted          
Birth       ki1000108-IRC              INDIA                          9              1        7     343  swasted          
Birth       ki1000108-IRC              INDIA                          10             0       24     343  swasted          
Birth       ki1000108-IRC              INDIA                          10             1        8     343  swasted          
Birth       ki1000108-IRC              INDIA                          11             0       36     343  swasted          
Birth       ki1000108-IRC              INDIA                          11             1        3     343  swasted          
Birth       ki1000108-IRC              INDIA                          12             0       37     343  swasted          
Birth       ki1000108-IRC              INDIA                          12             1        6     343  swasted          
Birth       ki1000109-EE               PAKISTAN                       1              0       32     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       1              1        2     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       2              0       39     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       2              1        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       3              0       18     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       3              1        1     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       4              0        8     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       4              1        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       5              0        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       5              1        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       6              0        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       6              1        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       7              0        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       7              1        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       8              0        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       8              1        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       9              0        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       9              1        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       10             0        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       10             1        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       11             0       36     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       11             1        2     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       12             0       38     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       12             1        1     177  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       1              0        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       1              1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       2              0        2      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       2              1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       3              0        1      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       3              1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       4              0        1      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       4              1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       5              0        6      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       5              1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       6              0        7      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       6              1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       7              0        7      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       7              1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       8              0        8      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       8              1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       9              0        4      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       9              1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       10             0        1      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       10             1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       11             0        1      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       11             1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       12             0        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       12             1        0      38  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0       65    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1        0    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              0       61    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              1        1    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              0       66    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              1        1    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              0       58    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              1        2    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              0       62    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              1        3    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              0       86    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              1        6    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          7              0       90    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          7              1        4    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              0      121    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              1        2    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              0      128    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              1        7    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             0      120    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             1        3    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             0      113    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             1        0    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             0      104    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             1        0    1103  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              0       47     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              1        7     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     2              0       53     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     2              1        2     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     3              0       56     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     3              1        2     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     4              0       44     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     4              1        4     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     5              0       42     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     5              1        3     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     6              0       36     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     6              1        4     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     7              0       39     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     7              1        6     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     8              0       37     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     8              1        4     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     9              0       30     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     9              1        1     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     10             0       55     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     10             1        3     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     11             0       47     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     11             1        2     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     12             0       51     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     12             1        0     575  swasted          
Birth       ki1101329-Keneba           GAMBIA                         1              0      124    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         1              1        9    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         2              0      139    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         2              1       14    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         3              0      131    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         3              1        9    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         4              0      150    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         4              1        9    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         5              0       99    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         5              1        4    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         6              0       94    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         6              1        8    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         7              0       81    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         7              1        4    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         8              0       68    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         8              1        6    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         9              0      108    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         9              1        8    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         10             0      106    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         10             1       12    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         11             0      158    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         11             1       10    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         12             0      105    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         12             1       10    1466  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1              0        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          2              0        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          2              1        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          3              0        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          3              1        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          4              0        1     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          4              1        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          5              0        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          5              1        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          6              0      143     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          6              1        8     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          7              0      233     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          7              1        7     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          8              0      237     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          8              1       12     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          9              0        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          9              1        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          10             0        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          10             1        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          11             0        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          11             1        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          12             0        0     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          12             1        0     641  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     1              0        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     1              1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     2              0        4      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     2              1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     3              0        2      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     3              1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     4              0        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     4              1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     5              0        3      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     5              1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     6              0        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     6              1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     7              0        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     7              1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     8              0        5      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     8              1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     9              0        2      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     9              1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     10             0        1      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     10             1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     11             0        1      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     11             1        1      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     12             0        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     12             1        0      19  swasted          
Birth       ki1114097-CONTENT          PERU                           1              0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           1              1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           2              0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           2              1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           3              0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           3              1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           4              0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           4              1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           5              0        2       2  swasted          
Birth       ki1114097-CONTENT          PERU                           5              1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           6              0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           6              1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           7              0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           7              1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           8              0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           8              1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           9              0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           9              1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           10             0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           10             1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           11             0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           11             1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           12             0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           12             1        0       2  swasted          
Birth       ki1119695-PROBIT           BELARUS                        1              0      793   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        1              1       62   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        2              0      746   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        2              1       40   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        3              0      894   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        3              1       67   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        4              0      905   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        4              1       50   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        5              0      872   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        5              1       77   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        6              0      942   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        6              1       65   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        7              0     1170   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        7              1      107   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        8              0     1237   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        8              1       82   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        9              0     1219   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        9              1       94   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        10             0     1409   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        10             1       91   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        11             0     1314   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        11             1       78   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        12             0     1423   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        12             1       93   13830  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              0     1173   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              1       65   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              0      892   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              1       56   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3              0     1001   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3              1       59   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4              0      891   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4              1       50   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5              0      853   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5              1       61   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6              0      970   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6              1       77   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7              0     1011   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7              1       87   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8              0     1092   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8              1       74   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9              0     1203   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9              1       65   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10             0      922   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10             1       62   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11             0     1011   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11             1       59   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12             0     1106   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12             1       77   12917  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0     1603   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1       25   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0     1386   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1       25   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              0     1683   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              1       32   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4              0     1233   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4              1       21   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5              0      877   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5              1       18   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6              0      905   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6              1       13   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7              0     1035   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7              1       17   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8              0     1356   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8              1       26   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9              0     1811   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9              1       52   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10             0     1871   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10             1       42   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11             0     1864   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11             1       41   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12             0     2041   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12             1       37   18014  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0        0    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1        0    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              0      277    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              1        0    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              0      311    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              1        5    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4              0      390    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4              1        5    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5              0      375    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5              1        2    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              0      288    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              1        7    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              0      311    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              1        4    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              0      222    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              1        4    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              0      130    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              1        4    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10             0       61    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10             1        0    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11             0        0    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11             1        0    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12             0        0    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12             1        0    2396  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0       19     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              0       20     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              0       23     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     4              0       23     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     4              1        1     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     5              0       17     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     5              1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     6              0       12     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     6              1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     7              0       16     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     7              1        1     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     8              0       25     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     8              1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     9              0       21     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     9              1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     10             0       22     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     10             1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     11             0       15     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     11             1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     12             0       26     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     12             1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0       14     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         2              0       24     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         2              1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         3              0       15     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         3              1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         4              0       12     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         4              1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         5              0       17     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         5              1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         6              0       14     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         6              1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         7              0       16     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         7              1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         8              0       15     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         8              1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         9              0       21     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         9              1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         10             0       26     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         10             1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         11             0       17     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         11             1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         12             0       18     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         12             1        0     209  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1              0       15     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          2              0       23     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          2              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          3              0       19     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          3              1        2     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          4              0       18     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          4              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          5              0        8     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          5              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          6              0       17     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          6              1        1     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          7              0       20     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          7              1        1     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          8              0       21     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          8              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          9              0       21     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          9              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          10             0       23     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          10             1        1     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          11             0       24     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          11             1        0     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          12             0       21     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          12             1        1     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1              0       20     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          2              0       20     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          2              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          3              0       20     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          3              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          4              0       20     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          4              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          5              0       18     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          5              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          6              0       20     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          6              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          7              0       19     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          7              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          8              0       19     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          8              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          9              0       20     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          9              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          10             0       20     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          10             1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          11             0       20     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          11             1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          12             0       20     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          12             1        0     236  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1              0       33     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1              1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           2              0       26     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           2              1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           3              0       22     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           3              1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           4              0       18     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           4              1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           5              0       24     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           5              1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           6              0       20     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           6              1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           7              0       22     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           7              1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           8              0       16     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           8              1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           9              0       22     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           9              1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           10             0       20     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           10             1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           11             0       34     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           11             1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           12             0       16     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           12             1        0     273  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       32     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       33     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       17     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       12     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        0     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       11     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       18     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        0     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       25     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        0     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        7     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        0     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       17     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        0     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       21     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        1     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       27     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        2     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       31     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        0     254  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       21     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       28     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       23     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0       10     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0       12     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       16     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       28     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0       12     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       18     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0       19     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       28     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       32     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        0     247  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0       28     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1        0     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              0       23     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              1        1     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              0       24     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              1        2     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              0       28     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              1        1     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              0       40     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              1        1     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              0       34     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              1        2     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              0       32     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              1        1     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              0       40     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              1        1     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              0       22     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              1        0     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             0       19     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             1        0     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             0       39     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             1        2     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             0       27     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             1        1     368  swasted          
6 months    ki1000108-IRC              INDIA                          1              0       33     408  swasted          
6 months    ki1000108-IRC              INDIA                          1              1        2     408  swasted          
6 months    ki1000108-IRC              INDIA                          2              0       28     408  swasted          
6 months    ki1000108-IRC              INDIA                          2              1        2     408  swasted          
6 months    ki1000108-IRC              INDIA                          3              0       29     408  swasted          
6 months    ki1000108-IRC              INDIA                          3              1        0     408  swasted          
6 months    ki1000108-IRC              INDIA                          4              0       24     408  swasted          
6 months    ki1000108-IRC              INDIA                          4              1        0     408  swasted          
6 months    ki1000108-IRC              INDIA                          5              0       20     408  swasted          
6 months    ki1000108-IRC              INDIA                          5              1        1     408  swasted          
6 months    ki1000108-IRC              INDIA                          6              0       34     408  swasted          
6 months    ki1000108-IRC              INDIA                          6              1        1     408  swasted          
6 months    ki1000108-IRC              INDIA                          7              0       33     408  swasted          
6 months    ki1000108-IRC              INDIA                          7              1        3     408  swasted          
6 months    ki1000108-IRC              INDIA                          8              0       37     408  swasted          
6 months    ki1000108-IRC              INDIA                          8              1        4     408  swasted          
6 months    ki1000108-IRC              INDIA                          9              0       26     408  swasted          
6 months    ki1000108-IRC              INDIA                          9              1        2     408  swasted          
6 months    ki1000108-IRC              INDIA                          10             0       38     408  swasted          
6 months    ki1000108-IRC              INDIA                          10             1        1     408  swasted          
6 months    ki1000108-IRC              INDIA                          11             0       39     408  swasted          
6 months    ki1000108-IRC              INDIA                          11             1        2     408  swasted          
6 months    ki1000108-IRC              INDIA                          12             0       45     408  swasted          
6 months    ki1000108-IRC              INDIA                          12             1        4     408  swasted          
6 months    ki1000109-EE               PAKISTAN                       1              0       87     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       1              1        4     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       2              0       69     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       2              1        3     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       3              0       46     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       3              1        1     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       4              0       22     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       4              1        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       5              0        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       5              1        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       6              0        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       6              1        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       7              0        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       7              1        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       8              0        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       8              1        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       9              0        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       9              1        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       10             0        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       10             1        0     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       11             0       58     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       11             1        2     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       12             0       80     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       12             1        3     375  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       1              0        2     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       1              1        0     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       2              0        8     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       2              1        0     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       3              0       10     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       3              1        0     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       4              0       20     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       4              1        0     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       5              0       26     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       5              1        4     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       6              0       38     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       6              1        1     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       7              0       42     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       7              1        1     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       8              0       25     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       8              1        1     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       9              0       35     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       9              1        2     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       10             0       15     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       10             1        0     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       11             0        6     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       11             1        0     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       12             0        3     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       12             1        0     239  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0       79    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1        6    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              0       77    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              1        4    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              0       76    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              1        4    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              0       73    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              1        2    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              0       76    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              1        0    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              0      100    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              1        2    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          7              0      114    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          7              1        1    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          8              0      151    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          8              1        1    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          9              0      161    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          9              1        4    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          10             0      143    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          10             1        5    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          11             0      117    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          11             1        9    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          12             0      124    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          12             1        5    1334  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0       58     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1        3     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              0       37     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              1        0     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              0       33     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              1        3     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4              0       23     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4              1        3     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              0       27     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              1        2     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              0       29     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              1        2     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              0       16     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              1        0     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              0        0     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              1        0     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              0       12     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              1        0     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             0       23     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             1        3     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             0       44     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             1        0     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             0       59     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             1        3     380  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              0       49     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              1        1     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              0       49     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              1        1     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              0       49     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              1        1     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              0       44     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              1        0     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              0       39     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              1        1     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              0       39     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              1        0     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              0       45     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              1        0     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              0       38     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              1        0     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              0       30     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              1        0     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             0       52     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             1        0     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             0       49     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             1        0     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             0       48     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             1        2     537  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      198    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        1    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      137    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      150    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        1    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      138    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        0    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      160    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        1    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      142    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        0    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      144    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        1    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      174    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        0    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      195    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        3    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      195    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        0    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      186    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        1    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      197    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        4    2028  swasted          
6 months    ki1101329-Keneba           GAMBIA                         1              0      181    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         1              1        3    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         2              0      207    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         2              1        3    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         3              0      184    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         3              1        1    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         4              0      219    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         4              1        5    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         5              0      178    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         5              1        7    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         6              0      146    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         6              1        4    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         7              0      128    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         7              1        1    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         8              0      116    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         8              1        2    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         9              0      150    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         9              1        1    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         10             0      166    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         10             1        3    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         11             0      221    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         11             1        4    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         12             0      159    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         12             1        0    2089  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              0       18     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              0       19     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              0       21     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              0       27     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              0       31     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              0       39     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              0       24     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              0       19     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              0       34     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             0       29     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             0       28     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             0       10     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             1        0     299  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          2              0        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          2              1        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          3              0        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          3              1        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          4              0        1     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          4              1        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          5              0        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          5              1        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          6              0      115     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          6              1        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          7              0      208     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          7              1        3     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          8              0      233     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          8              1        4     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          9              0        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          9              1        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          10             0        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          10             1        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          11             0        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          11             1        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          12             0        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          12             1        0     564  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     1              0       25     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     1              1        3     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     2              0       29     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     2              1        1     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     3              0       18     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     3              1        0     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     4              0       17     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     4              1        0     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     5              0       20     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     5              1        0     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     6              0       22     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     6              1        1     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     7              0       12     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     7              1        0     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     8              0       13     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     8              1        0     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     9              0       16     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     9              1        0     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     10             0       20     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     10             1        0     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     11             0        2     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     11             1        0     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     12             0       44     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     12             1        0     243  swasted          
6 months    ki1114097-CONTENT          PERU                           1              0        9     215  swasted          
6 months    ki1114097-CONTENT          PERU                           1              1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           2              0       13     215  swasted          
6 months    ki1114097-CONTENT          PERU                           2              1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           3              0       27     215  swasted          
6 months    ki1114097-CONTENT          PERU                           3              1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           4              0       18     215  swasted          
6 months    ki1114097-CONTENT          PERU                           4              1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           5              0       25     215  swasted          
6 months    ki1114097-CONTENT          PERU                           5              1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           6              0       14     215  swasted          
6 months    ki1114097-CONTENT          PERU                           6              1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           7              0       16     215  swasted          
6 months    ki1114097-CONTENT          PERU                           7              1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           8              0       26     215  swasted          
6 months    ki1114097-CONTENT          PERU                           8              1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           9              0       19     215  swasted          
6 months    ki1114097-CONTENT          PERU                           9              1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           10             0       23     215  swasted          
6 months    ki1114097-CONTENT          PERU                           10             1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           11             0       18     215  swasted          
6 months    ki1114097-CONTENT          PERU                           11             1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           12             0        7     215  swasted          
6 months    ki1114097-CONTENT          PERU                           12             1        0     215  swasted          
6 months    ki1119695-PROBIT           BELARUS                        1              0     1100   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        1              1        1   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        2              0      949   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        2              1        2   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        3              0     1113   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        3              1        1   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        4              0     1070   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        4              1        0   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        5              0     1094   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        5              1        2   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        6              0     1120   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        6              1        0   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        7              0     1363   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        7              1        3   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        8              0     1496   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        8              1        2   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        9              0     1481   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        9              1        0   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        10             0     1668   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        10             1        1   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        11             0     1587   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        11             1        2   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        12             0     1701   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        12             1        2   15758  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0      805    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1       11    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              0      590    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              1        8    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3              0      712    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3              1        8    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4              0      664    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4              1        5    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5              0      616    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5              1        5    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6              0      658    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6              1       12    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7              0      659    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7              1        4    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8              0      753    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8              1        6    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9              0      780    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9              1        9    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10             0      615    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10             1        2    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11             0      740    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11             1        5    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12             0      834    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12             1        4    8505  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1              0       55     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1              1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         2              0      114     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         2              1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         3              0       98     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         3              1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         4              0      110     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         4              1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         5              0      111     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         5              1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         6              0       91     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         6              1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         7              0       72     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         7              1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         8              0       41     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         8              1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         9              0       29     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         9              1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         10             0       35     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         10             1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         11             0       49     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         11             1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         12             0       34     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         12             1        0     839  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0     1350   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1       16   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0     1165   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1       14   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              0     1401   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              1       19   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4              0     1173   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4              1       18   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5              0     1128   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5              1       19   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6              0     1143   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6              1       12   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7              0     1225   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7              1       20   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8              0     1447   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8              1       16   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9              0     1533   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9              1       18   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10             0     1663   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10             1       30   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11             0     1649   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11             1       20   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12             0     1677   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12             1       28   16784  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0       53    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1        0    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              0      165    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              1        0    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              0      426    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              1        4    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4              0      839    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4              1        9    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5              0      581    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5              1        5    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6              0      431    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6              1        3    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7              0      826    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7              1       10    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8              0      510    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8              1        0    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              0      430    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              1        1    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             0      305    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             1        1    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11             0      157    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11             1        0    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12             0       77    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12             1        0    4833  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0       17     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              0       17     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              0       19     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     4              0       21     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     4              1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     5              0       15     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     5              1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     6              0        9     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     6              1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     7              0       17     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     7              1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     8              0       24     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     8              1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     9              0       18     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     9              1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     10             0       20     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     10             1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     11             0        9     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     11             1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     12             0       26     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     12             1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0       14     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         2              0       19     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         2              1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         3              0       11     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         3              1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         4              0       11     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         4              1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         5              0       15     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         5              1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         6              0        9     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         6              1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         7              0       10     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         7              1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         8              0       12     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         8              1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         9              0       18     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         9              1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         10             0       21     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         10             1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         11             0       12     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         11             1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         12             0       16     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         12             1        1     169  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1              0       15     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1              1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          2              0       23     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          2              1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          3              0       19     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          3              1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          4              0       17     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          4              1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          5              0        7     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          5              1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          6              0       15     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          6              1        2     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          7              0       21     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          7              1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          8              0       20     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          8              1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          9              0       20     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          9              1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          10             0       23     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          10             1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          11             0       24     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          11             1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          12             0       21     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          12             1        0     227  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1              0       19     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          2              0       18     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          2              1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          3              0       19     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          3              1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          4              0       20     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          4              1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          5              0       17     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          5              1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          6              0       20     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          6              1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          7              0       19     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          7              1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          8              0       18     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          8              1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          9              0       19     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          9              1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          10             0       20     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          10             1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          11             0       19     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          11             1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          12             0       20     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          12             1        0     228  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1              0       26     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1              1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           2              0       23     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           2              1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           3              0       15     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           3              1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           4              0       10     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           4              1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           5              0       18     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           5              1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           6              0       14     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           6              1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           7              0       14     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           7              1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           8              0       11     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           8              1        1     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           9              0       21     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           9              1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           10             0       15     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           10             1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           11             0       20     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           11             1        1     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           12             0       12     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           12             1        0     201  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       29     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       30     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       16     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       12     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       10     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       15     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       25     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        7     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       17     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       22     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       27     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       28     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        0     238  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       18     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       19     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       22     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        8     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0       14     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       14     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       28     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0       12     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       15     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0       17     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       21     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       26     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        0     214  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0       28     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              0       24     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              0       26     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              0       29     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              0       43     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              0       35     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              1        2     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              0       33     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              0       40     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              1        1     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              0       22     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             0       19     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             0       41     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             0       29     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             1        0     372  swasted          
24 months   ki1000108-IRC              INDIA                          1              0       34     409  swasted          
24 months   ki1000108-IRC              INDIA                          1              1        1     409  swasted          
24 months   ki1000108-IRC              INDIA                          2              0       30     409  swasted          
24 months   ki1000108-IRC              INDIA                          2              1        0     409  swasted          
24 months   ki1000108-IRC              INDIA                          3              0       29     409  swasted          
24 months   ki1000108-IRC              INDIA                          3              1        0     409  swasted          
24 months   ki1000108-IRC              INDIA                          4              0       24     409  swasted          
24 months   ki1000108-IRC              INDIA                          4              1        0     409  swasted          
24 months   ki1000108-IRC              INDIA                          5              0       20     409  swasted          
24 months   ki1000108-IRC              INDIA                          5              1        1     409  swasted          
24 months   ki1000108-IRC              INDIA                          6              0       34     409  swasted          
24 months   ki1000108-IRC              INDIA                          6              1        1     409  swasted          
24 months   ki1000108-IRC              INDIA                          7              0       36     409  swasted          
24 months   ki1000108-IRC              INDIA                          7              1        0     409  swasted          
24 months   ki1000108-IRC              INDIA                          8              0       39     409  swasted          
24 months   ki1000108-IRC              INDIA                          8              1        2     409  swasted          
24 months   ki1000108-IRC              INDIA                          9              0       30     409  swasted          
24 months   ki1000108-IRC              INDIA                          9              1        0     409  swasted          
24 months   ki1000108-IRC              INDIA                          10             0       38     409  swasted          
24 months   ki1000108-IRC              INDIA                          10             1        0     409  swasted          
24 months   ki1000108-IRC              INDIA                          11             0       41     409  swasted          
24 months   ki1000108-IRC              INDIA                          11             1        0     409  swasted          
24 months   ki1000108-IRC              INDIA                          12             0       49     409  swasted          
24 months   ki1000108-IRC              INDIA                          12             1        0     409  swasted          
24 months   ki1000109-EE               PAKISTAN                       1              0       28     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       1              1        1     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       2              0        2     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       2              1        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       3              0        2     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       3              1        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       4              0        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       4              1        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       5              0        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       5              1        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       6              0        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       6              1        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       7              0        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       7              1        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       8              0        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       8              1        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       9              0        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       9              1        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       10             0        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       10             1        0     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       11             0       55     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       11             1        2     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       12             0       77     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       12             1        1     168  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              0       42     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              1        0     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              0       36     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              1        0     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              0       40     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              1        1     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              0       33     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              1        1     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              0       33     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              1        1     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              0       30     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              1        0     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              0       36     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              1        1     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              0       30     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              1        0     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              0       18     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              1        1     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             0       38     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             1        2     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             0       38     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             1        2     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             0       44     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             1        1     428  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0        3       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0        1       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0        2       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        0       6  swasted          
24 months   ki1101329-Keneba           GAMBIA                         1              0      146    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         1              1        2    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         2              0      158    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         2              1        2    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         3              0      159    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         3              1        0    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         4              0      173    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         4              1        2    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         5              0      177    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         5              1        5    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         6              0      131    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         6              1        1    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         7              0      101    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         7              1        0    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         8              0       90    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         8              1        4    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         9              0      133    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         9              1        2    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         10             0      145    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         10             1        5    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         11             0      177    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         11             1        1    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         12             0      106    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         12             1        6    1726  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          2              0        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          2              1        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          3              0        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          3              1        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          4              0        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          4              1        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          5              0        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          5              1        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          6              0       66     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          6              1        6     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          7              0      195     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          7              1        5     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          8              0      211     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          8              1        4     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          9              0        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          9              1        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          10             0        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          10             1        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          11             0        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          11             1        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          12             0        0     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          12             1        0     487  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     1              0       26     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     1              1        1     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     2              0       31     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     2              1        0     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     3              0       19     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     3              1        0     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     4              0       18     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     4              1        0     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     5              0       19     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     5              1        0     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     6              0       22     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     6              1        0     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     7              0       12     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     7              1        0     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     8              0       13     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     8              1        0     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     9              0       18     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     9              1        0     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     10             0       18     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     10             1        1     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     11             0        2     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     11             1        0     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     12             0       43     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     12             1        0     243  swasted          
24 months   ki1114097-CONTENT          PERU                           1              0        8     164  swasted          
24 months   ki1114097-CONTENT          PERU                           1              1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           2              0       10     164  swasted          
24 months   ki1114097-CONTENT          PERU                           2              1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           3              0       20     164  swasted          
24 months   ki1114097-CONTENT          PERU                           3              1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           4              0       13     164  swasted          
24 months   ki1114097-CONTENT          PERU                           4              1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           5              0       22     164  swasted          
24 months   ki1114097-CONTENT          PERU                           5              1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           6              0       11     164  swasted          
24 months   ki1114097-CONTENT          PERU                           6              1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           7              0       13     164  swasted          
24 months   ki1114097-CONTENT          PERU                           7              1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           8              0       23     164  swasted          
24 months   ki1114097-CONTENT          PERU                           8              1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           9              0       11     164  swasted          
24 months   ki1114097-CONTENT          PERU                           9              1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           10             0       12     164  swasted          
24 months   ki1114097-CONTENT          PERU                           10             1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           11             0       17     164  swasted          
24 months   ki1114097-CONTENT          PERU                           11             1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           12             0        4     164  swasted          
24 months   ki1114097-CONTENT          PERU                           12             1        0     164  swasted          
24 months   ki1119695-PROBIT           BELARUS                        1              0      264    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        1              1        0    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        2              0      209    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        2              1        1    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        3              0      319    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        3              1        1    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        4              0      322    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        4              1        0    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        5              0      301    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        5              1        0    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        6              0      265    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        6              1        0    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        7              0      363    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        7              1        1    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        8              0      346    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        8              1        0    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        9              0      375    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        9              1        0    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        10             0      389    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        10             1        1    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        11             0      386    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        11             1        0    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        12             0      429    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        12             1        0    3972  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0       49     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1        2     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              0       57     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              1        3     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              0       50     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              1        6     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              0       43     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              1        3     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              0       43     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              1        6     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              0       41     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              1        3     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              0       30     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              1        2     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              0       27     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              1        3     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              0        2     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              1        0     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             0        4     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             1        0     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             0       20     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             1        0     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             0       36     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             1        3     433  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1              0       40     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1              1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         2              0       86     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         2              1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         3              0       67     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         3              1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         4              0       74     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         4              1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         5              0       62     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         5              1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         6              0       63     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         6              1        1     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         7              0       39     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         7              1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         8              0       27     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         8              1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         9              0       20     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         9              1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         10             0       25     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         10             1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         11             0       35     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         11             1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         12             0       24     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         12             1        0     563  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0      691    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1       14    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0      593    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1       15    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              0      701    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              1       25    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              0      512    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              1       26    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              0      378    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              1       16    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              0      539    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              1       22    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              0      608    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              1       41    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              0      608    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              1       39    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              0      690    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              1       36    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             0      849    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             1       36    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             0      903    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             1       34    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             0     1196    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             1       31    8603  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0       47    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1        1    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              0      311    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              1       10    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              0      395    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              1        5    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              0      770    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              1       26    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              0      537    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              1       22    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              0      405    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              1       18    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              0      760    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              1       20    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              0      467    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              1        5    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              0      436    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              1        8    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             0      272    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             1        4    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             0      137    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             1        8    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             0       69    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             1        2    4735  swasted          


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/7e66ccdf-3eb9-4e2e-83cc-57c74e5cc69a/fe56a4e1-4c7c-4e9e-864a-dc8ba6f9320e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e66ccdf-3eb9-4e2e-83cc-57c74e5cc69a/fe56a4e1-4c7c-4e9e-864a-dc8ba6f9320e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e66ccdf-3eb9-4e2e-83cc-57c74e5cc69a/fe56a4e1-4c7c-4e9e-864a-dc8ba6f9320e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e66ccdf-3eb9-4e2e-83cc-57c74e5cc69a/fe56a4e1-4c7c-4e9e-864a-dc8ba6f9320e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                0.0725146   0.0217375   0.1232918
Birth       ki1119695-PROBIT     BELARUS      2                    NA                0.0508906   0.0123676   0.0894135
Birth       ki1119695-PROBIT     BELARUS      3                    NA                0.0697190   0.0246001   0.1148380
Birth       ki1119695-PROBIT     BELARUS      4                    NA                0.0523560   0.0219763   0.0827358
Birth       ki1119695-PROBIT     BELARUS      5                    NA                0.0811380   0.0313515   0.1309246
Birth       ki1119695-PROBIT     BELARUS      6                    NA                0.0645482   0.0329432   0.0961531
Birth       ki1119695-PROBIT     BELARUS      7                    NA                0.0837901   0.0444332   0.1231471
Birth       ki1119695-PROBIT     BELARUS      8                    NA                0.0621683   0.0265758   0.0977608
Birth       ki1119695-PROBIT     BELARUS      9                    NA                0.0715918   0.0197675   0.1234161
Birth       ki1119695-PROBIT     BELARUS      10                   NA                0.0606667   0.0305306   0.0908027
Birth       ki1119695-PROBIT     BELARUS      11                   NA                0.0560345   0.0263111   0.0857579
Birth       ki1119695-PROBIT     BELARUS      12                   NA                0.0613456   0.0263068   0.0963845
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0525040   0.0400792   0.0649288
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0590717   0.0440635   0.0740799
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0556604   0.0418582   0.0694626
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0531350   0.0388030   0.0674669
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0667396   0.0505594   0.0829198
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0735435   0.0577318   0.0893551
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0792350   0.0632579   0.0952120
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0634648   0.0494708   0.0774589
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0512618   0.0391230   0.0634006
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0630081   0.0478260   0.0781903
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0551402   0.0414632   0.0688172
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0650888   0.0510312   0.0791463
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0153563   0.0085560   0.0221565
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0177179   0.0112501   0.0241858
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0186589   0.0122014   0.0251164
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0167464   0.0097167   0.0237761
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0201117   0.0099329   0.0302905
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0141612   0.0066839   0.0216386
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0161597   0.0084166   0.0239028
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0188133   0.0103555   0.0272711
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0279120   0.0194850   0.0363389
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0219550   0.0141995   0.0297105
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0215223   0.0130282   0.0300164
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0178056   0.0109956   0.0246155
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0117130   0.0057331   0.0176930
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0118745   0.0048357   0.0189133
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0133803   0.0071069   0.0196536
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0151134   0.0076462   0.0225805
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0165650   0.0073055   0.0258244
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0103896   0.0034254   0.0173538
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0160643   0.0089888   0.0231397
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0109364   0.0048956   0.0169773
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0116054   0.0062843   0.0169266
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0177200   0.0110440   0.0243960
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0119832   0.0063884   0.0175781
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0164223   0.0096080   0.0232366
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0198582   0.0104403   0.0292760
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0246711   0.0111302   0.0382119
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0344353   0.0186333   0.0502372
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0483271   0.0290256   0.0676287
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0406091   0.0201888   0.0610295
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0392157   0.0221454   0.0562860
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0631741   0.0430267   0.0833216
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0602782   0.0394778   0.0810786
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0495868   0.0343835   0.0647901
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0406780   0.0285170   0.0528390
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0362860   0.0217160   0.0508560
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0252649   0.0152087   0.0353211


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      NA                   NA                0.0655098   0.0324802   0.0985393
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0613145   0.0571772   0.0654519
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0193738   0.0169653   0.0217823
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0137035   0.0116269   0.0157801
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0389399   0.0346167   0.0432631


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT     BELARUS      2                    1                 0.7017976   0.4553179   1.081705
Birth       ki1119695-PROBIT     BELARUS      3                    1                 0.9614481   0.6675810   1.384675
Birth       ki1119695-PROBIT     BELARUS      4                    1                 0.7220064   0.4994765   1.043679
Birth       ki1119695-PROBIT     BELARUS      5                    1                 1.1189197   0.7024488   1.782310
Birth       ki1119695-PROBIT     BELARUS      6                    1                 0.8901400   0.5080387   1.559624
Birth       ki1119695-PROBIT     BELARUS      7                    1                 1.1554930   0.6260202   2.132781
Birth       ki1119695-PROBIT     BELARUS      8                    1                 0.8573210   0.4425107   1.660975
Birth       ki1119695-PROBIT     BELARUS      9                    1                 0.9872737   0.5200681   1.874196
Birth       ki1119695-PROBIT     BELARUS      10                   1                 0.8366129   0.4781817   1.463714
Birth       ki1119695-PROBIT     BELARUS      11                   1                 0.7727336   0.4874973   1.224863
Birth       ki1119695-PROBIT     BELARUS      12                   1                 0.8459763   0.4637648   1.543187
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.1250893   0.7950564   1.592121
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.0601161   0.7524723   1.493538
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 1.0120167   0.7068923   1.448846
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 1.2711328   0.9058521   1.783711
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.4007200   1.0174107   1.928441
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.5091215   1.1058627   2.059431
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 1.2087610   0.8747154   1.670376
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.9763407   0.6985702   1.364560
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.2000625   0.8561116   1.682199
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.0502085   0.7454030   1.479653
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.2396905   0.8998540   1.707869
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.1537916   0.6430241   2.070273
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.2150671   0.6930551   2.130261
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.0905263   0.5882420   2.021698
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.3096760   0.6659562   2.575622
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.9221786   0.4641189   1.832318
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.0523194   0.5525336   2.004179
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.2251230   0.6724455   2.232042
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.8176275   1.0649877   3.102167
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.4297125   0.8225849   2.484944
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.4015328   0.8047153   2.440980
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.1594995   0.6404934   2.099068
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.0137829   0.4722475   2.176308
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.1423415   0.5692824   2.292262
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.2903023   0.6708993   2.481565
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.4142328   0.6568170   3.045071
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.8870130   0.3791502   2.075146
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.3714859   0.6934784   2.712375
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.9336979   0.4498143   1.938115
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.9908124   0.4981972   1.970523
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.5128470   0.7977282   2.869030
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.0230677   0.5584637   1.874191
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.4020528   0.7414810   2.651116
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.2423637   0.5962524   2.588615
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.7340614   0.9137063   3.290958
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 2.4336165   1.2874787   4.600068
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 2.0449601   1.0246997   4.081061
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.9747899   1.1139156   3.500979
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 3.1812679   1.7982510   5.627949
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 3.0354383   1.6729247   5.507651
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 2.4970484   1.4169394   4.400506
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 2.0484261   1.1600696   3.617067
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.8272602   0.9787893   3.411235
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.2722668   0.6892302   2.348508


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.0070049   -0.0387282   0.0247185
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0088105   -0.0031018   0.0207228
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0040176   -0.0024070   0.0104422
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0019905   -0.0035959   0.0075768
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0190817    0.0095822   0.0285813


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.1069285   -0.6998048   0.2791580
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.1436936   -0.0741233   0.3173403
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.2073703   -0.2048557   0.4785584
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.1452543   -0.3784284   0.4699832
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.4900307    0.1891279   0.6792729
