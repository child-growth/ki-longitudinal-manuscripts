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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        month    wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1             0       18     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     1             1        2     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             0       14     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             1        4     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             0       18     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             1        5     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     4             0       17     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     4             1        4     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     5             0       16     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     5             1        1     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     6             0        6     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     6             1        0     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     7             0        9     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     7             1        3     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     8             0       21     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     8             1        3     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     9             0       10     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     9             1        6     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     10            0       17     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     10            1        2     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     11            0       11     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     11            1        2     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     12            0       22     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     12            1        4     215  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1             0        4      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1             1        1      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         2             0        8      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         2             1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         3             0        9      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         3             1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         4             0        5      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         4             1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         5             0        1      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         5             1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         6             0        5      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         6             1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         7             0        5      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         7             1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         8             0        6      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         8             1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         9             0        6      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         9             1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         10            0        3      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         10            1        1      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         11            0        5      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         11            1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         12            0        3      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         12            1        0      62  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1             0        2      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1             1        0      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          2             0        2      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          2             1        1      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          3             0        4      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          3             1        1      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          4             0        5      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          4             1        1      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          5             0        2      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          5             1        0      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          6             0        2      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          6             1        1      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          7             0        3      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          7             1        0      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          8             0        7      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          8             1        0      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          9             0        3      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          9             1        1      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          10            0        6      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          10            1        0      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          11            0        3      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          11            1        0      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          12            0        1      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          12            1        0      45  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1             0        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1             1        1      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          2             0        3      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          2             1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          3             0        1      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          3             1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          4             0        2      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          4             1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          5             0        2      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          5             1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          6             0        2      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          6             1        1      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          7             0        1      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          7             1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          8             0        1      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          8             1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          9             0        3      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          9             1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          10            0        3      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          10            1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          11            0        4      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          11            1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          12            0        2      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          12            1        0      26  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1             0       24     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1             1        0     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           2             0       20     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           2             1        0     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           3             0       21     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           3             1        0     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           4             0       13     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           4             1        0     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           5             0       17     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           5             1        1     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           6             0       15     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           6             1        0     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           7             0       19     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           7             1        1     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           8             0       13     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           8             1        1     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           9             0       20     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           9             1        0     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           10            0       20     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           10            1        0     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           11            0       27     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           11            1        2     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           12            0       14     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           12            1        0     228  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             0        6     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             1        1     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             0       11     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             1        2     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             0        8     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             1        2     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4             0        5     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4             1        2     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5             0        5     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5             1        0     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6             0        6     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6             1        1     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7             0       13     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7             1        1     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8             0        4     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8             1        0     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9             0       10     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9             1        0     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10            0       10     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10            1        0     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11            0       15     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11            1        0     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12            0       15     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12            1        3     120  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             0        8     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             0       13     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             1        1     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             0       15     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             0        7     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             0       10     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             0        8     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             0       15     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             0        7     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             0        1     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            0        6     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            0       14     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            0       10     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            1        0     115  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             0        8      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             1        1      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             0        0      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             1        1      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             0        6      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             1        1      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4             0        9      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4             1        0      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5             0        9      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5             1        0      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6             0        9      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6             1        1      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7             0        7      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7             1        0      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8             0        4      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8             1        0      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9             0        6      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9             1        2      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10            0        7      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10            1        1      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11            0        8      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11            1        3      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12            0        2      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12            1        1      86  wasted           
Birth       ki1000108-IRC              INDIA                          1             0       25     343  wasted           
Birth       ki1000108-IRC              INDIA                          1             1        5     343  wasted           
Birth       ki1000108-IRC              INDIA                          2             0       20     343  wasted           
Birth       ki1000108-IRC              INDIA                          2             1        2     343  wasted           
Birth       ki1000108-IRC              INDIA                          3             0       20     343  wasted           
Birth       ki1000108-IRC              INDIA                          3             1        6     343  wasted           
Birth       ki1000108-IRC              INDIA                          4             0       12     343  wasted           
Birth       ki1000108-IRC              INDIA                          4             1        7     343  wasted           
Birth       ki1000108-IRC              INDIA                          5             0        8     343  wasted           
Birth       ki1000108-IRC              INDIA                          5             1        7     343  wasted           
Birth       ki1000108-IRC              INDIA                          6             0       19     343  wasted           
Birth       ki1000108-IRC              INDIA                          6             1        6     343  wasted           
Birth       ki1000108-IRC              INDIA                          7             0       20     343  wasted           
Birth       ki1000108-IRC              INDIA                          7             1       11     343  wasted           
Birth       ki1000108-IRC              INDIA                          8             0       27     343  wasted           
Birth       ki1000108-IRC              INDIA                          8             1       10     343  wasted           
Birth       ki1000108-IRC              INDIA                          9             0       17     343  wasted           
Birth       ki1000108-IRC              INDIA                          9             1        7     343  wasted           
Birth       ki1000108-IRC              INDIA                          10            0       22     343  wasted           
Birth       ki1000108-IRC              INDIA                          10            1       10     343  wasted           
Birth       ki1000108-IRC              INDIA                          11            0       30     343  wasted           
Birth       ki1000108-IRC              INDIA                          11            1        9     343  wasted           
Birth       ki1000108-IRC              INDIA                          12            0       31     343  wasted           
Birth       ki1000108-IRC              INDIA                          12            1       12     343  wasted           
Birth       ki1000109-EE               PAKISTAN                       1             0       30     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       1             1        4     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       2             0       38     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       2             1        1     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       3             0       18     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       3             1        1     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       4             0        7     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       4             1        1     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       5             0        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       5             1        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       6             0        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       6             1        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       7             0        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       7             1        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       8             0        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       8             1        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       9             0        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       9             1        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       10            0        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       10            1        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       11            0       29     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       11            1        9     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       12            0       33     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       12            1        6     177  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       1             0        0      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       1             1        0      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       2             0        2      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       2             1        0      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       3             0        1      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       3             1        0      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       4             0        0      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       4             1        1      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       5             0        6      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       5             1        0      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       6             0        6      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       6             1        1      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       7             0        6      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       7             1        1      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       8             0        7      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       8             1        1      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       9             0        4      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       9             1        0      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       10            0        1      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       10            1        0      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       11            0        1      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       11            1        0      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       12            0        0      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       12            1        0      38  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             0       60    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             1        5    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             0       56    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             1        6    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          3             0       63    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          3             1        4    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          4             0       55    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          4             1        5    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          5             0       55    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          5             1       10    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          6             0       75    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          6             1       17    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          7             0       82    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          7             1       12    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          8             0      110    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          8             1       13    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          9             0      116    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          9             1       19    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          10            0      104    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          10            1       19    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          11            0      107    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          11            1        6    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          12            0      102    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          12            1        2    1103  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             0       39     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             1       15     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     2             0       39     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     2             1       16     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     3             0       41     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     3             1       17     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     4             0       34     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     4             1       14     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     5             0       26     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     5             1       19     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     6             0       24     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     6             1       16     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     7             0       28     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     7             1       17     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     8             0       29     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     8             1       12     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     9             0       20     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     9             1       11     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     10            0       45     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     10            1       13     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     11            0       37     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     11            1       12     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     12            0       45     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     12            1        6     575  wasted           
Birth       ki1101329-Keneba           GAMBIA                         1             0       93    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         1             1       40    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         2             0      113    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         2             1       40    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         3             0      104    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         3             1       36    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         4             0      124    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         4             1       35    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         5             0       79    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         5             1       24    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         6             0       80    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         6             1       22    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         7             0       74    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         7             1       11    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         8             0       57    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         8             1       17    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         9             0       84    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         9             1       32    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         10            0       89    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         10            1       29    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         11            0      121    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         11            1       47    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         12            0       84    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         12            1       31    1466  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          1             0        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          1             1        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          2             0        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          2             1        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          3             0        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          3             1        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          4             0        1     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          4             1        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          5             0        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          5             1        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          6             0      122     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          6             1       29     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          7             0      192     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          7             1       48     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          8             0      194     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          8             1       55     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          9             0        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          9             1        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          10            0        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          10            1        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          11            0        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          11            1        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          12            0        0     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          12            1        0     641  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     1             0        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     1             1        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     2             0        4      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     2             1        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     3             0        1      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     3             1        1      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     4             0        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     4             1        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     5             0        2      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     5             1        1      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     6             0        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     6             1        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     7             0        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     7             1        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     8             0        4      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     8             1        1      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     9             0        2      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     9             1        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     10            0        1      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     10            1        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     11            0        1      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     11            1        1      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     12            0        0      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     12            1        0      19  wasted           
Birth       ki1114097-CONTENT          PERU                           1             0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           1             1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           2             0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           2             1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           3             0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           3             1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           4             0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           4             1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           5             0        2       2  wasted           
Birth       ki1114097-CONTENT          PERU                           5             1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           6             0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           6             1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           7             0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           7             1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           8             0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           8             1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           9             0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           9             1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           10            0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           10            1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           11            0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           11            1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           12            0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           12            1        0       2  wasted           
Birth       ki1119695-PROBIT           BELARUS                        1             0      669   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        1             1      186   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        2             0      642   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        2             1      144   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        3             0      769   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        3             1      192   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        4             0      753   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        4             1      202   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        5             0      720   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        5             1      229   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        6             0      800   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        6             1      207   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        7             0      975   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        7             1      302   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        8             0     1039   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        8             1      280   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        9             0     1053   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        9             1      260   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        10            0     1176   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        10            1      324   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        11            0     1134   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        11            1      258   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        12            0     1213   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        12            1      303   13830  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1             0     1057   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1             1      181   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2             0      824   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2             1      124   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3             0      907   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3             1      153   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4             0      821   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4             1      120   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5             0      774   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5             1      140   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6             0      851   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6             1      196   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7             0      885   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7             1      213   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8             0      957   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8             1      209   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9             0     1086   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9             1      182   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10            0      822   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10            1      162   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11            0      881   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11            1      189   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12            0      991   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12            1      192   12917  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             0     1483   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1      145   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2             0     1271   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2             1      140   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3             0     1535   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3             1      180   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4             0     1121   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4             1      133   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5             0      792   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5             1      103   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6             0      816   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6             1      102   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7             0      958   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7             1       94   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8             0     1225   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8             1      157   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9             0     1605   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9             1      258   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10            0     1678   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10            1      235   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11            0     1686   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11            1      219   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12            0     1871   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12            1      207   18014  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             0        0    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             1        0    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2             0      261    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2             1       16    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             0      281    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             1       35    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4             0      357    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4             1       38    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5             0      343    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5             1       34    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6             0      264    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6             1       31    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7             0      284    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7             1       31    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8             0      201    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8             1       25    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9             0      112    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9             1       22    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10            0       54    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10            1        7    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11            0        0    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11            1        0    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12            0        0    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12            1        0    2396  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1             0       19     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1             1        0     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             0       19     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             1        1     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             0       23     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             1        0     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     4             0       23     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     4             1        1     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     5             0       16     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     5             1        1     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     6             0       11     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     6             1        1     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     7             0       15     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     7             1        2     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     8             0       25     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     8             1        0     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     9             0       21     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     9             1        0     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     10            0       20     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     10            1        2     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     11            0       15     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     11            1        0     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     12            0       26     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     12            1        0     241  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1             0       14     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1             1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         2             0       24     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         2             1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         3             0       15     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         3             1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         4             0       12     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         4             1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         5             0       17     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         5             1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         6             0       14     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         6             1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         7             0       16     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         7             1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         8             0       15     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         8             1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         9             0       21     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         9             1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         10            0       26     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         10            1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         11            0       17     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         11            1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         12            0       17     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         12            1        1     209  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1             0       15     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1             1        0     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          2             0       21     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          2             1        2     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          3             0       18     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          3             1        3     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          4             0       17     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          4             1        1     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          5             0        8     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          5             1        0     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          6             0       14     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          6             1        4     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          7             0       20     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          7             1        1     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          8             0       21     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          8             1        0     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          9             0       21     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          9             1        0     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          10            0       22     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          10            1        2     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          11            0       22     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          11            1        2     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          12            0       18     236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          12            1        4     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1             0       19     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1             1        1     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          2             0       20     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          2             1        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          3             0       20     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          3             1        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          4             0       20     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          4             1        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          5             0       18     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          5             1        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          6             0       19     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          6             1        1     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          7             0       19     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          7             1        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          8             0       18     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          8             1        1     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          9             0       19     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          9             1        1     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          10            0       20     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          10            1        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          11            0       20     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          11            1        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          12            0       20     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          12            1        0     236  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1             0       33     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1             1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           2             0       26     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           2             1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           3             0       22     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           3             1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           4             0       18     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           4             1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           5             0       24     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           5             1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           6             0       20     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           6             1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           7             0       22     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           7             1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           8             0       16     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           8             1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           9             0       22     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           9             1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           10            0       20     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           10            1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           11            0       34     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           11            1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           12            0       16     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           12            1        0     273  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             0       31     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             1        1     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             0       33     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             1        0     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             0       17     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             1        0     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4             0       12     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4             1        0     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5             0       11     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5             1        0     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6             0       18     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6             1        0     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7             0       25     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7             1        0     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8             0        7     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8             1        0     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9             0       17     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9             1        0     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10            0       20     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10            1        2     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11            0       25     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11            1        4     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12            0       31     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12            1        0     254  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             0       21     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             0       28     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             0       23     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             0       10     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             0       12     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             0       16     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             0       28     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             0       12     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             0       18     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            0       19     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            0       27     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            1        1     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            0       32     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            1        0     247  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             0       24     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             1        4     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2             0       18     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2             1        6     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             0       21     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             1        5     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4             0       26     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4             1        3     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5             0       38     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5             1        3     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6             0       33     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6             1        3     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7             0       31     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7             1        2     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8             0       39     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8             1        2     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9             0       19     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9             1        3     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10            0       17     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10            1        2     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11            0       34     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11            1        7     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12            0       22     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12            1        6     368  wasted           
6 months    ki1000108-IRC              INDIA                          1             0       29     408  wasted           
6 months    ki1000108-IRC              INDIA                          1             1        6     408  wasted           
6 months    ki1000108-IRC              INDIA                          2             0       27     408  wasted           
6 months    ki1000108-IRC              INDIA                          2             1        3     408  wasted           
6 months    ki1000108-IRC              INDIA                          3             0       24     408  wasted           
6 months    ki1000108-IRC              INDIA                          3             1        5     408  wasted           
6 months    ki1000108-IRC              INDIA                          4             0       23     408  wasted           
6 months    ki1000108-IRC              INDIA                          4             1        1     408  wasted           
6 months    ki1000108-IRC              INDIA                          5             0       20     408  wasted           
6 months    ki1000108-IRC              INDIA                          5             1        1     408  wasted           
6 months    ki1000108-IRC              INDIA                          6             0       29     408  wasted           
6 months    ki1000108-IRC              INDIA                          6             1        6     408  wasted           
6 months    ki1000108-IRC              INDIA                          7             0       30     408  wasted           
6 months    ki1000108-IRC              INDIA                          7             1        6     408  wasted           
6 months    ki1000108-IRC              INDIA                          8             0       34     408  wasted           
6 months    ki1000108-IRC              INDIA                          8             1        7     408  wasted           
6 months    ki1000108-IRC              INDIA                          9             0       26     408  wasted           
6 months    ki1000108-IRC              INDIA                          9             1        2     408  wasted           
6 months    ki1000108-IRC              INDIA                          10            0       34     408  wasted           
6 months    ki1000108-IRC              INDIA                          10            1        5     408  wasted           
6 months    ki1000108-IRC              INDIA                          11            0       37     408  wasted           
6 months    ki1000108-IRC              INDIA                          11            1        4     408  wasted           
6 months    ki1000108-IRC              INDIA                          12            0       41     408  wasted           
6 months    ki1000108-IRC              INDIA                          12            1        8     408  wasted           
6 months    ki1000109-EE               PAKISTAN                       1             0       83     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       1             1        8     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       2             0       61     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       2             1       11     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       3             0       36     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       3             1       11     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       4             0       21     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       4             1        1     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       5             0        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       5             1        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       6             0        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       6             1        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       7             0        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       7             1        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       8             0        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       8             1        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       9             0        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       9             1        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       10            0        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       10            1        0     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       11            0       50     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       11            1       10     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       12            0       77     375  wasted           
6 months    ki1000109-EE               PAKISTAN                       12            1        6     375  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       1             0        2     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       1             1        0     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       2             0        7     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       2             1        1     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       3             0        9     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       3             1        1     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       4             0       19     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       4             1        1     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       5             0       26     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       5             1        4     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       6             0       33     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       6             1        6     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       7             0       40     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       7             1        3     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       8             0       23     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       8             1        3     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       9             0       31     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       9             1        6     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       10            0       15     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       10            1        0     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       11            0        5     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       11            1        1     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       12            0        3     239  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       12            1        0     239  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             0       64    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             1       21    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          2             0       69    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          2             1       12    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          3             0       68    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          3             1       12    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          4             0       68    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          4             1        7    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          5             0       64    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          5             1       12    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          6             0       94    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          6             1        8    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          7             0      110    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          7             1        5    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          8             0      144    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          8             1        8    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          9             0      156    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          9             1        9    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          10            0      131    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          10            1       17    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          11            0       97    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          11            1       29    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          12            0      103    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          12            1       26    1334  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             0       49     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             1       12     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             0       32     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             1        5     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3             0       27     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3             1        9     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4             0       19     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4             1        7     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5             0       23     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5             1        6     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6             0       26     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6             1        5     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7             0       13     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7             1        3     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8             0        0     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8             1        0     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9             0        9     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9             1        3     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10            0       22     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10            1        4     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11            0       41     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11            1        3     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12            0       50     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12            1       12     380  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             0       44     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             1        6     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     2             0       48     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     2             1        2     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     3             0       45     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     3             1        5     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     4             0       39     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     4             1        5     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     5             0       36     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     5             1        4     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     6             0       38     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     6             1        1     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     7             0       44     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     7             1        1     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     8             0       38     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     8             1        0     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     9             0       28     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     9             1        2     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     10            0       48     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     10            1        4     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     11            0       47     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     11            1        2     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     12            0       47     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     12            1        3     537  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             0      184    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1       15    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             0      133    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             1        4    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             0      139    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             1       12    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             0      136    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             1        2    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             0      154    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             1        7    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             0      139    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             1        3    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             0      141    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1        4    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             0      167    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             1        7    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             0      194    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             1        4    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            0      192    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            1        3    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            0      178    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            1        9    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            0      184    2028  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            1       17    2028  wasted           
6 months    ki1101329-Keneba           GAMBIA                         1             0      177    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         1             1        7    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         2             0      195    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         2             1       15    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         3             0      178    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         3             1        7    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         4             0      209    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         4             1       15    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         5             0      168    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         5             1       17    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         6             0      135    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         6             1       15    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         7             0      121    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         7             1        8    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         8             0      110    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         8             1        8    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         9             0      145    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         9             1        6    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         10            0      160    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         10            1        9    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         11            0      216    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         11            1        9    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         12            0      154    2089  wasted           
6 months    ki1101329-Keneba           GAMBIA                         12            1        5    2089  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             0       18     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             1        0     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2             0       19     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2             1        0     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3             0       21     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3             1        0     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4             0       25     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4             1        2     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5             0       31     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5             1        0     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6             0       39     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6             1        0     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7             0       24     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7             1        0     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8             0       19     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8             1        0     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9             0       33     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9             1        1     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10            0       29     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10            1        0     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11            0       27     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11            1        1     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12            0       10     299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12            1        0     299  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          1             0        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          1             1        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          2             0        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          2             1        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          3             0        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          3             1        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          4             0        1     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          4             1        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          5             0        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          5             1        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          6             0      108     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          6             1        7     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          7             0      194     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          7             1       17     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          8             0      210     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          8             1       27     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          9             0        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          9             1        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          10            0        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          10            1        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          11            0        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          11            1        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          12            0        0     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          12            1        0     564  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     1             0       24     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     1             1        4     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     2             0       26     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     2             1        4     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     3             0       17     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     3             1        1     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     4             0       14     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     4             1        3     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     5             0       18     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     5             1        2     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     6             0       20     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     6             1        3     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     7             0       11     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     7             1        1     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     8             0       13     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     8             1        0     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     9             0       16     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     9             1        0     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     10            0       20     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     10            1        0     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     11            0        2     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     11            1        0     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     12            0       41     243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     12            1        3     243  wasted           
6 months    ki1114097-CONTENT          PERU                           1             0        9     215  wasted           
6 months    ki1114097-CONTENT          PERU                           1             1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           2             0       13     215  wasted           
6 months    ki1114097-CONTENT          PERU                           2             1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           3             0       27     215  wasted           
6 months    ki1114097-CONTENT          PERU                           3             1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           4             0       18     215  wasted           
6 months    ki1114097-CONTENT          PERU                           4             1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           5             0       25     215  wasted           
6 months    ki1114097-CONTENT          PERU                           5             1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           6             0       14     215  wasted           
6 months    ki1114097-CONTENT          PERU                           6             1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           7             0       16     215  wasted           
6 months    ki1114097-CONTENT          PERU                           7             1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           8             0       26     215  wasted           
6 months    ki1114097-CONTENT          PERU                           8             1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           9             0       19     215  wasted           
6 months    ki1114097-CONTENT          PERU                           9             1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           10            0       23     215  wasted           
6 months    ki1114097-CONTENT          PERU                           10            1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           11            0       18     215  wasted           
6 months    ki1114097-CONTENT          PERU                           11            1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           12            0        7     215  wasted           
6 months    ki1114097-CONTENT          PERU                           12            1        0     215  wasted           
6 months    ki1119695-PROBIT           BELARUS                        1             0     1094   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        1             1        7   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        2             0      942   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        2             1        9   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        3             0     1108   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        3             1        6   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        4             0     1061   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        4             1        9   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        5             0     1090   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        5             1        6   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        6             0     1113   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        6             1        7   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        7             0     1354   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        7             1       12   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        8             0     1483   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        8             1       15   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        9             0     1471   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        9             1       10   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        10            0     1652   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        10            1       17   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        11            0     1569   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        11            1       20   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        12            0     1691   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        12            1       12   15758  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             0      792    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             1       24    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2             0      577    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2             1       21    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3             0      691    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3             1       29    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4             0      654    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4             1       15    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5             0      603    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5             1       18    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6             0      649    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6             1       21    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7             0      646    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7             1       17    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8             0      728    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8             1       31    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9             0      767    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9             1       22    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10            0      597    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10            1       20    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11            0      728    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11            1       17    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12            0      808    8505  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12            1       30    8505  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         1             0       55     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         1             1        0     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         2             0      111     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         2             1        3     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         3             0       97     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         3             1        1     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         4             0      109     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         4             1        1     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         5             0      109     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         5             1        2     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         6             0       88     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         6             1        3     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         7             0       71     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         7             1        1     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         8             0       41     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         8             1        0     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         9             0       29     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         9             1        0     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         10            0       35     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         10            1        0     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         11            0       48     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         11            1        1     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         12            0       32     839  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         12            1        2     839  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             0     1237   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1      129   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2             0     1084   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2             1       95   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3             0     1310   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3             1      110   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4             0     1104   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4             1       87   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5             0     1060   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5             1       87   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6             0     1068   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6             1       87   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7             0     1127   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7             1      118   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8             0     1341   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8             1      122   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9             0     1434   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9             1      117   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10            0     1527   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10            1      166   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11            0     1515   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11            1      154   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12            0     1556   16784  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12            1      149   16784  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1             0       49    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1             1        4    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2             0      162    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2             1        3    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3             0      399    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3             1       31    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4             0      791    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4             1       57    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5             0      558    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5             1       28    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6             0      408    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6             1       26    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7             0      779    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7             1       57    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8             0      486    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8             1       24    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9             0      412    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9             1       19    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10            0      292    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10            1       14    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11            0      147    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11            1       10    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12            0       75    4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12            1        2    4833  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1             0       16     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1             1        1     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             0       16     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             1        1     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             0       18     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             1        1     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     4             0       18     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     4             1        3     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     5             0       12     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     5             1        3     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     6             0        9     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     6             1        0     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     7             0       15     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     7             1        2     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     8             0       23     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     8             1        1     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     9             0       14     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     9             1        4     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     10            0       18     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     10            1        2     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     11            0        7     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     11            1        2     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     12            0       25     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     12            1        1     212  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1             0       14     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1             1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         2             0       19     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         2             1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         3             0       11     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         3             1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         4             0       11     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         4             1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         5             0       15     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         5             1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         6             0        9     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         6             1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         7             0       10     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         7             1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         8             0       11     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         8             1        1     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         9             0       18     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         9             1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         10            0       20     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         10            1        1     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         11            0       12     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         11            1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         12            0       16     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         12            1        1     169  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1             0       14     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1             1        1     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          2             0       21     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          2             1        2     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          3             0       18     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          3             1        1     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          4             0       15     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          4             1        2     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          5             0        6     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          5             1        1     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          6             0       13     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          6             1        4     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          7             0       20     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          7             1        1     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          8             0       16     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          8             1        4     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          9             0       18     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          9             1        2     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          10            0       20     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          10            1        3     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          11            0       21     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          11            1        3     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          12            0       18     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          12            1        3     227  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1             0       19     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1             1        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          2             0       18     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          2             1        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          3             0       19     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          3             1        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          4             0       20     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          4             1        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          5             0       17     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          5             1        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          6             0       19     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          6             1        1     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          7             0       19     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          7             1        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          8             0       18     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          8             1        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          9             0       18     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          9             1        1     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          10            0       19     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          10            1        1     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          11            0       18     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          11            1        1     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          12            0       19     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          12            1        1     228  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1             0       26     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1             1        0     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           2             0       22     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           2             1        1     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           3             0       15     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           3             1        0     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           4             0       10     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           4             1        0     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           5             0       18     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           5             1        0     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           6             0       13     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           6             1        1     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           7             0       14     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           7             1        0     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           8             0       11     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           8             1        1     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           9             0       21     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           9             1        0     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           10            0       15     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           10            1        0     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           11            0       20     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           11            1        1     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           12            0       12     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           12            1        0     201  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             0       28     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             1        1     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             0       30     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             0       16     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4             0       12     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4             1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5             0       10     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5             1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6             0       15     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6             1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7             0       25     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7             1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8             0        7     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8             1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9             0       17     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9             1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10            0       22     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10            1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11            0       27     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11            1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12            0       28     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12            1        0     238  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             0       16     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             1        2     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             0       18     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             1        1     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             0       22     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             0        8     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             0       14     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             0       14     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             0       28     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             0       11     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             1        1     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             0       15     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            0       17     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            0       21     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            0       26     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            1        0     214  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             0       27     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             1        1     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             0       24     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             1        0     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             0       24     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             1        2     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4             0       29     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4             1        0     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5             0       41     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5             1        2     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6             0       33     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6             1        4     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7             0       31     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7             1        2     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8             0       37     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8             1        4     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9             0       20     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9             1        2     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10            0       17     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10            1        2     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11            0       40     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11            1        1     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12            0       26     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12            1        3     372  wasted           
24 months   ki1000108-IRC              INDIA                          1             0       33     409  wasted           
24 months   ki1000108-IRC              INDIA                          1             1        2     409  wasted           
24 months   ki1000108-IRC              INDIA                          2             0       30     409  wasted           
24 months   ki1000108-IRC              INDIA                          2             1        0     409  wasted           
24 months   ki1000108-IRC              INDIA                          3             0       28     409  wasted           
24 months   ki1000108-IRC              INDIA                          3             1        1     409  wasted           
24 months   ki1000108-IRC              INDIA                          4             0       22     409  wasted           
24 months   ki1000108-IRC              INDIA                          4             1        2     409  wasted           
24 months   ki1000108-IRC              INDIA                          5             0       18     409  wasted           
24 months   ki1000108-IRC              INDIA                          5             1        3     409  wasted           
24 months   ki1000108-IRC              INDIA                          6             0       32     409  wasted           
24 months   ki1000108-IRC              INDIA                          6             1        3     409  wasted           
24 months   ki1000108-IRC              INDIA                          7             0       34     409  wasted           
24 months   ki1000108-IRC              INDIA                          7             1        2     409  wasted           
24 months   ki1000108-IRC              INDIA                          8             0       36     409  wasted           
24 months   ki1000108-IRC              INDIA                          8             1        5     409  wasted           
24 months   ki1000108-IRC              INDIA                          9             0       25     409  wasted           
24 months   ki1000108-IRC              INDIA                          9             1        5     409  wasted           
24 months   ki1000108-IRC              INDIA                          10            0       34     409  wasted           
24 months   ki1000108-IRC              INDIA                          10            1        4     409  wasted           
24 months   ki1000108-IRC              INDIA                          11            0       38     409  wasted           
24 months   ki1000108-IRC              INDIA                          11            1        3     409  wasted           
24 months   ki1000108-IRC              INDIA                          12            0       48     409  wasted           
24 months   ki1000108-IRC              INDIA                          12            1        1     409  wasted           
24 months   ki1000109-EE               PAKISTAN                       1             0       23     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       1             1        6     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       2             0        2     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       2             1        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       3             0        2     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       3             1        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       4             0        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       4             1        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       5             0        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       5             1        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       6             0        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       6             1        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       7             0        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       7             1        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       8             0        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       8             1        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       9             0        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       9             1        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       10            0        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       10            1        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       11            0       47     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       11            1       10     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       12            0       64     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       12            1       14     168  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             0       39     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             1        3     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     2             0       33     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     2             1        3     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     3             0       33     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     3             1        8     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     4             0       26     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     4             1        8     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     5             0       32     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     5             1        2     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     6             0       26     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     6             1        4     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     7             0       32     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     7             1        5     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     8             0       25     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     8             1        5     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     9             0       16     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     9             1        3     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     10            0       34     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     10            1        6     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     11            0       35     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     11            1        5     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     12            0       44     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     12            1        1     428  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             0        3       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             0        1       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             0        2       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            1        0       6  wasted           
24 months   ki1101329-Keneba           GAMBIA                         1             0      130    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         1             1       18    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         2             0      149    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         2             1       11    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         3             0      152    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         3             1        7    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         4             0      162    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         4             1       13    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         5             0      167    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         5             1       15    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         6             0      121    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         6             1       11    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         7             0       93    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         7             1        8    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         8             0       73    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         8             1       21    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         9             0      117    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         9             1       18    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         10            0      129    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         10            1       21    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         11            0      151    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         11            1       27    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         12            0       91    1726  wasted           
24 months   ki1101329-Keneba           GAMBIA                         12            1       21    1726  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          1             0        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          1             1        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          2             0        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          2             1        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          3             0        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          3             1        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          4             0        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          4             1        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          5             0        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          5             1        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          6             0       55     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          6             1       17     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          7             0      161     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          7             1       39     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          8             0      180     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          8             1       35     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          9             0        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          9             1        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          10            0        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          10            1        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          11            0        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          11            1        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          12            0        0     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          12            1        0     487  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     1             0       23     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     1             1        4     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     2             0       31     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     2             1        0     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     3             0       19     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     3             1        0     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     4             0       17     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     4             1        1     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     5             0       17     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     5             1        2     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     6             0       21     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     6             1        1     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     7             0       12     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     7             1        0     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     8             0       12     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     8             1        1     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     9             0       15     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     9             1        3     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     10            0       15     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     10            1        4     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     11            0        2     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     11            1        0     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     12            0       34     243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     12            1        9     243  wasted           
24 months   ki1114097-CONTENT          PERU                           1             0        8     164  wasted           
24 months   ki1114097-CONTENT          PERU                           1             1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           2             0       10     164  wasted           
24 months   ki1114097-CONTENT          PERU                           2             1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           3             0       20     164  wasted           
24 months   ki1114097-CONTENT          PERU                           3             1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           4             0       13     164  wasted           
24 months   ki1114097-CONTENT          PERU                           4             1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           5             0       22     164  wasted           
24 months   ki1114097-CONTENT          PERU                           5             1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           6             0       11     164  wasted           
24 months   ki1114097-CONTENT          PERU                           6             1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           7             0       13     164  wasted           
24 months   ki1114097-CONTENT          PERU                           7             1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           8             0       23     164  wasted           
24 months   ki1114097-CONTENT          PERU                           8             1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           9             0       11     164  wasted           
24 months   ki1114097-CONTENT          PERU                           9             1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           10            0       12     164  wasted           
24 months   ki1114097-CONTENT          PERU                           10            1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           11            0       17     164  wasted           
24 months   ki1114097-CONTENT          PERU                           11            1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           12            0        4     164  wasted           
24 months   ki1114097-CONTENT          PERU                           12            1        0     164  wasted           
24 months   ki1119695-PROBIT           BELARUS                        1             0      261    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        1             1        3    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        2             0      208    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        2             1        2    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        3             0      318    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        3             1        2    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        4             0      318    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        4             1        4    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        5             0      299    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        5             1        2    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        6             0      260    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        6             1        5    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        7             0      360    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        7             1        4    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        8             0      339    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        8             1        7    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        9             0      371    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        9             1        4    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        10            0      386    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        10            1        4    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        11            0      383    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        11            1        3    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        12            0      425    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        12            1        4    3972  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             0       44     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             1        7     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             0       50     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             1       10     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3             0       43     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3             1       13     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4             0       40     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4             1        6     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5             0       35     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5             1       14     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6             0       37     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6             1        7     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7             0       25     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7             1        7     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8             0       23     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8             1        7     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9             0        2     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9             1        0     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10            0        4     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10            1        0     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11            0       19     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11            1        1     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12            0       32     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12            1        7     433  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         1             0       39     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         1             1        1     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         2             0       85     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         2             1        1     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         3             0       64     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         3             1        3     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         4             0       74     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         4             1        0     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         5             0       61     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         5             1        1     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         6             0       61     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         6             1        3     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         7             0       39     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         7             1        0     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         8             0       27     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         8             1        0     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         9             0       19     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         9             1        1     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         10            0       25     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         10            1        0     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         11            0       35     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         11            1        0     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         12            0       24     563  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         12            1        0     563  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             0      605    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             1      100    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             0      508    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             1      100    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             0      600    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             1      126    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             0      420    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             1      118    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             0      306    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             1       88    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             0      404    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             1      157    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             0      462    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             1      187    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             0      473    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             1      174    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             0      538    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             1      188    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            0      665    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            1      220    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11            0      731    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11            1      206    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12            0     1013    8603  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12            1      214    8603  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1             0       38    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1             1       10    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2             0      281    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2             1       40    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3             0      340    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3             1       60    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4             0      648    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4             1      148    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5             0      426    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5             1      133    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6             0      322    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6             1      101    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7             0      609    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7             1      171    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8             0      382    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8             1       90    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9             0      374    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9             1       70    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10            0      230    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10            1       46    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11            0      112    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11            1       33    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12            0       53    4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12            1       18    4735  wasted           


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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/75d64055-27b2-4fe1-8401-d46ab5fba8a6/2581a88f-64ef-43b8-8c9e-6dcc2f3f4c04/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/75d64055-27b2-4fe1-8401-d46ab5fba8a6/2581a88f-64ef-43b8-8c9e-6dcc2f3f4c04/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/75d64055-27b2-4fe1-8401-d46ab5fba8a6/2581a88f-64ef-43b8-8c9e-6dcc2f3f4c04/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/75d64055-27b2-4fe1-8401-d46ab5fba8a6/2581a88f-64ef-43b8-8c9e-6dcc2f3f4c04/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1017093-NIH-Birth       BANGLADESH   1                    NA                0.2777778    0.1582102   0.3973453
Birth       ki1017093-NIH-Birth       BANGLADESH   2                    NA                0.2909091    0.1707728   0.4110454
Birth       ki1017093-NIH-Birth       BANGLADESH   3                    NA                0.2931034    0.1758568   0.4103501
Birth       ki1017093-NIH-Birth       BANGLADESH   4                    NA                0.2916667    0.1629699   0.4203634
Birth       ki1017093-NIH-Birth       BANGLADESH   5                    NA                0.4222222    0.2777878   0.5666567
Birth       ki1017093-NIH-Birth       BANGLADESH   6                    NA                0.4000000    0.2480497   0.5519503
Birth       ki1017093-NIH-Birth       BANGLADESH   7                    NA                0.3777778    0.2359991   0.5195564
Birth       ki1017093-NIH-Birth       BANGLADESH   8                    NA                0.2926829    0.1532903   0.4320756
Birth       ki1017093-NIH-Birth       BANGLADESH   9                    NA                0.3548387    0.1862631   0.5234144
Birth       ki1017093-NIH-Birth       BANGLADESH   10                   NA                0.2241379    0.1167237   0.3315522
Birth       ki1017093-NIH-Birth       BANGLADESH   11                   NA                0.2448980    0.1243879   0.3654081
Birth       ki1017093-NIH-Birth       BANGLADESH   12                   NA                0.1176471    0.0291451   0.2061490
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.3007519    0.2227886   0.3787152
Birth       ki1101329-Keneba          GAMBIA       2                    NA                0.2614379    0.1917868   0.3310891
Birth       ki1101329-Keneba          GAMBIA       3                    NA                0.2571429    0.1847206   0.3295651
Birth       ki1101329-Keneba          GAMBIA       4                    NA                0.2201258    0.1557021   0.2845495
Birth       ki1101329-Keneba          GAMBIA       5                    NA                0.2330097    0.1513403   0.3146792
Birth       ki1101329-Keneba          GAMBIA       6                    NA                0.2156863    0.1358404   0.2955321
Birth       ki1101329-Keneba          GAMBIA       7                    NA                0.1294118    0.0580312   0.2007923
Birth       ki1101329-Keneba          GAMBIA       8                    NA                0.2297297    0.1338536   0.3256059
Birth       ki1101329-Keneba          GAMBIA       9                    NA                0.2758621    0.1944996   0.3572245
Birth       ki1101329-Keneba          GAMBIA       10                   NA                0.2457627    0.1680544   0.3234710
Birth       ki1101329-Keneba          GAMBIA       11                   NA                0.2797619    0.2118613   0.3476626
Birth       ki1101329-Keneba          GAMBIA       12                   NA                0.2695652    0.1884374   0.3506931
Birth       ki1119695-PROBIT          BELARUS      1                    NA                0.2175439    0.1264035   0.3086842
Birth       ki1119695-PROBIT          BELARUS      2                    NA                0.1832061    0.1067599   0.2596523
Birth       ki1119695-PROBIT          BELARUS      3                    NA                0.1997919    0.1221296   0.2774541
Birth       ki1119695-PROBIT          BELARUS      4                    NA                0.2115183    0.1337415   0.2892952
Birth       ki1119695-PROBIT          BELARUS      5                    NA                0.2413066    0.1511085   0.3315047
Birth       ki1119695-PROBIT          BELARUS      6                    NA                0.2055611    0.1388361   0.2722861
Birth       ki1119695-PROBIT          BELARUS      7                    NA                0.2364918    0.1572497   0.3157338
Birth       ki1119695-PROBIT          BELARUS      8                    NA                0.2122820    0.1383915   0.2861725
Birth       ki1119695-PROBIT          BELARUS      9                    NA                0.1980198    0.1208010   0.2752386
Birth       ki1119695-PROBIT          BELARUS      10                   NA                0.2160000    0.1531621   0.2788379
Birth       ki1119695-PROBIT          BELARUS      11                   NA                0.1853448    0.1328156   0.2378740
Birth       ki1119695-PROBIT          BELARUS      12                   NA                0.1998681    0.1266457   0.2730904
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1462036    0.1265219   0.1658852
Birth       ki1126311-ZVITAMBO        ZIMBABWE     2                    NA                0.1308017    0.1093369   0.1522665
Birth       ki1126311-ZVITAMBO        ZIMBABWE     3                    NA                0.1443396    0.1231826   0.1654967
Birth       ki1126311-ZVITAMBO        ZIMBABWE     4                    NA                0.1275239    0.1062110   0.1488368
Birth       ki1126311-ZVITAMBO        ZIMBABWE     5                    NA                0.1531729    0.1298232   0.1765225
Birth       ki1126311-ZVITAMBO        ZIMBABWE     6                    NA                0.1872015    0.1635729   0.2108301
Birth       ki1126311-ZVITAMBO        ZIMBABWE     7                    NA                0.1939891    0.1705995   0.2173787
Birth       ki1126311-ZVITAMBO        ZIMBABWE     8                    NA                0.1792453    0.1572289   0.2012617
Birth       ki1126311-ZVITAMBO        ZIMBABWE     9                    NA                0.1435331    0.1242340   0.1628322
Birth       ki1126311-ZVITAMBO        ZIMBABWE     10                   NA                0.1646341    0.1414620   0.1878063
Birth       ki1126311-ZVITAMBO        ZIMBABWE     11                   NA                0.1766355    0.1537844   0.1994867
Birth       ki1126311-ZVITAMBO        ZIMBABWE     12                   NA                0.1622992    0.1412869   0.1833116
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0890664    0.0743535   0.1037792
Birth       kiGH5241-JiVitA-3         BANGLADESH   2                    NA                0.0992204    0.0827360   0.1157049
Birth       kiGH5241-JiVitA-3         BANGLADESH   3                    NA                0.1049563    0.0897758   0.1201368
Birth       kiGH5241-JiVitA-3         BANGLADESH   4                    NA                0.1060606    0.0877629   0.1243583
Birth       kiGH5241-JiVitA-3         BANGLADESH   5                    NA                0.1150838    0.0930992   0.1370684
Birth       kiGH5241-JiVitA-3         BANGLADESH   6                    NA                0.1111111    0.0898745   0.1323477
Birth       kiGH5241-JiVitA-3         BANGLADESH   7                    NA                0.0893536    0.0714759   0.1072313
Birth       kiGH5241-JiVitA-3         BANGLADESH   8                    NA                0.1136035    0.0960423   0.1311646
Birth       kiGH5241-JiVitA-3         BANGLADESH   9                    NA                0.1384863    0.1216069   0.1553657
Birth       kiGH5241-JiVitA-3         BANGLADESH   10                   NA                0.1228437    0.1071620   0.1385254
Birth       kiGH5241-JiVitA-3         BANGLADESH   11                   NA                0.1149606    0.0993133   0.1306080
Birth       kiGH5241-JiVitA-3         BANGLADESH   12                   NA                0.0996150    0.0858213   0.1134087
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2470588    0.1647948   0.3293228
6 months    ki1000304b-SAS-CompFeed   INDIA        2                    NA                0.1481481    0.0678756   0.2284207
6 months    ki1000304b-SAS-CompFeed   INDIA        3                    NA                0.1500000    0.0656571   0.2343429
6 months    ki1000304b-SAS-CompFeed   INDIA        4                    NA                0.0933333    0.0360271   0.1506396
6 months    ki1000304b-SAS-CompFeed   INDIA        5                    NA                0.1578947    0.0658459   0.2499436
6 months    ki1000304b-SAS-CompFeed   INDIA        6                    NA                0.0784314    0.0380840   0.1187787
6 months    ki1000304b-SAS-CompFeed   INDIA        7                    NA                0.0434783    0.0027716   0.0841850
6 months    ki1000304b-SAS-CompFeed   INDIA        8                    NA                0.0526316    0.0281136   0.0771496
6 months    ki1000304b-SAS-CompFeed   INDIA        9                    NA                0.0545455    0.0257270   0.0833639
6 months    ki1000304b-SAS-CompFeed   INDIA        10                   NA                0.1148649    0.0616044   0.1681254
6 months    ki1000304b-SAS-CompFeed   INDIA        11                   NA                0.2301587    0.1805256   0.2797918
6 months    ki1000304b-SAS-CompFeed   INDIA        12                   NA                0.2015504    0.1137198   0.2893809
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0380435    0.0103957   0.0656913
6 months    ki1101329-Keneba          GAMBIA       2                    NA                0.0714286    0.0365879   0.1062692
6 months    ki1101329-Keneba          GAMBIA       3                    NA                0.0378378    0.0103365   0.0653392
6 months    ki1101329-Keneba          GAMBIA       4                    NA                0.0669643    0.0342228   0.0997058
6 months    ki1101329-Keneba          GAMBIA       5                    NA                0.0918919    0.0502555   0.1335283
6 months    ki1101329-Keneba          GAMBIA       6                    NA                0.1000000    0.0519794   0.1480206
6 months    ki1101329-Keneba          GAMBIA       7                    NA                0.0620155    0.0203856   0.1036454
6 months    ki1101329-Keneba          GAMBIA       8                    NA                0.0677966    0.0224264   0.1131668
6 months    ki1101329-Keneba          GAMBIA       9                    NA                0.0397351    0.0085716   0.0708986
6 months    ki1101329-Keneba          GAMBIA       10                   NA                0.0532544    0.0193932   0.0871157
6 months    ki1101329-Keneba          GAMBIA       11                   NA                0.0400000    0.0143890   0.0656110
6 months    ki1101329-Keneba          GAMBIA       12                   NA                0.0314465    0.0043133   0.0585798
6 months    ki1119695-PROBIT          BELARUS      1                    NA                0.0063579    0.0029218   0.0097939
6 months    ki1119695-PROBIT          BELARUS      2                    NA                0.0094637    0.0036012   0.0153262
6 months    ki1119695-PROBIT          BELARUS      3                    NA                0.0053860   -0.0004275   0.0111995
6 months    ki1119695-PROBIT          BELARUS      4                    NA                0.0084112    0.0014784   0.0153440
6 months    ki1119695-PROBIT          BELARUS      5                    NA                0.0054745   -0.0020630   0.0130119
6 months    ki1119695-PROBIT          BELARUS      6                    NA                0.0062500    0.0018433   0.0106567
6 months    ki1119695-PROBIT          BELARUS      7                    NA                0.0087848    0.0043748   0.0131947
6 months    ki1119695-PROBIT          BELARUS      8                    NA                0.0100134    0.0026430   0.0173837
6 months    ki1119695-PROBIT          BELARUS      9                    NA                0.0067522    0.0020808   0.0114236
6 months    ki1119695-PROBIT          BELARUS      10                   NA                0.0101857    0.0029849   0.0173866
6 months    ki1119695-PROBIT          BELARUS      11                   NA                0.0125865    0.0058366   0.0193364
6 months    ki1119695-PROBIT          BELARUS      12                   NA                0.0070464    0.0026230   0.0114697
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0294118    0.0178185   0.0410051
6 months    ki1126311-ZVITAMBO        ZIMBABWE     2                    NA                0.0351171    0.0203627   0.0498714
6 months    ki1126311-ZVITAMBO        ZIMBABWE     3                    NA                0.0402778    0.0259158   0.0546397
6 months    ki1126311-ZVITAMBO        ZIMBABWE     4                    NA                0.0224215    0.0112021   0.0336409
6 months    ki1126311-ZVITAMBO        ZIMBABWE     5                    NA                0.0289855    0.0157898   0.0421812
6 months    ki1126311-ZVITAMBO        ZIMBABWE     6                    NA                0.0313433    0.0181488   0.0445378
6 months    ki1126311-ZVITAMBO        ZIMBABWE     7                    NA                0.0256410    0.0136089   0.0376732
6 months    ki1126311-ZVITAMBO        ZIMBABWE     8                    NA                0.0408432    0.0267614   0.0549250
6 months    ki1126311-ZVITAMBO        ZIMBABWE     9                    NA                0.0278834    0.0163948   0.0393720
6 months    ki1126311-ZVITAMBO        ZIMBABWE     10                   NA                0.0324149    0.0184400   0.0463898
6 months    ki1126311-ZVITAMBO        ZIMBABWE     11                   NA                0.0228188    0.0120955   0.0335421
6 months    ki1126311-ZVITAMBO        ZIMBABWE     12                   NA                0.0357995    0.0232197   0.0483793
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0944363    0.0764012   0.1124714
6 months    kiGH5241-JiVitA-3         BANGLADESH   2                    NA                0.0805768    0.0637191   0.0974344
6 months    kiGH5241-JiVitA-3         BANGLADESH   3                    NA                0.0774648    0.0621828   0.0927468
6 months    kiGH5241-JiVitA-3         BANGLADESH   4                    NA                0.0730479    0.0578566   0.0882392
6 months    kiGH5241-JiVitA-3         BANGLADESH   5                    NA                0.0758500    0.0594620   0.0922381
6 months    kiGH5241-JiVitA-3         BANGLADESH   6                    NA                0.0753247    0.0582454   0.0924039
6 months    kiGH5241-JiVitA-3         BANGLADESH   7                    NA                0.0947791    0.0774997   0.1120585
6 months    kiGH5241-JiVitA-3         BANGLADESH   8                    NA                0.0833903    0.0669737   0.0998069
6 months    kiGH5241-JiVitA-3         BANGLADESH   9                    NA                0.0754352    0.0623476   0.0885228
6 months    kiGH5241-JiVitA-3         BANGLADESH   10                   NA                0.0980508    0.0832717   0.1128299
6 months    kiGH5241-JiVitA-3         BANGLADESH   11                   NA                0.0922708    0.0773023   0.1072393
6 months    kiGH5241-JiVitA-3         BANGLADESH   12                   NA                0.0873900    0.0734691   0.1013110
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1216216    0.0689485   0.1742948
24 months   ki1101329-Keneba          GAMBIA       2                    NA                0.0687500    0.0295322   0.1079678
24 months   ki1101329-Keneba          GAMBIA       3                    NA                0.0440252    0.0121282   0.0759221
24 months   ki1101329-Keneba          GAMBIA       4                    NA                0.0742857    0.0354218   0.1131496
24 months   ki1101329-Keneba          GAMBIA       5                    NA                0.0824176    0.0424534   0.1223817
24 months   ki1101329-Keneba          GAMBIA       6                    NA                0.0833333    0.0361703   0.1304964
24 months   ki1101329-Keneba          GAMBIA       7                    NA                0.0792079    0.0265240   0.1318919
24 months   ki1101329-Keneba          GAMBIA       8                    NA                0.2234043    0.1391769   0.3076316
24 months   ki1101329-Keneba          GAMBIA       9                    NA                0.1333333    0.0759742   0.1906925
24 months   ki1101329-Keneba          GAMBIA       10                   NA                0.1400000    0.0844554   0.1955446
24 months   ki1101329-Keneba          GAMBIA       11                   NA                0.1516854    0.0989728   0.2043980
24 months   ki1101329-Keneba          GAMBIA       12                   NA                0.1875000    0.1151935   0.2598065
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1418440    0.1150185   0.1686695
24 months   kiGH5241-JiVitA-3         BANGLADESH   2                    NA                0.1644737    0.1350931   0.1938542
24 months   kiGH5241-JiVitA-3         BANGLADESH   3                    NA                0.1735537    0.1424396   0.2046679
24 months   kiGH5241-JiVitA-3         BANGLADESH   4                    NA                0.2193309    0.1789363   0.2597254
24 months   kiGH5241-JiVitA-3         BANGLADESH   5                    NA                0.2233503    0.1783728   0.2683277
24 months   kiGH5241-JiVitA-3         BANGLADESH   6                    NA                0.2798574    0.2406383   0.3190765
24 months   kiGH5241-JiVitA-3         BANGLADESH   7                    NA                0.2881356    0.2483014   0.3279697
24 months   kiGH5241-JiVitA-3         BANGLADESH   8                    NA                0.2689335    0.2310044   0.3068627
24 months   kiGH5241-JiVitA-3         BANGLADESH   9                    NA                0.2589532    0.2212002   0.2967061
24 months   kiGH5241-JiVitA-3         BANGLADESH   10                   NA                0.2485876    0.2197207   0.2774544
24 months   kiGH5241-JiVitA-3         BANGLADESH   11                   NA                0.2198506    0.1914013   0.2482999
24 months   kiGH5241-JiVitA-3         BANGLADESH   12                   NA                0.1744091    0.1496012   0.1992170
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2083333    0.1465097   0.2701570
24 months   kiGH5241-JiVitA-4         BANGLADESH   2                    NA                0.1246106    0.0815630   0.1676582
24 months   kiGH5241-JiVitA-4         BANGLADESH   3                    NA                0.1500000    0.1084977   0.1915023
24 months   kiGH5241-JiVitA-4         BANGLADESH   4                    NA                0.1859296    0.1556639   0.2161954
24 months   kiGH5241-JiVitA-4         BANGLADESH   5                    NA                0.2379249    0.1919168   0.2839329
24 months   kiGH5241-JiVitA-4         BANGLADESH   6                    NA                0.2387707    0.1904466   0.2870947
24 months   kiGH5241-JiVitA-4         BANGLADESH   7                    NA                0.2192308    0.1856572   0.2528043
24 months   kiGH5241-JiVitA-4         BANGLADESH   8                    NA                0.1906780    0.1528835   0.2284724
24 months   kiGH5241-JiVitA-4         BANGLADESH   9                    NA                0.1576577    0.1229579   0.1923575
24 months   kiGH5241-JiVitA-4         BANGLADESH   10                   NA                0.1666667    0.1196927   0.2136407
24 months   kiGH5241-JiVitA-4         BANGLADESH   11                   NA                0.2275862    0.1161833   0.3389891
24 months   kiGH5241-JiVitA-4         BANGLADESH   12                   NA                0.2535211    0.1878449   0.3191974


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                0.2482947   0.2261720   0.2704173
Birth       ki1119695-PROBIT          BELARUS      NA                   NA                0.2087491   0.1435025   0.2739957
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1595572   0.1532418   0.1658725
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1095259   0.1044047   0.1146471
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.0579225   0.0479029   0.0679420
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0082498   0.0066007   0.0098989
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0311581   0.0274654   0.0348509
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0846640   0.0798626   0.0894653
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1106605   0.0958563   0.1254646
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2182959   0.2084450   0.2281469
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1942978   0.1810880   0.2075076


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth       BANGLADESH   2                    1                 1.0472727   0.5767647   1.9016075
Birth       ki1017093-NIH-Birth       BANGLADESH   3                    1                 1.0551724   0.5863054   1.8989914
Birth       ki1017093-NIH-Birth       BANGLADESH   4                    1                 1.0500000   0.5668647   1.9449085
Birth       ki1017093-NIH-Birth       BANGLADESH   5                    1                 1.5200000   0.8771223   2.6340683
Birth       ki1017093-NIH-Birth       BANGLADESH   6                    1                 1.4400000   0.8110273   2.5567574
Birth       ki1017093-NIH-Birth       BANGLADESH   7                    1                 1.3600000   0.7682869   2.4074341
Birth       ki1017093-NIH-Birth       BANGLADESH   8                    1                 1.0536585   0.5545023   2.0021491
Birth       ki1017093-NIH-Birth       BANGLADESH   9                    1                 1.2774194   0.6728487   2.4252113
Birth       ki1017093-NIH-Birth       BANGLADESH   10                   1                 0.8068966   0.4237030   1.5366472
Birth       ki1017093-NIH-Birth       BANGLADESH   11                   1                 0.8816327   0.4585166   1.6951973
Birth       ki1017093-NIH-Birth       BANGLADESH   12                   1                 0.4235294   0.1780231   1.0076063
Birth       ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA       2                    1                 0.8692810   0.5994098   1.2606559
Birth       ki1101329-Keneba          GAMBIA       3                    1                 0.8550000   0.5830776   1.2537354
Birth       ki1101329-Keneba          GAMBIA       4                    1                 0.7319182   0.4950724   1.0820726
Birth       ki1101329-Keneba          GAMBIA       5                    1                 0.7747573   0.5009994   1.1981030
Birth       ki1101329-Keneba          GAMBIA       6                    1                 0.7171569   0.4563965   1.1269016
Birth       ki1101329-Keneba          GAMBIA       7                    1                 0.4302941   0.2339279   0.7914961
Birth       ki1101329-Keneba          GAMBIA       8                    1                 0.7638514   0.4673481   1.2484674
Birth       ki1101329-Keneba          GAMBIA       9                    1                 0.9172414   0.6193700   1.3583670
Birth       ki1101329-Keneba          GAMBIA       10                   1                 0.8171610   0.5429209   1.2299252
Birth       ki1101329-Keneba          GAMBIA       11                   1                 0.9302083   0.6521624   1.3267977
Birth       ki1101329-Keneba          GAMBIA       12                   1                 0.8963043   0.6024900   1.3334022
Birth       ki1119695-PROBIT          BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT          BELARUS      2                    1                 0.8421571   0.6946148   1.0210388
Birth       ki1119695-PROBIT          BELARUS      3                    1                 0.9183982   0.7522232   1.1212832
Birth       ki1119695-PROBIT          BELARUS      4                    1                 0.9723020   0.7637977   1.2377245
Birth       ki1119695-PROBIT          BELARUS      5                    1                 1.1092321   0.8708130   1.4129278
Birth       ki1119695-PROBIT          BELARUS      6                    1                 0.9449178   0.6624711   1.3477867
Birth       ki1119695-PROBIT          BELARUS      7                    1                 1.0870993   0.7634495   1.5479543
Birth       ki1119695-PROBIT          BELARUS      8                    1                 0.9758126   0.6916367   1.3767490
Birth       ki1119695-PROBIT          BELARUS      9                    1                 0.9102523   0.6389342   1.2967834
Birth       ki1119695-PROBIT          BELARUS      10                   1                 0.9929032   0.7178686   1.3733110
Birth       ki1119695-PROBIT          BELARUS      11                   1                 0.8519883   0.6566523   1.1054315
Birth       ki1119695-PROBIT          BELARUS      12                   1                 0.9187484   0.6809658   1.2395609
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     2                    1                 0.8946546   0.7235608   1.1062054
Birth       ki1126311-ZVITAMBO        ZIMBABWE     3                    1                 0.9872511   0.8090890   1.2046448
Birth       ki1126311-ZVITAMBO        ZIMBABWE     4                    1                 0.8722354   0.7037741   1.0810210
Birth       ki1126311-ZVITAMBO        ZIMBABWE     5                    1                 1.0476686   0.8548716   1.2839465
Birth       ki1126311-ZVITAMBO        ZIMBABWE     6                    1                 1.2804171   1.0646542   1.5399065
Birth       ki1126311-ZVITAMBO        ZIMBABWE     7                    1                 1.3268424   1.1074748   1.5896620
Birth       ki1126311-ZVITAMBO        ZIMBABWE     8                    1                 1.2259981   1.0217559   1.4710671
Birth       ki1126311-ZVITAMBO        ZIMBABWE     9                    1                 0.9817348   0.8116395   1.1874770
Birth       ki1126311-ZVITAMBO        ZIMBABWE     10                   1                 1.1260612   0.9267826   1.3681891
Birth       ki1126311-ZVITAMBO        ZIMBABWE     11                   1                 1.2081479   1.0023876   1.4561447
Birth       ki1126311-ZVITAMBO        ZIMBABWE     12                   1                 1.1100909   0.9209682   1.3380504
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   2                    1                 1.1140056   0.8855862   1.4013412
Birth       kiGH5241-JiVitA-3         BANGLADESH   3                    1                 1.1784054   0.9485228   1.4640021
Birth       kiGH5241-JiVitA-3         BANGLADESH   4                    1                 1.1908044   0.9418929   1.5054953
Birth       kiGH5241-JiVitA-3         BANGLADESH   5                    1                 1.2921131   1.0034400   1.6638326
Birth       kiGH5241-JiVitA-3         BANGLADESH   6                    1                 1.2475094   0.9681178   1.6075314
Birth       kiGH5241-JiVitA-3         BANGLADESH   7                    1                 1.0032254   0.7762826   1.2965139
Birth       kiGH5241-JiVitA-3         BANGLADESH   8                    1                 1.2754926   1.0132481   1.6056102
Birth       kiGH5241-JiVitA-3         BANGLADESH   9                    1                 1.5548668   1.2666235   1.9087051
Birth       kiGH5241-JiVitA-3         BANGLADESH   10                   1                 1.3792381   1.1219883   1.6954701
Birth       kiGH5241-JiVitA-3         BANGLADESH   11                   1                 1.2907302   1.0449281   1.5943532
Birth       kiGH5241-JiVitA-3         BANGLADESH   12                   1                 1.1184360   0.9037021   1.3841942
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        2                    1                 0.5996473   0.3264094   1.1016131
6 months    ki1000304b-SAS-CompFeed   INDIA        3                    1                 0.6071429   0.3664489   1.0059315
6 months    ki1000304b-SAS-CompFeed   INDIA        4                    1                 0.3777778   0.1865663   0.7649614
6 months    ki1000304b-SAS-CompFeed   INDIA        5                    1                 0.6390977   0.2777063   1.4707837
6 months    ki1000304b-SAS-CompFeed   INDIA        6                    1                 0.3174603   0.1920116   0.5248695
6 months    ki1000304b-SAS-CompFeed   INDIA        7                    1                 0.1759834   0.0568232   0.5450268
6 months    ki1000304b-SAS-CompFeed   INDIA        8                    1                 0.2130326   0.1173307   0.3867947
6 months    ki1000304b-SAS-CompFeed   INDIA        9                    1                 0.2207792   0.1377080   0.3539625
6 months    ki1000304b-SAS-CompFeed   INDIA        10                   1                 0.4649292   0.3628166   0.5957808
6 months    ki1000304b-SAS-CompFeed   INDIA        11                   1                 0.9315949   0.6608966   1.3131691
6 months    ki1000304b-SAS-CompFeed   INDIA        12                   1                 0.8157992   0.5600733   1.1882879
6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA       2                    1                 1.8775510   0.7824791   4.5051654
6 months    ki1101329-Keneba          GAMBIA       3                    1                 0.9945946   0.3558505   2.7798708
6 months    ki1101329-Keneba          GAMBIA       4                    1                 1.7602041   0.7330952   4.2263523
6 months    ki1101329-Keneba          GAMBIA       5                    1                 2.4154440   1.0257890   5.6876898
6 months    ki1101329-Keneba          GAMBIA       6                    1                 2.6285714   1.1000726   6.2808471
6 months    ki1101329-Keneba          GAMBIA       7                    1                 1.6301218   0.6061210   4.3841031
6 months    ki1101329-Keneba          GAMBIA       8                    1                 1.7820823   0.6635552   4.7860633
6 months    ki1101329-Keneba          GAMBIA       9                    1                 1.0444655   0.3585365   3.0426692
6 months    ki1101329-Keneba          GAMBIA       10                   1                 1.3998309   0.5329746   3.6765852
6 months    ki1101329-Keneba          GAMBIA       11                   1                 1.0514286   0.3991534   2.7696170
6 months    ki1101329-Keneba          GAMBIA       12                   1                 0.8265948   0.2675214   2.5540343
6 months    ki1119695-PROBIT          BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT          BELARUS      2                    1                 1.4885083   0.8563282   2.5873924
6 months    ki1119695-PROBIT          BELARUS      3                    1                 0.8471403   0.2412509   2.9746900
6 months    ki1119695-PROBIT          BELARUS      4                    1                 1.3229640   0.4689500   3.7322396
6 months    ki1119695-PROBIT          BELARUS      5                    1                 0.8610532   0.1997812   3.7111227
6 months    ki1119695-PROBIT          BELARUS      6                    1                 0.9830357   0.4136244   2.3363204
6 months    ki1119695-PROBIT          BELARUS      7                    1                 1.3817193   0.6738453   2.8332146
6 months    ki1119695-PROBIT          BELARUS      8                    1                 1.5749571   0.6391420   3.8809683
6 months    ki1119695-PROBIT          BELARUS      9                    1                 1.0620237   0.4454930   2.5317895
6 months    ki1119695-PROBIT          BELARUS      10                   1                 1.6020714   0.6922909   3.7074483
6 months    ki1119695-PROBIT          BELARUS      11                   1                 1.9796817   0.9309168   4.2099784
6 months    ki1119695-PROBIT          BELARUS      12                   1                 1.1082963   0.4917001   2.4981096
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     2                    1                 1.1939799   0.6711175   2.1242003
6 months    ki1126311-ZVITAMBO        ZIMBABWE     3                    1                 1.3694444   0.8048363   2.3301359
6 months    ki1126311-ZVITAMBO        ZIMBABWE     4                    1                 0.7623318   0.4031836   1.4414023
6 months    ki1126311-ZVITAMBO        ZIMBABWE     5                    1                 0.9855072   0.5396785   1.7996354
6 months    ki1126311-ZVITAMBO        ZIMBABWE     6                    1                 1.0656716   0.5986388   1.8970638
6 months    ki1126311-ZVITAMBO        ZIMBABWE     7                    1                 0.8717949   0.4723477   1.6090399
6 months    ki1126311-ZVITAMBO        ZIMBABWE     8                    1                 1.3886693   0.8225587   2.3443949
6 months    ki1126311-ZVITAMBO        ZIMBABWE     9                    1                 0.9480355   0.5360280   1.6767245
6 months    ki1126311-ZVITAMBO        ZIMBABWE     10                   1                 1.1021070   0.6145077   1.9766064
6 months    ki1126311-ZVITAMBO        ZIMBABWE     11                   1                 0.7758389   0.4201392   1.4326825
6 months    ki1126311-ZVITAMBO        ZIMBABWE     12                   1                 1.2171838   0.7178296   2.0639110
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   2                    1                 0.8532392   0.6461239   1.1267454
6 months    kiGH5241-JiVitA-3         BANGLADESH   3                    1                 0.8202861   0.6315600   1.0654082
6 months    kiGH5241-JiVitA-3         BANGLADESH   4                    1                 0.7735145   0.5867937   1.0196510
6 months    kiGH5241-JiVitA-3         BANGLADESH   5                    1                 0.8031873   0.6119760   1.0541424
6 months    kiGH5241-JiVitA-3         BANGLADESH   6                    1                 0.7976241   0.5935551   1.0718535
6 months    kiGH5241-JiVitA-3         BANGLADESH   7                    1                 1.0036300   0.7719714   1.3048064
6 months    kiGH5241-JiVitA-3         BANGLADESH   8                    1                 0.8830321   0.6806741   1.1455493
6 months    kiGH5241-JiVitA-3         BANGLADESH   9                    1                 0.7987945   0.6186497   1.0313956
6 months    kiGH5241-JiVitA-3         BANGLADESH   10                   1                 1.0382743   0.8118823   1.3277954
6 months    kiGH5241-JiVitA-3         BANGLADESH   11                   1                 0.9770693   0.7678076   1.2433641
6 months    kiGH5241-JiVitA-3         BANGLADESH   12                   1                 0.9253859   0.7326078   1.1688915
24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA       2                    1                 0.5652778   0.2761924   1.1569432
24 months   ki1101329-Keneba          GAMBIA       3                    1                 0.3619846   0.1556344   0.8419273
24 months   ki1101329-Keneba          GAMBIA       4                    1                 0.6107937   0.3096955   1.2046314
24 months   ki1101329-Keneba          GAMBIA       5                    1                 0.6776557   0.3537146   1.2982706
24 months   ki1101329-Keneba          GAMBIA       6                    1                 0.6851852   0.3359748   1.3973631
24 months   ki1101329-Keneba          GAMBIA       7                    1                 0.6512651   0.2944795   1.4403254
24 months   ki1101329-Keneba          GAMBIA       8                    1                 1.8368794   1.0344446   3.2617754
24 months   ki1101329-Keneba          GAMBIA       9                    1                 1.0962963   0.5954132   2.0185405
24 months   ki1101329-Keneba          GAMBIA       10                   1                 1.1511111   0.6397880   2.0710872
24 months   ki1101329-Keneba          GAMBIA       11                   1                 1.2471910   0.7157797   2.1731344
24 months   ki1101329-Keneba          GAMBIA       12                   1                 1.5416667   0.8632650   2.7531941
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   2                    1                 1.1595395   0.8855410   1.5183168
24 months   kiGH5241-JiVitA-3         BANGLADESH   3                    1                 1.2235537   0.9538115   1.5695803
24 months   kiGH5241-JiVitA-3         BANGLADESH   4                    1                 1.5462825   1.1865639   2.0150534
24 months   kiGH5241-JiVitA-3         BANGLADESH   5                    1                 1.5746193   1.2017204   2.0632302
24 months   kiGH5241-JiVitA-3         BANGLADESH   6                    1                 1.9729947   1.5692567   2.4806062
24 months   kiGH5241-JiVitA-3         BANGLADESH   7                    1                 2.0313559   1.6020416   2.5757177
24 months   kiGH5241-JiVitA-3         BANGLADESH   8                    1                 1.8959815   1.4944819   2.4053458
24 months   kiGH5241-JiVitA-3         BANGLADESH   9                    1                 1.8256198   1.4362334   2.3205754
24 months   kiGH5241-JiVitA-3         BANGLADESH   10                   1                 1.7525424   1.3988268   2.1957005
24 months   kiGH5241-JiVitA-3         BANGLADESH   11                   1                 1.5499466   1.2337264   1.9472182
24 months   kiGH5241-JiVitA-3         BANGLADESH   12                   1                 1.2295844   0.9706975   1.5575169
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   2                    1                 0.5981308   0.3787677   0.9445380
24 months   kiGH5241-JiVitA-4         BANGLADESH   3                    1                 0.7200000   0.4799411   1.0801326
24 months   kiGH5241-JiVitA-4         BANGLADESH   4                    1                 0.8924623   0.6346813   1.2549433
24 months   kiGH5241-JiVitA-4         BANGLADESH   5                    1                 1.1420394   0.8012592   1.6277552
24 months   kiGH5241-JiVitA-4         BANGLADESH   6                    1                 1.1460993   0.8036956   1.6343795
24 months   kiGH5241-JiVitA-4         BANGLADESH   7                    1                 1.0523077   0.7526921   1.4711878
24 months   kiGH5241-JiVitA-4         BANGLADESH   8                    1                 0.9152542   0.6412108   1.3064196
24 months   kiGH5241-JiVitA-4         BANGLADESH   9                    1                 0.7567568   0.5249343   1.0909571
24 months   kiGH5241-JiVitA-4         BANGLADESH   10                   1                 0.8000000   0.5442539   1.1759217
24 months   kiGH5241-JiVitA-4         BANGLADESH   11                   1                 1.0924138   0.6163948   1.9360447
24 months   kiGH5241-JiVitA-4         BANGLADESH   12                   1                 1.2169014   0.8214011   1.8028331


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1017093-NIH-Birth       BANGLADESH   1                    NA                 0.0143961   -0.0996004    0.1283927
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.0524572   -0.1263815    0.0214671
Birth       ki1119695-PROBIT          BELARUS      1                    NA                -0.0087948   -0.0610484    0.0434589
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0133536   -0.0054346    0.0321418
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0204596    0.0064284    0.0344907
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.1226210   -0.1913269   -0.0539152
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0198790   -0.0071421    0.0469000
6 months    ki1119695-PROBIT          BELARUS      1                    NA                 0.0018919   -0.0013982    0.0051820
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0017464   -0.0093103    0.0128031
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0097723   -0.0261355    0.0065908
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0109611   -0.0611390    0.0392167
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0764520    0.0501529    0.1027511
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0140356   -0.0753654    0.0472943


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1017093-NIH-Birth       BANGLADESH   1                    NA                 0.0492725   -0.4331122    0.3692868
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.2112699   -0.5486284    0.0525972
Birth       ki1119695-PROBIT          BELARUS      1                    NA                -0.0421308   -0.3222626    0.1786529
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0836917   -0.0419267    0.1941652
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1868012    0.0481741    0.3052382
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.9854004   -1.5599574   -0.5397970
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.3431998   -0.3292104    0.6754566
6 months    ki1119695-PROBIT          BELARUS      1                    NA                 0.2293300   -0.2851135    0.5378367
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0560488   -0.3746297    0.3517936
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.1154251   -0.3248724    0.0609110
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0990519   -0.6601260    0.2723955
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.3502217    0.2191482    0.4592932
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0722373   -0.4397758    0.2014779
