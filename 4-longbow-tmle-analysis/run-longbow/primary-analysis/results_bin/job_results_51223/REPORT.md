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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        brthmon    wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               1        5     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               1        4     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4               0       17     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4               1        4     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5               0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5               1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6               0       10     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6               1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7               0       14     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7               1        5     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8               0       20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8               1        3     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9               0       12     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9               1        7     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10              0       21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10              1        3     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11              0       13     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11              1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12              0       22     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12              1        4     241
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        2     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2               0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2               1        1     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3               0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4               0        9     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5               0       15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6               0        8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7               0       16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8               0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9               0       27     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9               1        1     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10              0       15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10              1        2     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11              0       18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12              0       10     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12              1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          1               0       11     203
Birth       ki0047075b-MAL-ED          INDIA                          1               1        5     203
Birth       ki0047075b-MAL-ED          INDIA                          2               0       13     203
Birth       ki0047075b-MAL-ED          INDIA                          2               1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          3               0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          3               1        5     203
Birth       ki0047075b-MAL-ED          INDIA                          4               0       11     203
Birth       ki0047075b-MAL-ED          INDIA                          4               1        2     203
Birth       ki0047075b-MAL-ED          INDIA                          5               0        5     203
Birth       ki0047075b-MAL-ED          INDIA                          5               1        2     203
Birth       ki0047075b-MAL-ED          INDIA                          6               0       15     203
Birth       ki0047075b-MAL-ED          INDIA                          6               1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          7               0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          7               1        4     203
Birth       ki0047075b-MAL-ED          INDIA                          8               0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          8               1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          9               0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          9               1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          10              0       19     203
Birth       ki0047075b-MAL-ED          INDIA                          10              1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          11              0       18     203
Birth       ki0047075b-MAL-ED          INDIA                          11              1        2     203
Birth       ki0047075b-MAL-ED          INDIA                          12              0       14     203
Birth       ki0047075b-MAL-ED          INDIA                          12              1        0     203
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          2               0       12     168
Birth       ki0047075b-MAL-ED          NEPAL                          2               1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          3               0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          3               1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          4               0       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          4               1        3     168
Birth       ki0047075b-MAL-ED          NEPAL                          5               0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          5               1        5     168
Birth       ki0047075b-MAL-ED          NEPAL                          6               0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          6               1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          7               0       15     168
Birth       ki0047075b-MAL-ED          NEPAL                          7               1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          8               0       11     168
Birth       ki0047075b-MAL-ED          NEPAL                          8               1        3     168
Birth       ki0047075b-MAL-ED          NEPAL                          9               0        9     168
Birth       ki0047075b-MAL-ED          NEPAL                          9               1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          10              0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          10              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          11              0       16     168
Birth       ki0047075b-MAL-ED          NEPAL                          11              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          12              0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          12              1        0     168
Birth       ki0047075b-MAL-ED          PERU                           1               0       37     279
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           2               0       19     279
Birth       ki0047075b-MAL-ED          PERU                           2               1        1     279
Birth       ki0047075b-MAL-ED          PERU                           3               0       23     279
Birth       ki0047075b-MAL-ED          PERU                           3               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           4               0       20     279
Birth       ki0047075b-MAL-ED          PERU                           4               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           5               0       25     279
Birth       ki0047075b-MAL-ED          PERU                           5               1        1     279
Birth       ki0047075b-MAL-ED          PERU                           6               0       15     279
Birth       ki0047075b-MAL-ED          PERU                           6               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           7               0       22     279
Birth       ki0047075b-MAL-ED          PERU                           7               1        1     279
Birth       ki0047075b-MAL-ED          PERU                           8               0       18     279
Birth       ki0047075b-MAL-ED          PERU                           8               1        1     279
Birth       ki0047075b-MAL-ED          PERU                           9               0       22     279
Birth       ki0047075b-MAL-ED          PERU                           9               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           10              0       24     279
Birth       ki0047075b-MAL-ED          PERU                           10              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           11              0       29     279
Birth       ki0047075b-MAL-ED          PERU                           11              1        2     279
Birth       ki0047075b-MAL-ED          PERU                           12              0       19     279
Birth       ki0047075b-MAL-ED          PERU                           12              1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       25     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        3     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       15     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4               0       11     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4               1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5               0       14     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5               1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6               0       16     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6               1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7               0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7               1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               0        9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9               0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9               1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10              0       26     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10              1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11              0       27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11              1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12              0       34     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12              1        4     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               0        4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               0       11     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              0       15     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               0        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               0        6      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5               0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               0        6      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              1        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11              0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11              1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              0        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              1        2      88
Birth       ki1000108-IRC              INDIA                          1               0       26     343
Birth       ki1000108-IRC              INDIA                          1               1        5     343
Birth       ki1000108-IRC              INDIA                          2               0       21     343
Birth       ki1000108-IRC              INDIA                          2               1        2     343
Birth       ki1000108-IRC              INDIA                          3               0       18     343
Birth       ki1000108-IRC              INDIA                          3               1        6     343
Birth       ki1000108-IRC              INDIA                          4               0       12     343
Birth       ki1000108-IRC              INDIA                          4               1        7     343
Birth       ki1000108-IRC              INDIA                          5               0        8     343
Birth       ki1000108-IRC              INDIA                          5               1        7     343
Birth       ki1000108-IRC              INDIA                          6               0       20     343
Birth       ki1000108-IRC              INDIA                          6               1        6     343
Birth       ki1000108-IRC              INDIA                          7               0       20     343
Birth       ki1000108-IRC              INDIA                          7               1       11     343
Birth       ki1000108-IRC              INDIA                          8               0       26     343
Birth       ki1000108-IRC              INDIA                          8               1       10     343
Birth       ki1000108-IRC              INDIA                          9               0       17     343
Birth       ki1000108-IRC              INDIA                          9               1        7     343
Birth       ki1000108-IRC              INDIA                          10              0       23     343
Birth       ki1000108-IRC              INDIA                          10              1       10     343
Birth       ki1000108-IRC              INDIA                          11              0       29     343
Birth       ki1000108-IRC              INDIA                          11              1        9     343
Birth       ki1000108-IRC              INDIA                          12              0       31     343
Birth       ki1000108-IRC              INDIA                          12              1       12     343
Birth       ki1000109-EE               PAKISTAN                       1               0        0       1
Birth       ki1000109-EE               PAKISTAN                       1               1        0       1
Birth       ki1000109-EE               PAKISTAN                       2               0        0       1
Birth       ki1000109-EE               PAKISTAN                       2               1        0       1
Birth       ki1000109-EE               PAKISTAN                       3               0        0       1
Birth       ki1000109-EE               PAKISTAN                       3               1        0       1
Birth       ki1000109-EE               PAKISTAN                       4               0        0       1
Birth       ki1000109-EE               PAKISTAN                       4               1        0       1
Birth       ki1000109-EE               PAKISTAN                       5               0        0       1
Birth       ki1000109-EE               PAKISTAN                       5               1        0       1
Birth       ki1000109-EE               PAKISTAN                       6               0        0       1
Birth       ki1000109-EE               PAKISTAN                       6               1        0       1
Birth       ki1000109-EE               PAKISTAN                       7               0        0       1
Birth       ki1000109-EE               PAKISTAN                       7               1        0       1
Birth       ki1000109-EE               PAKISTAN                       8               0        0       1
Birth       ki1000109-EE               PAKISTAN                       8               1        0       1
Birth       ki1000109-EE               PAKISTAN                       9               0        0       1
Birth       ki1000109-EE               PAKISTAN                       9               1        0       1
Birth       ki1000109-EE               PAKISTAN                       10              0        0       1
Birth       ki1000109-EE               PAKISTAN                       10              1        0       1
Birth       ki1000109-EE               PAKISTAN                       11              0        0       1
Birth       ki1000109-EE               PAKISTAN                       11              1        0       1
Birth       ki1000109-EE               PAKISTAN                       12              0        1       1
Birth       ki1000109-EE               PAKISTAN                       12              1        0       1
Birth       ki1000109-ResPak           PAKISTAN                       1               0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       1               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       4               0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       4               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       5               0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       5               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       6               0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       6               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       7               0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       7               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12              1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       11     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       10     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               0        8     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4               0       13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5               0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5               1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6               0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6               1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               0        6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8               0       15     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9               0       18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10              0       18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11              0       17     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12              0       15     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12              1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0        8      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2               0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3               0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3               1        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4               0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5               0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6               0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6               1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7               0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8               0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9               0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10              0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11              0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12              0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12              1        0      28
Birth       ki1101329-Keneba           GAMBIA                         1               0      142    1423
Birth       ki1101329-Keneba           GAMBIA                         1               1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         2               0      133    1423
Birth       ki1101329-Keneba           GAMBIA                         2               1        5    1423
Birth       ki1101329-Keneba           GAMBIA                         3               0      152    1423
Birth       ki1101329-Keneba           GAMBIA                         3               1        3    1423
Birth       ki1101329-Keneba           GAMBIA                         4               0       95    1423
Birth       ki1101329-Keneba           GAMBIA                         4               1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         5               0       96    1423
Birth       ki1101329-Keneba           GAMBIA                         5               1        3    1423
Birth       ki1101329-Keneba           GAMBIA                         6               0       83    1423
Birth       ki1101329-Keneba           GAMBIA                         6               1        1    1423
Birth       ki1101329-Keneba           GAMBIA                         7               0       65    1423
Birth       ki1101329-Keneba           GAMBIA                         7               1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         8               0      116    1423
Birth       ki1101329-Keneba           GAMBIA                         8               1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         9               0      116    1423
Birth       ki1101329-Keneba           GAMBIA                         9               1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         10              0      166    1423
Birth       ki1101329-Keneba           GAMBIA                         10              1        3    1423
Birth       ki1101329-Keneba           GAMBIA                         11              0      105    1423
Birth       ki1101329-Keneba           GAMBIA                         11              1        4    1423
Birth       ki1101329-Keneba           GAMBIA                         12              0      126    1423
Birth       ki1101329-Keneba           GAMBIA                         12              1        3    1423
Birth       ki1114097-CMIN             BANGLADESH                     1               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     2               0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     2               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     5               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     5               1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     6               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     6               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     8               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     8               1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     9               0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     9               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     10              0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     10              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     11              0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     11              1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     12              0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     12              1        0       8
Birth       ki1114097-CMIN             BRAZIL                         1               0       12     111
Birth       ki1114097-CMIN             BRAZIL                         1               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         2               0        6     111
Birth       ki1114097-CMIN             BRAZIL                         2               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         3               0       12     111
Birth       ki1114097-CMIN             BRAZIL                         3               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         4               0        8     111
Birth       ki1114097-CMIN             BRAZIL                         4               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         5               0        5     111
Birth       ki1114097-CMIN             BRAZIL                         5               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         6               0        6     111
Birth       ki1114097-CMIN             BRAZIL                         6               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         7               0        4     111
Birth       ki1114097-CMIN             BRAZIL                         7               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         8               0       11     111
Birth       ki1114097-CMIN             BRAZIL                         8               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         9               0        8     111
Birth       ki1114097-CMIN             BRAZIL                         9               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         10              0       11     111
Birth       ki1114097-CMIN             BRAZIL                         10              1        3     111
Birth       ki1114097-CMIN             BRAZIL                         11              0       10     111
Birth       ki1114097-CMIN             BRAZIL                         11              1        1     111
Birth       ki1114097-CMIN             BRAZIL                         12              0       10     111
Birth       ki1114097-CMIN             BRAZIL                         12              1        0     111
Birth       ki1114097-CMIN             PERU                           1               0        1      10
Birth       ki1114097-CMIN             PERU                           1               1        0      10
Birth       ki1114097-CMIN             PERU                           2               0        1      10
Birth       ki1114097-CMIN             PERU                           2               1        0      10
Birth       ki1114097-CMIN             PERU                           3               0        2      10
Birth       ki1114097-CMIN             PERU                           3               1        0      10
Birth       ki1114097-CMIN             PERU                           4               0        3      10
Birth       ki1114097-CMIN             PERU                           4               1        0      10
Birth       ki1114097-CMIN             PERU                           5               0        0      10
Birth       ki1114097-CMIN             PERU                           5               1        0      10
Birth       ki1114097-CMIN             PERU                           6               0        0      10
Birth       ki1114097-CMIN             PERU                           6               1        0      10
Birth       ki1114097-CMIN             PERU                           7               0        0      10
Birth       ki1114097-CMIN             PERU                           7               1        0      10
Birth       ki1114097-CMIN             PERU                           8               0        1      10
Birth       ki1114097-CMIN             PERU                           8               1        0      10
Birth       ki1114097-CMIN             PERU                           9               0        2      10
Birth       ki1114097-CMIN             PERU                           9               1        0      10
Birth       ki1114097-CMIN             PERU                           10              0        0      10
Birth       ki1114097-CMIN             PERU                           10              1        0      10
Birth       ki1114097-CMIN             PERU                           11              0        0      10
Birth       ki1114097-CMIN             PERU                           11              1        0      10
Birth       ki1114097-CMIN             PERU                           12              0        0      10
Birth       ki1114097-CMIN             PERU                           12              1        0      10
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1114097-CONTENT          PERU                           2               0        0       2
Birth       ki1114097-CONTENT          PERU                           2               1        0       2
Birth       ki1114097-CONTENT          PERU                           3               0        0       2
Birth       ki1114097-CONTENT          PERU                           3               1        0       2
Birth       ki1114097-CONTENT          PERU                           4               0        0       2
Birth       ki1114097-CONTENT          PERU                           4               1        0       2
Birth       ki1114097-CONTENT          PERU                           5               0        2       2
Birth       ki1114097-CONTENT          PERU                           5               1        0       2
Birth       ki1114097-CONTENT          PERU                           6               0        0       2
Birth       ki1114097-CONTENT          PERU                           6               1        0       2
Birth       ki1114097-CONTENT          PERU                           7               0        0       2
Birth       ki1114097-CONTENT          PERU                           7               1        0       2
Birth       ki1114097-CONTENT          PERU                           8               0        0       2
Birth       ki1114097-CONTENT          PERU                           8               1        0       2
Birth       ki1114097-CONTENT          PERU                           9               0        0       2
Birth       ki1114097-CONTENT          PERU                           9               1        0       2
Birth       ki1114097-CONTENT          PERU                           10              0        0       2
Birth       ki1114097-CONTENT          PERU                           10              1        0       2
Birth       ki1114097-CONTENT          PERU                           11              0        0       2
Birth       ki1114097-CONTENT          PERU                           11              1        0       2
Birth       ki1114097-CONTENT          PERU                           12              0        0       2
Birth       ki1114097-CONTENT          PERU                           12              1        0       2
Birth       ki1119695-PROBIT           BELARUS                        1               0      648   13824
Birth       ki1119695-PROBIT           BELARUS                        1               1      174   13824
Birth       ki1119695-PROBIT           BELARUS                        2               0      652   13824
Birth       ki1119695-PROBIT           BELARUS                        2               1      147   13824
Birth       ki1119695-PROBIT           BELARUS                        3               0      750   13824
Birth       ki1119695-PROBIT           BELARUS                        3               1      191   13824
Birth       ki1119695-PROBIT           BELARUS                        4               0      760   13824
Birth       ki1119695-PROBIT           BELARUS                        4               1      209   13824
Birth       ki1119695-PROBIT           BELARUS                        5               0      720   13824
Birth       ki1119695-PROBIT           BELARUS                        5               1      222   13824
Birth       ki1119695-PROBIT           BELARUS                        6               0      801   13824
Birth       ki1119695-PROBIT           BELARUS                        6               1      219   13824
Birth       ki1119695-PROBIT           BELARUS                        7               0      984   13824
Birth       ki1119695-PROBIT           BELARUS                        7               1      303   13824
Birth       ki1119695-PROBIT           BELARUS                        8               0     1034   13824
Birth       ki1119695-PROBIT           BELARUS                        8               1      272   13824
Birth       ki1119695-PROBIT           BELARUS                        9               0     1061   13824
Birth       ki1119695-PROBIT           BELARUS                        9               1      263   13824
Birth       ki1119695-PROBIT           BELARUS                        10              0     1168   13824
Birth       ki1119695-PROBIT           BELARUS                        10              1      321   13824
Birth       ki1119695-PROBIT           BELARUS                        11              0     1125   13824
Birth       ki1119695-PROBIT           BELARUS                        11              1      258   13824
Birth       ki1119695-PROBIT           BELARUS                        12              0     1233   13824
Birth       ki1119695-PROBIT           BELARUS                        12              1      309   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     1052   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      181   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0      831   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      126   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3               0      926   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3               1      151   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4               0      804   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4               1      118   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5               0      787   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5               1      142   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6               0      850   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6               1      198   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7               0      878   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7               1      218   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8               0      980   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8               1      207   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9               0     1067   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9               1      179   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10              0      820   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10              1      160   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11              0      908   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11              1      195   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12              0      953   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12              1      185   12916
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     1341   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      108   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     1168   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1      111   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               0     1412   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               1      147   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4               0     1024   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4               1      105   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5               0      701   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5               1       77   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6               0      743   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6               1       82   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7               0      835   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7               1       74   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8               0     1090   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8               1      127   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9               0     1350   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9               1      178   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10              0     1469   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10              1      190   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11              0     1496   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11              1      168   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12              0     1574   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12              1      139   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               0      110     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               1        5     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               0      123     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               1       10     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4               0      131     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4               1        7     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5               0       97     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5               1        3     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6               0       67     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6               1        5     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7               0       64     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7               1        1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8               0       26     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8               1        1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9               0       24     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9               1        3     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              0        5     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              1        1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              0        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              0        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              1        0     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0       18     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               0       19     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4               0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5               0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6               0        9     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7               0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7               1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8               0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9               0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10              0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10              1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11              0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12              0       26     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12              1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       15     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               0       23     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4               0       11     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5               0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6               0        8     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7               0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8               0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9               0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10              0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11              0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12              0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12              1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1               0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          1               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          2               0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          2               1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          3               0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          3               1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          4               0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          4               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          5               0        7     236
6 months    ki0047075b-MAL-ED          INDIA                          5               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          6               0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          6               1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          7               0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          7               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          8               0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          8               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          9               0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          9               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          10              0       23     236
6 months    ki0047075b-MAL-ED          INDIA                          10              1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          11              0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          11              1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          12              0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          12              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4               0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          4               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          5               0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          5               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          6               0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          6               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          7               0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          7               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          8               0       23     236
6 months    ki0047075b-MAL-ED          NEPAL                          8               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          9               0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          9               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          10              0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          10              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          11              0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          11              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          12              0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          12              1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1               0       38     273
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           2               0       19     273
6 months    ki0047075b-MAL-ED          PERU                           2               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           3               0       22     273
6 months    ki0047075b-MAL-ED          PERU                           3               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           4               0       20     273
6 months    ki0047075b-MAL-ED          PERU                           4               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           5               0       27     273
6 months    ki0047075b-MAL-ED          PERU                           5               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           6               0       15     273
6 months    ki0047075b-MAL-ED          PERU                           6               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           7               0       22     273
6 months    ki0047075b-MAL-ED          PERU                           7               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           8               0       16     273
6 months    ki0047075b-MAL-ED          PERU                           8               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           9               0       23     273
6 months    ki0047075b-MAL-ED          PERU                           9               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           10              0       20     273
6 months    ki0047075b-MAL-ED          PERU                           10              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           11              0       32     273
6 months    ki0047075b-MAL-ED          PERU                           11              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           12              0       19     273
6 months    ki0047075b-MAL-ED          PERU                           12              1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       37     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4               0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5               0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6               0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7               0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8               0        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9               0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10              0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10              1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11              0       21     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11              1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12              0       35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12              1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               0        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               0       16     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               0       23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               0       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              0       22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              0       26     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       26     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        8     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               0       12     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               0       28     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4               0       41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4               1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5               0       30     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5               1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6               0       35     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6               1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7               0       37     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7               1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8               0       15     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8               1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9               0       19     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9               1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10              0       24     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10              1        5     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11              0       36     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11              1        6     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12              0       19     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12              1        6     368
6 months    ki1000108-IRC              INDIA                          1               0       32     408
6 months    ki1000108-IRC              INDIA                          1               1        6     408
6 months    ki1000108-IRC              INDIA                          2               0       25     408
6 months    ki1000108-IRC              INDIA                          2               1        3     408
6 months    ki1000108-IRC              INDIA                          3               0       22     408
6 months    ki1000108-IRC              INDIA                          3               1        5     408
6 months    ki1000108-IRC              INDIA                          4               0       20     408
6 months    ki1000108-IRC              INDIA                          4               1        1     408
6 months    ki1000108-IRC              INDIA                          5               0       21     408
6 months    ki1000108-IRC              INDIA                          5               1        1     408
6 months    ki1000108-IRC              INDIA                          6               0       30     408
6 months    ki1000108-IRC              INDIA                          6               1        7     408
6 months    ki1000108-IRC              INDIA                          7               0       31     408
6 months    ki1000108-IRC              INDIA                          7               1        5     408
6 months    ki1000108-IRC              INDIA                          8               0       37     408
6 months    ki1000108-IRC              INDIA                          8               1        7     408
6 months    ki1000108-IRC              INDIA                          9               0       23     408
6 months    ki1000108-IRC              INDIA                          9               1        2     408
6 months    ki1000108-IRC              INDIA                          10              0       33     408
6 months    ki1000108-IRC              INDIA                          10              1        5     408
6 months    ki1000108-IRC              INDIA                          11              0       36     408
6 months    ki1000108-IRC              INDIA                          11              1        4     408
6 months    ki1000108-IRC              INDIA                          12              0       44     408
6 months    ki1000108-IRC              INDIA                          12              1        8     408
6 months    ki1000109-EE               PAKISTAN                       1               0       81     376
6 months    ki1000109-EE               PAKISTAN                       1               1       11     376
6 months    ki1000109-EE               PAKISTAN                       2               0       55     376
6 months    ki1000109-EE               PAKISTAN                       2               1       12     376
6 months    ki1000109-EE               PAKISTAN                       3               0       34     376
6 months    ki1000109-EE               PAKISTAN                       3               1        9     376
6 months    ki1000109-EE               PAKISTAN                       4               0       16     376
6 months    ki1000109-EE               PAKISTAN                       4               1        0     376
6 months    ki1000109-EE               PAKISTAN                       5               0        0     376
6 months    ki1000109-EE               PAKISTAN                       5               1        0     376
6 months    ki1000109-EE               PAKISTAN                       6               0        0     376
6 months    ki1000109-EE               PAKISTAN                       6               1        0     376
6 months    ki1000109-EE               PAKISTAN                       7               0        0     376
6 months    ki1000109-EE               PAKISTAN                       7               1        0     376
6 months    ki1000109-EE               PAKISTAN                       8               0        0     376
6 months    ki1000109-EE               PAKISTAN                       8               1        0     376
6 months    ki1000109-EE               PAKISTAN                       9               0        0     376
6 months    ki1000109-EE               PAKISTAN                       9               1        0     376
6 months    ki1000109-EE               PAKISTAN                       10              0        4     376
6 months    ki1000109-EE               PAKISTAN                       10              1        0     376
6 months    ki1000109-EE               PAKISTAN                       11              0       60     376
6 months    ki1000109-EE               PAKISTAN                       11              1       10     376
6 months    ki1000109-EE               PAKISTAN                       12              0       77     376
6 months    ki1000109-EE               PAKISTAN                       12              1        7     376
6 months    ki1000109-ResPak           PAKISTAN                       1               0        8     235
6 months    ki1000109-ResPak           PAKISTAN                       1               1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       2               0       10     235
6 months    ki1000109-ResPak           PAKISTAN                       2               1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       3               0       17     235
6 months    ki1000109-ResPak           PAKISTAN                       3               1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       4               0       17     235
6 months    ki1000109-ResPak           PAKISTAN                       4               1        4     235
6 months    ki1000109-ResPak           PAKISTAN                       5               0       38     235
6 months    ki1000109-ResPak           PAKISTAN                       5               1        7     235
6 months    ki1000109-ResPak           PAKISTAN                       6               0       39     235
6 months    ki1000109-ResPak           PAKISTAN                       6               1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       7               0       24     235
6 months    ki1000109-ResPak           PAKISTAN                       7               1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       8               0       28     235
6 months    ki1000109-ResPak           PAKISTAN                       8               1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       9               0       19     235
6 months    ki1000109-ResPak           PAKISTAN                       9               1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       10              0        3     235
6 months    ki1000109-ResPak           PAKISTAN                       10              1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       11              0        1     235
6 months    ki1000109-ResPak           PAKISTAN                       11              1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12              0        5     235
6 months    ki1000109-ResPak           PAKISTAN                       12              1        0     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0       67    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       20    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0       71    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1       12    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3               0       63    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3               1       11    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4               0       59    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4               1        5    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5               0       75    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5               1       12    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6               0       89    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6               1        7    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7               0      118    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7               1        4    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8               0      152    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8               1       10    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9               0      163    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9               1       10    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10              0      126    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10              1       23    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11              0       93    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11              1       26    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12              0       92    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12              1       26    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       21     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       27     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1        6     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3               0       15     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3               1        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               0        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               1        1     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5               0        9     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5               1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6               0       18     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6               1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7               0       30     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7               1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8               0       53     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8               1       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9               0       48     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9               1       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10              0       41     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10              1        6     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11              0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11              1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12              0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12              1       11     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0       46     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1        6     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2               0       46     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2               1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3               0       45     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3               1        5     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4               0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4               1        4     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5               0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5               1        4     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6               0       42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6               1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7               0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7               1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8               0       35     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8               1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9               0       40     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9               1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10              0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10              1        4     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11              0       48     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11              1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12              0       48     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12              1        3     536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      134    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        8    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      140    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        9    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               0      136    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               0      149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               0      146    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1        3    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               0      138    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1        5    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               0      188    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1        7    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0      195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0      178    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               1        5    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0      196    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              1       12    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0      179    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              1       16    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0      162    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              1       10    2028
6 months    ki1101329-Keneba           GAMBIA                         1               0      199    2089
6 months    ki1101329-Keneba           GAMBIA                         1               1       11    2089
6 months    ki1101329-Keneba           GAMBIA                         2               0      178    2089
6 months    ki1101329-Keneba           GAMBIA                         2               1        9    2089
6 months    ki1101329-Keneba           GAMBIA                         3               0      202    2089
6 months    ki1101329-Keneba           GAMBIA                         3               1       18    2089
6 months    ki1101329-Keneba           GAMBIA                         4               0      128    2089
6 months    ki1101329-Keneba           GAMBIA                         4               1       15    2089
6 months    ki1101329-Keneba           GAMBIA                         5               0      132    2089
6 months    ki1101329-Keneba           GAMBIA                         5               1       12    2089
6 months    ki1101329-Keneba           GAMBIA                         6               0      111    2089
6 months    ki1101329-Keneba           GAMBIA                         6               1        7    2089
6 months    ki1101329-Keneba           GAMBIA                         7               0       85    2089
6 months    ki1101329-Keneba           GAMBIA                         7               1        7    2089
6 months    ki1101329-Keneba           GAMBIA                         8               0      164    2089
6 months    ki1101329-Keneba           GAMBIA                         8               1       10    2089
6 months    ki1101329-Keneba           GAMBIA                         9               0      166    2089
6 months    ki1101329-Keneba           GAMBIA                         9               1        8    2089
6 months    ki1101329-Keneba           GAMBIA                         10              0      242    2089
6 months    ki1101329-Keneba           GAMBIA                         10              1        6    2089
6 months    ki1101329-Keneba           GAMBIA                         11              0      180    2089
6 months    ki1101329-Keneba           GAMBIA                         11              1        7    2089
6 months    ki1101329-Keneba           GAMBIA                         12              0      181    2089
6 months    ki1101329-Keneba           GAMBIA                         12              1       11    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2               0       24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2               1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3               0       27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4               0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5               0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6               0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6               1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7               0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8               0       14     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9               0       16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10              0       28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10              1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11              0       24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12              0       30     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12              1        1     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4               0        1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6               0      113     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6               1        8     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7               0      201     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7               1       17     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8               0      197     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8               1       26     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10              0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11              0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12              0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12              1        0     563
6 months    ki1114097-CMIN             BANGLADESH                     1               0       23     243
6 months    ki1114097-CMIN             BANGLADESH                     1               1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     2               0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     2               1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     3               0       13     243
6 months    ki1114097-CMIN             BANGLADESH                     3               1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     4               0       19     243
6 months    ki1114097-CMIN             BANGLADESH                     4               1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     5               0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     5               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     6               0        8     243
6 months    ki1114097-CMIN             BANGLADESH                     6               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     7               0       15     243
6 months    ki1114097-CMIN             BANGLADESH                     7               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     8               0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     8               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     9               0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     9               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     10              0       23     243
6 months    ki1114097-CMIN             BANGLADESH                     10              1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     11              0       24     243
6 months    ki1114097-CMIN             BANGLADESH                     11              1        2     243
6 months    ki1114097-CMIN             BANGLADESH                     12              0       23     243
6 months    ki1114097-CMIN             BANGLADESH                     12              1        5     243
6 months    ki1114097-CMIN             BRAZIL                         1               0       11     108
6 months    ki1114097-CMIN             BRAZIL                         1               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         2               0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3               0       12     108
6 months    ki1114097-CMIN             BRAZIL                         3               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         4               0        9     108
6 months    ki1114097-CMIN             BRAZIL                         4               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5               0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6               0        7     108
6 months    ki1114097-CMIN             BRAZIL                         6               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         7               0        4     108
6 months    ki1114097-CMIN             BRAZIL                         7               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         8               0       12     108
6 months    ki1114097-CMIN             BRAZIL                         8               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9               0        7     108
6 months    ki1114097-CMIN             BRAZIL                         9               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         10              0       15     108
6 months    ki1114097-CMIN             BRAZIL                         10              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         11              0       10     108
6 months    ki1114097-CMIN             BRAZIL                         11              1        1     108
6 months    ki1114097-CMIN             BRAZIL                         12              0        9     108
6 months    ki1114097-CMIN             BRAZIL                         12              1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               0       97     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               1        5     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2               0       56     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2               1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3               0       62     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3               1        5     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4               0       45     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4               1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5               0       54     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5               1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6               0       36     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6               1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7               0       36     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7               1        3     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8               0       53     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8               1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9               0      114     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9               1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10              0       98     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10              1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11              0       72     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11              1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12              0       92     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12              1        6     849
6 months    ki1114097-CMIN             PERU                           1               0       42     636
6 months    ki1114097-CMIN             PERU                           1               1        0     636
6 months    ki1114097-CMIN             PERU                           2               0       58     636
6 months    ki1114097-CMIN             PERU                           2               1        2     636
6 months    ki1114097-CMIN             PERU                           3               0       66     636
6 months    ki1114097-CMIN             PERU                           3               1        1     636
6 months    ki1114097-CMIN             PERU                           4               0       60     636
6 months    ki1114097-CMIN             PERU                           4               1        1     636
6 months    ki1114097-CMIN             PERU                           5               0       53     636
6 months    ki1114097-CMIN             PERU                           5               1        1     636
6 months    ki1114097-CMIN             PERU                           6               0       54     636
6 months    ki1114097-CMIN             PERU                           6               1        0     636
6 months    ki1114097-CMIN             PERU                           7               0       51     636
6 months    ki1114097-CMIN             PERU                           7               1        0     636
6 months    ki1114097-CMIN             PERU                           8               0       72     636
6 months    ki1114097-CMIN             PERU                           8               1        1     636
6 months    ki1114097-CMIN             PERU                           9               0       50     636
6 months    ki1114097-CMIN             PERU                           9               1        0     636
6 months    ki1114097-CMIN             PERU                           10              0       49     636
6 months    ki1114097-CMIN             PERU                           10              1        1     636
6 months    ki1114097-CMIN             PERU                           11              0       33     636
6 months    ki1114097-CMIN             PERU                           11              1        1     636
6 months    ki1114097-CMIN             PERU                           12              0       38     636
6 months    ki1114097-CMIN             PERU                           12              1        2     636
6 months    ki1114097-CONTENT          PERU                           1               0       10     215
6 months    ki1114097-CONTENT          PERU                           1               1        0     215
6 months    ki1114097-CONTENT          PERU                           2               0       18     215
6 months    ki1114097-CONTENT          PERU                           2               1        0     215
6 months    ki1114097-CONTENT          PERU                           3               0       30     215
6 months    ki1114097-CONTENT          PERU                           3               1        0     215
6 months    ki1114097-CONTENT          PERU                           4               0       19     215
6 months    ki1114097-CONTENT          PERU                           4               1        0     215
6 months    ki1114097-CONTENT          PERU                           5               0       14     215
6 months    ki1114097-CONTENT          PERU                           5               1        0     215
6 months    ki1114097-CONTENT          PERU                           6               0       13     215
6 months    ki1114097-CONTENT          PERU                           6               1        0     215
6 months    ki1114097-CONTENT          PERU                           7               0       28     215
6 months    ki1114097-CONTENT          PERU                           7               1        0     215
6 months    ki1114097-CONTENT          PERU                           8               0       23     215
6 months    ki1114097-CONTENT          PERU                           8               1        0     215
6 months    ki1114097-CONTENT          PERU                           9               0       26     215
6 months    ki1114097-CONTENT          PERU                           9               1        0     215
6 months    ki1114097-CONTENT          PERU                           10              0       14     215
6 months    ki1114097-CONTENT          PERU                           10              1        0     215
6 months    ki1114097-CONTENT          PERU                           11              0        9     215
6 months    ki1114097-CONTENT          PERU                           11              1        0     215
6 months    ki1114097-CONTENT          PERU                           12              0       11     215
6 months    ki1114097-CONTENT          PERU                           12              1        0     215
6 months    ki1119695-PROBIT           BELARUS                        1               0      968   15757
6 months    ki1119695-PROBIT           BELARUS                        1               1        7   15757
6 months    ki1119695-PROBIT           BELARUS                        2               0      925   15757
6 months    ki1119695-PROBIT           BELARUS                        2               1        8   15757
6 months    ki1119695-PROBIT           BELARUS                        3               0     1061   15757
6 months    ki1119695-PROBIT           BELARUS                        3               1        5   15757
6 months    ki1119695-PROBIT           BELARUS                        4               0     1089   15757
6 months    ki1119695-PROBIT           BELARUS                        4               1        9   15757
6 months    ki1119695-PROBIT           BELARUS                        5               0     1103   15757
6 months    ki1119695-PROBIT           BELARUS                        5               1        8   15757
6 months    ki1119695-PROBIT           BELARUS                        6               0     1106   15757
6 months    ki1119695-PROBIT           BELARUS                        6               1        9   15757
6 months    ki1119695-PROBIT           BELARUS                        7               0     1452   15757
6 months    ki1119695-PROBIT           BELARUS                        7               1       11   15757
6 months    ki1119695-PROBIT           BELARUS                        8               0     1459   15757
6 months    ki1119695-PROBIT           BELARUS                        8               1       14   15757
6 months    ki1119695-PROBIT           BELARUS                        9               0     1499   15757
6 months    ki1119695-PROBIT           BELARUS                        9               1       10   15757
6 months    ki1119695-PROBIT           BELARUS                        10              0     1675   15757
6 months    ki1119695-PROBIT           BELARUS                        10              1       14   15757
6 months    ki1119695-PROBIT           BELARUS                        11              0     1565   15757
6 months    ki1119695-PROBIT           BELARUS                        11              1       23   15757
6 months    ki1119695-PROBIT           BELARUS                        12              0     1725   15757
6 months    ki1119695-PROBIT           BELARUS                        12              1       12   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      770    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       24    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0      565    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       21    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3               0      701    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3               1       29    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4               0      617    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4               1       17    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5               0      589    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5               1       17    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6               0      619    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6               1       23    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7               0      619    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7               1       15    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8               0      714    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8               1       32    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9               0      726    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9               1       21    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10              0      579    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10              1       20    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11              0      745    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11              1       17    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12              0      755    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12              1       29    8264
6 months    ki1148112-LCNI-5           MALAWI                         1               0       67     839
6 months    ki1148112-LCNI-5           MALAWI                         1               1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         2               0       46     839
6 months    ki1148112-LCNI-5           MALAWI                         2               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         3               0       26     839
6 months    ki1148112-LCNI-5           MALAWI                         3               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         4               0       39     839
6 months    ki1148112-LCNI-5           MALAWI                         4               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         5               0       43     839
6 months    ki1148112-LCNI-5           MALAWI                         5               1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         6               0       32     839
6 months    ki1148112-LCNI-5           MALAWI                         6               1        2     839
6 months    ki1148112-LCNI-5           MALAWI                         7               0       61     839
6 months    ki1148112-LCNI-5           MALAWI                         7               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         8               0       90     839
6 months    ki1148112-LCNI-5           MALAWI                         8               1        3     839
6 months    ki1148112-LCNI-5           MALAWI                         9               0       92     839
6 months    ki1148112-LCNI-5           MALAWI                         9               1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         10              0      134     839
6 months    ki1148112-LCNI-5           MALAWI                         10              1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         11              0      103     839
6 months    ki1148112-LCNI-5           MALAWI                         11              1        2     839
6 months    ki1148112-LCNI-5           MALAWI                         12              0       92     839
6 months    ki1148112-LCNI-5           MALAWI                         12              1        3     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     1217   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      125   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     1058   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1       96   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               0     1308   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               1      101   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4               0     1082   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4               1       96   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5               0     1025   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5               1       85   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6               0     1103   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6               1       95   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7               0     1153   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7               1      102   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8               0     1383   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8               1      132   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9               0     1493   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9               1      128   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10              0     1503   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10              1      162   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11              0     1592   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11              1      167   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12              0     1446   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12              1      132   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               0      513    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               1       29    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               0      888    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               1       74    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4               0      687    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4               1       49    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5               0      571    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5               1       30    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6               0      413    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6               1       26    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7               0      494    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7               1       24    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8               0      502    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8               1       19    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9               0      367    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9               1       19    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10              0      123    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10              1        5    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              0        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              1        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              0        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              1        0    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4               0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4               1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5               0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5               1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6               0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7               0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7               1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8               0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9               0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9               1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10              0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10              1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11              0        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11              1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12              0       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12              1        1     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4               0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5               0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6               0        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7               0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8               0       12     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9               0       27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10              0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11              0       17     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12              0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12              1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1               0       17     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          2               0       16     227
24 months   ki0047075b-MAL-ED          INDIA                          2               1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          3               0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          3               1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          4               0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          4               1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          5               0        8     227
24 months   ki0047075b-MAL-ED          INDIA                          5               1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          6               0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          6               1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          7               0       20     227
24 months   ki0047075b-MAL-ED          INDIA                          7               1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          8               0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          8               1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          9               0       15     227
24 months   ki0047075b-MAL-ED          INDIA                          9               1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          10              0       22     227
24 months   ki0047075b-MAL-ED          INDIA                          10              1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          11              0       21     227
24 months   ki0047075b-MAL-ED          INDIA                          11              1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          12              0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          12              1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          4               0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          4               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          5               0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          5               1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          6               0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          6               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          7               0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          7               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          8               0       23     228
24 months   ki0047075b-MAL-ED          NEPAL                          8               1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          9               0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          9               1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          10              0       20     228
24 months   ki0047075b-MAL-ED          NEPAL                          10              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          11              0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          11              1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          12              0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          12              1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1               0       29     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           2               0       17     201
24 months   ki0047075b-MAL-ED          PERU                           2               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3               0       15     201
24 months   ki0047075b-MAL-ED          PERU                           3               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           4               0       11     201
24 months   ki0047075b-MAL-ED          PERU                           4               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           5               0       19     201
24 months   ki0047075b-MAL-ED          PERU                           5               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           6               0       10     201
24 months   ki0047075b-MAL-ED          PERU                           6               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           7               0       15     201
24 months   ki0047075b-MAL-ED          PERU                           7               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           8               0       11     201
24 months   ki0047075b-MAL-ED          PERU                           8               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           9               0       21     201
24 months   ki0047075b-MAL-ED          PERU                           9               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           10              0       14     201
24 months   ki0047075b-MAL-ED          PERU                           10              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           11              0       21     201
24 months   ki0047075b-MAL-ED          PERU                           11              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           12              0       15     201
24 months   ki0047075b-MAL-ED          PERU                           12              1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       33     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4               0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5               0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6               0       16     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7               0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8               0        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9               0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10              0       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11              0       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12              0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12              1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               0       23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               0       10     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              0       24     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              0       25     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              1        1     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4               0       42     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4               1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5               0       33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5               1        3     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6               0       33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6               1        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7               0       35     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7               1        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8               0       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9               0       20     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10              0       27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10              1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11              0       41     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11              1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12              0       22     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12              1        3     372
24 months   ki1000108-IRC              INDIA                          1               0       36     409
24 months   ki1000108-IRC              INDIA                          1               1        2     409
24 months   ki1000108-IRC              INDIA                          2               0       27     409
24 months   ki1000108-IRC              INDIA                          2               1        1     409
24 months   ki1000108-IRC              INDIA                          3               0       27     409
24 months   ki1000108-IRC              INDIA                          3               1        0     409
24 months   ki1000108-IRC              INDIA                          4               0       19     409
24 months   ki1000108-IRC              INDIA                          4               1        2     409
24 months   ki1000108-IRC              INDIA                          5               0       19     409
24 months   ki1000108-IRC              INDIA                          5               1        3     409
24 months   ki1000108-IRC              INDIA                          6               0       34     409
24 months   ki1000108-IRC              INDIA                          6               1        3     409
24 months   ki1000108-IRC              INDIA                          7               0       34     409
24 months   ki1000108-IRC              INDIA                          7               1        2     409
24 months   ki1000108-IRC              INDIA                          8               0       39     409
24 months   ki1000108-IRC              INDIA                          8               1        5     409
24 months   ki1000108-IRC              INDIA                          9               0       22     409
24 months   ki1000108-IRC              INDIA                          9               1        5     409
24 months   ki1000108-IRC              INDIA                          10              0       33     409
24 months   ki1000108-IRC              INDIA                          10              1        4     409
24 months   ki1000108-IRC              INDIA                          11              0       37     409
24 months   ki1000108-IRC              INDIA                          11              1        3     409
24 months   ki1000108-IRC              INDIA                          12              0       51     409
24 months   ki1000108-IRC              INDIA                          12              1        1     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0       40     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2               0       32     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2               1        4     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3               0       31     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3               1        8     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4               0       27     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4               1        7     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5               0       31     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5               1        4     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6               0       31     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6               1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7               0       29     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7               1        5     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8               0       22     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8               1        5     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9               0       23     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9               1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10              0       26     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10              1        7     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11              0       38     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11              1        4     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12              0       45     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12              1        1     428
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              1        0       6
24 months   ki1101329-Keneba           GAMBIA                         1               0      159    1726
24 months   ki1101329-Keneba           GAMBIA                         1               1       12    1726
24 months   ki1101329-Keneba           GAMBIA                         2               0      161    1726
24 months   ki1101329-Keneba           GAMBIA                         2               1        6    1726
24 months   ki1101329-Keneba           GAMBIA                         3               0      158    1726
24 months   ki1101329-Keneba           GAMBIA                         3               1       12    1726
24 months   ki1101329-Keneba           GAMBIA                         4               0      104    1726
24 months   ki1101329-Keneba           GAMBIA                         4               1       10    1726
24 months   ki1101329-Keneba           GAMBIA                         5               0      114    1726
24 months   ki1101329-Keneba           GAMBIA                         5               1        8    1726
24 months   ki1101329-Keneba           GAMBIA                         6               0       84    1726
24 months   ki1101329-Keneba           GAMBIA                         6               1        8    1726
24 months   ki1101329-Keneba           GAMBIA                         7               0       65    1726
24 months   ki1101329-Keneba           GAMBIA                         7               1       18    1726
24 months   ki1101329-Keneba           GAMBIA                         8               0      134    1726
24 months   ki1101329-Keneba           GAMBIA                         8               1       24    1726
24 months   ki1101329-Keneba           GAMBIA                         9               0      139    1726
24 months   ki1101329-Keneba           GAMBIA                         9               1       21    1726
24 months   ki1101329-Keneba           GAMBIA                         10              0      163    1726
24 months   ki1101329-Keneba           GAMBIA                         10              1       37    1726
24 months   ki1101329-Keneba           GAMBIA                         11              0      121    1726
24 months   ki1101329-Keneba           GAMBIA                         11              1       19    1726
24 months   ki1101329-Keneba           GAMBIA                         12              0      133    1726
24 months   ki1101329-Keneba           GAMBIA                         12              1       16    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3               1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          4               0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          4               1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          5               0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          5               1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          6               0       70     498
24 months   ki1113344-GMS-Nepal        NEPAL                          6               1       20     498
24 months   ki1113344-GMS-Nepal        NEPAL                          7               0      169     498
24 months   ki1113344-GMS-Nepal        NEPAL                          7               1       37     498
24 months   ki1113344-GMS-Nepal        NEPAL                          8               0      168     498
24 months   ki1113344-GMS-Nepal        NEPAL                          8               1       34     498
24 months   ki1113344-GMS-Nepal        NEPAL                          9               0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          9               1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          10              0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          10              1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          11              0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          11              1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          12              0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          12              1        0     498
24 months   ki1114097-CMIN             BANGLADESH                     1               0       26     243
24 months   ki1114097-CMIN             BANGLADESH                     1               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     2               0       24     243
24 months   ki1114097-CMIN             BANGLADESH                     2               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     3               0       17     243
24 months   ki1114097-CMIN             BANGLADESH                     3               1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     4               0       19     243
24 months   ki1114097-CMIN             BANGLADESH                     4               1        3     243
24 months   ki1114097-CMIN             BANGLADESH                     5               0       16     243
24 months   ki1114097-CMIN             BANGLADESH                     5               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     6               0        8     243
24 months   ki1114097-CMIN             BANGLADESH                     6               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     7               0       13     243
24 months   ki1114097-CMIN             BANGLADESH                     7               1        2     243
24 months   ki1114097-CMIN             BANGLADESH                     8               0       16     243
24 months   ki1114097-CMIN             BANGLADESH                     8               1        2     243
24 months   ki1114097-CMIN             BANGLADESH                     9               0       16     243
24 months   ki1114097-CMIN             BANGLADESH                     9               1        4     243
24 months   ki1114097-CMIN             BANGLADESH                     10              0       19     243
24 months   ki1114097-CMIN             BANGLADESH                     10              1        5     243
24 months   ki1114097-CMIN             BANGLADESH                     11              0       20     243
24 months   ki1114097-CMIN             BANGLADESH                     11              1        5     243
24 months   ki1114097-CMIN             BANGLADESH                     12              0       24     243
24 months   ki1114097-CMIN             BANGLADESH                     12              1        3     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               0       47     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2               0       41     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2               1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3               0       52     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3               1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4               0       49     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4               1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5               0       44     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6               0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7               0       38     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7               1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8               0       48     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9               0       61     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9               1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10              0       55     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10              1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11              0       39     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11              1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12              0       26     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12              1        3     551
24 months   ki1114097-CMIN             PERU                           1               0       13     429
24 months   ki1114097-CMIN             PERU                           1               1        0     429
24 months   ki1114097-CMIN             PERU                           2               0       38     429
24 months   ki1114097-CMIN             PERU                           2               1        1     429
24 months   ki1114097-CMIN             PERU                           3               0       51     429
24 months   ki1114097-CMIN             PERU                           3               1        0     429
24 months   ki1114097-CMIN             PERU                           4               0       47     429
24 months   ki1114097-CMIN             PERU                           4               1        0     429
24 months   ki1114097-CMIN             PERU                           5               0       33     429
24 months   ki1114097-CMIN             PERU                           5               1        0     429
24 months   ki1114097-CMIN             PERU                           6               0       39     429
24 months   ki1114097-CMIN             PERU                           6               1        1     429
24 months   ki1114097-CMIN             PERU                           7               0       41     429
24 months   ki1114097-CMIN             PERU                           7               1        0     429
24 months   ki1114097-CMIN             PERU                           8               0       34     429
24 months   ki1114097-CMIN             PERU                           8               1        0     429
24 months   ki1114097-CMIN             PERU                           9               0       39     429
24 months   ki1114097-CMIN             PERU                           9               1        0     429
24 months   ki1114097-CMIN             PERU                           10              0       33     429
24 months   ki1114097-CMIN             PERU                           10              1        0     429
24 months   ki1114097-CMIN             PERU                           11              0       32     429
24 months   ki1114097-CMIN             PERU                           11              1        0     429
24 months   ki1114097-CMIN             PERU                           12              0       27     429
24 months   ki1114097-CMIN             PERU                           12              1        0     429
24 months   ki1114097-CONTENT          PERU                           1               0        7     164
24 months   ki1114097-CONTENT          PERU                           1               1        0     164
24 months   ki1114097-CONTENT          PERU                           2               0       14     164
24 months   ki1114097-CONTENT          PERU                           2               1        0     164
24 months   ki1114097-CONTENT          PERU                           3               0       22     164
24 months   ki1114097-CONTENT          PERU                           3               1        0     164
24 months   ki1114097-CONTENT          PERU                           4               0       15     164
24 months   ki1114097-CONTENT          PERU                           4               1        0     164
24 months   ki1114097-CONTENT          PERU                           5               0       14     164
24 months   ki1114097-CONTENT          PERU                           5               1        0     164
24 months   ki1114097-CONTENT          PERU                           6               0       11     164
24 months   ki1114097-CONTENT          PERU                           6               1        0     164
24 months   ki1114097-CONTENT          PERU                           7               0       23     164
24 months   ki1114097-CONTENT          PERU                           7               1        0     164
24 months   ki1114097-CONTENT          PERU                           8               0       14     164
24 months   ki1114097-CONTENT          PERU                           8               1        0     164
24 months   ki1114097-CONTENT          PERU                           9               0       17     164
24 months   ki1114097-CONTENT          PERU                           9               1        0     164
24 months   ki1114097-CONTENT          PERU                           10              0       11     164
24 months   ki1114097-CONTENT          PERU                           10              1        0     164
24 months   ki1114097-CONTENT          PERU                           11              0        6     164
24 months   ki1114097-CONTENT          PERU                           11              1        0     164
24 months   ki1114097-CONTENT          PERU                           12              0       10     164
24 months   ki1114097-CONTENT          PERU                           12              1        0     164
24 months   ki1119695-PROBIT           BELARUS                        1               0      245    3971
24 months   ki1119695-PROBIT           BELARUS                        1               1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        2               0      211    3971
24 months   ki1119695-PROBIT           BELARUS                        2               1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        3               0      310    3971
24 months   ki1119695-PROBIT           BELARUS                        3               1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        4               0      327    3971
24 months   ki1119695-PROBIT           BELARUS                        4               1        5    3971
24 months   ki1119695-PROBIT           BELARUS                        5               0      295    3971
24 months   ki1119695-PROBIT           BELARUS                        5               1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        6               0      263    3971
24 months   ki1119695-PROBIT           BELARUS                        6               1        5    3971
24 months   ki1119695-PROBIT           BELARUS                        7               0      367    3971
24 months   ki1119695-PROBIT           BELARUS                        7               1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        8               0      330    3971
24 months   ki1119695-PROBIT           BELARUS                        8               1        7    3971
24 months   ki1119695-PROBIT           BELARUS                        9               0      376    3971
24 months   ki1119695-PROBIT           BELARUS                        9               1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        10              0      388    3971
24 months   ki1119695-PROBIT           BELARUS                        10              1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        11              0      373    3971
24 months   ki1119695-PROBIT           BELARUS                        11              1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        12              0      442    3971
24 months   ki1119695-PROBIT           BELARUS                        12              1        4    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       41     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1        6     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0       52     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1        9     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3               0       43     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3               1       12     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4               0       39     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4               1        7     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5               0       36     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5               1       14     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6               0       35     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6               1        9     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7               0       23     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7               1        4     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8               0       23     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8               1        7     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               0        2     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               1        0     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              0        4     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              1        0     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11              0       19     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11              1        1     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12              0       30     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12              1        7     423
24 months   ki1148112-LCNI-5           MALAWI                         1               0       39     563
24 months   ki1148112-LCNI-5           MALAWI                         1               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         2               0       30     563
24 months   ki1148112-LCNI-5           MALAWI                         2               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         3               0       18     563
24 months   ki1148112-LCNI-5           MALAWI                         3               1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         4               0       28     563
24 months   ki1148112-LCNI-5           MALAWI                         4               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         5               0       30     563
24 months   ki1148112-LCNI-5           MALAWI                         5               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         6               0       24     563
24 months   ki1148112-LCNI-5           MALAWI                         6               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         7               0       45     563
24 months   ki1148112-LCNI-5           MALAWI                         7               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         8               0       68     563
24 months   ki1148112-LCNI-5           MALAWI                         8               1        2     563
24 months   ki1148112-LCNI-5           MALAWI                         9               0       61     563
24 months   ki1148112-LCNI-5           MALAWI                         9               1        2     563
24 months   ki1148112-LCNI-5           MALAWI                         10              0       88     563
24 months   ki1148112-LCNI-5           MALAWI                         10              1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         11              0       61     563
24 months   ki1148112-LCNI-5           MALAWI                         11              1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         12              0       61     563
24 months   ki1148112-LCNI-5           MALAWI                         12              1        3     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      569    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1       96    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0      465    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1       96    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0      582    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1      132    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4               0      393    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4               1      111    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5               0      279    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5               1       85    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6               0      442    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6               1      167    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7               0      485    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7               1      187    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8               0      449    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8               1      169    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9               0      581    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9               1      219    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10              0      665    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10              1      209    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11              0      815    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11              1      224    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12              0     1000    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12              1      183    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0        0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1        0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0      668    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1      113    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0      724    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1      127    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4               0      521    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4               1      128    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5               0      432    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5               1      131    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6               0      312    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6               1      106    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7               0      358    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7               1      126    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8               0      410    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8               1       93    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9               0      292    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9               1       72    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10              0       98    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10              1       24    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              0        0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              1        0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              0        0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              1        0    4735


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a757fd36-5379-4358-99a6-18b22ec45ad3/68020c31-4b5c-42be-b8f1-008395561a5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a757fd36-5379-4358-99a6-18b22ec45ad3/68020c31-4b5c-42be-b8f1-008395561a5f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a757fd36-5379-4358-99a6-18b22ec45ad3/68020c31-4b5c-42be-b8f1-008395561a5f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a757fd36-5379-4358-99a6-18b22ec45ad3/68020c31-4b5c-42be-b8f1-008395561a5f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                0.2116788    0.1193161   0.3040416
Birth       ki1119695-PROBIT     BELARUS      2                    NA                0.1839800    0.1064045   0.2615554
Birth       ki1119695-PROBIT     BELARUS      3                    NA                0.2029756    0.1258272   0.2801239
Birth       ki1119695-PROBIT     BELARUS      4                    NA                0.2156863    0.1364110   0.2949615
Birth       ki1119695-PROBIT     BELARUS      5                    NA                0.2356688    0.1478587   0.3234789
Birth       ki1119695-PROBIT     BELARUS      6                    NA                0.2147059    0.1458375   0.2835742
Birth       ki1119695-PROBIT     BELARUS      7                    NA                0.2354312    0.1577090   0.3131535
Birth       ki1119695-PROBIT     BELARUS      8                    NA                0.2082695    0.1357276   0.2808114
Birth       ki1119695-PROBIT     BELARUS      9                    NA                0.1986405    0.1215408   0.2757402
Birth       ki1119695-PROBIT     BELARUS      10                   NA                0.2155809    0.1536363   0.2775256
Birth       ki1119695-PROBIT     BELARUS      11                   NA                0.1865510    0.1324606   0.2406414
Birth       ki1119695-PROBIT     BELARUS      12                   NA                0.2003891    0.1263248   0.2744534
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.1467964    0.1270419   0.1665510
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.1316614    0.1102383   0.1530846
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.1402043    0.1194678   0.1609408
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.1279826    0.1064182   0.1495471
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.1528525    0.1297120   0.1759930
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.1889313    0.1652304   0.2126322
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.1989051    0.1752718   0.2225384
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.1743892    0.1528025   0.1959760
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.1436597    0.1241839   0.1631356
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.1632653    0.1401237   0.1864069
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.1767906    0.1542761   0.1993050
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.1625659    0.1411279   0.1840039
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0745342    0.0600178   0.0890505
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0867866    0.0698756   0.1036975
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0942912    0.0790919   0.1094905
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0930027    0.0747962   0.1112092
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0989717    0.0771798   0.1207636
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0993939    0.0776133   0.1211745
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0814081    0.0620481   0.1007682
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.1043550    0.0860964   0.1226135
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.1164921    0.0988004   0.1341839
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.1145268    0.0982026   0.1308511
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.1009615    0.0856312   0.1162918
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0811442    0.0666471   0.0956413
6 months    ki1101329-Keneba     GAMBIA       1                    NA                0.0523810    0.0222408   0.0825211
6 months    ki1101329-Keneba     GAMBIA       2                    NA                0.0481283    0.0174437   0.0788130
6 months    ki1101329-Keneba     GAMBIA       3                    NA                0.0818182    0.0455914   0.1180450
6 months    ki1101329-Keneba     GAMBIA       4                    NA                0.1048951    0.0546610   0.1551292
6 months    ki1101329-Keneba     GAMBIA       5                    NA                0.0833333    0.0381804   0.1284863
6 months    ki1101329-Keneba     GAMBIA       6                    NA                0.0593220    0.0166897   0.1019544
6 months    ki1101329-Keneba     GAMBIA       7                    NA                0.0760870    0.0218958   0.1302782
6 months    ki1101329-Keneba     GAMBIA       8                    NA                0.0574713    0.0228813   0.0920612
6 months    ki1101329-Keneba     GAMBIA       9                    NA                0.0459770    0.0148507   0.0771033
6 months    ki1101329-Keneba     GAMBIA       10                   NA                0.0241935    0.0050661   0.0433210
6 months    ki1101329-Keneba     GAMBIA       11                   NA                0.0374332    0.0102202   0.0646461
6 months    ki1101329-Keneba     GAMBIA       12                   NA                0.0572917    0.0244114   0.0901720
6 months    ki1119695-PROBIT     BELARUS      1                    NA                0.0071795    0.0018796   0.0124793
6 months    ki1119695-PROBIT     BELARUS      2                    NA                0.0085745    0.0022686   0.0148804
6 months    ki1119695-PROBIT     BELARUS      3                    NA                0.0046904    0.0008089   0.0085720
6 months    ki1119695-PROBIT     BELARUS      4                    NA                0.0081967    0.0025025   0.0138909
6 months    ki1119695-PROBIT     BELARUS      5                    NA                0.0072007   -0.0008925   0.0152939
6 months    ki1119695-PROBIT     BELARUS      6                    NA                0.0080717    0.0041608   0.0119827
6 months    ki1119695-PROBIT     BELARUS      7                    NA                0.0075188    0.0040722   0.0109654
6 months    ki1119695-PROBIT     BELARUS      8                    NA                0.0095044    0.0020455   0.0169633
6 months    ki1119695-PROBIT     BELARUS      9                    NA                0.0066269    0.0024375   0.0108163
6 months    ki1119695-PROBIT     BELARUS      10                   NA                0.0082889    0.0022123   0.0143655
6 months    ki1119695-PROBIT     BELARUS      11                   NA                0.0144836    0.0074961   0.0214712
6 months    ki1119695-PROBIT     BELARUS      12                   NA                0.0069085    0.0029953   0.0108217
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0302267    0.0183172   0.0421362
6 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0358362    0.0207853   0.0508871
6 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0397260    0.0255567   0.0538953
6 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0268139    0.0142389   0.0393889
6 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0280528    0.0149052   0.0412004
6 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0358255    0.0214481   0.0502030
6 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0236593    0.0118280   0.0354906
6 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0428954    0.0283546   0.0574363
6 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0281124    0.0162583   0.0399666
6 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0333890    0.0190014   0.0477766
6 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0223097    0.0118229   0.0327965
6 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0369898    0.0237777   0.0502019
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0931446    0.0758141   0.1104750
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0831889    0.0656386   0.1007392
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0716820    0.0567752   0.0865889
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0814941    0.0657839   0.0972042
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0765766    0.0594765   0.0936767
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0792988    0.0629138   0.0956838
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0812749    0.0659292   0.0966206
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0871287    0.0706528   0.1036046
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0789636    0.0656309   0.0922963
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0972973    0.0820637   0.1125309
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0949403    0.0801099   0.1097707
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0836502    0.0695300   0.0977704
24 months   ki1101329-Keneba     GAMBIA       1                    NA                0.0701754    0.0318781   0.1084728
24 months   ki1101329-Keneba     GAMBIA       2                    NA                0.0359282    0.0076932   0.0641632
24 months   ki1101329-Keneba     GAMBIA       3                    NA                0.0705882    0.0320741   0.1091023
24 months   ki1101329-Keneba     GAMBIA       4                    NA                0.0877193    0.0357755   0.1396631
24 months   ki1101329-Keneba     GAMBIA       5                    NA                0.0655738    0.0216366   0.1095109
24 months   ki1101329-Keneba     GAMBIA       6                    NA                0.0869565    0.0293626   0.1445505
24 months   ki1101329-Keneba     GAMBIA       7                    NA                0.2168675    0.1281826   0.3055524
24 months   ki1101329-Keneba     GAMBIA       8                    NA                0.1518987    0.0959170   0.2078805
24 months   ki1101329-Keneba     GAMBIA       9                    NA                0.1312500    0.0789127   0.1835873
24 months   ki1101329-Keneba     GAMBIA       10                   NA                0.1850000    0.1311701   0.2388299
24 months   ki1101329-Keneba     GAMBIA       11                   NA                0.1357143    0.0789662   0.1924624
24 months   ki1101329-Keneba     GAMBIA       12                   NA                0.1073826    0.0576569   0.1571082
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.1443609    0.1181592   0.1705626
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.1711230    0.1387421   0.2035039
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.1848739    0.1528179   0.2169300
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.2202381    0.1813182   0.2591580
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.2335165    0.1862058   0.2808272
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.2742200    0.2376489   0.3107912
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.2782738    0.2387774   0.3177702
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.2734628    0.2352837   0.3116418
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.2737500    0.2383030   0.3091970
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.2391304    0.2096375   0.2686234
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.2155919    0.1887395   0.2424443
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.1546915    0.1316767   0.1777062


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.1594921   0.1531776   0.1658066
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0958686   0.0906699   0.1010673
6 months    ki1101329-Keneba     GAMBIA       NA                   NA                0.0579225   0.0479029   0.0679420
6 months    ki1119695-PROBIT     BELARUS      NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0320668   0.0282681   0.0358654
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0846640   0.0798626   0.0894653
24 months   ki1101329-Keneba     GAMBIA       NA                   NA                0.1106605   0.0958563   0.1254646
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.2182959   0.2084450   0.2281469


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT     BELARUS      2                    1                 0.8691468   0.6971061   1.083646
Birth       ki1119695-PROBIT     BELARUS      3                    1                 0.9588845   0.7740358   1.187877
Birth       ki1119695-PROBIT     BELARUS      4                    1                 1.0189317   0.7883067   1.317028
Birth       ki1119695-PROBIT     BELARUS      5                    1                 1.1133319   0.8484102   1.460977
Birth       ki1119695-PROBIT     BELARUS      6                    1                 1.0143002   0.6937721   1.482915
Birth       ki1119695-PROBIT     BELARUS      7                    1                 1.1122096   0.7692278   1.608119
Birth       ki1119695-PROBIT     BELARUS      8                    1                 0.9838940   0.6815042   1.420457
Birth       ki1119695-PROBIT     BELARUS      9                    1                 0.9384050   0.6438065   1.367809
Birth       ki1119695-PROBIT     BELARUS      10                   1                 1.0184340   0.7199634   1.440640
Birth       ki1119695-PROBIT     BELARUS      11                   1                 0.8812925   0.6606283   1.175663
Birth       ki1119695-PROBIT     BELARUS      12                   1                 0.9466658   0.6827432   1.312611
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 0.8968981   0.7261745   1.107759
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 0.9550932   0.7819947   1.166508
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.8718376   0.7027244   1.081648
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 1.0412551   0.8503319   1.275046
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.2870292   1.0707536   1.546989
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.3549724   1.1323132   1.621415
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 1.1879663   0.9894545   1.426305
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.9786322   0.8084642   1.184618
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.1121885   0.9147367   1.352262
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.2043247   1.0006419   1.449468
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.1074241   0.9172483   1.337030
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.1643862   0.8842677   1.533241
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.2650738   0.9840190   1.626403
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.2477857   0.9536854   1.632581
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.3278706   0.9932015   1.775310
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.3335354   0.9872364   1.801308
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.0922259   0.8042828   1.483256
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.4000959   1.0735395   1.825986
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.5629363   1.2228573   1.997592
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.5365682   1.2102553   1.950863
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.3545673   1.0620946   1.727579
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.0886846   0.8348489   1.419699
6 months    ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba     GAMBIA       2                    1                 0.9188138   0.3892666   2.168742
6 months    ki1101329-Keneba     GAMBIA       3                    1                 1.5619835   0.7557194   3.228437
6 months    ki1101329-Keneba     GAMBIA       4                    1                 2.0025429   0.9472399   4.233540
6 months    ki1101329-Keneba     GAMBIA       5                    1                 1.5909091   0.7217633   3.506678
6 months    ki1101329-Keneba     GAMBIA       6                    1                 1.1325116   0.4510427   2.843595
6 months    ki1101329-Keneba     GAMBIA       7                    1                 1.4525692   0.5814184   3.628982
6 months    ki1101329-Keneba     GAMBIA       8                    1                 1.0971787   0.4771506   2.522895
6 months    ki1101329-Keneba     GAMBIA       9                    1                 0.8777429   0.3609950   2.134192
6 months    ki1101329-Keneba     GAMBIA       10                   1                 0.4618768   0.1737249   1.227977
6 months    ki1101329-Keneba     GAMBIA       11                   1                 0.7146330   0.2827700   1.806062
6 months    ki1101329-Keneba     GAMBIA       12                   1                 1.0937500   0.4852570   2.465269
6 months    ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT     BELARUS      2                    1                 1.1943041   0.4521821   3.154398
6 months    ki1119695-PROBIT     BELARUS      3                    1                 0.6533101   0.2105749   2.026899
6 months    ki1119695-PROBIT     BELARUS      4                    1                 1.1416862   0.4041330   3.225293
6 months    ki1119695-PROBIT     BELARUS      5                    1                 1.0029574   0.2533124   3.971079
6 months    ki1119695-PROBIT     BELARUS      6                    1                 1.1242793   0.4381864   2.884626
6 months    ki1119695-PROBIT     BELARUS      7                    1                 1.0472610   0.4656049   2.355550
6 months    ki1119695-PROBIT     BELARUS      8                    1                 1.3238289   0.4340459   4.037645
6 months    ki1119695-PROBIT     BELARUS      9                    1                 0.9230332   0.4373358   1.948138
6 months    ki1119695-PROBIT     BELARUS      10                   1                 1.1545293   0.4647745   2.867924
6 months    ki1119695-PROBIT     BELARUS      11                   1                 2.0173624   0.9078644   4.482774
6 months    ki1119695-PROBIT     BELARUS      12                   1                 0.9622502   0.3887436   2.381841
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.1855802   0.6665471   2.108779
6 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.3142694   0.7724504   2.236136
6 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.8870925   0.4807908   1.636748
6 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.9280803   0.5031205   1.711982
6 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.1852285   0.6753882   2.079939
6 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 0.7827287   0.4141162   1.479450
6 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 1.4191242   0.8439001   2.386436
6 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.9300535   0.5222466   1.656305
6 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.1046188   0.6160751   1.980575
6 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.7380796   0.3996960   1.362940
6 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.2237457   0.7190007   2.082826
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    1                 0.8931161   0.6752809   1.181222
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.7695784   0.5927892   0.999092
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.8749202   0.6693975   1.143544
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    1                 0.8221261   0.6238122   1.083485
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.8513523   0.6457778   1.122369
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.8725673   0.6704602   1.135599
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.9354139   0.7296326   1.199232
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.8477532   0.6621211   1.085429
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.0445838   0.8194253   1.331611
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.0192791   0.8089090   1.284360
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   1                 0.8980684   0.7096912   1.136448
24 months   ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba     GAMBIA       2                    1                 0.5119763   0.1966644   1.332828
24 months   ki1101329-Keneba     GAMBIA       3                    1                 1.0058824   0.4649439   2.176175
24 months   ki1101329-Keneba     GAMBIA       4                    1                 1.2500000   0.5587015   2.796663
24 months   ki1101329-Keneba     GAMBIA       5                    1                 0.9344262   0.3937695   2.217420
24 months   ki1101329-Keneba     GAMBIA       6                    1                 1.2391304   0.5252966   2.923005
24 months   ki1101329-Keneba     GAMBIA       7                    1                 3.0903614   1.5625770   6.111912
24 months   ki1101329-Keneba     GAMBIA       8                    1                 2.1645570   1.1204049   4.181798
24 months   ki1101329-Keneba     GAMBIA       9                    1                 1.8703125   0.9514262   3.676658
24 months   ki1101329-Keneba     GAMBIA       10                   1                 2.6362500   1.4203398   4.893065
24 months   ki1101329-Keneba     GAMBIA       11                   1                 1.9339286   0.9724279   3.846125
24 months   ki1101329-Keneba     GAMBIA       12                   1                 1.5302013   0.7480194   3.130288
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.1853832   0.9083245   1.546951
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.2806373   1.0059191   1.630381
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.5256076   1.1827914   1.967785
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.6175881   1.2384742   2.112754
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.8995450   1.5233731   2.368606
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.9276259   1.5248743   2.436753
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.8942995   1.5040455   2.385813
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.8962891   1.5081420   2.384333
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.6564764   1.3188615   2.080517
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.4934232   1.1995652   1.859268
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.0715607   0.8446465   1.359435


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.0027668   -0.0590660   0.0535324
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0126957   -0.0061619   0.0315533
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0213344    0.0073775   0.0352914
6 months    ki1101329-Keneba     GAMBIA       1                    NA                 0.0055415   -0.0232019   0.0342848
6 months    ki1119695-PROBIT     BELARUS      1                    NA                 0.0010708   -0.0036980   0.0058396
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0018401   -0.0095182   0.0131984
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0084806   -0.0241544   0.0071932
24 months   ki1101329-Keneba     GAMBIA       1                    NA                 0.0404850    0.0031322   0.0778379
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0739350    0.0476100   0.1002601


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.0132438   -0.3212098   0.2229371
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0796006   -0.0465338   0.1905326
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.2225384    0.0629423   0.3549528
6 months    ki1101329-Keneba     GAMBIA       1                    NA                 0.0956710   -0.5650275   0.4774463
6 months    ki1119695-PROBIT     BELARUS      1                    NA                 0.1297909   -0.7003385   0.5546394
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0573832   -0.3724683   0.3526070
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.1001677   -0.3004723   0.0692851
24 months   ki1101329-Keneba     GAMBIA       1                    NA                 0.3658492   -0.0747368   0.6258179
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.3386918    0.2089197   0.4471755
