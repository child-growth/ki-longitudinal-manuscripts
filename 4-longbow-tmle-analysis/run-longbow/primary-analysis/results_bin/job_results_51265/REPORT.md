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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        brthmon    swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                0       23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                0       20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                0       20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                0       10     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                0       22     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10               0       23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10               1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11               0       15     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11               1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12               0       25     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12               1        1     241
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0       10     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2                0       18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3                0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4                0        9     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5                0       15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6                0        8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7                0       16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8                0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9                0       28     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10               0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11               0       18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12               0       10     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12               1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          1                0       15     203
Birth       ki0047075b-MAL-ED          INDIA                          1                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          2                0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          2                1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          3                0       20     203
Birth       ki0047075b-MAL-ED          INDIA                          3                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          4                0       13     203
Birth       ki0047075b-MAL-ED          INDIA                          4                1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          5                0        7     203
Birth       ki0047075b-MAL-ED          INDIA                          5                1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          6                0       17     203
Birth       ki0047075b-MAL-ED          INDIA                          6                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          7                0       19     203
Birth       ki0047075b-MAL-ED          INDIA                          7                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          8                0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          8                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          9                0       18     203
Birth       ki0047075b-MAL-ED          INDIA                          9                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          10               0       21     203
Birth       ki0047075b-MAL-ED          INDIA                          10               1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          11               0       20     203
Birth       ki0047075b-MAL-ED          INDIA                          11               1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          12               0       14     203
Birth       ki0047075b-MAL-ED          INDIA                          12               1        0     203
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       15     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          2                0       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          2                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          3                0       12     168
Birth       ki0047075b-MAL-ED          NEPAL                          3                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          4                0       15     168
Birth       ki0047075b-MAL-ED          NEPAL                          4                1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          5                0       18     168
Birth       ki0047075b-MAL-ED          NEPAL                          5                1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          6                0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          6                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          7                0       17     168
Birth       ki0047075b-MAL-ED          NEPAL                          7                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          8                0       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          8                1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          9                0       11     168
Birth       ki0047075b-MAL-ED          NEPAL                          9                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          10               0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          10               1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          11               0       16     168
Birth       ki0047075b-MAL-ED          NEPAL                          11               1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          12               0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          12               1        0     168
Birth       ki0047075b-MAL-ED          PERU                           1                0       37     279
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           2                0       20     279
Birth       ki0047075b-MAL-ED          PERU                           2                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           3                0       23     279
Birth       ki0047075b-MAL-ED          PERU                           3                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           4                0       20     279
Birth       ki0047075b-MAL-ED          PERU                           4                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           5                0       26     279
Birth       ki0047075b-MAL-ED          PERU                           5                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           6                0       15     279
Birth       ki0047075b-MAL-ED          PERU                           6                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           7                0       23     279
Birth       ki0047075b-MAL-ED          PERU                           7                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           8                0       19     279
Birth       ki0047075b-MAL-ED          PERU                           8                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           9                0       22     279
Birth       ki0047075b-MAL-ED          PERU                           9                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           10               0       24     279
Birth       ki0047075b-MAL-ED          PERU                           10               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           11               0       31     279
Birth       ki0047075b-MAL-ED          PERU                           11               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           12               0       19     279
Birth       ki0047075b-MAL-ED          PERU                           12               1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       24     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       16     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       17     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       22     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       28     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       38     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       10     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       11     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       15     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                0        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4                0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5                0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6                0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7                0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8                0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9                0        6      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9                1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10               0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11               0       11      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12               0        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12               1        1      88
Birth       ki1000108-IRC              INDIA                          1                0       29     343
Birth       ki1000108-IRC              INDIA                          1                1        2     343
Birth       ki1000108-IRC              INDIA                          2                0       22     343
Birth       ki1000108-IRC              INDIA                          2                1        1     343
Birth       ki1000108-IRC              INDIA                          3                0       19     343
Birth       ki1000108-IRC              INDIA                          3                1        5     343
Birth       ki1000108-IRC              INDIA                          4                0       17     343
Birth       ki1000108-IRC              INDIA                          4                1        2     343
Birth       ki1000108-IRC              INDIA                          5                0       11     343
Birth       ki1000108-IRC              INDIA                          5                1        4     343
Birth       ki1000108-IRC              INDIA                          6                0       21     343
Birth       ki1000108-IRC              INDIA                          6                1        5     343
Birth       ki1000108-IRC              INDIA                          7                0       26     343
Birth       ki1000108-IRC              INDIA                          7                1        5     343
Birth       ki1000108-IRC              INDIA                          8                0       30     343
Birth       ki1000108-IRC              INDIA                          8                1        6     343
Birth       ki1000108-IRC              INDIA                          9                0       17     343
Birth       ki1000108-IRC              INDIA                          9                1        7     343
Birth       ki1000108-IRC              INDIA                          10               0       25     343
Birth       ki1000108-IRC              INDIA                          10               1        8     343
Birth       ki1000108-IRC              INDIA                          11               0       35     343
Birth       ki1000108-IRC              INDIA                          11               1        3     343
Birth       ki1000108-IRC              INDIA                          12               0       37     343
Birth       ki1000108-IRC              INDIA                          12               1        6     343
Birth       ki1000109-EE               PAKISTAN                       1                0        0       1
Birth       ki1000109-EE               PAKISTAN                       1                1        0       1
Birth       ki1000109-EE               PAKISTAN                       2                0        0       1
Birth       ki1000109-EE               PAKISTAN                       2                1        0       1
Birth       ki1000109-EE               PAKISTAN                       3                0        0       1
Birth       ki1000109-EE               PAKISTAN                       3                1        0       1
Birth       ki1000109-EE               PAKISTAN                       4                0        0       1
Birth       ki1000109-EE               PAKISTAN                       4                1        0       1
Birth       ki1000109-EE               PAKISTAN                       5                0        0       1
Birth       ki1000109-EE               PAKISTAN                       5                1        0       1
Birth       ki1000109-EE               PAKISTAN                       6                0        0       1
Birth       ki1000109-EE               PAKISTAN                       6                1        0       1
Birth       ki1000109-EE               PAKISTAN                       7                0        0       1
Birth       ki1000109-EE               PAKISTAN                       7                1        0       1
Birth       ki1000109-EE               PAKISTAN                       8                0        0       1
Birth       ki1000109-EE               PAKISTAN                       8                1        0       1
Birth       ki1000109-EE               PAKISTAN                       9                0        0       1
Birth       ki1000109-EE               PAKISTAN                       9                1        0       1
Birth       ki1000109-EE               PAKISTAN                       10               0        0       1
Birth       ki1000109-EE               PAKISTAN                       10               1        0       1
Birth       ki1000109-EE               PAKISTAN                       11               0        0       1
Birth       ki1000109-EE               PAKISTAN                       11               1        0       1
Birth       ki1000109-EE               PAKISTAN                       12               0        1       1
Birth       ki1000109-EE               PAKISTAN                       12               1        0       1
Birth       ki1000109-ResPak           PAKISTAN                       1                0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       1                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2                0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3                0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       4                0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       4                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       5                0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       5                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       6                0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       6                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       7                0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       7                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8                0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9                0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12               1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                0        9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                0       14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                0        6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                0       15     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                0       19     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10               0       18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10               1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11               0       17     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11               1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12               0       15     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12               1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10               0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11               0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12               0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12               1        0      28
Birth       ki1101329-Keneba           GAMBIA                         1                0      143    1423
Birth       ki1101329-Keneba           GAMBIA                         1                1        1    1423
Birth       ki1101329-Keneba           GAMBIA                         2                0      138    1423
Birth       ki1101329-Keneba           GAMBIA                         2                1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         3                0      154    1423
Birth       ki1101329-Keneba           GAMBIA                         3                1        1    1423
Birth       ki1101329-Keneba           GAMBIA                         4                0       95    1423
Birth       ki1101329-Keneba           GAMBIA                         4                1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         5                0       97    1423
Birth       ki1101329-Keneba           GAMBIA                         5                1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         6                0       84    1423
Birth       ki1101329-Keneba           GAMBIA                         6                1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         7                0       65    1423
Birth       ki1101329-Keneba           GAMBIA                         7                1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         8                0      117    1423
Birth       ki1101329-Keneba           GAMBIA                         8                1        1    1423
Birth       ki1101329-Keneba           GAMBIA                         9                0      116    1423
Birth       ki1101329-Keneba           GAMBIA                         9                1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         10               0      167    1423
Birth       ki1101329-Keneba           GAMBIA                         10               1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         11               0      108    1423
Birth       ki1101329-Keneba           GAMBIA                         11               1        1    1423
Birth       ki1101329-Keneba           GAMBIA                         12               0      128    1423
Birth       ki1101329-Keneba           GAMBIA                         12               1        1    1423
Birth       ki1114097-CMIN             BANGLADESH                     1                0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     2                0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     2                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3                0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4                0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     5                0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     5                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     6                0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     6                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7                0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     8                0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     8                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     9                0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     9                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     10               0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     10               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     11               0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     11               1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     12               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     12               1        0       8
Birth       ki1114097-CMIN             BRAZIL                         1                0       13     111
Birth       ki1114097-CMIN             BRAZIL                         1                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         2                0        6     111
Birth       ki1114097-CMIN             BRAZIL                         2                1        1     111
Birth       ki1114097-CMIN             BRAZIL                         3                0       12     111
Birth       ki1114097-CMIN             BRAZIL                         3                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         4                0        9     111
Birth       ki1114097-CMIN             BRAZIL                         4                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         5                0        5     111
Birth       ki1114097-CMIN             BRAZIL                         5                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         6                0        6     111
Birth       ki1114097-CMIN             BRAZIL                         6                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         7                0        4     111
Birth       ki1114097-CMIN             BRAZIL                         7                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         8                0       12     111
Birth       ki1114097-CMIN             BRAZIL                         8                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         9                0        8     111
Birth       ki1114097-CMIN             BRAZIL                         9                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         10               0       14     111
Birth       ki1114097-CMIN             BRAZIL                         10               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         11               0       11     111
Birth       ki1114097-CMIN             BRAZIL                         11               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         12               0       10     111
Birth       ki1114097-CMIN             BRAZIL                         12               1        0     111
Birth       ki1114097-CMIN             PERU                           1                0        1      10
Birth       ki1114097-CMIN             PERU                           1                1        0      10
Birth       ki1114097-CMIN             PERU                           2                0        1      10
Birth       ki1114097-CMIN             PERU                           2                1        0      10
Birth       ki1114097-CMIN             PERU                           3                0        2      10
Birth       ki1114097-CMIN             PERU                           3                1        0      10
Birth       ki1114097-CMIN             PERU                           4                0        3      10
Birth       ki1114097-CMIN             PERU                           4                1        0      10
Birth       ki1114097-CMIN             PERU                           5                0        0      10
Birth       ki1114097-CMIN             PERU                           5                1        0      10
Birth       ki1114097-CMIN             PERU                           6                0        0      10
Birth       ki1114097-CMIN             PERU                           6                1        0      10
Birth       ki1114097-CMIN             PERU                           7                0        0      10
Birth       ki1114097-CMIN             PERU                           7                1        0      10
Birth       ki1114097-CMIN             PERU                           8                0        1      10
Birth       ki1114097-CMIN             PERU                           8                1        0      10
Birth       ki1114097-CMIN             PERU                           9                0        2      10
Birth       ki1114097-CMIN             PERU                           9                1        0      10
Birth       ki1114097-CMIN             PERU                           10               0        0      10
Birth       ki1114097-CMIN             PERU                           10               1        0      10
Birth       ki1114097-CMIN             PERU                           11               0        0      10
Birth       ki1114097-CMIN             PERU                           11               1        0      10
Birth       ki1114097-CMIN             PERU                           12               0        0      10
Birth       ki1114097-CMIN             PERU                           12               1        0      10
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1114097-CONTENT          PERU                           2                0        0       2
Birth       ki1114097-CONTENT          PERU                           2                1        0       2
Birth       ki1114097-CONTENT          PERU                           3                0        0       2
Birth       ki1114097-CONTENT          PERU                           3                1        0       2
Birth       ki1114097-CONTENT          PERU                           4                0        0       2
Birth       ki1114097-CONTENT          PERU                           4                1        0       2
Birth       ki1114097-CONTENT          PERU                           5                0        2       2
Birth       ki1114097-CONTENT          PERU                           5                1        0       2
Birth       ki1114097-CONTENT          PERU                           6                0        0       2
Birth       ki1114097-CONTENT          PERU                           6                1        0       2
Birth       ki1114097-CONTENT          PERU                           7                0        0       2
Birth       ki1114097-CONTENT          PERU                           7                1        0       2
Birth       ki1114097-CONTENT          PERU                           8                0        0       2
Birth       ki1114097-CONTENT          PERU                           8                1        0       2
Birth       ki1114097-CONTENT          PERU                           9                0        0       2
Birth       ki1114097-CONTENT          PERU                           9                1        0       2
Birth       ki1114097-CONTENT          PERU                           10               0        0       2
Birth       ki1114097-CONTENT          PERU                           10               1        0       2
Birth       ki1114097-CONTENT          PERU                           11               0        0       2
Birth       ki1114097-CONTENT          PERU                           11               1        0       2
Birth       ki1114097-CONTENT          PERU                           12               0        0       2
Birth       ki1114097-CONTENT          PERU                           12               1        0       2
Birth       ki1119695-PROBIT           BELARUS                        1                0      762   13824
Birth       ki1119695-PROBIT           BELARUS                        1                1       60   13824
Birth       ki1119695-PROBIT           BELARUS                        2                0      757   13824
Birth       ki1119695-PROBIT           BELARUS                        2                1       42   13824
Birth       ki1119695-PROBIT           BELARUS                        3                0      876   13824
Birth       ki1119695-PROBIT           BELARUS                        3                1       65   13824
Birth       ki1119695-PROBIT           BELARUS                        4                0      916   13824
Birth       ki1119695-PROBIT           BELARUS                        4                1       53   13824
Birth       ki1119695-PROBIT           BELARUS                        5                0      867   13824
Birth       ki1119695-PROBIT           BELARUS                        5                1       75   13824
Birth       ki1119695-PROBIT           BELARUS                        6                0      954   13824
Birth       ki1119695-PROBIT           BELARUS                        6                1       66   13824
Birth       ki1119695-PROBIT           BELARUS                        7                0     1173   13824
Birth       ki1119695-PROBIT           BELARUS                        7                1      114   13824
Birth       ki1119695-PROBIT           BELARUS                        8                0     1230   13824
Birth       ki1119695-PROBIT           BELARUS                        8                1       76   13824
Birth       ki1119695-PROBIT           BELARUS                        9                0     1231   13824
Birth       ki1119695-PROBIT           BELARUS                        9                1       93   13824
Birth       ki1119695-PROBIT           BELARUS                        10               0     1396   13824
Birth       ki1119695-PROBIT           BELARUS                        10               1       93   13824
Birth       ki1119695-PROBIT           BELARUS                        11               0     1303   13824
Birth       ki1119695-PROBIT           BELARUS                        11               1       80   13824
Birth       ki1119695-PROBIT           BELARUS                        12               0     1448   13824
Birth       ki1119695-PROBIT           BELARUS                        12               1       94   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1167   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1       66   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                0      902   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                1       55   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                0     1017   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                1       60   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                0      872   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                1       50   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                0      869   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                1       60   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                0      968   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                1       80   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                0     1007   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                1       89   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                0     1119   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                1       68   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                0     1178   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                1       68   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10               0      920   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10               1       60   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11               0     1040   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11               1       63   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12               0     1066   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12               1       72   12916
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     1432   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       17   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0     1258   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1       21   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                0     1532   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                1       27   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                0     1112   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                1       17   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                0      768   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                1       10   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                0      813   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                1       12   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                0      898   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                1       11   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                0     1198   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                1       19   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                0     1489   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                1       39   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10               0     1625   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10               1       34   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11               0     1638   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11               1       26   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12               0     1692   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12               1       21   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                0      115     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                0      131     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                1        2     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4                0      137     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4                1        1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5                0       99     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5                1        1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6                0       71     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6                1        1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7                0       65     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7                1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8                0       27     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8                1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9                0       27     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9                1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10               0        6     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10               1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11               0        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11               1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12               0        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12               1        0     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       18     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                0       10     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10               0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11               0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12               0       26     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12               1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       15     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       23     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4                0       11     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5                0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6                0        8     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7                0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8                0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9                0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10               0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11               0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12               0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12               1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          2                0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          2                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          3                0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          3                1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          4                0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          4                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          5                0        8     236
6 months    ki0047075b-MAL-ED          INDIA                          5                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          6                0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          6                1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          7                0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          7                1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          8                0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          8                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          9                0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          9                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          10               0       25     236
6 months    ki0047075b-MAL-ED          INDIA                          10               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          11               0       25     236
6 months    ki0047075b-MAL-ED          INDIA                          11               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          12               0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          12               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4                0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          4                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          5                0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          5                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          6                0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          6                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          7                0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          7                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          8                0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          8                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          9                0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          9                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          10               0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          10               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          11               0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          11               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          12               0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          12               1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1                0       38     273
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           2                0       19     273
6 months    ki0047075b-MAL-ED          PERU                           2                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           3                0       22     273
6 months    ki0047075b-MAL-ED          PERU                           3                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           4                0       20     273
6 months    ki0047075b-MAL-ED          PERU                           4                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           5                0       27     273
6 months    ki0047075b-MAL-ED          PERU                           5                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           6                0       15     273
6 months    ki0047075b-MAL-ED          PERU                           6                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           7                0       22     273
6 months    ki0047075b-MAL-ED          PERU                           7                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           8                0       16     273
6 months    ki0047075b-MAL-ED          PERU                           8                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           9                0       23     273
6 months    ki0047075b-MAL-ED          PERU                           9                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           10               0       20     273
6 months    ki0047075b-MAL-ED          PERU                           10               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           11               0       32     273
6 months    ki0047075b-MAL-ED          PERU                           11               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           12               0       19     273
6 months    ki0047075b-MAL-ED          PERU                           12               1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       38     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       16     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       15     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       30     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                0       42     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                0       32     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                0       36     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                0       38     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                0       17     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                0       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               0       28     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               0       41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               0       23     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               1        2     368
6 months    ki1000108-IRC              INDIA                          1                0       36     408
6 months    ki1000108-IRC              INDIA                          1                1        2     408
6 months    ki1000108-IRC              INDIA                          2                0       26     408
6 months    ki1000108-IRC              INDIA                          2                1        2     408
6 months    ki1000108-IRC              INDIA                          3                0       27     408
6 months    ki1000108-IRC              INDIA                          3                1        0     408
6 months    ki1000108-IRC              INDIA                          4                0       21     408
6 months    ki1000108-IRC              INDIA                          4                1        0     408
6 months    ki1000108-IRC              INDIA                          5                0       21     408
6 months    ki1000108-IRC              INDIA                          5                1        1     408
6 months    ki1000108-IRC              INDIA                          6                0       36     408
6 months    ki1000108-IRC              INDIA                          6                1        1     408
6 months    ki1000108-IRC              INDIA                          7                0       33     408
6 months    ki1000108-IRC              INDIA                          7                1        3     408
6 months    ki1000108-IRC              INDIA                          8                0       40     408
6 months    ki1000108-IRC              INDIA                          8                1        4     408
6 months    ki1000108-IRC              INDIA                          9                0       23     408
6 months    ki1000108-IRC              INDIA                          9                1        2     408
6 months    ki1000108-IRC              INDIA                          10               0       37     408
6 months    ki1000108-IRC              INDIA                          10               1        1     408
6 months    ki1000108-IRC              INDIA                          11               0       38     408
6 months    ki1000108-IRC              INDIA                          11               1        2     408
6 months    ki1000108-IRC              INDIA                          12               0       48     408
6 months    ki1000108-IRC              INDIA                          12               1        4     408
6 months    ki1000109-EE               PAKISTAN                       1                0       89     376
6 months    ki1000109-EE               PAKISTAN                       1                1        3     376
6 months    ki1000109-EE               PAKISTAN                       2                0       66     376
6 months    ki1000109-EE               PAKISTAN                       2                1        1     376
6 months    ki1000109-EE               PAKISTAN                       3                0       43     376
6 months    ki1000109-EE               PAKISTAN                       3                1        0     376
6 months    ki1000109-EE               PAKISTAN                       4                0       16     376
6 months    ki1000109-EE               PAKISTAN                       4                1        0     376
6 months    ki1000109-EE               PAKISTAN                       5                0        0     376
6 months    ki1000109-EE               PAKISTAN                       5                1        0     376
6 months    ki1000109-EE               PAKISTAN                       6                0        0     376
6 months    ki1000109-EE               PAKISTAN                       6                1        0     376
6 months    ki1000109-EE               PAKISTAN                       7                0        0     376
6 months    ki1000109-EE               PAKISTAN                       7                1        0     376
6 months    ki1000109-EE               PAKISTAN                       8                0        0     376
6 months    ki1000109-EE               PAKISTAN                       8                1        0     376
6 months    ki1000109-EE               PAKISTAN                       9                0        0     376
6 months    ki1000109-EE               PAKISTAN                       9                1        0     376
6 months    ki1000109-EE               PAKISTAN                       10               0        4     376
6 months    ki1000109-EE               PAKISTAN                       10               1        0     376
6 months    ki1000109-EE               PAKISTAN                       11               0       69     376
6 months    ki1000109-EE               PAKISTAN                       11               1        1     376
6 months    ki1000109-EE               PAKISTAN                       12               0       80     376
6 months    ki1000109-EE               PAKISTAN                       12               1        4     376
6 months    ki1000109-ResPak           PAKISTAN                       1                0        9     235
6 months    ki1000109-ResPak           PAKISTAN                       1                1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       2                0       11     235
6 months    ki1000109-ResPak           PAKISTAN                       2                1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       3                0       18     235
6 months    ki1000109-ResPak           PAKISTAN                       3                1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       4                0       18     235
6 months    ki1000109-ResPak           PAKISTAN                       4                1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       5                0       44     235
6 months    ki1000109-ResPak           PAKISTAN                       5                1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       6                0       40     235
6 months    ki1000109-ResPak           PAKISTAN                       6                1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       7                0       25     235
6 months    ki1000109-ResPak           PAKISTAN                       7                1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       8                0       31     235
6 months    ki1000109-ResPak           PAKISTAN                       8                1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       9                0       20     235
6 months    ki1000109-ResPak           PAKISTAN                       9                1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       10               0        4     235
6 months    ki1000109-ResPak           PAKISTAN                       10               1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       11               0        1     235
6 months    ki1000109-ResPak           PAKISTAN                       11               1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12               0        5     235
6 months    ki1000109-ResPak           PAKISTAN                       12               1        0     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0       80    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1        7    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                0       80    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                1        3    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                0       71    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                1        3    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                0       63    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                1        1    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                0       87    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                1        0    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                0       94    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                1        2    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                0      121    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                1        1    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                0      159    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                1        3    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                0      170    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                1        3    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10               0      144    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10               1        5    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11               0      109    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11               1       10    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12               0      113    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12               1        5    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        1     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                0       30     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                0        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                0       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                1        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                0       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                1        1     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                0       61     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                1        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                0       58     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                1        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10               0       47     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10               1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11               0       25     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11               1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12               0       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12               1        3     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       51     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                0       47     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                0       50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                0       42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                0       41     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                0       43     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                0       39     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                0       35     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                0       42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10               0       42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10               1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11               0       50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11               1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12               0       49     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12               1        2     536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      141    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      140    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      152    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      142    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      194    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      196    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        3    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      182    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      206    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        2    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      194    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      171    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        1    2028
6 months    ki1101329-Keneba           GAMBIA                         1                0      209    2089
6 months    ki1101329-Keneba           GAMBIA                         1                1        1    2089
6 months    ki1101329-Keneba           GAMBIA                         2                0      186    2089
6 months    ki1101329-Keneba           GAMBIA                         2                1        1    2089
6 months    ki1101329-Keneba           GAMBIA                         3                0      214    2089
6 months    ki1101329-Keneba           GAMBIA                         3                1        6    2089
6 months    ki1101329-Keneba           GAMBIA                         4                0      137    2089
6 months    ki1101329-Keneba           GAMBIA                         4                1        6    2089
6 months    ki1101329-Keneba           GAMBIA                         5                0      140    2089
6 months    ki1101329-Keneba           GAMBIA                         5                1        4    2089
6 months    ki1101329-Keneba           GAMBIA                         6                0      117    2089
6 months    ki1101329-Keneba           GAMBIA                         6                1        1    2089
6 months    ki1101329-Keneba           GAMBIA                         7                0       90    2089
6 months    ki1101329-Keneba           GAMBIA                         7                1        2    2089
6 months    ki1101329-Keneba           GAMBIA                         8                0      171    2089
6 months    ki1101329-Keneba           GAMBIA                         8                1        3    2089
6 months    ki1101329-Keneba           GAMBIA                         9                0      172    2089
6 months    ki1101329-Keneba           GAMBIA                         9                1        2    2089
6 months    ki1101329-Keneba           GAMBIA                         10               0      245    2089
6 months    ki1101329-Keneba           GAMBIA                         10               1        3    2089
6 months    ki1101329-Keneba           GAMBIA                         11               0      186    2089
6 months    ki1101329-Keneba           GAMBIA                         11               1        1    2089
6 months    ki1101329-Keneba           GAMBIA                         12               0      188    2089
6 months    ki1101329-Keneba           GAMBIA                         12               1        4    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                0       25     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                0       27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                0       22     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                0       14     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                0       16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10               0       29     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11               0       24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12               0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12               1        0     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4                0        1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6                0      121     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7                0      214     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7                1        4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8                0      220     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8                1        3     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12               1        0     563
6 months    ki1114097-CMIN             BANGLADESH                     1                0       25     243
6 months    ki1114097-CMIN             BANGLADESH                     1                1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     2                0       23     243
6 months    ki1114097-CMIN             BANGLADESH                     2                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     3                0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     3                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     4                0       21     243
6 months    ki1114097-CMIN             BANGLADESH                     4                1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     5                0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     5                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     6                0        8     243
6 months    ki1114097-CMIN             BANGLADESH                     6                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     7                0       15     243
6 months    ki1114097-CMIN             BANGLADESH                     7                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     8                0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     8                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     9                0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     9                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     10               0       24     243
6 months    ki1114097-CMIN             BANGLADESH                     10               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     11               0       26     243
6 months    ki1114097-CMIN             BANGLADESH                     11               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     12               0       25     243
6 months    ki1114097-CMIN             BANGLADESH                     12               1        3     243
6 months    ki1114097-CMIN             BRAZIL                         1                0       11     108
6 months    ki1114097-CMIN             BRAZIL                         1                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         2                0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3                0       12     108
6 months    ki1114097-CMIN             BRAZIL                         3                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         4                0        9     108
6 months    ki1114097-CMIN             BRAZIL                         4                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5                0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6                0        7     108
6 months    ki1114097-CMIN             BRAZIL                         6                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         7                0        4     108
6 months    ki1114097-CMIN             BRAZIL                         7                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         8                0       12     108
6 months    ki1114097-CMIN             BRAZIL                         8                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9                0        7     108
6 months    ki1114097-CMIN             BRAZIL                         9                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         10               0       15     108
6 months    ki1114097-CMIN             BRAZIL                         10               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         11               0       11     108
6 months    ki1114097-CMIN             BRAZIL                         11               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         12               0        9     108
6 months    ki1114097-CMIN             BRAZIL                         12               1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0      102     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                0       57     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                0       65     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                0       45     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                0       54     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                0       37     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                0       38     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                0       55     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                0      115     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               0      100     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               0       74     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               0       97     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               1        1     849
6 months    ki1114097-CMIN             PERU                           1                0       42     636
6 months    ki1114097-CMIN             PERU                           1                1        0     636
6 months    ki1114097-CMIN             PERU                           2                0       59     636
6 months    ki1114097-CMIN             PERU                           2                1        1     636
6 months    ki1114097-CMIN             PERU                           3                0       67     636
6 months    ki1114097-CMIN             PERU                           3                1        0     636
6 months    ki1114097-CMIN             PERU                           4                0       61     636
6 months    ki1114097-CMIN             PERU                           4                1        0     636
6 months    ki1114097-CMIN             PERU                           5                0       54     636
6 months    ki1114097-CMIN             PERU                           5                1        0     636
6 months    ki1114097-CMIN             PERU                           6                0       54     636
6 months    ki1114097-CMIN             PERU                           6                1        0     636
6 months    ki1114097-CMIN             PERU                           7                0       51     636
6 months    ki1114097-CMIN             PERU                           7                1        0     636
6 months    ki1114097-CMIN             PERU                           8                0       73     636
6 months    ki1114097-CMIN             PERU                           8                1        0     636
6 months    ki1114097-CMIN             PERU                           9                0       50     636
6 months    ki1114097-CMIN             PERU                           9                1        0     636
6 months    ki1114097-CMIN             PERU                           10               0       49     636
6 months    ki1114097-CMIN             PERU                           10               1        1     636
6 months    ki1114097-CMIN             PERU                           11               0       34     636
6 months    ki1114097-CMIN             PERU                           11               1        0     636
6 months    ki1114097-CMIN             PERU                           12               0       39     636
6 months    ki1114097-CMIN             PERU                           12               1        1     636
6 months    ki1114097-CONTENT          PERU                           1                0       10     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    ki1114097-CONTENT          PERU                           2                0       18     215
6 months    ki1114097-CONTENT          PERU                           2                1        0     215
6 months    ki1114097-CONTENT          PERU                           3                0       30     215
6 months    ki1114097-CONTENT          PERU                           3                1        0     215
6 months    ki1114097-CONTENT          PERU                           4                0       19     215
6 months    ki1114097-CONTENT          PERU                           4                1        0     215
6 months    ki1114097-CONTENT          PERU                           5                0       14     215
6 months    ki1114097-CONTENT          PERU                           5                1        0     215
6 months    ki1114097-CONTENT          PERU                           6                0       13     215
6 months    ki1114097-CONTENT          PERU                           6                1        0     215
6 months    ki1114097-CONTENT          PERU                           7                0       28     215
6 months    ki1114097-CONTENT          PERU                           7                1        0     215
6 months    ki1114097-CONTENT          PERU                           8                0       23     215
6 months    ki1114097-CONTENT          PERU                           8                1        0     215
6 months    ki1114097-CONTENT          PERU                           9                0       26     215
6 months    ki1114097-CONTENT          PERU                           9                1        0     215
6 months    ki1114097-CONTENT          PERU                           10               0       14     215
6 months    ki1114097-CONTENT          PERU                           10               1        0     215
6 months    ki1114097-CONTENT          PERU                           11               0        9     215
6 months    ki1114097-CONTENT          PERU                           11               1        0     215
6 months    ki1114097-CONTENT          PERU                           12               0       11     215
6 months    ki1114097-CONTENT          PERU                           12               1        0     215
6 months    ki1119695-PROBIT           BELARUS                        1                0      974   15757
6 months    ki1119695-PROBIT           BELARUS                        1                1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        2                0      932   15757
6 months    ki1119695-PROBIT           BELARUS                        2                1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        3                0     1065   15757
6 months    ki1119695-PROBIT           BELARUS                        3                1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        4                0     1098   15757
6 months    ki1119695-PROBIT           BELARUS                        4                1        0   15757
6 months    ki1119695-PROBIT           BELARUS                        5                0     1109   15757
6 months    ki1119695-PROBIT           BELARUS                        5                1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        6                0     1113   15757
6 months    ki1119695-PROBIT           BELARUS                        6                1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        7                0     1461   15757
6 months    ki1119695-PROBIT           BELARUS                        7                1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        8                0     1472   15757
6 months    ki1119695-PROBIT           BELARUS                        8                1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        9                0     1509   15757
6 months    ki1119695-PROBIT           BELARUS                        9                1        0   15757
6 months    ki1119695-PROBIT           BELARUS                        10               0     1688   15757
6 months    ki1119695-PROBIT           BELARUS                        10               1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        11               0     1586   15757
6 months    ki1119695-PROBIT           BELARUS                        11               1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        12               0     1734   15757
6 months    ki1119695-PROBIT           BELARUS                        12               1        3   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      783    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       11    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0      578    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1        8    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                0      722    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                1        8    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                0      629    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                1        5    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                0      601    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                1        5    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                0      630    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                1       12    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                0      630    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                1        4    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                0      740    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                1        6    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                0      738    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                1        9    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               0      597    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               1        2    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               0      757    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               1        5    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               0      780    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               1        4    8264
6 months    ki1148112-LCNI-5           MALAWI                         1                0       68     839
6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         2                0       46     839
6 months    ki1148112-LCNI-5           MALAWI                         2                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         3                0       26     839
6 months    ki1148112-LCNI-5           MALAWI                         3                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         4                0       39     839
6 months    ki1148112-LCNI-5           MALAWI                         4                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         5                0       44     839
6 months    ki1148112-LCNI-5           MALAWI                         5                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         6                0       34     839
6 months    ki1148112-LCNI-5           MALAWI                         6                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         7                0       61     839
6 months    ki1148112-LCNI-5           MALAWI                         7                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         8                0       93     839
6 months    ki1148112-LCNI-5           MALAWI                         8                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         9                0       93     839
6 months    ki1148112-LCNI-5           MALAWI                         9                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         10               0      135     839
6 months    ki1148112-LCNI-5           MALAWI                         10               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         11               0      105     839
6 months    ki1148112-LCNI-5           MALAWI                         11               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         12               0       95     839
6 months    ki1148112-LCNI-5           MALAWI                         12               1        0     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     1326   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       16   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0     1140   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1       14   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                0     1389   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                1       20   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                0     1161   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                1       17   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                0     1092   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                1       18   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                0     1185   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                1       13   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                0     1239   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                1       16   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                0     1494   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                1       21   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                0     1604   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                1       17   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               0     1638   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               1       27   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               0     1736   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               1       23   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               0     1550   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               1       28   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                0      540    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                1        2    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                0      953    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                1        9    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                0      727    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                1        9    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                0      596    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                1        5    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                0      436    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                1        3    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                0      514    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                1        4    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                0      521    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                1        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                0      385    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                1        1    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10               0      128    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10               1        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11               0        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11               1        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12               0        0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12               1        0    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       27     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6                0        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       17     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          2                0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          2                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          3                0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          3                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          4                0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          4                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          5                0        8     227
24 months   ki0047075b-MAL-ED          INDIA                          5                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          6                0       16     227
24 months   ki0047075b-MAL-ED          INDIA                          6                1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          7                0       23     227
24 months   ki0047075b-MAL-ED          INDIA                          7                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          8                0       21     227
24 months   ki0047075b-MAL-ED          INDIA                          8                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          9                0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          9                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          10               0       26     227
24 months   ki0047075b-MAL-ED          INDIA                          10               1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          11               0       24     227
24 months   ki0047075b-MAL-ED          INDIA                          11               1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          12               0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          12               1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          4                0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          4                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          5                0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          5                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          6                0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          6                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          7                0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          7                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          8                0       24     228
24 months   ki0047075b-MAL-ED          NEPAL                          8                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          9                0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          10               0       20     228
24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          11               0       24     228
24 months   ki0047075b-MAL-ED          NEPAL                          11               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          12               0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          12               1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1                0       30     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           2                0       17     201
24 months   ki0047075b-MAL-ED          PERU                           2                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3                0       15     201
24 months   ki0047075b-MAL-ED          PERU                           3                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           4                0       11     201
24 months   ki0047075b-MAL-ED          PERU                           4                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           5                0       19     201
24 months   ki0047075b-MAL-ED          PERU                           5                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           6                0       11     201
24 months   ki0047075b-MAL-ED          PERU                           6                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           7                0       15     201
24 months   ki0047075b-MAL-ED          PERU                           7                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           8                0       11     201
24 months   ki0047075b-MAL-ED          PERU                           8                1        1     201
24 months   ki0047075b-MAL-ED          PERU                           9                0       21     201
24 months   ki0047075b-MAL-ED          PERU                           9                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           10               0       14     201
24 months   ki0047075b-MAL-ED          PERU                           10               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           11               0       21     201
24 months   ki0047075b-MAL-ED          PERU                           11               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           12               0       15     201
24 months   ki0047075b-MAL-ED          PERU                           12               1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       16     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       22     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       24     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       26     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       44     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       37     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       38     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       21     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       43     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        0     372
24 months   ki1000108-IRC              INDIA                          1                0       37     409
24 months   ki1000108-IRC              INDIA                          1                1        1     409
24 months   ki1000108-IRC              INDIA                          2                0       28     409
24 months   ki1000108-IRC              INDIA                          2                1        0     409
24 months   ki1000108-IRC              INDIA                          3                0       27     409
24 months   ki1000108-IRC              INDIA                          3                1        0     409
24 months   ki1000108-IRC              INDIA                          4                0       21     409
24 months   ki1000108-IRC              INDIA                          4                1        0     409
24 months   ki1000108-IRC              INDIA                          5                0       21     409
24 months   ki1000108-IRC              INDIA                          5                1        1     409
24 months   ki1000108-IRC              INDIA                          6                0       36     409
24 months   ki1000108-IRC              INDIA                          6                1        1     409
24 months   ki1000108-IRC              INDIA                          7                0       36     409
24 months   ki1000108-IRC              INDIA                          7                1        0     409
24 months   ki1000108-IRC              INDIA                          8                0       42     409
24 months   ki1000108-IRC              INDIA                          8                1        2     409
24 months   ki1000108-IRC              INDIA                          9                0       27     409
24 months   ki1000108-IRC              INDIA                          9                1        0     409
24 months   ki1000108-IRC              INDIA                          10               0       37     409
24 months   ki1000108-IRC              INDIA                          10               1        0     409
24 months   ki1000108-IRC              INDIA                          11               0       40     409
24 months   ki1000108-IRC              INDIA                          11               1        0     409
24 months   ki1000108-IRC              INDIA                          12               0       52     409
24 months   ki1000108-IRC              INDIA                          12               1        0     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       43     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       36     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       38     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       27     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       25     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       31     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       40     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       45     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1        1     428
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        0       6
24 months   ki1101329-Keneba           GAMBIA                         1                0      170    1726
24 months   ki1101329-Keneba           GAMBIA                         1                1        1    1726
24 months   ki1101329-Keneba           GAMBIA                         2                0      167    1726
24 months   ki1101329-Keneba           GAMBIA                         2                1        0    1726
24 months   ki1101329-Keneba           GAMBIA                         3                0      168    1726
24 months   ki1101329-Keneba           GAMBIA                         3                1        2    1726
24 months   ki1101329-Keneba           GAMBIA                         4                0      109    1726
24 months   ki1101329-Keneba           GAMBIA                         4                1        5    1726
24 months   ki1101329-Keneba           GAMBIA                         5                0      122    1726
24 months   ki1101329-Keneba           GAMBIA                         5                1        0    1726
24 months   ki1101329-Keneba           GAMBIA                         6                0       91    1726
24 months   ki1101329-Keneba           GAMBIA                         6                1        1    1726
24 months   ki1101329-Keneba           GAMBIA                         7                0       80    1726
24 months   ki1101329-Keneba           GAMBIA                         7                1        3    1726
24 months   ki1101329-Keneba           GAMBIA                         8                0      155    1726
24 months   ki1101329-Keneba           GAMBIA                         8                1        3    1726
24 months   ki1101329-Keneba           GAMBIA                         9                0      156    1726
24 months   ki1101329-Keneba           GAMBIA                         9                1        4    1726
24 months   ki1101329-Keneba           GAMBIA                         10               0      198    1726
24 months   ki1101329-Keneba           GAMBIA                         10               1        2    1726
24 months   ki1101329-Keneba           GAMBIA                         11               0      133    1726
24 months   ki1101329-Keneba           GAMBIA                         11               1        7    1726
24 months   ki1101329-Keneba           GAMBIA                         12               0      147    1726
24 months   ki1101329-Keneba           GAMBIA                         12               1        2    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          6                0       84     498
24 months   ki1113344-GMS-Nepal        NEPAL                          6                1        6     498
24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      201     498
24 months   ki1113344-GMS-Nepal        NEPAL                          7                1        5     498
24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      198     498
24 months   ki1113344-GMS-Nepal        NEPAL                          8                1        4     498
24 months   ki1113344-GMS-Nepal        NEPAL                          9                0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          9                1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          10               0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0     498
24 months   ki1114097-CMIN             BANGLADESH                     1                0       26     243
24 months   ki1114097-CMIN             BANGLADESH                     1                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     2                0       24     243
24 months   ki1114097-CMIN             BANGLADESH                     2                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     3                0       18     243
24 months   ki1114097-CMIN             BANGLADESH                     3                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     4                0       22     243
24 months   ki1114097-CMIN             BANGLADESH                     4                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     5                0       16     243
24 months   ki1114097-CMIN             BANGLADESH                     5                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     6                0        8     243
24 months   ki1114097-CMIN             BANGLADESH                     6                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     7                0       15     243
24 months   ki1114097-CMIN             BANGLADESH                     7                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     8                0       18     243
24 months   ki1114097-CMIN             BANGLADESH                     8                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     9                0       19     243
24 months   ki1114097-CMIN             BANGLADESH                     9                1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     10               0       24     243
24 months   ki1114097-CMIN             BANGLADESH                     10               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     11               0       25     243
24 months   ki1114097-CMIN             BANGLADESH                     11               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     12               0       26     243
24 months   ki1114097-CMIN             BANGLADESH                     12               1        1     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       48     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0       41     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0       54     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0       51     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0       45     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       40     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0       48     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0       64     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0       57     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0       42     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1        1     551
24 months   ki1114097-CMIN             PERU                           1                0       13     429
24 months   ki1114097-CMIN             PERU                           1                1        0     429
24 months   ki1114097-CMIN             PERU                           2                0       39     429
24 months   ki1114097-CMIN             PERU                           2                1        0     429
24 months   ki1114097-CMIN             PERU                           3                0       51     429
24 months   ki1114097-CMIN             PERU                           3                1        0     429
24 months   ki1114097-CMIN             PERU                           4                0       47     429
24 months   ki1114097-CMIN             PERU                           4                1        0     429
24 months   ki1114097-CMIN             PERU                           5                0       33     429
24 months   ki1114097-CMIN             PERU                           5                1        0     429
24 months   ki1114097-CMIN             PERU                           6                0       39     429
24 months   ki1114097-CMIN             PERU                           6                1        1     429
24 months   ki1114097-CMIN             PERU                           7                0       41     429
24 months   ki1114097-CMIN             PERU                           7                1        0     429
24 months   ki1114097-CMIN             PERU                           8                0       34     429
24 months   ki1114097-CMIN             PERU                           8                1        0     429
24 months   ki1114097-CMIN             PERU                           9                0       39     429
24 months   ki1114097-CMIN             PERU                           9                1        0     429
24 months   ki1114097-CMIN             PERU                           10               0       33     429
24 months   ki1114097-CMIN             PERU                           10               1        0     429
24 months   ki1114097-CMIN             PERU                           11               0       32     429
24 months   ki1114097-CMIN             PERU                           11               1        0     429
24 months   ki1114097-CMIN             PERU                           12               0       27     429
24 months   ki1114097-CMIN             PERU                           12               1        0     429
24 months   ki1114097-CONTENT          PERU                           1                0        7     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   ki1114097-CONTENT          PERU                           2                0       14     164
24 months   ki1114097-CONTENT          PERU                           2                1        0     164
24 months   ki1114097-CONTENT          PERU                           3                0       22     164
24 months   ki1114097-CONTENT          PERU                           3                1        0     164
24 months   ki1114097-CONTENT          PERU                           4                0       15     164
24 months   ki1114097-CONTENT          PERU                           4                1        0     164
24 months   ki1114097-CONTENT          PERU                           5                0       14     164
24 months   ki1114097-CONTENT          PERU                           5                1        0     164
24 months   ki1114097-CONTENT          PERU                           6                0       11     164
24 months   ki1114097-CONTENT          PERU                           6                1        0     164
24 months   ki1114097-CONTENT          PERU                           7                0       23     164
24 months   ki1114097-CONTENT          PERU                           7                1        0     164
24 months   ki1114097-CONTENT          PERU                           8                0       14     164
24 months   ki1114097-CONTENT          PERU                           8                1        0     164
24 months   ki1114097-CONTENT          PERU                           9                0       17     164
24 months   ki1114097-CONTENT          PERU                           9                1        0     164
24 months   ki1114097-CONTENT          PERU                           10               0       11     164
24 months   ki1114097-CONTENT          PERU                           10               1        0     164
24 months   ki1114097-CONTENT          PERU                           11               0        6     164
24 months   ki1114097-CONTENT          PERU                           11               1        0     164
24 months   ki1114097-CONTENT          PERU                           12               0       10     164
24 months   ki1114097-CONTENT          PERU                           12               1        0     164
24 months   ki1119695-PROBIT           BELARUS                        1                0      248    3971
24 months   ki1119695-PROBIT           BELARUS                        1                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        2                0      212    3971
24 months   ki1119695-PROBIT           BELARUS                        2                1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        3                0      311    3971
24 months   ki1119695-PROBIT           BELARUS                        3                1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        4                0      332    3971
24 months   ki1119695-PROBIT           BELARUS                        4                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        5                0      296    3971
24 months   ki1119695-PROBIT           BELARUS                        5                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        6                0      268    3971
24 months   ki1119695-PROBIT           BELARUS                        6                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        7                0      370    3971
24 months   ki1119695-PROBIT           BELARUS                        7                1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        8                0      337    3971
24 months   ki1119695-PROBIT           BELARUS                        8                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        9                0      380    3971
24 months   ki1119695-PROBIT           BELARUS                        9                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        10               0      391    3971
24 months   ki1119695-PROBIT           BELARUS                        10               1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        11               0      376    3971
24 months   ki1119695-PROBIT           BELARUS                        11               1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        12               0      446    3971
24 months   ki1119695-PROBIT           BELARUS                        12               1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       46     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1        1     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0       58     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1        3     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0       49     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1        6     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0       43     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1        3     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0       44     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1        6     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0       41     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1        3     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0       25     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1        2     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0       27     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1        3     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0        2     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1        0     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0        4     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1        0     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0       20     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1        0     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0       34     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1        3     423
24 months   ki1148112-LCNI-5           MALAWI                         1                0       39     563
24 months   ki1148112-LCNI-5           MALAWI                         1                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         2                0       30     563
24 months   ki1148112-LCNI-5           MALAWI                         2                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         3                0       19     563
24 months   ki1148112-LCNI-5           MALAWI                         3                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         4                0       28     563
24 months   ki1148112-LCNI-5           MALAWI                         4                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         5                0       30     563
24 months   ki1148112-LCNI-5           MALAWI                         5                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         6                0       24     563
24 months   ki1148112-LCNI-5           MALAWI                         6                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         7                0       45     563
24 months   ki1148112-LCNI-5           MALAWI                         7                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         8                0       70     563
24 months   ki1148112-LCNI-5           MALAWI                         8                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         9                0       63     563
24 months   ki1148112-LCNI-5           MALAWI                         9                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         10               0       89     563
24 months   ki1148112-LCNI-5           MALAWI                         10               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         11               0       62     563
24 months   ki1148112-LCNI-5           MALAWI                         11               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         12               0       63     563
24 months   ki1148112-LCNI-5           MALAWI                         12               1        1     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      655    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       10    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0      546    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1       15    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0      688    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       26    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0      479    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1       25    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0      348    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1       16    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0      583    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1       26    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0      631    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1       41    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0      582    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1       36    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0      758    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1       42    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0      838    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1       36    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0     1004    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1       35    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0     1156    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1       27    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0      764    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1       17    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      832    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       19    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0      625    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1       24    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0      541    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1       22    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      402    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       16    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      475    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1        9    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      497    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1        6    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      351    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1       13    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0      119    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1        3    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0        0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1        0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0        0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        0    4735


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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




