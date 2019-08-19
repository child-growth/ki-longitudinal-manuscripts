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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        month    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       19     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               0       23     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               1        1     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               0       28     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4               0       21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4               1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5               0       19     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5               1        2     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6               0        9     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6               1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7               0       21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7               1        1     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8               0       22     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8               1        3     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9               0       21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9               1        1     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10              0       24     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10              1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11              0       15     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11              1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12              0       26     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12              1        1     257
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        9     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2               0       19     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2               1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3               0       17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3               1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4               0        8     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4               1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5               0       17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5               1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6               0        7     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6               1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7               0       16     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7               1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8               0       18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8               1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9               0       26     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9               1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10              0       18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10              1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11              0       15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11              1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12              0       13     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12              1        0     191
Birth       ki0047075b-MAL-ED          INDIA                          1               0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          2               0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          2               1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          3               0       20     206
Birth       ki0047075b-MAL-ED          INDIA                          3               1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          4               0       14     206
Birth       ki0047075b-MAL-ED          INDIA                          4               1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          5               0        7     206
Birth       ki0047075b-MAL-ED          INDIA                          5               1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          6               0       17     206
Birth       ki0047075b-MAL-ED          INDIA                          6               1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          7               0       20     206
Birth       ki0047075b-MAL-ED          INDIA                          7               1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          8               0       17     206
Birth       ki0047075b-MAL-ED          INDIA                          8               1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          9               0       17     206
Birth       ki0047075b-MAL-ED          INDIA                          9               1        2     206
Birth       ki0047075b-MAL-ED          INDIA                          10              0       21     206
Birth       ki0047075b-MAL-ED          INDIA                          10              1        3     206
Birth       ki0047075b-MAL-ED          INDIA                          11              0       20     206
Birth       ki0047075b-MAL-ED          INDIA                          11              1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          12              0       14     206
Birth       ki0047075b-MAL-ED          INDIA                          12              1        0     206
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       15     173
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          2               0       13     173
Birth       ki0047075b-MAL-ED          NEPAL                          2               1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          3               0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          3               1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          4               0       15     173
Birth       ki0047075b-MAL-ED          NEPAL                          4               1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          5               0       18     173
Birth       ki0047075b-MAL-ED          NEPAL                          5               1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          6               0       13     173
Birth       ki0047075b-MAL-ED          NEPAL                          6               1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          7               0       16     173
Birth       ki0047075b-MAL-ED          NEPAL                          7               1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          8               0       14     173
Birth       ki0047075b-MAL-ED          NEPAL                          8               1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          9               0        9     173
Birth       ki0047075b-MAL-ED          NEPAL                          9               1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          10              0       16     173
Birth       ki0047075b-MAL-ED          NEPAL                          10              1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          11              0       16     173
Birth       ki0047075b-MAL-ED          NEPAL                          11              1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          12              0       10     173
Birth       ki0047075b-MAL-ED          NEPAL                          12              1        0     173
Birth       ki0047075b-MAL-ED          PERU                           1               0       35     287
Birth       ki0047075b-MAL-ED          PERU                           1               1        2     287
Birth       ki0047075b-MAL-ED          PERU                           2               0       23     287
Birth       ki0047075b-MAL-ED          PERU                           2               1        0     287
Birth       ki0047075b-MAL-ED          PERU                           3               0       22     287
Birth       ki0047075b-MAL-ED          PERU                           3               1        0     287
Birth       ki0047075b-MAL-ED          PERU                           4               0       20     287
Birth       ki0047075b-MAL-ED          PERU                           4               1        1     287
Birth       ki0047075b-MAL-ED          PERU                           5               0       25     287
Birth       ki0047075b-MAL-ED          PERU                           5               1        0     287
Birth       ki0047075b-MAL-ED          PERU                           6               0       18     287
Birth       ki0047075b-MAL-ED          PERU                           6               1        1     287
Birth       ki0047075b-MAL-ED          PERU                           7               0       23     287
Birth       ki0047075b-MAL-ED          PERU                           7               1        0     287
Birth       ki0047075b-MAL-ED          PERU                           8               0       19     287
Birth       ki0047075b-MAL-ED          PERU                           8               1        0     287
Birth       ki0047075b-MAL-ED          PERU                           9               0       22     287
Birth       ki0047075b-MAL-ED          PERU                           9               1        0     287
Birth       ki0047075b-MAL-ED          PERU                           10              0       22     287
Birth       ki0047075b-MAL-ED          PERU                           10              1        2     287
Birth       ki0047075b-MAL-ED          PERU                           11              0       30     287
Birth       ki0047075b-MAL-ED          PERU                           11              1        1     287
Birth       ki0047075b-MAL-ED          PERU                           12              0       20     287
Birth       ki0047075b-MAL-ED          PERU                           12              1        1     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       27     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       24     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       18     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4               0       13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4               1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5               0       13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5               1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6               0       18     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6               1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7               0       22     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7               1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               0       10     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9               0       21     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9               1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10              0       28     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10              1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11              0       27     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11              1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12              0       39     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12              1        1     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0        8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0        7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               0        4     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               0        7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               0       11     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               0       14     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               0       13     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               1        3     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              0        8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              0       13     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              0       16     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              1        0     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               0        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5               0       11      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5               1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               0        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11              0       11      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11              1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              0        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              1        1      90
Birth       ki1000108-IRC              INDIA                          1               0       31     388
Birth       ki1000108-IRC              INDIA                          1               1        3     388
Birth       ki1000108-IRC              INDIA                          2               0       24     388
Birth       ki1000108-IRC              INDIA                          2               1        1     388
Birth       ki1000108-IRC              INDIA                          3               0       27     388
Birth       ki1000108-IRC              INDIA                          3               1        0     388
Birth       ki1000108-IRC              INDIA                          4               0       22     388
Birth       ki1000108-IRC              INDIA                          4               1        0     388
Birth       ki1000108-IRC              INDIA                          5               0       20     388
Birth       ki1000108-IRC              INDIA                          5               1        1     388
Birth       ki1000108-IRC              INDIA                          6               0       31     388
Birth       ki1000108-IRC              INDIA                          6               1        3     388
Birth       ki1000108-IRC              INDIA                          7               0       34     388
Birth       ki1000108-IRC              INDIA                          7               1        1     388
Birth       ki1000108-IRC              INDIA                          8               0       39     388
Birth       ki1000108-IRC              INDIA                          8               1        0     388
Birth       ki1000108-IRC              INDIA                          9               0       24     388
Birth       ki1000108-IRC              INDIA                          9               1        1     388
Birth       ki1000108-IRC              INDIA                          10              0       35     388
Birth       ki1000108-IRC              INDIA                          10              1        2     388
Birth       ki1000108-IRC              INDIA                          11              0       39     388
Birth       ki1000108-IRC              INDIA                          11              1        1     388
Birth       ki1000108-IRC              INDIA                          12              0       46     388
Birth       ki1000108-IRC              INDIA                          12              1        3     388
Birth       ki1000109-EE               PAKISTAN                       1               0        0       2
Birth       ki1000109-EE               PAKISTAN                       1               1        0       2
Birth       ki1000109-EE               PAKISTAN                       2               0        0       2
Birth       ki1000109-EE               PAKISTAN                       2               1        0       2
Birth       ki1000109-EE               PAKISTAN                       3               0        0       2
Birth       ki1000109-EE               PAKISTAN                       3               1        0       2
Birth       ki1000109-EE               PAKISTAN                       4               0        0       2
Birth       ki1000109-EE               PAKISTAN                       4               1        0       2
Birth       ki1000109-EE               PAKISTAN                       5               0        0       2
Birth       ki1000109-EE               PAKISTAN                       5               1        0       2
Birth       ki1000109-EE               PAKISTAN                       6               0        0       2
Birth       ki1000109-EE               PAKISTAN                       6               1        0       2
Birth       ki1000109-EE               PAKISTAN                       7               0        0       2
Birth       ki1000109-EE               PAKISTAN                       7               1        0       2
Birth       ki1000109-EE               PAKISTAN                       8               0        0       2
Birth       ki1000109-EE               PAKISTAN                       8               1        0       2
Birth       ki1000109-EE               PAKISTAN                       9               0        0       2
Birth       ki1000109-EE               PAKISTAN                       9               1        0       2
Birth       ki1000109-EE               PAKISTAN                       10              0        0       2
Birth       ki1000109-EE               PAKISTAN                       10              1        0       2
Birth       ki1000109-EE               PAKISTAN                       11              0        0       2
Birth       ki1000109-EE               PAKISTAN                       11              1        0       2
Birth       ki1000109-EE               PAKISTAN                       12              0        2       2
Birth       ki1000109-EE               PAKISTAN                       12              1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       1               0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       1               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       2               0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       2               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       3               0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       3               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       4               0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       4               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       5               0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       5               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       6               0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       6               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       7               0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       7               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       8               0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       8               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       9               0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       9               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       10              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       10              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       11              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       11              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       12              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       12              1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       12     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1        2     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               0        9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               1        2     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4               0       17     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4               1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5               0       15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5               1        2     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6               0       14     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6               1        2     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               0        8     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8               0       17     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8               1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9               0       19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9               1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10              0       18     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10              1        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11              0       18     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11              1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12              0       14     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12              1        1     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2               0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3               0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4               0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5               0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6               0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6               1        0      28
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
Birth       ki1114097-CMIN             BANGLADESH                     1               0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1               1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     2               0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     2               1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     3               0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     3               1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     4               0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     4               1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     5               0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     5               1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     6               0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     6               1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     7               0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     7               1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     8               0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     8               1        2      13
Birth       ki1114097-CMIN             BANGLADESH                     9               0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     9               1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     10              0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     10              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     11              0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     11              1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     12              0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     12              1        0      13
Birth       ki1114097-CMIN             BRAZIL                         1               0       13     115
Birth       ki1114097-CMIN             BRAZIL                         1               1        0     115
Birth       ki1114097-CMIN             BRAZIL                         2               0        7     115
Birth       ki1114097-CMIN             BRAZIL                         2               1        0     115
Birth       ki1114097-CMIN             BRAZIL                         3               0       13     115
Birth       ki1114097-CMIN             BRAZIL                         3               1        0     115
Birth       ki1114097-CMIN             BRAZIL                         4               0        9     115
Birth       ki1114097-CMIN             BRAZIL                         4               1        0     115
Birth       ki1114097-CMIN             BRAZIL                         5               0        5     115
Birth       ki1114097-CMIN             BRAZIL                         5               1        0     115
Birth       ki1114097-CMIN             BRAZIL                         6               0        6     115
Birth       ki1114097-CMIN             BRAZIL                         6               1        0     115
Birth       ki1114097-CMIN             BRAZIL                         7               0        4     115
Birth       ki1114097-CMIN             BRAZIL                         7               1        0     115
Birth       ki1114097-CMIN             BRAZIL                         8               0       12     115
Birth       ki1114097-CMIN             BRAZIL                         8               1        1     115
Birth       ki1114097-CMIN             BRAZIL                         9               0        8     115
Birth       ki1114097-CMIN             BRAZIL                         9               1        0     115
Birth       ki1114097-CMIN             BRAZIL                         10              0       14     115
Birth       ki1114097-CMIN             BRAZIL                         10              1        2     115
Birth       ki1114097-CMIN             BRAZIL                         11              0       11     115
Birth       ki1114097-CMIN             BRAZIL                         11              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         12              0       10     115
Birth       ki1114097-CMIN             BRAZIL                         12              1        0     115
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
Birth       ki1119695-PROBIT           BELARUS                        1               0      858   13884
Birth       ki1119695-PROBIT           BELARUS                        1               1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        2               0      791   13884
Birth       ki1119695-PROBIT           BELARUS                        2               1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        3               0      967   13884
Birth       ki1119695-PROBIT           BELARUS                        3               1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        4               0      956   13884
Birth       ki1119695-PROBIT           BELARUS                        4               1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        5               0      956   13884
Birth       ki1119695-PROBIT           BELARUS                        5               1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        6               0     1007   13884
Birth       ki1119695-PROBIT           BELARUS                        6               1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        7               0     1280   13884
Birth       ki1119695-PROBIT           BELARUS                        7               1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        8               0     1326   13884
Birth       ki1119695-PROBIT           BELARUS                        8               1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        9               0     1313   13884
Birth       ki1119695-PROBIT           BELARUS                        9               1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        10              0     1506   13884
Birth       ki1119695-PROBIT           BELARUS                        10              1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        11              0     1396   13884
Birth       ki1119695-PROBIT           BELARUS                        11              1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        12              0     1523   13884
Birth       ki1119695-PROBIT           BELARUS                        12              1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     1288   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1       56   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0      992   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1       44   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3               0     1099   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3               1       41   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4               0      971   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4               1       36   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5               0      965   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5               1       35   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6               0     1088   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6               1       44   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7               0     1131   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7               1       45   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8               0     1201   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8               1       25   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9               0     1293   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9               1       20   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10              0     1007   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10              1       35   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11              0     1102   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11              1       32   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12              0     1227   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12              1       28   13805
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     1643   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      244   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     1414   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1      150   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               0     1717   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               1      156   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4               0     1278   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4               1       86   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5               0      865   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5               1       96   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6               0      908   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6               1       85   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7               0      983   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7               1      103   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8               0     1335   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8               1      160   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9               0     1699   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9               1      168   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10              0     1869   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10              1      254   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11              0     1902   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11              1      268   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12              0     1959   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12              1      271   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               0      121     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               1        9     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               0      155     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               1       19     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4               0      149     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4               1       10     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5               0      113     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5               1       10     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6               0       85     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6               1        9     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7               0       65     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7               1        4     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8               0       32     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8               1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9               0       29     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9               1        2     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              0        9     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              1        1     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              1        0     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               0       24     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4               0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5               0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6               0        8     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7               0       19     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8               0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8               1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9               0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10              0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10              1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11              0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12              0       26     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12              1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       13     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               0       24     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               0       18     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4               0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5               0       19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6               0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7               0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8               0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9               0       28     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10              0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11              0       19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12              0       14     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12              1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1               0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          1               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          2               0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          2               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          3               0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          3               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          4               0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          4               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          5               0        8     236
6 months    ki0047075b-MAL-ED          INDIA                          5               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          6               0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          6               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          7               0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          7               1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          8               0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          8               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          9               0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          9               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          10              0       24     236
6 months    ki0047075b-MAL-ED          INDIA                          10              1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          11              0       25     236
6 months    ki0047075b-MAL-ED          INDIA                          11              1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          12              0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          12              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       25     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4               0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          4               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          5               0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          5               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          6               0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          6               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          7               0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          7               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          8               0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          8               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          9               0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          9               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          10              0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          10              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          11              0       23     236
6 months    ki0047075b-MAL-ED          NEPAL                          11              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          12              0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          12              1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1               0       36     273
6 months    ki0047075b-MAL-ED          PERU                           1               1        1     273
6 months    ki0047075b-MAL-ED          PERU                           2               0       20     273
6 months    ki0047075b-MAL-ED          PERU                           2               1        2     273
6 months    ki0047075b-MAL-ED          PERU                           3               0       20     273
6 months    ki0047075b-MAL-ED          PERU                           3               1        1     273
6 months    ki0047075b-MAL-ED          PERU                           4               0       19     273
6 months    ki0047075b-MAL-ED          PERU                           4               1        1     273
6 months    ki0047075b-MAL-ED          PERU                           5               0       24     273
6 months    ki0047075b-MAL-ED          PERU                           5               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           6               0       18     273
6 months    ki0047075b-MAL-ED          PERU                           6               1        1     273
6 months    ki0047075b-MAL-ED          PERU                           7               0       21     273
6 months    ki0047075b-MAL-ED          PERU                           7               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           8               0       16     273
6 months    ki0047075b-MAL-ED          PERU                           8               1        1     273
6 months    ki0047075b-MAL-ED          PERU                           9               0       22     273
6 months    ki0047075b-MAL-ED          PERU                           9               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           10              0       18     273
6 months    ki0047075b-MAL-ED          PERU                           10              1        1     273
6 months    ki0047075b-MAL-ED          PERU                           11              0       29     273
6 months    ki0047075b-MAL-ED          PERU                           11              1        4     273
6 months    ki0047075b-MAL-ED          PERU                           12              0       18     273
6 months    ki0047075b-MAL-ED          PERU                           12              1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       34     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       25     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4               0       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5               0       11     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5               1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6               0       17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7               0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8               0        8     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9               0       20     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10              0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10              1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11              0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11              1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12              0       34     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12              1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       26     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               0       10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               0       23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               0       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              0       17     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              0       26     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              0       28     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       23     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        4     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               0       20     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               1        4     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               0       24     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               1        1     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4               0       28     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4               1        1     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5               0       40     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5               1        4     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6               0       31     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6               1        5     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7               0       28     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7               1        5     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8               0       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8               1       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9               0       21     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9               1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10              0       18     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10              1        1     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11              0       38     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11              1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12              0       26     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12              1        2     369
6 months    ki1000108-IRC              INDIA                          1               0       32     407
6 months    ki1000108-IRC              INDIA                          1               1        4     407
6 months    ki1000108-IRC              INDIA                          2               0       23     407
6 months    ki1000108-IRC              INDIA                          2               1        4     407
6 months    ki1000108-IRC              INDIA                          3               0       28     407
6 months    ki1000108-IRC              INDIA                          3               1        1     407
6 months    ki1000108-IRC              INDIA                          4               0       18     407
6 months    ki1000108-IRC              INDIA                          4               1        4     407
6 months    ki1000108-IRC              INDIA                          5               0       17     407
6 months    ki1000108-IRC              INDIA                          5               1        3     407
6 months    ki1000108-IRC              INDIA                          6               0       36     407
6 months    ki1000108-IRC              INDIA                          6               1        1     407
6 months    ki1000108-IRC              INDIA                          7               0       35     407
6 months    ki1000108-IRC              INDIA                          7               1        1     407
6 months    ki1000108-IRC              INDIA                          8               0       44     407
6 months    ki1000108-IRC              INDIA                          8               1        1     407
6 months    ki1000108-IRC              INDIA                          9               0       26     407
6 months    ki1000108-IRC              INDIA                          9               1        1     407
6 months    ki1000108-IRC              INDIA                          10              0       36     407
6 months    ki1000108-IRC              INDIA                          10              1        0     407
6 months    ki1000108-IRC              INDIA                          11              0       36     407
6 months    ki1000108-IRC              INDIA                          11              1        5     407
6 months    ki1000108-IRC              INDIA                          12              0       47     407
6 months    ki1000108-IRC              INDIA                          12              1        4     407
6 months    ki1000109-EE               PAKISTAN                       1               0       60     372
6 months    ki1000109-EE               PAKISTAN                       1               1       27     372
6 months    ki1000109-EE               PAKISTAN                       2               0       64     372
6 months    ki1000109-EE               PAKISTAN                       2               1       17     372
6 months    ki1000109-EE               PAKISTAN                       3               0       33     372
6 months    ki1000109-EE               PAKISTAN                       3               1        8     372
6 months    ki1000109-EE               PAKISTAN                       4               0       22     372
6 months    ki1000109-EE               PAKISTAN                       4               1        7     372
6 months    ki1000109-EE               PAKISTAN                       5               0        1     372
6 months    ki1000109-EE               PAKISTAN                       5               1        1     372
6 months    ki1000109-EE               PAKISTAN                       6               0        0     372
6 months    ki1000109-EE               PAKISTAN                       6               1        0     372
6 months    ki1000109-EE               PAKISTAN                       7               0        0     372
6 months    ki1000109-EE               PAKISTAN                       7               1        0     372
6 months    ki1000109-EE               PAKISTAN                       8               0        0     372
6 months    ki1000109-EE               PAKISTAN                       8               1        0     372
6 months    ki1000109-EE               PAKISTAN                       9               0        0     372
6 months    ki1000109-EE               PAKISTAN                       9               1        0     372
6 months    ki1000109-EE               PAKISTAN                       10              0        0     372
6 months    ki1000109-EE               PAKISTAN                       10              1        0     372
6 months    ki1000109-EE               PAKISTAN                       11              0       32     372
6 months    ki1000109-EE               PAKISTAN                       11              1       17     372
6 months    ki1000109-EE               PAKISTAN                       12              0       66     372
6 months    ki1000109-EE               PAKISTAN                       12              1       17     372
6 months    ki1000109-ResPak           PAKISTAN                       1               0        5     235
6 months    ki1000109-ResPak           PAKISTAN                       1               1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       2               0       12     235
6 months    ki1000109-ResPak           PAKISTAN                       2               1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       3               0        7     235
6 months    ki1000109-ResPak           PAKISTAN                       3               1        6     235
6 months    ki1000109-ResPak           PAKISTAN                       4               0       21     235
6 months    ki1000109-ResPak           PAKISTAN                       4               1        7     235
6 months    ki1000109-ResPak           PAKISTAN                       5               0       23     235
6 months    ki1000109-ResPak           PAKISTAN                       5               1        7     235
6 months    ki1000109-ResPak           PAKISTAN                       6               0       37     235
6 months    ki1000109-ResPak           PAKISTAN                       6               1        9     235
6 months    ki1000109-ResPak           PAKISTAN                       7               0       30     235
6 months    ki1000109-ResPak           PAKISTAN                       7               1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       8               0       28     235
6 months    ki1000109-ResPak           PAKISTAN                       8               1        7     235
6 months    ki1000109-ResPak           PAKISTAN                       9               0       17     235
6 months    ki1000109-ResPak           PAKISTAN                       9               1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       10              0        7     235
6 months    ki1000109-ResPak           PAKISTAN                       10              1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       11              0        3     235
6 months    ki1000109-ResPak           PAKISTAN                       11              1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12              0        1     235
6 months    ki1000109-ResPak           PAKISTAN                       12              1        1     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0       77    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1        8    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0       74    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1        7    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3               0       73    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3               1        7    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4               0       73    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4               1        4    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5               0       67    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5               1        9    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6               0       91    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6               1       11    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7               0       98    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7               1       17    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8               0      136    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8               1       16    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9               0      152    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9               1       14    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10              0      139    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10              1        9    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11              0      114    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11              1       11    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12              0      114    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12              1       15    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       49     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       29     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1        8     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3               0       30     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3               1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               0       22     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               1        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5               0       25     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5               1        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6               0       26     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6               1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7               0       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7               1        1     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8               0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8               1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9               0       11     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9               1        1     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10              0       20     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10              1        6     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11              0       41     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11              1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12              0       57     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12              1        5     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0       46     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2               0       47     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2               1        3     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3               0       46     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3               1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4               0       42     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4               1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5               0       39     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5               1        1     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6               0       35     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6               1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7               0       42     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7               1        3     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8               0       36     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8               1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9               0       28     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9               1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10              0       48     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10              1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11              0       44     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11              1        5     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12              0       49     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12              1        1     537
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      198    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      135    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        2    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               0      150    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               0      137    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               0      159    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               0      142    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               0      144    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0      173    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0      195    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               1        3    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0      195    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0      182    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              1        5    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0      200    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              1        1    2029
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       17     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2               0       19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3               0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4               0       25     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4               1        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5               0       30     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5               1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6               0       35     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6               1        4     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7               0       20     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7               1        4     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8               0       16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8               1        3     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9               0       32     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9               1        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10              0       23     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10              1        6     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11              0       25     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11              1        3     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12              0        9     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12              1        1     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7               0      112     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7               1        7     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8               0      215     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8               1        5     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9               0      196     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9               1        8     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10              0       13     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11              0        4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12              0        1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12              1        0     563
6 months    ki1114097-CMIN             BANGLADESH                     1               0       22     243
6 months    ki1114097-CMIN             BANGLADESH                     1               1        5     243
6 months    ki1114097-CMIN             BANGLADESH                     2               0       27     243
6 months    ki1114097-CMIN             BANGLADESH                     2               1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     3               0       18     243
6 months    ki1114097-CMIN             BANGLADESH                     3               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     4               0       16     243
6 months    ki1114097-CMIN             BANGLADESH                     4               1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     5               0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     5               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     6               0       22     243
6 months    ki1114097-CMIN             BANGLADESH                     6               1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     7               0       10     243
6 months    ki1114097-CMIN             BANGLADESH                     7               1        2     243
6 months    ki1114097-CMIN             BANGLADESH                     8               0       12     243
6 months    ki1114097-CMIN             BANGLADESH                     8               1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     9               0       10     243
6 months    ki1114097-CMIN             BANGLADESH                     9               1        6     243
6 months    ki1114097-CMIN             BANGLADESH                     10              0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     10              1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     11              0        2     243
6 months    ki1114097-CMIN             BANGLADESH                     11              1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     12              0       39     243
6 months    ki1114097-CMIN             BANGLADESH                     12              1        6     243
6 months    ki1114097-CMIN             BRAZIL                         1               0       10     108
6 months    ki1114097-CMIN             BRAZIL                         1               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         2               0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3               0       12     108
6 months    ki1114097-CMIN             BRAZIL                         3               1        1     108
6 months    ki1114097-CMIN             BRAZIL                         4               0       10     108
6 months    ki1114097-CMIN             BRAZIL                         4               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5               0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6               0        6     108
6 months    ki1114097-CMIN             BRAZIL                         6               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         7               0        3     108
6 months    ki1114097-CMIN             BRAZIL                         7               1        1     108
6 months    ki1114097-CMIN             BRAZIL                         8               0       11     108
6 months    ki1114097-CMIN             BRAZIL                         8               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9               0        8     108
6 months    ki1114097-CMIN             BRAZIL                         9               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         10              0       14     108
6 months    ki1114097-CMIN             BRAZIL                         10              1        1     108
6 months    ki1114097-CMIN             BRAZIL                         11              0       12     108
6 months    ki1114097-CMIN             BRAZIL                         11              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         12              0        8     108
6 months    ki1114097-CMIN             BRAZIL                         12              1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               0       15     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               1        0     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2               0       83     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2               1        4     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3               0      112     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3               1        3     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4               0      124     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4               1        1     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5               0      108     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5               1        2     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6               0       61     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6               1        0     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7               0       40     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7               1        0     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8               0       35     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8               1        2     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9               0       96     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9               1        2     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10              0       32     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10              1        2     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11              0       46     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11              1        1     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12              0       78     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12              1        1     848
6 months    ki1114097-CMIN             PERU                           1               0       41     637
6 months    ki1114097-CMIN             PERU                           1               1        0     637
6 months    ki1114097-CMIN             PERU                           2               0       55     637
6 months    ki1114097-CMIN             PERU                           2               1        1     637
6 months    ki1114097-CMIN             PERU                           3               0       67     637
6 months    ki1114097-CMIN             PERU                           3               1        2     637
6 months    ki1114097-CMIN             PERU                           4               0       67     637
6 months    ki1114097-CMIN             PERU                           4               1        2     637
6 months    ki1114097-CMIN             PERU                           5               0       69     637
6 months    ki1114097-CMIN             PERU                           5               1        1     637
6 months    ki1114097-CMIN             PERU                           6               0       48     637
6 months    ki1114097-CMIN             PERU                           6               1        0     637
6 months    ki1114097-CMIN             PERU                           7               0       44     637
6 months    ki1114097-CMIN             PERU                           7               1        0     637
6 months    ki1114097-CMIN             PERU                           8               0       53     637
6 months    ki1114097-CMIN             PERU                           8               1        1     637
6 months    ki1114097-CMIN             PERU                           9               0       42     637
6 months    ki1114097-CMIN             PERU                           9               1        0     637
6 months    ki1114097-CMIN             PERU                           10              0       37     637
6 months    ki1114097-CMIN             PERU                           10              1        0     637
6 months    ki1114097-CMIN             PERU                           11              0       65     637
6 months    ki1114097-CMIN             PERU                           11              1        0     637
6 months    ki1114097-CMIN             PERU                           12              0       41     637
6 months    ki1114097-CMIN             PERU                           12              1        1     637
6 months    ki1114097-CONTENT          PERU                           1               0        9     215
6 months    ki1114097-CONTENT          PERU                           1               1        0     215
6 months    ki1114097-CONTENT          PERU                           2               0       13     215
6 months    ki1114097-CONTENT          PERU                           2               1        0     215
6 months    ki1114097-CONTENT          PERU                           3               0       27     215
6 months    ki1114097-CONTENT          PERU                           3               1        0     215
6 months    ki1114097-CONTENT          PERU                           4               0       18     215
6 months    ki1114097-CONTENT          PERU                           4               1        0     215
6 months    ki1114097-CONTENT          PERU                           5               0       24     215
6 months    ki1114097-CONTENT          PERU                           5               1        1     215
6 months    ki1114097-CONTENT          PERU                           6               0       13     215
6 months    ki1114097-CONTENT          PERU                           6               1        1     215
6 months    ki1114097-CONTENT          PERU                           7               0       16     215
6 months    ki1114097-CONTENT          PERU                           7               1        0     215
6 months    ki1114097-CONTENT          PERU                           8               0       25     215
6 months    ki1114097-CONTENT          PERU                           8               1        1     215
6 months    ki1114097-CONTENT          PERU                           9               0       18     215
6 months    ki1114097-CONTENT          PERU                           9               1        1     215
6 months    ki1114097-CONTENT          PERU                           10              0       23     215
6 months    ki1114097-CONTENT          PERU                           10              1        0     215
6 months    ki1114097-CONTENT          PERU                           11              0       18     215
6 months    ki1114097-CONTENT          PERU                           11              1        0     215
6 months    ki1114097-CONTENT          PERU                           12              0        7     215
6 months    ki1114097-CONTENT          PERU                           12              1        0     215
6 months    ki1119695-PROBIT           BELARUS                        1               0     1083   15761
6 months    ki1119695-PROBIT           BELARUS                        1               1       19   15761
6 months    ki1119695-PROBIT           BELARUS                        2               0      933   15761
6 months    ki1119695-PROBIT           BELARUS                        2               1       18   15761
6 months    ki1119695-PROBIT           BELARUS                        3               0     1096   15761
6 months    ki1119695-PROBIT           BELARUS                        3               1       18   15761
6 months    ki1119695-PROBIT           BELARUS                        4               0     1056   15761
6 months    ki1119695-PROBIT           BELARUS                        4               1       14   15761
6 months    ki1119695-PROBIT           BELARUS                        5               0     1084   15761
6 months    ki1119695-PROBIT           BELARUS                        5               1       12   15761
6 months    ki1119695-PROBIT           BELARUS                        6               0     1102   15761
6 months    ki1119695-PROBIT           BELARUS                        6               1       18   15761
6 months    ki1119695-PROBIT           BELARUS                        7               0     1347   15761
6 months    ki1119695-PROBIT           BELARUS                        7               1       18   15761
6 months    ki1119695-PROBIT           BELARUS                        8               0     1480   15761
6 months    ki1119695-PROBIT           BELARUS                        8               1       18   15761
6 months    ki1119695-PROBIT           BELARUS                        9               0     1456   15761
6 months    ki1119695-PROBIT           BELARUS                        9               1       25   15761
6 months    ki1119695-PROBIT           BELARUS                        10              0     1643   15761
6 months    ki1119695-PROBIT           BELARUS                        10              1       25   15761
6 months    ki1119695-PROBIT           BELARUS                        11              0     1561   15761
6 months    ki1119695-PROBIT           BELARUS                        11              1       29   15761
6 months    ki1119695-PROBIT           BELARUS                        12              0     1677   15761
6 months    ki1119695-PROBIT           BELARUS                        12              1       29   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      777    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       28    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0      554    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       20    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3               0      661    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3               1       46    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4               0      634    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4               1       24    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5               0      572    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5               1       27    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6               0      623    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6               1       32    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7               0      606    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7               1       34    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8               0      706    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8               1       23    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9               0      740    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9               1       25    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10              0      578    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10              1       22    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11              0      698    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11              1       30    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12              0      784    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12              1       35    8279
6 months    ki1148112-LCNI-5           MALAWI                         1               0       51     839
6 months    ki1148112-LCNI-5           MALAWI                         1               1        4     839
6 months    ki1148112-LCNI-5           MALAWI                         2               0      111     839
6 months    ki1148112-LCNI-5           MALAWI                         2               1        3     839
6 months    ki1148112-LCNI-5           MALAWI                         3               0       89     839
6 months    ki1148112-LCNI-5           MALAWI                         3               1        9     839
6 months    ki1148112-LCNI-5           MALAWI                         4               0       95     839
6 months    ki1148112-LCNI-5           MALAWI                         4               1       15     839
6 months    ki1148112-LCNI-5           MALAWI                         5               0      102     839
6 months    ki1148112-LCNI-5           MALAWI                         5               1        9     839
6 months    ki1148112-LCNI-5           MALAWI                         6               0       87     839
6 months    ki1148112-LCNI-5           MALAWI                         6               1        4     839
6 months    ki1148112-LCNI-5           MALAWI                         7               0       63     839
6 months    ki1148112-LCNI-5           MALAWI                         7               1        9     839
6 months    ki1148112-LCNI-5           MALAWI                         8               0       39     839
6 months    ki1148112-LCNI-5           MALAWI                         8               1        2     839
6 months    ki1148112-LCNI-5           MALAWI                         9               0       26     839
6 months    ki1148112-LCNI-5           MALAWI                         9               1        3     839
6 months    ki1148112-LCNI-5           MALAWI                         10              0       34     839
6 months    ki1148112-LCNI-5           MALAWI                         10              1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         11              0       43     839
6 months    ki1148112-LCNI-5           MALAWI                         11              1        6     839
6 months    ki1148112-LCNI-5           MALAWI                         12              0       28     839
6 months    ki1148112-LCNI-5           MALAWI                         12              1        6     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     1275   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       84   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     1133   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1       58   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               0     1346   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               1       76   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4               0     1127   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4               1       63   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5               0     1070   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5               1       81   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6               0     1101   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6               1       61   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7               0     1171   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7               1       73   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8               0     1393   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8               1       79   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9               0     1460   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9               1      102   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10              0     1565   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10              1      120   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11              0     1578   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11              1      120   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12              0     1572   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12              1      103   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0       51    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1        2    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               0      163    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               1        2    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               0      405    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               1       25    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4               0      799    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4               1       46    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5               0      552    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5               1       33    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6               0      405    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6               1       29    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7               0      775    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7               1       63    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8               0      488    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8               1       22    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9               0      415    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9               1       16    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10              0      287    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10              1       19    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              0      149    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              1        8    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              0       72    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              1        5    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       12     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4               0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5               0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5               1        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6               0        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7               0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8               0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8               1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9               0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10              0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10              1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11              0        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11              1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12              0       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12              1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       17     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4               0        9     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5               0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6               0        5     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7               0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8               0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9               0       24     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10              0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11              0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12              0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12              1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1               0       16     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          2               0       17     227
24 months   ki0047075b-MAL-ED          INDIA                          2               1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          3               0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          3               1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          4               0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          4               1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          5               0        6     227
24 months   ki0047075b-MAL-ED          INDIA                          5               1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          6               0       17     227
24 months   ki0047075b-MAL-ED          INDIA                          6               1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          7               0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          7               1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          8               0       16     227
24 months   ki0047075b-MAL-ED          INDIA                          8               1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          9               0       16     227
24 months   ki0047075b-MAL-ED          INDIA                          9               1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          10              0       22     227
24 months   ki0047075b-MAL-ED          INDIA                          10              1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          11              0       20     227
24 months   ki0047075b-MAL-ED          INDIA                          11              1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          12              0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          12              1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          4               0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          4               1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          5               0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          5               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          6               0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          6               1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          7               0       20     228
24 months   ki0047075b-MAL-ED          NEPAL                          7               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          8               0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          8               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          9               0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          9               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          10              0       21     228
24 months   ki0047075b-MAL-ED          NEPAL                          10              1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          11              0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          11              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          12              0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          12              1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1               0       25     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        4     201
24 months   ki0047075b-MAL-ED          PERU                           2               0       19     201
24 months   ki0047075b-MAL-ED          PERU                           2               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           3               0       14     201
24 months   ki0047075b-MAL-ED          PERU                           3               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           4               0       10     201
24 months   ki0047075b-MAL-ED          PERU                           4               1        2     201
24 months   ki0047075b-MAL-ED          PERU                           5               0       17     201
24 months   ki0047075b-MAL-ED          PERU                           5               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           6               0       10     201
24 months   ki0047075b-MAL-ED          PERU                           6               1        2     201
24 months   ki0047075b-MAL-ED          PERU                           7               0       14     201
24 months   ki0047075b-MAL-ED          PERU                           7               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           8               0       12     201
24 months   ki0047075b-MAL-ED          PERU                           8               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           9               0       20     201
24 months   ki0047075b-MAL-ED          PERU                           9               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           10              0       14     201
24 months   ki0047075b-MAL-ED          PERU                           10              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           11              0       18     201
24 months   ki0047075b-MAL-ED          PERU                           11              1        3     201
24 months   ki0047075b-MAL-ED          PERU                           12              0       13     201
24 months   ki0047075b-MAL-ED          PERU                           12              1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        6     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4               0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4               1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5               0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6               0       15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7               0       21     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7               1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8               0        7     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8               1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9               0       20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10              0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10              1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11              0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11              1        4     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12              0       28     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12              1        3     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       13     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1       12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               0        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               0       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               1        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               0       13     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               1        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              1        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              1        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              0       16     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              1        7     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       11     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1       13     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4               0       22     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4               1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5               0       27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5               1       18     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6               0       19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6               1       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7               0       27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7               1        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8               0       31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8               1       10     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9               0       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9               1        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10              0       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10              1        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11              0       31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11              1        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12              0       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12              1       12     372
24 months   ki1000108-IRC              INDIA                          1               0       31     409
24 months   ki1000108-IRC              INDIA                          1               1        5     409
24 months   ki1000108-IRC              INDIA                          2               0       24     409
24 months   ki1000108-IRC              INDIA                          2               1        3     409
24 months   ki1000108-IRC              INDIA                          3               0       24     409
24 months   ki1000108-IRC              INDIA                          3               1        5     409
24 months   ki1000108-IRC              INDIA                          4               0       19     409
24 months   ki1000108-IRC              INDIA                          4               1        3     409
24 months   ki1000108-IRC              INDIA                          5               0       15     409
24 months   ki1000108-IRC              INDIA                          5               1        6     409
24 months   ki1000108-IRC              INDIA                          6               0       36     409
24 months   ki1000108-IRC              INDIA                          6               1        1     409
24 months   ki1000108-IRC              INDIA                          7               0       36     409
24 months   ki1000108-IRC              INDIA                          7               1        0     409
24 months   ki1000108-IRC              INDIA                          8               0       41     409
24 months   ki1000108-IRC              INDIA                          8               1        4     409
24 months   ki1000108-IRC              INDIA                          9               0       24     409
24 months   ki1000108-IRC              INDIA                          9               1        3     409
24 months   ki1000108-IRC              INDIA                          10              0       35     409
24 months   ki1000108-IRC              INDIA                          10              1        1     409
24 months   ki1000108-IRC              INDIA                          11              0       39     409
24 months   ki1000108-IRC              INDIA                          11              1        2     409
24 months   ki1000108-IRC              INDIA                          12              0       44     409
24 months   ki1000108-IRC              INDIA                          12              1        8     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0       35     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1        7     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2               0       32     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2               1        4     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3               0       35     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3               1        6     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4               0       24     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4               1       10     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5               0       25     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5               1        9     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6               0       25     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6               1        5     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7               0       29     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7               1        8     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8               0       21     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8               1        9     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9               0       16     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9               1        3     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10              0       30     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10              1       10     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11              0       29     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11              1       12     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12              0       35     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12              1       10     429
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        2     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3               1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4               0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4               1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          5               0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          5               1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6               0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6               1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7               0       80     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7               1        9     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8               0      180     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8               1       23     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9               0      166     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9               1       21     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10              0       13     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10              1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          11              0        3     499
24 months   ki1113344-GMS-Nepal        NEPAL                          11              1        1     499
24 months   ki1113344-GMS-Nepal        NEPAL                          12              0        1     499
24 months   ki1113344-GMS-Nepal        NEPAL                          12              1        0     499
24 months   ki1114097-CMIN             BANGLADESH                     1               0       21     242
24 months   ki1114097-CMIN             BANGLADESH                     1               1        5     242
24 months   ki1114097-CMIN             BANGLADESH                     2               0       20     242
24 months   ki1114097-CMIN             BANGLADESH                     2               1       11     242
24 months   ki1114097-CMIN             BANGLADESH                     3               0       15     242
24 months   ki1114097-CMIN             BANGLADESH                     3               1        4     242
24 months   ki1114097-CMIN             BANGLADESH                     4               0       14     242
24 months   ki1114097-CMIN             BANGLADESH                     4               1        4     242
24 months   ki1114097-CMIN             BANGLADESH                     5               0       16     242
24 months   ki1114097-CMIN             BANGLADESH                     5               1        3     242
24 months   ki1114097-CMIN             BANGLADESH                     6               0       19     242
24 months   ki1114097-CMIN             BANGLADESH                     6               1        3     242
24 months   ki1114097-CMIN             BANGLADESH                     7               0        7     242
24 months   ki1114097-CMIN             BANGLADESH                     7               1        5     242
24 months   ki1114097-CMIN             BANGLADESH                     8               0       11     242
24 months   ki1114097-CMIN             BANGLADESH                     8               1        2     242
24 months   ki1114097-CMIN             BANGLADESH                     9               0        9     242
24 months   ki1114097-CMIN             BANGLADESH                     9               1        9     242
24 months   ki1114097-CMIN             BANGLADESH                     10              0       15     242
24 months   ki1114097-CMIN             BANGLADESH                     10              1        4     242
24 months   ki1114097-CMIN             BANGLADESH                     11              0        1     242
24 months   ki1114097-CMIN             BANGLADESH                     11              1        1     242
24 months   ki1114097-CMIN             BANGLADESH                     12              0       26     242
24 months   ki1114097-CMIN             BANGLADESH                     12              1       17     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               0       10     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2               0       51     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2               1        6     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3               0       61     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3               1        7     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4               0       96     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4               1       12     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5               0       63     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5               1        7     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6               0       31     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6               1        3     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7               0       26     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7               1        3     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8               0       23     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8               1        5     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9               0       55     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9               1        3     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10              0       12     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10              1        3     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11              0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11              1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12              0       40     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12              1        3     551
24 months   ki1114097-CMIN             PERU                           1               0        8     429
24 months   ki1114097-CMIN             PERU                           1               1        0     429
24 months   ki1114097-CMIN             PERU                           2               0      123     429
24 months   ki1114097-CMIN             PERU                           2               1       11     429
24 months   ki1114097-CMIN             PERU                           3               0       77     429
24 months   ki1114097-CMIN             PERU                           3               1        5     429
24 months   ki1114097-CMIN             PERU                           4               0       22     429
24 months   ki1114097-CMIN             PERU                           4               1        4     429
24 months   ki1114097-CMIN             PERU                           5               0       27     429
24 months   ki1114097-CMIN             PERU                           5               1        4     429
24 months   ki1114097-CMIN             PERU                           6               0       13     429
24 months   ki1114097-CMIN             PERU                           6               1        0     429
24 months   ki1114097-CMIN             PERU                           7               0       18     429
24 months   ki1114097-CMIN             PERU                           7               1        0     429
24 months   ki1114097-CMIN             PERU                           8               0       30     429
24 months   ki1114097-CMIN             PERU                           8               1        1     429
24 months   ki1114097-CMIN             PERU                           9               0       14     429
24 months   ki1114097-CMIN             PERU                           9               1        0     429
24 months   ki1114097-CMIN             PERU                           10              0       14     429
24 months   ki1114097-CMIN             PERU                           10              1        1     429
24 months   ki1114097-CMIN             PERU                           11              0       39     429
24 months   ki1114097-CMIN             PERU                           11              1        3     429
24 months   ki1114097-CMIN             PERU                           12              0       14     429
24 months   ki1114097-CMIN             PERU                           12              1        1     429
24 months   ki1114097-CONTENT          PERU                           1               0        8     164
24 months   ki1114097-CONTENT          PERU                           1               1        0     164
24 months   ki1114097-CONTENT          PERU                           2               0       10     164
24 months   ki1114097-CONTENT          PERU                           2               1        0     164
24 months   ki1114097-CONTENT          PERU                           3               0       20     164
24 months   ki1114097-CONTENT          PERU                           3               1        0     164
24 months   ki1114097-CONTENT          PERU                           4               0       12     164
24 months   ki1114097-CONTENT          PERU                           4               1        1     164
24 months   ki1114097-CONTENT          PERU                           5               0       21     164
24 months   ki1114097-CONTENT          PERU                           5               1        1     164
24 months   ki1114097-CONTENT          PERU                           6               0       11     164
24 months   ki1114097-CONTENT          PERU                           6               1        0     164
24 months   ki1114097-CONTENT          PERU                           7               0       13     164
24 months   ki1114097-CONTENT          PERU                           7               1        0     164
24 months   ki1114097-CONTENT          PERU                           8               0       23     164
24 months   ki1114097-CONTENT          PERU                           8               1        0     164
24 months   ki1114097-CONTENT          PERU                           9               0       10     164
24 months   ki1114097-CONTENT          PERU                           9               1        1     164
24 months   ki1114097-CONTENT          PERU                           10              0       12     164
24 months   ki1114097-CONTENT          PERU                           10              1        0     164
24 months   ki1114097-CONTENT          PERU                           11              0       17     164
24 months   ki1114097-CONTENT          PERU                           11              1        0     164
24 months   ki1114097-CONTENT          PERU                           12              0        4     164
24 months   ki1114097-CONTENT          PERU                           12              1        0     164
24 months   ki1119695-PROBIT           BELARUS                        1               0      268    4035
24 months   ki1119695-PROBIT           BELARUS                        1               1        1    4035
24 months   ki1119695-PROBIT           BELARUS                        2               0      208    4035
24 months   ki1119695-PROBIT           BELARUS                        2               1        3    4035
24 months   ki1119695-PROBIT           BELARUS                        3               0      322    4035
24 months   ki1119695-PROBIT           BELARUS                        3               1        2    4035
24 months   ki1119695-PROBIT           BELARUS                        4               0      323    4035
24 months   ki1119695-PROBIT           BELARUS                        4               1        3    4035
24 months   ki1119695-PROBIT           BELARUS                        5               0      305    4035
24 months   ki1119695-PROBIT           BELARUS                        5               1        2    4035
24 months   ki1119695-PROBIT           BELARUS                        6               0      259    4035
24 months   ki1119695-PROBIT           BELARUS                        6               1        7    4035
24 months   ki1119695-PROBIT           BELARUS                        7               0      369    4035
24 months   ki1119695-PROBIT           BELARUS                        7               1        4    4035
24 months   ki1119695-PROBIT           BELARUS                        8               0      349    4035
24 months   ki1119695-PROBIT           BELARUS                        8               1        4    4035
24 months   ki1119695-PROBIT           BELARUS                        9               0      377    4035
24 months   ki1119695-PROBIT           BELARUS                        9               1        5    4035
24 months   ki1119695-PROBIT           BELARUS                        10              0      383    4035
24 months   ki1119695-PROBIT           BELARUS                        10              1        9    4035
24 months   ki1119695-PROBIT           BELARUS                        11              0      380    4035
24 months   ki1119695-PROBIT           BELARUS                        11              1        9    4035
24 months   ki1119695-PROBIT           BELARUS                        12              0      427    4035
24 months   ki1119695-PROBIT           BELARUS                        12              1       16    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       44     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       11     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0       44     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1       19     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3               0       38     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3               1       20     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4               0       34     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4               1       10     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5               0       36     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5               1       15     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6               0       33     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6               1       16     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7               0       15     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7               1       17     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8               0       25     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8               1        6     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               0        3     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               1        0     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              0        6     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              1        0     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11              0       19     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11              1        6     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12              0       28     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12              1       11     456
24 months   ki1148112-LCNI-5           MALAWI                         1               0       35     579
24 months   ki1148112-LCNI-5           MALAWI                         1               1        6     579
24 months   ki1148112-LCNI-5           MALAWI                         2               0       83     579
24 months   ki1148112-LCNI-5           MALAWI                         2               1        5     579
24 months   ki1148112-LCNI-5           MALAWI                         3               0       65     579
24 months   ki1148112-LCNI-5           MALAWI                         3               1        5     579
24 months   ki1148112-LCNI-5           MALAWI                         4               0       62     579
24 months   ki1148112-LCNI-5           MALAWI                         4               1       17     579
24 months   ki1148112-LCNI-5           MALAWI                         5               0       59     579
24 months   ki1148112-LCNI-5           MALAWI                         5               1        5     579
24 months   ki1148112-LCNI-5           MALAWI                         6               0       53     579
24 months   ki1148112-LCNI-5           MALAWI                         6               1       11     579
24 months   ki1148112-LCNI-5           MALAWI                         7               0       36     579
24 months   ki1148112-LCNI-5           MALAWI                         7               1        5     579
24 months   ki1148112-LCNI-5           MALAWI                         8               0       27     579
24 months   ki1148112-LCNI-5           MALAWI                         8               1        0     579
24 months   ki1148112-LCNI-5           MALAWI                         9               0       19     579
24 months   ki1148112-LCNI-5           MALAWI                         9               1        1     579
24 months   ki1148112-LCNI-5           MALAWI                         10              0       24     579
24 months   ki1148112-LCNI-5           MALAWI                         10              1        1     579
24 months   ki1148112-LCNI-5           MALAWI                         11              0       30     579
24 months   ki1148112-LCNI-5           MALAWI                         11              1        6     579
24 months   ki1148112-LCNI-5           MALAWI                         12              0       19     579
24 months   ki1148112-LCNI-5           MALAWI                         12              1        5     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      588    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      115    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0      497    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      114    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0      620    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1      110    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4               0      476    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4               1       63    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5               0      332    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5               1       66    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6               0      487    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6               1       79    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7               0      561    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7               1       83    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8               0      561    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8               1       88    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9               0      644    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9               1       91    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10              0      754    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10              1      125    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11              0      782    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11              1      188    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12              0      984    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12              1      224    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0       45    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1        2    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0      298    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1       28    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0      361    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1       40    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4               0      706    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4               1       97    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5               0      498    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5               1       61    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6               0      394    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6               1       29    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7               0      698    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7               1       85    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8               0      446    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8               1       26    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9               0      405    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9               1       40    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10              0      259    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10              1       17    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              0      139    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              1        7    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              0       66    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              1        5    4752


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
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/5ab6cf32-dcbc-47e2-b314-335723ece7d0/f9a6dc0d-097e-425d-9088-5ec8820de7a5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ab6cf32-dcbc-47e2-b314-335723ece7d0/f9a6dc0d-097e-425d-9088-5ec8820de7a5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ab6cf32-dcbc-47e2-b314-335723ece7d0/f9a6dc0d-097e-425d-9088-5ec8820de7a5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ab6cf32-dcbc-47e2-b314-335723ece7d0/f9a6dc0d-097e-425d-9088-5ec8820de7a5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0416667   0.0309831   0.0523502
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0424710   0.0301908   0.0547513
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0359649   0.0251556   0.0467742
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0357498   0.0242819   0.0472176
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0350000   0.0236090   0.0463910
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0388693   0.0276093   0.0501292
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0382653   0.0273008   0.0492298
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0203915   0.0124798   0.0283032
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0152323   0.0086074   0.0218572
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0335893   0.0226494   0.0445291
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0282187   0.0185802   0.0378572
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0223108   0.0141393   0.0304822
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.1293058   0.1133816   0.1452299
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0959079   0.0796430   0.1121729
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0832888   0.0689004   0.0976773
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0630499   0.0499428   0.0761569
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0998959   0.0794255   0.1203664
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0855992   0.0647497   0.1064487
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0948435   0.0765394   0.1131475
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.1070234   0.0900786   0.1239682
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0899839   0.0764511   0.1035167
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.1196420   0.1049114   0.1343726
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.1235023   0.1086803   0.1383244
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.1215247   0.1059686   0.1370807
6 months    ki1119695-PROBIT     BELARUS      1                    NA                0.0172414   0.0007512   0.0337316
6 months    ki1119695-PROBIT     BELARUS      2                    NA                0.0189274   0.0091703   0.0286846
6 months    ki1119695-PROBIT     BELARUS      3                    NA                0.0161580   0.0082849   0.0240311
6 months    ki1119695-PROBIT     BELARUS      4                    NA                0.0130841   0.0037456   0.0224226
6 months    ki1119695-PROBIT     BELARUS      5                    NA                0.0109489   0.0027783   0.0191195
6 months    ki1119695-PROBIT     BELARUS      6                    NA                0.0160714   0.0032535   0.0288894
6 months    ki1119695-PROBIT     BELARUS      7                    NA                0.0131868   0.0037091   0.0226646
6 months    ki1119695-PROBIT     BELARUS      8                    NA                0.0120160   0.0027054   0.0213267
6 months    ki1119695-PROBIT     BELARUS      9                    NA                0.0168805   0.0076294   0.0261315
6 months    ki1119695-PROBIT     BELARUS      10                   NA                0.0149880   0.0078128   0.0221633
6 months    ki1119695-PROBIT     BELARUS      11                   NA                0.0182390   0.0092779   0.0272001
6 months    ki1119695-PROBIT     BELARUS      12                   NA                0.0169988   0.0086663   0.0253313
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0347826   0.0221245   0.0474408
6 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0348432   0.0198403   0.0498461
6 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0650636   0.0468824   0.0832449
6 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0364742   0.0221495   0.0507989
6 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0450751   0.0284596   0.0616906
6 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0488550   0.0323456   0.0653644
6 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0531250   0.0357478   0.0705022
6 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0315501   0.0188604   0.0442397
6 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0326797   0.0200798   0.0452797
6 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0366667   0.0216275   0.0517058
6 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0412088   0.0267688   0.0556487
6 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0427350   0.0288821   0.0565879
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0618102   0.0484754   0.0751449
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0486986   0.0356105   0.0617866
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0534459   0.0411684   0.0657233
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0529412   0.0395066   0.0663758
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0703736   0.0554174   0.0853298
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0524957   0.0396305   0.0653609
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0586817   0.0457542   0.0716091
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0536685   0.0419857   0.0653513
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0653009   0.0507635   0.0798383
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0712166   0.0581941   0.0842391
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0706714   0.0580368   0.0833059
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0614925   0.0495543   0.0734308
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.1635846   0.1332322   0.1939371
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.1865794   0.1538710   0.2192877
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.1506849   0.1243811   0.1769888
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.1168831   0.0854611   0.1483052
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.1658291   0.1265790   0.2050793
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.1395760   0.1095218   0.1696301
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.1288820   0.1018563   0.1559077
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.1355932   0.1092602   0.1619263
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.1238095   0.0984021   0.1492169
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.1422071   0.1186662   0.1657479
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.1938144   0.1686426   0.2189863
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.1854305   0.1608542   0.2100068


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0319449   0.0290114   0.0348785
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.1040636   0.0993965   0.1087307
6 months    ki1119695-PROBIT     BELARUS      NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0417925   0.0374816   0.0461034
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0606746   0.0568229   0.0645262
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.1559314   0.1471744   0.1646884


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.0193050   0.6925779   1.5001674
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 0.8631579   0.5814555   1.2813390
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.8579940   0.5690307   1.2936978
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.8400000   0.5550597   1.2712146
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 0.9328622   0.6335856   1.3735032
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 0.9183673   0.6252089   1.3489868
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.4893964   0.3073889   0.7791721
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.3655751   0.2206529   0.6056806
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 0.8061420   0.5325874   1.2202035
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.6772487   0.4418379   1.0380861
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 0.5354582   0.3424188   0.8373238
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    1                 0.7417142   0.6010868   0.9152421
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.6441231   0.5212212   0.7960049
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.4876028   0.3852610   0.6171309
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    1                 0.7725559   0.6090118   0.9800182
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.6619905   0.5016719   0.8735419
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.7334820   0.5841629   0.9209690
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.8276770   0.6754864   1.0141568
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.6959003   0.5776959   0.8382910
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   1                 0.9252643   0.7800104   1.0975673
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   1                 0.9551182   0.8054851   1.1325484
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   1                 0.9398239   0.7811675   1.1307038
6 months    ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT     BELARUS      2                    1                 1.0977918   0.3684107   3.2712047
6 months    ki1119695-PROBIT     BELARUS      3                    1                 0.9371634   0.3226049   2.7224483
6 months    ki1119695-PROBIT     BELARUS      4                    1                 0.7588785   0.3468165   1.6605224
6 months    ki1119695-PROBIT     BELARUS      5                    1                 0.6350365   0.2010663   2.0056632
6 months    ki1119695-PROBIT     BELARUS      6                    1                 0.9321429   0.4228843   2.0546761
6 months    ki1119695-PROBIT     BELARUS      7                    1                 0.7648352   0.2478534   2.3601568
6 months    ki1119695-PROBIT     BELARUS      8                    1                 0.6969292   0.2662528   1.8242453
6 months    ki1119695-PROBIT     BELARUS      9                    1                 0.9790682   0.3186609   3.0081339
6 months    ki1119695-PROBIT     BELARUS      10                   1                 0.8693046   0.3167810   2.3855295
6 months    ki1119695-PROBIT     BELARUS      11                   1                 1.0578616   0.3838655   2.9152690
6 months    ki1119695-PROBIT     BELARUS      12                   1                 0.9859320   0.3494965   2.7813206
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.0017422   0.5700484   1.7603546
6 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.8705799   1.1822490   2.9596719
6 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 1.0486322   0.6138905   1.7912470
6 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 1.2959098   0.7719916   2.1753895
6 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.4045802   0.8548035   2.3079520
6 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.5273437   0.9363279   2.4914123
6 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.9070645   0.5273177   1.5602851
6 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.9395425   0.5529183   1.5965108
6 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.0541667   0.6092162   1.8240935
6 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.1847527   0.7148629   1.9635082
6 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.2286325   0.7546844   2.0002238
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    1                 0.7878733   0.5591826   1.1100924
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.8646775   0.6274680   1.1915622
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.8565126   0.6127367   1.1972742
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.1385441   0.8363431   1.5499412
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.8493054   0.6133048   1.1761193
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.9493856   0.6984287   1.2905156
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.8682793   0.6395716   1.1787718
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.0564752   0.7797117   1.4314776
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.1521831   0.8637275   1.5369730
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.1433619   0.8592366   1.5214396
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   1                 0.9948614   0.7442742   1.3298180
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.1405679   0.8897356   1.4621142
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.9211435   0.7146051   1.1873766
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.7145116   0.5148694   0.9915657
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.0137208   0.7493200   1.3714165
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.8532340   0.6415079   1.1348390
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.7878612   0.5948119   1.0435657
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.8288873   0.6340631   1.0835736
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.7568530   0.5731575   0.9994225
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 0.8693179   0.6808521   1.1099526
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.1847961   0.9506169   1.4766640
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.1335445   0.8995089   1.4284718


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.0097217   -0.0197477    0.0003043
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0252421   -0.0402592   -0.0102251
6 months    ki1119695-PROBIT     BELARUS      1                    NA                -0.0018236   -0.0162160    0.0125689
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0070099   -0.0051414    0.0191611
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0011356   -0.0140457    0.0117745
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0076532   -0.0365344    0.0212280


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.3043273   -0.6577111   -0.0262763
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.2425645   -0.3954973   -0.1063917
6 months    ki1119695-PROBIT     BELARUS      1                    NA                -0.1182773   -1.5569232    0.5109184
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.1677306   -0.1795998    0.4127904
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0187162   -0.2554024    0.1733466
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0490807   -0.2516109    0.1206770
