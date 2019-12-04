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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       17     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        2     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               0       16     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               1        5     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               0       17     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               1        4     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     4               0       15     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     4               1        4     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     5               0       16     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     5               1        1     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     6               0        7     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     6               1        0     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     7               0       10     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     7               1        3     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     8               0       20     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     8               1        3     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     9               0       10     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     9               1        6     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     10              0       18     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     10              1        2     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     11              0       13     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     11              1        2     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     12              0       20     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     12              1        4     215
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        4      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        1      62
Birth       ki0047075b-MAL-ED          BRAZIL                         2               0       10      62
Birth       ki0047075b-MAL-ED          BRAZIL                         2               1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         3               0        7      62
Birth       ki0047075b-MAL-ED          BRAZIL                         3               1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         4               0        4      62
Birth       ki0047075b-MAL-ED          BRAZIL                         4               1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         5               0        1      62
Birth       ki0047075b-MAL-ED          BRAZIL                         5               1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         6               0        5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         6               1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         7               0        6      62
Birth       ki0047075b-MAL-ED          BRAZIL                         7               1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         8               0        6      62
Birth       ki0047075b-MAL-ED          BRAZIL                         8               1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         9               0        5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         9               1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         10              0        4      62
Birth       ki0047075b-MAL-ED          BRAZIL                         10              1        1      62
Birth       ki0047075b-MAL-ED          BRAZIL                         11              0        4      62
Birth       ki0047075b-MAL-ED          BRAZIL                         11              1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         12              0        4      62
Birth       ki0047075b-MAL-ED          BRAZIL                         12              1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          1               0        2      45
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          2               0        4      45
Birth       ki0047075b-MAL-ED          INDIA                          2               1        2      45
Birth       ki0047075b-MAL-ED          INDIA                          3               0        3      45
Birth       ki0047075b-MAL-ED          INDIA                          3               1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          4               0        4      45
Birth       ki0047075b-MAL-ED          INDIA                          4               1        1      45
Birth       ki0047075b-MAL-ED          INDIA                          5               0        3      45
Birth       ki0047075b-MAL-ED          INDIA                          5               1        1      45
Birth       ki0047075b-MAL-ED          INDIA                          6               0        2      45
Birth       ki0047075b-MAL-ED          INDIA                          6               1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          7               0        3      45
Birth       ki0047075b-MAL-ED          INDIA                          7               1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          8               0        8      45
Birth       ki0047075b-MAL-ED          INDIA                          8               1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          9               0        3      45
Birth       ki0047075b-MAL-ED          INDIA                          9               1        1      45
Birth       ki0047075b-MAL-ED          INDIA                          10              0        5      45
Birth       ki0047075b-MAL-ED          INDIA                          10              1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          11              0        3      45
Birth       ki0047075b-MAL-ED          INDIA                          11              1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          12              0        0      45
Birth       ki0047075b-MAL-ED          INDIA                          12              1        0      45
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          2               0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          2               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          3               0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          3               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          4               0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          4               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          5               0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          5               1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          6               0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          6               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          7               0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          7               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          8               0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          8               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          9               0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          9               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          10              0        4      26
Birth       ki0047075b-MAL-ED          NEPAL                          10              1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          11              0        4      26
Birth       ki0047075b-MAL-ED          NEPAL                          11              1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          12              0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          12              1        0      26
Birth       ki0047075b-MAL-ED          PERU                           1               0       29     228
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     228
Birth       ki0047075b-MAL-ED          PERU                           2               0       17     228
Birth       ki0047075b-MAL-ED          PERU                           2               1        0     228
Birth       ki0047075b-MAL-ED          PERU                           3               0       20     228
Birth       ki0047075b-MAL-ED          PERU                           3               1        0     228
Birth       ki0047075b-MAL-ED          PERU                           4               0       14     228
Birth       ki0047075b-MAL-ED          PERU                           4               1        0     228
Birth       ki0047075b-MAL-ED          PERU                           5               0       20     228
Birth       ki0047075b-MAL-ED          PERU                           5               1        1     228
Birth       ki0047075b-MAL-ED          PERU                           6               0       11     228
Birth       ki0047075b-MAL-ED          PERU                           6               1        0     228
Birth       ki0047075b-MAL-ED          PERU                           7               0       18     228
Birth       ki0047075b-MAL-ED          PERU                           7               1        1     228
Birth       ki0047075b-MAL-ED          PERU                           8               0       15     228
Birth       ki0047075b-MAL-ED          PERU                           8               1        1     228
Birth       ki0047075b-MAL-ED          PERU                           9               0       19     228
Birth       ki0047075b-MAL-ED          PERU                           9               1        0     228
Birth       ki0047075b-MAL-ED          PERU                           10              0       21     228
Birth       ki0047075b-MAL-ED          PERU                           10              1        0     228
Birth       ki0047075b-MAL-ED          PERU                           11              0       26     228
Birth       ki0047075b-MAL-ED          PERU                           11              1        2     228
Birth       ki0047075b-MAL-ED          PERU                           12              0       13     228
Birth       ki0047075b-MAL-ED          PERU                           12              1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        7     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        2     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       11     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        2     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               0        7     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        1     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4               0        4     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4               1        2     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5               0        6     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5               1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6               0        7     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6               1        1     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7               0       12     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7               1        1     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               0        3     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9               0       10     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9               1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10              0       13     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10              1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11              0       14     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11              1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12              0       14     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12              1        3     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       15     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       11     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               0        8     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               0        9     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               0       10     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               0       14     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               0        6     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               0        2     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              0       11     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              0       10     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              0        9     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              1        0     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        8      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               0        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1        1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               0        6      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               1        1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               0        9      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5               0       10      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5               1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               0        8      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               1        1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               0        7      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               0        4      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               0        6      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               1        2      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              0        7      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              1        1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11              0        8      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11              1        3      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              0        2      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              1        1      86
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
Birth       ki1000109-EE               PAKISTAN                       1               0       35     177
Birth       ki1000109-EE               PAKISTAN                       1               1        4     177
Birth       ki1000109-EE               PAKISTAN                       2               0       35     177
Birth       ki1000109-EE               PAKISTAN                       2               1        1     177
Birth       ki1000109-EE               PAKISTAN                       3               0       14     177
Birth       ki1000109-EE               PAKISTAN                       3               1        2     177
Birth       ki1000109-EE               PAKISTAN                       4               0        7     177
Birth       ki1000109-EE               PAKISTAN                       4               1        0     177
Birth       ki1000109-EE               PAKISTAN                       5               0        0     177
Birth       ki1000109-EE               PAKISTAN                       5               1        0     177
Birth       ki1000109-EE               PAKISTAN                       6               0        0     177
Birth       ki1000109-EE               PAKISTAN                       6               1        0     177
Birth       ki1000109-EE               PAKISTAN                       7               0        0     177
Birth       ki1000109-EE               PAKISTAN                       7               1        0     177
Birth       ki1000109-EE               PAKISTAN                       8               0        0     177
Birth       ki1000109-EE               PAKISTAN                       8               1        0     177
Birth       ki1000109-EE               PAKISTAN                       9               0        0     177
Birth       ki1000109-EE               PAKISTAN                       9               1        0     177
Birth       ki1000109-EE               PAKISTAN                       10              0        0     177
Birth       ki1000109-EE               PAKISTAN                       10              1        0     177
Birth       ki1000109-EE               PAKISTAN                       11              0       32     177
Birth       ki1000109-EE               PAKISTAN                       11              1        9     177
Birth       ki1000109-EE               PAKISTAN                       12              0       32     177
Birth       ki1000109-EE               PAKISTAN                       12              1        6     177
Birth       ki1000109-ResPak           PAKISTAN                       1               0        2      38
Birth       ki1000109-ResPak           PAKISTAN                       1               1        0      38
Birth       ki1000109-ResPak           PAKISTAN                       2               0        1      38
Birth       ki1000109-ResPak           PAKISTAN                       2               1        0      38
Birth       ki1000109-ResPak           PAKISTAN                       3               0        0      38
Birth       ki1000109-ResPak           PAKISTAN                       3               1        1      38
Birth       ki1000109-ResPak           PAKISTAN                       4               0        6      38
Birth       ki1000109-ResPak           PAKISTAN                       4               1        0      38
Birth       ki1000109-ResPak           PAKISTAN                       5               0        6      38
Birth       ki1000109-ResPak           PAKISTAN                       5               1        1      38
Birth       ki1000109-ResPak           PAKISTAN                       6               0        6      38
Birth       ki1000109-ResPak           PAKISTAN                       6               1        1      38
Birth       ki1000109-ResPak           PAKISTAN                       7               0        7      38
Birth       ki1000109-ResPak           PAKISTAN                       7               1        1      38
Birth       ki1000109-ResPak           PAKISTAN                       8               0        4      38
Birth       ki1000109-ResPak           PAKISTAN                       8               1        0      38
Birth       ki1000109-ResPak           PAKISTAN                       9               0        1      38
Birth       ki1000109-ResPak           PAKISTAN                       9               1        0      38
Birth       ki1000109-ResPak           PAKISTAN                       10              0        1      38
Birth       ki1000109-ResPak           PAKISTAN                       10              1        0      38
Birth       ki1000109-ResPak           PAKISTAN                       11              0        0      38
Birth       ki1000109-ResPak           PAKISTAN                       11              1        0      38
Birth       ki1000109-ResPak           PAKISTAN                       12              0        0      38
Birth       ki1000109-ResPak           PAKISTAN                       12              1        0      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       65    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        5    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       57    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1        7    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               0       56    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               1        4    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          4               0       54    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          4               1        4    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          5               0       61    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          5               1       13    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          6               0       75    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          6               1       19    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               0       84    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               1        8    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          8               0      109    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          8               1       14    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          9               0      115    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          9               1       19    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          10              0      107    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          10              1       18    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          11              0      105    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          11              1        6    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          12              0       97    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          12              1        1    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0       43     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1       16     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     2               0       37     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     2               1       17     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     3               0       39     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     3               1       17     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     4               0       32     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     4               1       15     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     5               0       26     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     5               1       19     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     6               0       28     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     6               1       17     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     7               0       25     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     7               1       14     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     8               0       26     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     8               1       12     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     9               0       31     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     9               1       13     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     10              0       36     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     10              1       11     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     11              0       40     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     11              1       11     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     12              0       44     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     12              1        6     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0       29     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1        1     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2               0       42     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2               1       12     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3               0       25     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3               1        2     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     4               0       17     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     4               1        4     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     5               0       20     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     5               1        4     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     6               0       37     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     6               1        8     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     7               0       26     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     7               1        2     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     8               0       29     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     8               1       16     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     9               0       61     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     9               1       14     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     10              0       50     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     10              1       25     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     11              0       35     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     11              1       18     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     12              0       44     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     12              1       11     532
Birth       ki1101329-Keneba           GAMBIA                         1               0      113    1466
Birth       ki1101329-Keneba           GAMBIA                         1               1       40    1466
Birth       ki1101329-Keneba           GAMBIA                         2               0      104    1466
Birth       ki1101329-Keneba           GAMBIA                         2               1       36    1466
Birth       ki1101329-Keneba           GAMBIA                         3               0      124    1466
Birth       ki1101329-Keneba           GAMBIA                         3               1       35    1466
Birth       ki1101329-Keneba           GAMBIA                         4               0       79    1466
Birth       ki1101329-Keneba           GAMBIA                         4               1       24    1466
Birth       ki1101329-Keneba           GAMBIA                         5               0       80    1466
Birth       ki1101329-Keneba           GAMBIA                         5               1       22    1466
Birth       ki1101329-Keneba           GAMBIA                         6               0       74    1466
Birth       ki1101329-Keneba           GAMBIA                         6               1       11    1466
Birth       ki1101329-Keneba           GAMBIA                         7               0       57    1466
Birth       ki1101329-Keneba           GAMBIA                         7               1       17    1466
Birth       ki1101329-Keneba           GAMBIA                         8               0       84    1466
Birth       ki1101329-Keneba           GAMBIA                         8               1       32    1466
Birth       ki1101329-Keneba           GAMBIA                         9               0       89    1466
Birth       ki1101329-Keneba           GAMBIA                         9               1       29    1466
Birth       ki1101329-Keneba           GAMBIA                         10              0      121    1466
Birth       ki1101329-Keneba           GAMBIA                         10              1       47    1466
Birth       ki1101329-Keneba           GAMBIA                         11              0       84    1466
Birth       ki1101329-Keneba           GAMBIA                         11              1       31    1466
Birth       ki1101329-Keneba           GAMBIA                         12              0       93    1466
Birth       ki1101329-Keneba           GAMBIA                         12              1       40    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2               0        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2               1        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3               0        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3               1        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          4               0        1     641
Birth       ki1113344-GMS-Nepal        NEPAL                          4               1        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          5               0        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          5               1        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          6               0      130     641
Birth       ki1113344-GMS-Nepal        NEPAL                          6               1       32     641
Birth       ki1113344-GMS-Nepal        NEPAL                          7               0      193     641
Birth       ki1113344-GMS-Nepal        NEPAL                          7               1       49     641
Birth       ki1113344-GMS-Nepal        NEPAL                          8               0      185     641
Birth       ki1113344-GMS-Nepal        NEPAL                          8               1       51     641
Birth       ki1113344-GMS-Nepal        NEPAL                          9               0        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          9               1        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          10              0        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          10              1        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          11              0        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          11              1        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          12              0        0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          12              1        0     641
Birth       ki1114097-CMIN             BANGLADESH                     1               0        2      19
Birth       ki1114097-CMIN             BANGLADESH                     1               1        0      19
Birth       ki1114097-CMIN             BANGLADESH                     2               0        3      19
Birth       ki1114097-CMIN             BANGLADESH                     2               1        1      19
Birth       ki1114097-CMIN             BANGLADESH                     3               0        0      19
Birth       ki1114097-CMIN             BANGLADESH                     3               1        0      19
Birth       ki1114097-CMIN             BANGLADESH                     4               0        2      19
Birth       ki1114097-CMIN             BANGLADESH                     4               1        0      19
Birth       ki1114097-CMIN             BANGLADESH                     5               0        0      19
Birth       ki1114097-CMIN             BANGLADESH                     5               1        1      19
Birth       ki1114097-CMIN             BANGLADESH                     6               0        0      19
Birth       ki1114097-CMIN             BANGLADESH                     6               1        0      19
Birth       ki1114097-CMIN             BANGLADESH                     7               0        4      19
Birth       ki1114097-CMIN             BANGLADESH                     7               1        0      19
Birth       ki1114097-CMIN             BANGLADESH                     8               0        1      19
Birth       ki1114097-CMIN             BANGLADESH                     8               1        1      19
Birth       ki1114097-CMIN             BANGLADESH                     9               0        1      19
Birth       ki1114097-CMIN             BANGLADESH                     9               1        0      19
Birth       ki1114097-CMIN             BANGLADESH                     10              0        1      19
Birth       ki1114097-CMIN             BANGLADESH                     10              1        0      19
Birth       ki1114097-CMIN             BANGLADESH                     11              0        1      19
Birth       ki1114097-CMIN             BANGLADESH                     11              1        1      19
Birth       ki1114097-CMIN             BANGLADESH                     12              0        0      19
Birth       ki1114097-CMIN             BANGLADESH                     12              1        0      19
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
Birth       ki1119695-PROBIT           BELARUS                        1               0      648   13830
Birth       ki1119695-PROBIT           BELARUS                        1               1      174   13830
Birth       ki1119695-PROBIT           BELARUS                        2               0      652   13830
Birth       ki1119695-PROBIT           BELARUS                        2               1      147   13830
Birth       ki1119695-PROBIT           BELARUS                        3               0      750   13830
Birth       ki1119695-PROBIT           BELARUS                        3               1      191   13830
Birth       ki1119695-PROBIT           BELARUS                        4               0      761   13830
Birth       ki1119695-PROBIT           BELARUS                        4               1      209   13830
Birth       ki1119695-PROBIT           BELARUS                        5               0      720   13830
Birth       ki1119695-PROBIT           BELARUS                        5               1      222   13830
Birth       ki1119695-PROBIT           BELARUS                        6               0      802   13830
Birth       ki1119695-PROBIT           BELARUS                        6               1      219   13830
Birth       ki1119695-PROBIT           BELARUS                        7               0      985   13830
Birth       ki1119695-PROBIT           BELARUS                        7               1      302   13830
Birth       ki1119695-PROBIT           BELARUS                        8               0     1035   13830
Birth       ki1119695-PROBIT           BELARUS                        8               1      272   13830
Birth       ki1119695-PROBIT           BELARUS                        9               0     1061   13830
Birth       ki1119695-PROBIT           BELARUS                        9               1      263   13830
Birth       ki1119695-PROBIT           BELARUS                        10              0     1171   13830
Birth       ki1119695-PROBIT           BELARUS                        10              1      320   13830
Birth       ki1119695-PROBIT           BELARUS                        11              0     1124   13830
Birth       ki1119695-PROBIT           BELARUS                        11              1      259   13830
Birth       ki1119695-PROBIT           BELARUS                        12              0     1234   13830
Birth       ki1119695-PROBIT           BELARUS                        12              1      309   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     1052   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      181   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0      831   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      126   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3               0      926   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3               1      151   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4               0      804   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4               1      118   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5               0      787   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5               1      142   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6               0      850   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6               1      198   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7               0      878   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7               1      218   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8               0      980   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8               1      208   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9               0     1067   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9               1      179   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10              0      820   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10              1      160   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11              0      908   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11              1      195   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12              0      953   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12              1      185   12917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     1481   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      142   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     1267   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1      143   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               0     1530   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               1      173   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4               0     1108   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4               1      137   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5               0      782   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5               1       98   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6               0      826   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6               1       99   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7               0      962   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7               1       97   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8               0     1248   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8               1      166   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9               0     1600   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9               1      256   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10              0     1682   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10              1      237   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11              0     1714   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11              1      223   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12              0     1841   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12              1      202   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0        0    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        0    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               0      280    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               1       19    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               0      289    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               1       38    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4               0      368    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4               1       35    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5               0      336    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5               1       32    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6               0      254    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6               1       32    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7               0      291    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7               1       31    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8               0      190    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8               1       26    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9               0      111    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9               1       23    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              0       38    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              1        3    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              0        0    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              1        0    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              0        0    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              1        0    2396
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
6 months    ki0047075b-MAL-ED          INDIA                          4               0       14     236
6 months    ki0047075b-MAL-ED          INDIA                          4               1        1     236
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
6 months    ki1000109-EE               PAKISTAN                       1               0       84     375
6 months    ki1000109-EE               PAKISTAN                       1               1        8     375
6 months    ki1000109-EE               PAKISTAN                       2               0       54     375
6 months    ki1000109-EE               PAKISTAN                       2               1       12     375
6 months    ki1000109-EE               PAKISTAN                       3               0       34     375
6 months    ki1000109-EE               PAKISTAN                       3               1        9     375
6 months    ki1000109-EE               PAKISTAN                       4               0       16     375
6 months    ki1000109-EE               PAKISTAN                       4               1        0     375
6 months    ki1000109-EE               PAKISTAN                       5               0        0     375
6 months    ki1000109-EE               PAKISTAN                       5               1        0     375
6 months    ki1000109-EE               PAKISTAN                       6               0        0     375
6 months    ki1000109-EE               PAKISTAN                       6               1        0     375
6 months    ki1000109-EE               PAKISTAN                       7               0        0     375
6 months    ki1000109-EE               PAKISTAN                       7               1        0     375
6 months    ki1000109-EE               PAKISTAN                       8               0        0     375
6 months    ki1000109-EE               PAKISTAN                       8               1        0     375
6 months    ki1000109-EE               PAKISTAN                       9               0        0     375
6 months    ki1000109-EE               PAKISTAN                       9               1        0     375
6 months    ki1000109-EE               PAKISTAN                       10              0        4     375
6 months    ki1000109-EE               PAKISTAN                       10              1        0     375
6 months    ki1000109-EE               PAKISTAN                       11              0       60     375
6 months    ki1000109-EE               PAKISTAN                       11              1       11     375
6 months    ki1000109-EE               PAKISTAN                       12              0       76     375
6 months    ki1000109-EE               PAKISTAN                       12              1        7     375
6 months    ki1000109-ResPak           PAKISTAN                       1               0       10     239
6 months    ki1000109-ResPak           PAKISTAN                       1               1        1     239
6 months    ki1000109-ResPak           PAKISTAN                       2               0        9     239
6 months    ki1000109-ResPak           PAKISTAN                       2               1        1     239
6 months    ki1000109-ResPak           PAKISTAN                       3               0       22     239
6 months    ki1000109-ResPak           PAKISTAN                       3               1        3     239
6 months    ki1000109-ResPak           PAKISTAN                       4               0       20     239
6 months    ki1000109-ResPak           PAKISTAN                       4               1        4     239
6 months    ki1000109-ResPak           PAKISTAN                       5               0       38     239
6 months    ki1000109-ResPak           PAKISTAN                       5               1        7     239
6 months    ki1000109-ResPak           PAKISTAN                       6               0       38     239
6 months    ki1000109-ResPak           PAKISTAN                       6               1        3     239
6 months    ki1000109-ResPak           PAKISTAN                       7               0       22     239
6 months    ki1000109-ResPak           PAKISTAN                       7               1        2     239
6 months    ki1000109-ResPak           PAKISTAN                       8               0       30     239
6 months    ki1000109-ResPak           PAKISTAN                       8               1        4     239
6 months    ki1000109-ResPak           PAKISTAN                       9               0       16     239
6 months    ki1000109-ResPak           PAKISTAN                       9               1        0     239
6 months    ki1000109-ResPak           PAKISTAN                       10              0        3     239
6 months    ki1000109-ResPak           PAKISTAN                       10              1        1     239
6 months    ki1000109-ResPak           PAKISTAN                       11              0        2     239
6 months    ki1000109-ResPak           PAKISTAN                       11              1        0     239
6 months    ki1000109-ResPak           PAKISTAN                       12              0        3     239
6 months    ki1000109-ResPak           PAKISTAN                       12              1        0     239
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0       46     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1        6     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2               0       46     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2               1        3     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3               0       45     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3               1        5     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4               0       38     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4               1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5               0       38     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5               1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6               0       42     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6               1        1     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7               0       38     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7               1        1     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8               0       35     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8               1        0     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9               0       40     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9               1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10              0       38     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10              1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11              0       48     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11              1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12              0       48     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12              1        3     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       33     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0       66     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1        1     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               0       38     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               1        3     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     4               0       28     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     4               1        1     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     5               0       31     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     5               1        1     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     6               0       42     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     6               1        1     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     7               0       35     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     7               1        1     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     8               0       39     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     8               1        1     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     9               0       72     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     9               1        5     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     10              0       73     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     10              1        3     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     11              0       56     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     11              1        5     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     12              0       65     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     12              1        1     603
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
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3               1        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          4               0        1     564
6 months    ki1113344-GMS-Nepal        NEPAL                          4               1        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          5               0        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          5               1        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          6               0      113     564
6 months    ki1113344-GMS-Nepal        NEPAL                          6               1        8     564
6 months    ki1113344-GMS-Nepal        NEPAL                          7               0      202     564
6 months    ki1113344-GMS-Nepal        NEPAL                          7               1       17     564
6 months    ki1113344-GMS-Nepal        NEPAL                          8               0      197     564
6 months    ki1113344-GMS-Nepal        NEPAL                          8               1       26     564
6 months    ki1113344-GMS-Nepal        NEPAL                          9               0        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          9               1        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          10              0        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          10              1        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          11              0        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          11              1        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          12              0        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          12              1        0     564
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
6 months    ki1119695-PROBIT           BELARUS                        1               0      968   15758
6 months    ki1119695-PROBIT           BELARUS                        1               1        7   15758
6 months    ki1119695-PROBIT           BELARUS                        2               0      925   15758
6 months    ki1119695-PROBIT           BELARUS                        2               1        8   15758
6 months    ki1119695-PROBIT           BELARUS                        3               0     1061   15758
6 months    ki1119695-PROBIT           BELARUS                        3               1        5   15758
6 months    ki1119695-PROBIT           BELARUS                        4               0     1089   15758
6 months    ki1119695-PROBIT           BELARUS                        4               1        9   15758
6 months    ki1119695-PROBIT           BELARUS                        5               0     1103   15758
6 months    ki1119695-PROBIT           BELARUS                        5               1        8   15758
6 months    ki1119695-PROBIT           BELARUS                        6               0     1106   15758
6 months    ki1119695-PROBIT           BELARUS                        6               1        9   15758
6 months    ki1119695-PROBIT           BELARUS                        7               0     1453   15758
6 months    ki1119695-PROBIT           BELARUS                        7               1       11   15758
6 months    ki1119695-PROBIT           BELARUS                        8               0     1459   15758
6 months    ki1119695-PROBIT           BELARUS                        8               1       14   15758
6 months    ki1119695-PROBIT           BELARUS                        9               0     1499   15758
6 months    ki1119695-PROBIT           BELARUS                        9               1       10   15758
6 months    ki1119695-PROBIT           BELARUS                        10              0     1675   15758
6 months    ki1119695-PROBIT           BELARUS                        10              1       14   15758
6 months    ki1119695-PROBIT           BELARUS                        11              0     1565   15758
6 months    ki1119695-PROBIT           BELARUS                        11              1       23   15758
6 months    ki1119695-PROBIT           BELARUS                        12              0     1725   15758
6 months    ki1119695-PROBIT           BELARUS                        12              1       12   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      786    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       24    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0      588    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       21    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3               0      721    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3               1       29    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4               0      629    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4               1       17    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5               0      611    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5               1       17    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6               0      639    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6               1       23    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7               0      647    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7               1       15    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8               0      743    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8               1       32    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9               0      746    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9               1       21    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10              0      596    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10              1       20    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11              0      762    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11              1       17    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12              0      772    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12              1       29    8505
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
24 months   ki0047075b-MAL-ED          PERU                           11              0       20     201
24 months   ki0047075b-MAL-ED          PERU                           11              1        1     201
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
24 months   ki1000109-EE               PAKISTAN                       1               0       10     168
24 months   ki1000109-EE               PAKISTAN                       1               1        4     168
24 months   ki1000109-EE               PAKISTAN                       2               0        4     168
24 months   ki1000109-EE               PAKISTAN                       2               1        0     168
24 months   ki1000109-EE               PAKISTAN                       3               0        0     168
24 months   ki1000109-EE               PAKISTAN                       3               1        0     168
24 months   ki1000109-EE               PAKISTAN                       4               0        0     168
24 months   ki1000109-EE               PAKISTAN                       4               1        0     168
24 months   ki1000109-EE               PAKISTAN                       5               0        0     168
24 months   ki1000109-EE               PAKISTAN                       5               1        0     168
24 months   ki1000109-EE               PAKISTAN                       6               0        0     168
24 months   ki1000109-EE               PAKISTAN                       6               1        0     168
24 months   ki1000109-EE               PAKISTAN                       7               0        0     168
24 months   ki1000109-EE               PAKISTAN                       7               1        0     168
24 months   ki1000109-EE               PAKISTAN                       8               0        0     168
24 months   ki1000109-EE               PAKISTAN                       8               1        0     168
24 months   ki1000109-EE               PAKISTAN                       9               0        0     168
24 months   ki1000109-EE               PAKISTAN                       9               1        0     168
24 months   ki1000109-EE               PAKISTAN                       10              0        4     168
24 months   ki1000109-EE               PAKISTAN                       10              1        0     168
24 months   ki1000109-EE               PAKISTAN                       11              0       50     168
24 months   ki1000109-EE               PAKISTAN                       11              1       16     168
24 months   ki1000109-EE               PAKISTAN                       12              0       70     168
24 months   ki1000109-EE               PAKISTAN                       12              1       10     168
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       28     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        4     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0       59     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1        5     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               0       37     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               1        1     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     4               0       25     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     4               1        3     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     5               0       30     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     5               1        0     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     6               0       36     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     6               1        4     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     7               0       30     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     7               1        3     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     8               0       33     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     8               1        9     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     9               0       64     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     9               1       11     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     10              0       63     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     10              1        7     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     11              0       51     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     11              1        9     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     12              0       61     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     12              1        6     579
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3               1        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          4               0        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          4               1        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          5               0        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          5               1        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          6               0       60     487
24 months   ki1113344-GMS-Nepal        NEPAL                          6               1       19     487
24 months   ki1113344-GMS-Nepal        NEPAL                          7               0      168     487
24 months   ki1113344-GMS-Nepal        NEPAL                          7               1       38     487
24 months   ki1113344-GMS-Nepal        NEPAL                          8               0      168     487
24 months   ki1113344-GMS-Nepal        NEPAL                          8               1       34     487
24 months   ki1113344-GMS-Nepal        NEPAL                          9               0        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          9               1        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          10              0        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          10              1        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          11              0        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          11              1        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          12              0        0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          12              1        0     487
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
24 months   ki1119695-PROBIT           BELARUS                        1               0      245    3972
24 months   ki1119695-PROBIT           BELARUS                        1               1        3    3972
24 months   ki1119695-PROBIT           BELARUS                        2               0      211    3972
24 months   ki1119695-PROBIT           BELARUS                        2               1        2    3972
24 months   ki1119695-PROBIT           BELARUS                        3               0      310    3972
24 months   ki1119695-PROBIT           BELARUS                        3               1        2    3972
24 months   ki1119695-PROBIT           BELARUS                        4               0      327    3972
24 months   ki1119695-PROBIT           BELARUS                        4               1        5    3972
24 months   ki1119695-PROBIT           BELARUS                        5               0      295    3972
24 months   ki1119695-PROBIT           BELARUS                        5               1        1    3972
24 months   ki1119695-PROBIT           BELARUS                        6               0      263    3972
24 months   ki1119695-PROBIT           BELARUS                        6               1        5    3972
24 months   ki1119695-PROBIT           BELARUS                        7               0      367    3972
24 months   ki1119695-PROBIT           BELARUS                        7               1        4    3972
24 months   ki1119695-PROBIT           BELARUS                        8               0      330    3972
24 months   ki1119695-PROBIT           BELARUS                        8               1        7    3972
24 months   ki1119695-PROBIT           BELARUS                        9               0      376    3972
24 months   ki1119695-PROBIT           BELARUS                        9               1        4    3972
24 months   ki1119695-PROBIT           BELARUS                        10              0      388    3972
24 months   ki1119695-PROBIT           BELARUS                        10              1        4    3972
24 months   ki1119695-PROBIT           BELARUS                        11              0      373    3972
24 months   ki1119695-PROBIT           BELARUS                        11              1        3    3972
24 months   ki1119695-PROBIT           BELARUS                        12              0      443    3972
24 months   ki1119695-PROBIT           BELARUS                        12              1        4    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       42     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1        7     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0       54     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1       10     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3               0       43     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3               1       13     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4               0       40     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4               1        7     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5               0       37     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5               1       14     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6               0       35     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6               1        9     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7               0       24     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7               1        4     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8               0       23     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8               1        7     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               0        2     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               1        0     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              0        4     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              1        0     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11              0       19     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11              1        1     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12              0       31     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12              1        7     433
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/6dab061b-2f4e-4cdf-a772-c90b613cfd87/fe71b9cc-d059-4181-ba65-af20db46caf3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6dab061b-2f4e-4cdf-a772-c90b613cfd87/fe71b9cc-d059-4181-ba65-af20db46caf3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6dab061b-2f4e-4cdf-a772-c90b613cfd87/fe71b9cc-d059-4181-ba65-af20db46caf3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6dab061b-2f4e-4cdf-a772-c90b613cfd87/fe71b9cc-d059-4181-ba65-af20db46caf3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.2711864    0.1576482   0.3847247
Birth       ki1017093-NIH-Birth   BANGLADESH   2                    NA                0.3148148    0.1908322   0.4387974
Birth       ki1017093-NIH-Birth   BANGLADESH   3                    NA                0.3035714    0.1830399   0.4241030
Birth       ki1017093-NIH-Birth   BANGLADESH   4                    NA                0.3191489    0.1857661   0.4525318
Birth       ki1017093-NIH-Birth   BANGLADESH   5                    NA                0.4222222    0.2777878   0.5666567
Birth       ki1017093-NIH-Birth   BANGLADESH   6                    NA                0.3777778    0.2359991   0.5195564
Birth       ki1017093-NIH-Birth   BANGLADESH   7                    NA                0.3589744    0.2082917   0.5096570
Birth       ki1017093-NIH-Birth   BANGLADESH   8                    NA                0.3157895    0.1678691   0.4637098
Birth       ki1017093-NIH-Birth   BANGLADESH   9                    NA                0.2954545    0.1605273   0.4303818
Birth       ki1017093-NIH-Birth   BANGLADESH   10                   NA                0.2340426    0.1128916   0.3551935
Birth       ki1017093-NIH-Birth   BANGLADESH   11                   NA                0.2156863    0.1027074   0.3286651
Birth       ki1017093-NIH-Birth   BANGLADESH   12                   NA                0.1200000    0.0298485   0.2101515
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.2614379    0.1917868   0.3310891
Birth       ki1101329-Keneba      GAMBIA       2                    NA                0.2571429    0.1847206   0.3295651
Birth       ki1101329-Keneba      GAMBIA       3                    NA                0.2201258    0.1557021   0.2845495
Birth       ki1101329-Keneba      GAMBIA       4                    NA                0.2330097    0.1513403   0.3146792
Birth       ki1101329-Keneba      GAMBIA       5                    NA                0.2156863    0.1358404   0.2955321
Birth       ki1101329-Keneba      GAMBIA       6                    NA                0.1294118    0.0580312   0.2007923
Birth       ki1101329-Keneba      GAMBIA       7                    NA                0.2297297    0.1338536   0.3256059
Birth       ki1101329-Keneba      GAMBIA       8                    NA                0.2758621    0.1944996   0.3572245
Birth       ki1101329-Keneba      GAMBIA       9                    NA                0.2457627    0.1680544   0.3234710
Birth       ki1101329-Keneba      GAMBIA       10                   NA                0.2797619    0.2118613   0.3476626
Birth       ki1101329-Keneba      GAMBIA       11                   NA                0.2695652    0.1884374   0.3506931
Birth       ki1101329-Keneba      GAMBIA       12                   NA                0.3007519    0.2227886   0.3787152
Birth       ki1119695-PROBIT      BELARUS      1                    NA                0.2116788    0.1193228   0.3040348
Birth       ki1119695-PROBIT      BELARUS      2                    NA                0.1839800    0.1063921   0.2615679
Birth       ki1119695-PROBIT      BELARUS      3                    NA                0.2029756    0.1258205   0.2801306
Birth       ki1119695-PROBIT      BELARUS      4                    NA                0.2154639    0.1362412   0.2946866
Birth       ki1119695-PROBIT      BELARUS      5                    NA                0.2356688    0.1478399   0.3234977
Birth       ki1119695-PROBIT      BELARUS      6                    NA                0.2144956    0.1457434   0.2832478
Birth       ki1119695-PROBIT      BELARUS      7                    NA                0.2346542    0.1571904   0.3121181
Birth       ki1119695-PROBIT      BELARUS      8                    NA                0.2081102    0.1355848   0.2806355
Birth       ki1119695-PROBIT      BELARUS      9                    NA                0.1986405    0.1215371   0.2757439
Birth       ki1119695-PROBIT      BELARUS      10                   NA                0.2146211    0.1530874   0.2761547
Birth       ki1119695-PROBIT      BELARUS      11                   NA                0.1872740    0.1334453   0.2411028
Birth       ki1119695-PROBIT      BELARUS      12                   NA                0.2002592    0.1261921   0.2743263
Birth       ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                0.1467964    0.1270419   0.1665510
Birth       ki1126311-ZVITAMBO    ZIMBABWE     2                    NA                0.1316614    0.1102383   0.1530846
Birth       ki1126311-ZVITAMBO    ZIMBABWE     3                    NA                0.1402043    0.1194678   0.1609408
Birth       ki1126311-ZVITAMBO    ZIMBABWE     4                    NA                0.1279826    0.1064182   0.1495471
Birth       ki1126311-ZVITAMBO    ZIMBABWE     5                    NA                0.1528525    0.1297120   0.1759930
Birth       ki1126311-ZVITAMBO    ZIMBABWE     6                    NA                0.1889313    0.1652304   0.2126322
Birth       ki1126311-ZVITAMBO    ZIMBABWE     7                    NA                0.1989051    0.1752718   0.2225384
Birth       ki1126311-ZVITAMBO    ZIMBABWE     8                    NA                0.1750842    0.1534727   0.1966957
Birth       ki1126311-ZVITAMBO    ZIMBABWE     9                    NA                0.1436597    0.1241839   0.1631356
Birth       ki1126311-ZVITAMBO    ZIMBABWE     10                   NA                0.1632653    0.1401237   0.1864069
Birth       ki1126311-ZVITAMBO    ZIMBABWE     11                   NA                0.1767906    0.1542761   0.1993050
Birth       ki1126311-ZVITAMBO    ZIMBABWE     12                   NA                0.1625659    0.1411279   0.1840039
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0874923    0.0727863   0.1021983
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.1014184    0.0846219   0.1182149
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.1015854    0.0862423   0.1169286
Birth       kiGH5241-JiVitA-3     BANGLADESH   4                    NA                0.1100402    0.0914681   0.1286122
Birth       kiGH5241-JiVitA-3     BANGLADESH   5                    NA                0.1113636    0.0892229   0.1335044
Birth       kiGH5241-JiVitA-3     BANGLADESH   6                    NA                0.1070270    0.0863618   0.1276922
Birth       kiGH5241-JiVitA-3     BANGLADESH   7                    NA                0.0915959    0.0736415   0.1095502
Birth       kiGH5241-JiVitA-3     BANGLADESH   8                    NA                0.1173975    0.0994666   0.1353283
Birth       kiGH5241-JiVitA-3     BANGLADESH   9                    NA                0.1379310    0.1208138   0.1550483
Birth       kiGH5241-JiVitA-3     BANGLADESH   10                   NA                0.1235018    0.1079222   0.1390814
Birth       kiGH5241-JiVitA-3     BANGLADESH   11                   NA                0.1151265    0.0998455   0.1304075
Birth       kiGH5241-JiVitA-3     BANGLADESH   12                   NA                0.0988742    0.0844310   0.1133174
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0523810    0.0222408   0.0825211
6 months    ki1101329-Keneba      GAMBIA       2                    NA                0.0481283    0.0174437   0.0788130
6 months    ki1101329-Keneba      GAMBIA       3                    NA                0.0818182    0.0455914   0.1180450
6 months    ki1101329-Keneba      GAMBIA       4                    NA                0.1048951    0.0546610   0.1551292
6 months    ki1101329-Keneba      GAMBIA       5                    NA                0.0833333    0.0381804   0.1284863
6 months    ki1101329-Keneba      GAMBIA       6                    NA                0.0593220    0.0166897   0.1019544
6 months    ki1101329-Keneba      GAMBIA       7                    NA                0.0760870    0.0218958   0.1302782
6 months    ki1101329-Keneba      GAMBIA       8                    NA                0.0574713    0.0228813   0.0920612
6 months    ki1101329-Keneba      GAMBIA       9                    NA                0.0459770    0.0148507   0.0771033
6 months    ki1101329-Keneba      GAMBIA       10                   NA                0.0241935    0.0050661   0.0433210
6 months    ki1101329-Keneba      GAMBIA       11                   NA                0.0374332    0.0102202   0.0646461
6 months    ki1101329-Keneba      GAMBIA       12                   NA                0.0572917    0.0244114   0.0901720
6 months    ki1119695-PROBIT      BELARUS      1                    NA                0.0071795    0.0018794   0.0124796
6 months    ki1119695-PROBIT      BELARUS      2                    NA                0.0085745    0.0022682   0.0148808
6 months    ki1119695-PROBIT      BELARUS      3                    NA                0.0046904    0.0008087   0.0085722
6 months    ki1119695-PROBIT      BELARUS      4                    NA                0.0081967    0.0025022   0.0138913
6 months    ki1119695-PROBIT      BELARUS      5                    NA                0.0072007   -0.0008930   0.0152944
6 months    ki1119695-PROBIT      BELARUS      6                    NA                0.0080717    0.0041606   0.0119829
6 months    ki1119695-PROBIT      BELARUS      7                    NA                0.0075137    0.0040698   0.0109576
6 months    ki1119695-PROBIT      BELARUS      8                    NA                0.0095044    0.0020451   0.0169638
6 months    ki1119695-PROBIT      BELARUS      9                    NA                0.0066269    0.0024373   0.0108165
6 months    ki1119695-PROBIT      BELARUS      10                   NA                0.0082889    0.0022119   0.0143659
6 months    ki1119695-PROBIT      BELARUS      11                   NA                0.0144836    0.0074957   0.0214716
6 months    ki1119695-PROBIT      BELARUS      12                   NA                0.0069085    0.0029953   0.0108216
6 months    ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                0.0296296    0.0179518   0.0413075
6 months    ki1126311-ZVITAMBO    ZIMBABWE     2                    NA                0.0344828    0.0199902   0.0489753
6 months    ki1126311-ZVITAMBO    ZIMBABWE     3                    NA                0.0386667    0.0248676   0.0524657
6 months    ki1126311-ZVITAMBO    ZIMBABWE     4                    NA                0.0263158    0.0139713   0.0386603
6 months    ki1126311-ZVITAMBO    ZIMBABWE     5                    NA                0.0270701    0.0143766   0.0397635
6 months    ki1126311-ZVITAMBO    ZIMBABWE     6                    NA                0.0347432    0.0207923   0.0486941
6 months    ki1126311-ZVITAMBO    ZIMBABWE     7                    NA                0.0226586    0.0113220   0.0339953
6 months    ki1126311-ZVITAMBO    ZIMBABWE     8                    NA                0.0412903    0.0272819   0.0552988
6 months    ki1126311-ZVITAMBO    ZIMBABWE     9                    NA                0.0273794    0.0158300   0.0389288
6 months    ki1126311-ZVITAMBO    ZIMBABWE     10                   NA                0.0324675    0.0184703   0.0464647
6 months    ki1126311-ZVITAMBO    ZIMBABWE     11                   NA                0.0218228    0.0115623   0.0320834
6 months    ki1126311-ZVITAMBO    ZIMBABWE     12                   NA                0.0362047    0.0232678   0.0491417
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0931446    0.0758141   0.1104750
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0831889    0.0656386   0.1007392
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0716820    0.0567752   0.0865889
6 months    kiGH5241-JiVitA-3     BANGLADESH   4                    NA                0.0814941    0.0657839   0.0972042
6 months    kiGH5241-JiVitA-3     BANGLADESH   5                    NA                0.0765766    0.0594765   0.0936767
6 months    kiGH5241-JiVitA-3     BANGLADESH   6                    NA                0.0792988    0.0629138   0.0956838
6 months    kiGH5241-JiVitA-3     BANGLADESH   7                    NA                0.0812749    0.0659292   0.0966206
6 months    kiGH5241-JiVitA-3     BANGLADESH   8                    NA                0.0871287    0.0706528   0.1036046
6 months    kiGH5241-JiVitA-3     BANGLADESH   9                    NA                0.0789636    0.0656309   0.0922963
6 months    kiGH5241-JiVitA-3     BANGLADESH   10                   NA                0.0972973    0.0820637   0.1125309
6 months    kiGH5241-JiVitA-3     BANGLADESH   11                   NA                0.0949403    0.0801099   0.1097707
6 months    kiGH5241-JiVitA-3     BANGLADESH   12                   NA                0.0836502    0.0695300   0.0977704
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0701754    0.0318781   0.1084728
24 months   ki1101329-Keneba      GAMBIA       2                    NA                0.0359282    0.0076932   0.0641632
24 months   ki1101329-Keneba      GAMBIA       3                    NA                0.0705882    0.0320741   0.1091023
24 months   ki1101329-Keneba      GAMBIA       4                    NA                0.0877193    0.0357755   0.1396631
24 months   ki1101329-Keneba      GAMBIA       5                    NA                0.0655738    0.0216366   0.1095109
24 months   ki1101329-Keneba      GAMBIA       6                    NA                0.0869565    0.0293626   0.1445505
24 months   ki1101329-Keneba      GAMBIA       7                    NA                0.2168675    0.1281826   0.3055524
24 months   ki1101329-Keneba      GAMBIA       8                    NA                0.1518987    0.0959170   0.2078805
24 months   ki1101329-Keneba      GAMBIA       9                    NA                0.1312500    0.0789127   0.1835873
24 months   ki1101329-Keneba      GAMBIA       10                   NA                0.1850000    0.1311701   0.2388299
24 months   ki1101329-Keneba      GAMBIA       11                   NA                0.1357143    0.0789662   0.1924624
24 months   ki1101329-Keneba      GAMBIA       12                   NA                0.1073826    0.0576569   0.1571082
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1443609    0.1181592   0.1705626
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.1711230    0.1387421   0.2035039
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.1848739    0.1528179   0.2169300
24 months   kiGH5241-JiVitA-3     BANGLADESH   4                    NA                0.2202381    0.1813182   0.2591580
24 months   kiGH5241-JiVitA-3     BANGLADESH   5                    NA                0.2335165    0.1862058   0.2808272
24 months   kiGH5241-JiVitA-3     BANGLADESH   6                    NA                0.2742200    0.2376489   0.3107912
24 months   kiGH5241-JiVitA-3     BANGLADESH   7                    NA                0.2782738    0.2387774   0.3177702
24 months   kiGH5241-JiVitA-3     BANGLADESH   8                    NA                0.2734628    0.2352837   0.3116418
24 months   kiGH5241-JiVitA-3     BANGLADESH   9                    NA                0.2737500    0.2383030   0.3091970
24 months   kiGH5241-JiVitA-3     BANGLADESH   10                   NA                0.2391304    0.2096375   0.2686234
24 months   kiGH5241-JiVitA-3     BANGLADESH   11                   NA                0.2155919    0.1887395   0.2424443
24 months   kiGH5241-JiVitA-3     BANGLADESH   12                   NA                0.1546915    0.1316767   0.1777062


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.2482947   0.2261720   0.2704173
Birth       ki1119695-PROBIT      BELARUS      NA                   NA                0.2087491   0.1435025   0.2739957
Birth       ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.1595572   0.1532418   0.1658725
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1095259   0.1044047   0.1146471
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0579225   0.0479029   0.0679420
6 months    ki1119695-PROBIT      BELARUS      NA                   NA                0.0082498   0.0066007   0.0098989
6 months    ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0311581   0.0274654   0.0348509
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0846640   0.0798626   0.0894653
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1106605   0.0958563   0.1254646
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2182959   0.2084450   0.2281469


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth   BANGLADESH   2                    1                 1.1608796   0.6533682   2.0626064
Birth       ki1017093-NIH-Birth   BANGLADESH   3                    1                 1.1194196   0.6286430   1.9933417
Birth       ki1017093-NIH-Birth   BANGLADESH   4                    1                 1.1768617   0.6513435   2.1263795
Birth       ki1017093-NIH-Birth   BANGLADESH   5                    1                 1.5569444   0.9067138   2.6734743
Birth       ki1017093-NIH-Birth   BANGLADESH   6                    1                 1.3930556   0.7939313   2.4442967
Birth       ki1017093-NIH-Birth   BANGLADESH   7                    1                 1.3237179   0.7316768   2.3948132
Birth       ki1017093-NIH-Birth   BANGLADESH   8                    1                 1.1644737   0.6212751   2.1826063
Birth       ki1017093-NIH-Birth   BANGLADESH   9                    1                 1.0894886   0.5863491   2.0243665
Birth       ki1017093-NIH-Birth   BANGLADESH   10                   1                 0.8630319   0.4434951   1.6794415
Birth       ki1017093-NIH-Birth   BANGLADESH   11                   1                 0.7953431   0.4067519   1.5551759
Birth       ki1017093-NIH-Birth   BANGLADESH   12                   1                 0.4425000   0.1872403   1.0457485
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       2                    1                 0.9835714   0.6674773   1.4493569
Birth       ki1101329-Keneba      GAMBIA       3                    1                 0.8419811   0.5667909   1.2507826
Birth       ki1101329-Keneba      GAMBIA       4                    1                 0.8912621   0.5738578   1.3842248
Birth       ki1101329-Keneba      GAMBIA       5                    1                 0.8250000   0.5228476   1.3017656
Birth       ki1101329-Keneba      GAMBIA       6                    1                 0.4950000   0.2682743   0.9133375
Birth       ki1101329-Keneba      GAMBIA       7                    1                 0.8787162   0.5355708   1.4417183
Birth       ki1101329-Keneba      GAMBIA       8                    1                 1.0551724   0.7091094   1.5701228
Birth       ki1101329-Keneba      GAMBIA       9                    1                 0.9400424   0.6217002   1.4213918
Birth       ki1101329-Keneba      GAMBIA       10                   1                 1.0700893   0.7462808   1.5343970
Birth       ki1101329-Keneba      GAMBIA       11                   1                 1.0310870   0.6898210   1.5411830
Birth       ki1101329-Keneba      GAMBIA       12                   1                 1.1503759   0.7932378   1.6683077
Birth       ki1119695-PROBIT      BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT      BELARUS      2                    1                 0.8691468   0.6971194   1.0836251
Birth       ki1119695-PROBIT      BELARUS      3                    1                 0.9588845   0.7740264   1.1878917
Birth       ki1119695-PROBIT      BELARUS      4                    1                 1.0178813   0.7875373   1.3155978
Birth       ki1119695-PROBIT      BELARUS      5                    1                 1.1133319   0.8484110   1.4609756
Birth       ki1119695-PROBIT      BELARUS      6                    1                 1.0133068   0.6931794   1.4812769
Birth       ki1119695-PROBIT      BELARUS      7                    1                 1.1085390   0.7667550   1.6026744
Birth       ki1119695-PROBIT      BELARUS      8                    1                 0.9831412   0.6809695   1.4193977
Birth       ki1119695-PROBIT      BELARUS      9                    1                 0.9384050   0.6437109   1.3680117
Birth       ki1119695-PROBIT      BELARUS      10                   1                 1.0138995   0.7157950   1.4361544
Birth       ki1119695-PROBIT      BELARUS      11                   1                 0.8847084   0.6639009   1.1789545
Birth       ki1119695-PROBIT      BELARUS      12                   1                 0.9460522   0.6822559   1.3118462
Birth       ki1126311-ZVITAMBO    ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO    ZIMBABWE     2                    1                 0.8968981   0.7261745   1.1077589
Birth       ki1126311-ZVITAMBO    ZIMBABWE     3                    1                 0.9550932   0.7819947   1.1665079
Birth       ki1126311-ZVITAMBO    ZIMBABWE     4                    1                 0.8718376   0.7027244   1.0816484
Birth       ki1126311-ZVITAMBO    ZIMBABWE     5                    1                 1.0412551   0.8503319   1.2750458
Birth       ki1126311-ZVITAMBO    ZIMBABWE     6                    1                 1.2870292   1.0707536   1.5469892
Birth       ki1126311-ZVITAMBO    ZIMBABWE     7                    1                 1.3549724   1.1323132   1.6214155
Birth       ki1126311-ZVITAMBO    ZIMBABWE     8                    1                 1.1927005   0.9936327   1.4316502
Birth       ki1126311-ZVITAMBO    ZIMBABWE     9                    1                 0.9786322   0.8084642   1.1846177
Birth       ki1126311-ZVITAMBO    ZIMBABWE     10                   1                 1.1121885   0.9147367   1.3522616
Birth       ki1126311-ZVITAMBO    ZIMBABWE     11                   1                 1.2043247   1.0006419   1.4494677
Birth       ki1126311-ZVITAMBO    ZIMBABWE     12                   1                 1.1074241   0.9172483   1.3370297
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    1                 1.1591697   0.9178293   1.4639699
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    1                 1.1610784   0.9263211   1.4553302
Birth       kiGH5241-JiVitA-3     BANGLADESH   4                    1                 1.2577123   0.9929633   1.5930501
Birth       kiGH5241-JiVitA-3     BANGLADESH   5                    1                 1.2728391   0.9844872   1.6456479
Birth       kiGH5241-JiVitA-3     BANGLADESH   6                    1                 1.2232735   0.9422506   1.5881105
Birth       kiGH5241-JiVitA-3     BANGLADESH   7                    1                 1.0469017   0.8105176   1.3522262
Birth       kiGH5241-JiVitA-3     BANGLADESH   8                    1                 1.3418031   1.0642303   1.6917723
Birth       kiGH5241-JiVitA-3     BANGLADESH   9                    1                 1.5764932   1.2820502   1.9385596
Birth       kiGH5241-JiVitA-3     BANGLADESH   10                   1                 1.4115734   1.1423498   1.7442463
Birth       kiGH5241-JiVitA-3     BANGLADESH   11                   1                 1.3158468   1.0632114   1.6285124
Birth       kiGH5241-JiVitA-3     BANGLADESH   12                   1                 1.1300902   0.9061056   1.4094427
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       2                    1                 0.9188138   0.3892666   2.1687420
6 months    ki1101329-Keneba      GAMBIA       3                    1                 1.5619835   0.7557194   3.2284369
6 months    ki1101329-Keneba      GAMBIA       4                    1                 2.0025429   0.9472399   4.2335403
6 months    ki1101329-Keneba      GAMBIA       5                    1                 1.5909091   0.7217633   3.5066783
6 months    ki1101329-Keneba      GAMBIA       6                    1                 1.1325116   0.4510427   2.8435945
6 months    ki1101329-Keneba      GAMBIA       7                    1                 1.4525692   0.5814184   3.6289822
6 months    ki1101329-Keneba      GAMBIA       8                    1                 1.0971787   0.4771506   2.5228954
6 months    ki1101329-Keneba      GAMBIA       9                    1                 0.8777429   0.3609950   2.1341919
6 months    ki1101329-Keneba      GAMBIA       10                   1                 0.4618768   0.1737249   1.2279770
6 months    ki1101329-Keneba      GAMBIA       11                   1                 0.7146330   0.2827700   1.8060623
6 months    ki1101329-Keneba      GAMBIA       12                   1                 1.0937500   0.4852570   2.4652689
6 months    ki1119695-PROBIT      BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT      BELARUS      2                    1                 1.1943041   0.4521545   3.1545903
6 months    ki1119695-PROBIT      BELARUS      3                    1                 0.6533101   0.2105646   2.0269984
6 months    ki1119695-PROBIT      BELARUS      4                    1                 1.1416862   0.4041159   3.2254292
6 months    ki1119695-PROBIT      BELARUS      5                    1                 1.0029574   0.2532956   3.9713423
6 months    ki1119695-PROBIT      BELARUS      6                    1                 1.1242793   0.4381714   2.8847250
6 months    ki1119695-PROBIT      BELARUS      7                    1                 1.0465457   0.4652227   2.3542655
6 months    ki1119695-PROBIT      BELARUS      8                    1                 1.3238289   0.4340187   4.0378977
6 months    ki1119695-PROBIT      BELARUS      9                    1                 0.9230332   0.4373317   1.9481558
6 months    ki1119695-PROBIT      BELARUS      10                   1                 1.1545293   0.4647511   2.8680683
6 months    ki1119695-PROBIT      BELARUS      11                   1                 2.0173624   0.9078230   4.4829783
6 months    ki1119695-PROBIT      BELARUS      12                   1                 0.9622502   0.3887224   2.3819710
6 months    ki1126311-ZVITAMBO    ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO    ZIMBABWE     2                    1                 1.1637931   0.6541039   2.0706410
6 months    ki1126311-ZVITAMBO    ZIMBABWE     3                    1                 1.3050000   0.7668329   2.2208554
6 months    ki1126311-ZVITAMBO    ZIMBABWE     4                    1                 0.8881579   0.4812869   1.6389899
6 months    ki1126311-ZVITAMBO    ZIMBABWE     5                    1                 0.9136146   0.4951507   1.6857328
6 months    ki1126311-ZVITAMBO    ZIMBABWE     6                    1                 1.1725831   0.6680189   2.0582517
6 months    ki1126311-ZVITAMBO    ZIMBABWE     7                    1                 0.7647281   0.4044813   1.4458246
6 months    ki1126311-ZVITAMBO    ZIMBABWE     8                    1                 1.3935484   0.8284622   2.3440746
6 months    ki1126311-ZVITAMBO    ZIMBABWE     9                    1                 0.9240548   0.5187754   1.6459477
6 months    ki1126311-ZVITAMBO    ZIMBABWE     10                   1                 1.0957792   0.6110030   1.9651820
6 months    ki1126311-ZVITAMBO    ZIMBABWE     11                   1                 0.7365212   0.3987856   1.3602883
6 months    ki1126311-ZVITAMBO    ZIMBABWE     12                   1                 1.2219101   0.7177882   2.0800904
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    1                 0.8931161   0.6752809   1.1812216
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.7695784   0.5927892   0.9990920
6 months    kiGH5241-JiVitA-3     BANGLADESH   4                    1                 0.8749202   0.6693975   1.1435438
6 months    kiGH5241-JiVitA-3     BANGLADESH   5                    1                 0.8221261   0.6238122   1.0834853
6 months    kiGH5241-JiVitA-3     BANGLADESH   6                    1                 0.8513523   0.6457778   1.1223685
6 months    kiGH5241-JiVitA-3     BANGLADESH   7                    1                 0.8725673   0.6704602   1.1355988
6 months    kiGH5241-JiVitA-3     BANGLADESH   8                    1                 0.9354139   0.7296326   1.1992325
6 months    kiGH5241-JiVitA-3     BANGLADESH   9                    1                 0.8477532   0.6621211   1.0854292
6 months    kiGH5241-JiVitA-3     BANGLADESH   10                   1                 1.0445838   0.8194253   1.3316105
6 months    kiGH5241-JiVitA-3     BANGLADESH   11                   1                 1.0192791   0.8089090   1.2843595
6 months    kiGH5241-JiVitA-3     BANGLADESH   12                   1                 0.8980684   0.7096912   1.1364477
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       2                    1                 0.5119763   0.1966644   1.3328275
24 months   ki1101329-Keneba      GAMBIA       3                    1                 1.0058824   0.4649439   2.1761753
24 months   ki1101329-Keneba      GAMBIA       4                    1                 1.2500000   0.5587015   2.7966633
24 months   ki1101329-Keneba      GAMBIA       5                    1                 0.9344262   0.3937695   2.2174200
24 months   ki1101329-Keneba      GAMBIA       6                    1                 1.2391304   0.5252966   2.9230046
24 months   ki1101329-Keneba      GAMBIA       7                    1                 3.0903614   1.5625770   6.1119125
24 months   ki1101329-Keneba      GAMBIA       8                    1                 2.1645570   1.1204049   4.1817978
24 months   ki1101329-Keneba      GAMBIA       9                    1                 1.8703125   0.9514262   3.6766582
24 months   ki1101329-Keneba      GAMBIA       10                   1                 2.6362500   1.4203398   4.8930645
24 months   ki1101329-Keneba      GAMBIA       11                   1                 1.9339286   0.9724279   3.8461253
24 months   ki1101329-Keneba      GAMBIA       12                   1                 1.5302013   0.7480194   3.1302880
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    1                 1.1853832   0.9083245   1.5469510
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    1                 1.2806373   1.0059191   1.6303814
24 months   kiGH5241-JiVitA-3     BANGLADESH   4                    1                 1.5256076   1.1827914   1.9677846
24 months   kiGH5241-JiVitA-3     BANGLADESH   5                    1                 1.6175881   1.2384742   2.1127541
24 months   kiGH5241-JiVitA-3     BANGLADESH   6                    1                 1.8995450   1.5233731   2.3686064
24 months   kiGH5241-JiVitA-3     BANGLADESH   7                    1                 1.9276259   1.5248743   2.4367527
24 months   kiGH5241-JiVitA-3     BANGLADESH   8                    1                 1.8942995   1.5040455   2.3858125
24 months   kiGH5241-JiVitA-3     BANGLADESH   9                    1                 1.8962891   1.5081420   2.3843326
24 months   kiGH5241-JiVitA-3     BANGLADESH   10                   1                 1.6564764   1.3188615   2.0805174
24 months   kiGH5241-JiVitA-3     BANGLADESH   11                   1                 1.4934232   1.1995652   1.8592676
24 months   kiGH5241-JiVitA-3     BANGLADESH   12                   1                 1.0715607   0.8446465   1.3594353


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth   BANGLADESH   1                    NA                 0.0209875   -0.0868529   0.1288278
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0131432   -0.0789314   0.0526449
Birth       ki1119695-PROBIT      BELARUS      1                    NA                -0.0029297   -0.0592213   0.0533618
Birth       ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0127607   -0.0060973   0.0316188
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0220336    0.0078246   0.0362426
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0055415   -0.0232019   0.0342848
6 months    ki1119695-PROBIT      BELARUS      1                    NA                 0.0010703   -0.0036988   0.0058394
6 months    ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0015285   -0.0096085   0.0126655
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0084806   -0.0241544   0.0071932
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0404850    0.0031322   0.0778379
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0739350    0.0476100   0.1002601


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth   BANGLADESH   1                    NA                 0.0718321   -0.3813899   0.3763559
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0529340   -0.3541962   0.1813077
Birth       ki1119695-PROBIT      BELARUS      1                    NA                -0.0140347   -0.3221385   0.2222702
Birth       ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0799760   -0.0461097   0.1908647
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.2011726    0.0608133   0.3205555
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0956710   -0.5650275   0.4774463
6 months    ki1119695-PROBIT      BELARUS      1                    NA                 0.1297357   -0.7005162   0.5546294
6 months    ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0490566   -0.3847596   0.3469673
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.1001677   -0.3004723   0.0692851
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.3658492   -0.0747368   0.6258179
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.3386918    0.2089197   0.4471755