# Results Detail

## Results Plots
![](/tmp/5fb4b529-cb3c-40cb-b1df-62c185d61f05/e486b993-9a2d-4d63-ae03-72ecca57413d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5fb4b529-cb3c-40cb-b1df-62c185d61f05/e486b993-9a2d-4d63-ae03-72ecca57413d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5fb4b529-cb3c-40cb-b1df-62c185d61f05/e486b993-9a2d-4d63-ae03-72ecca57413d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5fb4b529-cb3c-40cb-b1df-62c185d61f05/e486b993-9a2d-4d63-ae03-72ecca57413d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                0.0729927   0.0232126   0.1227728
Birth       ki1119695-PROBIT     BELARUS      2                    NA                0.0525657   0.0115748   0.0935566
Birth       ki1119695-PROBIT     BELARUS      3                    NA                0.0690755   0.0248616   0.1132893
Birth       ki1119695-PROBIT     BELARUS      4                    NA                0.0546956   0.0234987   0.0858924
Birth       ki1119695-PROBIT     BELARUS      5                    NA                0.0796178   0.0307804   0.1284553
Birth       ki1119695-PROBIT     BELARUS      6                    NA                0.0647059   0.0336448   0.0957670
Birth       ki1119695-PROBIT     BELARUS      7                    NA                0.0885781   0.0481392   0.1290170
Birth       ki1119695-PROBIT     BELARUS      8                    NA                0.0581930   0.0234977   0.0928882
Birth       ki1119695-PROBIT     BELARUS      9                    NA                0.0702417   0.0205076   0.1199758
Birth       ki1119695-PROBIT     BELARUS      10                   NA                0.0624580   0.0317916   0.0931244
Birth       ki1119695-PROBIT     BELARUS      11                   NA                0.0578453   0.0271874   0.0885031
Birth       ki1119695-PROBIT     BELARUS      12                   NA                0.0609598   0.0250457   0.0968739
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0535280   0.0409640   0.0660920
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0574713   0.0427250   0.0722175
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0557103   0.0420117   0.0694089
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0542299   0.0396111   0.0688487
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0645856   0.0487794   0.0803918
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0763359   0.0602589   0.0924129
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0812044   0.0650326   0.0973762
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0572873   0.0440665   0.0705081
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0545746   0.0419617   0.0671875
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0612245   0.0462140   0.0762350
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0571170   0.0434211   0.0708128
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0632689   0.0491241   0.0774137
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0117322   0.0057854   0.0176791
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0164191   0.0102255   0.0226127
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0173188   0.0103813   0.0242563
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0150576   0.0081695   0.0219457
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0128535   0.0049817   0.0207253
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0145455   0.0063419   0.0227490
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0121012   0.0046487   0.0195537
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0156122   0.0073076   0.0239167
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0255236   0.0164792   0.0345679
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0204943   0.0126789   0.0283097
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0156250   0.0087031   0.0225469
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0122592   0.0055757   0.0189427
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0119225   0.0057159   0.0181291
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0121317   0.0045087   0.0197547
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0141945   0.0071317   0.0212572
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0144312   0.0079813   0.0208811
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0162162   0.0078034   0.0246290
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0108514   0.0037497   0.0179532
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0127490   0.0067604   0.0187376
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0138614   0.0073147   0.0204081
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0104874   0.0056538   0.0153209
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0162162   0.0095711   0.0228614
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0130756   0.0077310   0.0184202
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0177440   0.0103159   0.0251720
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0150376   0.0065061   0.0235691
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0267380   0.0117858   0.0416901
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0364146   0.0204289   0.0524002
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0496032   0.0305132   0.0686931
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0439560   0.0219593   0.0659528
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0426929   0.0264160   0.0589699
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0610119   0.0418540   0.0801698
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0582524   0.0371450   0.0793599
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0525000   0.0371451   0.0678549
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0411899   0.0274588   0.0549210
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0336862   0.0215250   0.0458475
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0228233   0.0130096   0.0326371


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0612419   0.0571066   0.0653771
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0161691   0.0138058   0.0185324
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0137035   0.0116269   0.0157801
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0389399   0.0346167   0.0432631


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT     BELARUS      2                    1                 0.7201502   0.4486025   1.156071
Birth       ki1119695-PROBIT     BELARUS      3                    1                 0.9463337   0.6583751   1.360239
Birth       ki1119695-PROBIT     BELARUS      4                    1                 0.7493292   0.5101932   1.100552
Birth       ki1119695-PROBIT     BELARUS      5                    1                 1.0907643   0.6823302   1.743682
Birth       ki1119695-PROBIT     BELARUS      6                    1                 0.8864706   0.5043755   1.558026
Birth       ki1119695-PROBIT     BELARUS      7                    1                 1.2135198   0.6601137   2.230874
Birth       ki1119695-PROBIT     BELARUS      8                    1                 0.7972435   0.4148578   1.532084
Birth       ki1119695-PROBIT     BELARUS      9                    1                 0.9623112   0.5167545   1.792036
Birth       ki1119695-PROBIT     BELARUS      10                   1                 0.8556749   0.4862109   1.505889
Birth       ki1119695-PROBIT     BELARUS      11                   1                 0.7924801   0.5018575   1.251400
Birth       ki1119695-PROBIT     BELARUS      12                   1                 0.8351492   0.4497695   1.550737
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.0736677   0.7583069   1.520179
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.0407698   0.7408383   1.462130
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 1.0131138   0.7086396   1.448408
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 1.2065760   0.8595811   1.693645
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.4260930   1.0403774   1.954811
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.5170455   1.1151006   2.063874
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 1.0702305   0.7700534   1.487421
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 1.0195535   0.7334195   1.417319
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.1437848   0.8145894   1.606016
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.0670485   0.7628852   1.492482
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.1819779   0.8547359   1.634507
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.3994849   0.7382020   2.653147
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.4761725   0.7678535   2.837892
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.2834367   0.6416246   2.567248
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.0955693   0.4984826   2.407852
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.2397861   0.5828211   2.637292
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.0314502   0.4705435   2.260980
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.3307071   0.6351210   2.788101
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    1                 2.1755082   1.1688967   4.048977
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.7468354   0.9196699   3.317967
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.3318015   0.6960775   2.548129
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.0449160   0.4902653   2.227058
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.0175477   0.4526386   2.287484
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.1905607   0.6100720   2.323389
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.2104202   0.6041013   2.425284
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.3601351   0.6459664   2.863876
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.9101628   0.3920957   2.112740
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.0693227   0.5258902   2.174315
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.1626238   0.5842250   2.313653
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.8796268   0.4392935   1.761336
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.3601351   0.6988876   2.647017
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.0967169   0.6124994   1.963737
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.4882763   0.7782042   2.846253
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.7780743   0.8159792   3.874545
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 2.4215679   1.1919846   4.919519
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 3.2986101   1.6399879   6.634701
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 2.9230761   1.3779216   6.200914
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 2.8390796   1.5458669   5.214144
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 4.0572905   2.1077979   7.809860
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 3.8737853   1.9578932   7.664469
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 3.4912490   1.8286855   6.665345
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 2.7391296   1.4152884   5.301274
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 2.2401341   1.1440631   4.386297
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.5177510   0.7494849   3.073535


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.0070928   -0.0390314   0.0248458
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0077139   -0.0043201   0.0197478
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0044368   -0.0014564   0.0103301
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0017810   -0.0040277   0.0075898
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0239023    0.0151282   0.0326765


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.1076302   -0.7057972   0.2807793
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.1259578   -0.0941772   0.3018043
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.2744032   -0.1909198   0.5579125
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.1299682   -0.4175735   0.4660204
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.6138255    0.3264386   0.7785937
