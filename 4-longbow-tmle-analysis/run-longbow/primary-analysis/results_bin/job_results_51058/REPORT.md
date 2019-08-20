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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        month    stunted   n_cell       n
----------  -------------------------  -----------------------------  ------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0       16     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1        3     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              0       18     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              1        6     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              0       20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              1        8     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              0       21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              0       16     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              0        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              1        4     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              0       17     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              0       20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              0       20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              1        2     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             0       19     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             0       13     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             1        2     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             0       25     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             1        2     257
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        9     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2              0       18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2              1        3     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3              0       17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3              1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4              0        8     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4              1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5              0       16     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5              1        3     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6              0        6     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6              1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7              0       13     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7              1        4     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8              0       16     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8              1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9              0       24     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9              1        4     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10             0       18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10             1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11             0       15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11             1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12             0       10     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12             1        3     191
Birth       ki0047075b-MAL-ED          INDIA                          1              0       15     206
Birth       ki0047075b-MAL-ED          INDIA                          1              1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          2              0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          2              1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          3              0       18     206
Birth       ki0047075b-MAL-ED          INDIA                          3              1        2     206
Birth       ki0047075b-MAL-ED          INDIA                          4              0       13     206
Birth       ki0047075b-MAL-ED          INDIA                          4              1        2     206
Birth       ki0047075b-MAL-ED          INDIA                          5              0        6     206
Birth       ki0047075b-MAL-ED          INDIA                          5              1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          6              0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          6              1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          7              0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          7              1        5     206
Birth       ki0047075b-MAL-ED          INDIA                          8              0       13     206
Birth       ki0047075b-MAL-ED          INDIA                          8              1        4     206
Birth       ki0047075b-MAL-ED          INDIA                          9              0       14     206
Birth       ki0047075b-MAL-ED          INDIA                          9              1        5     206
Birth       ki0047075b-MAL-ED          INDIA                          10             0       19     206
Birth       ki0047075b-MAL-ED          INDIA                          10             1        5     206
Birth       ki0047075b-MAL-ED          INDIA                          11             0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          11             1        4     206
Birth       ki0047075b-MAL-ED          INDIA                          12             0       11     206
Birth       ki0047075b-MAL-ED          INDIA                          12             1        3     206
Birth       ki0047075b-MAL-ED          NEPAL                          1              0       13     173
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        4     173
Birth       ki0047075b-MAL-ED          NEPAL                          2              0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          2              1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          3              0       11     173
Birth       ki0047075b-MAL-ED          NEPAL                          3              1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          4              0       14     173
Birth       ki0047075b-MAL-ED          NEPAL                          4              1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          5              0       18     173
Birth       ki0047075b-MAL-ED          NEPAL                          5              1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          6              0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          6              1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          7              0       15     173
Birth       ki0047075b-MAL-ED          NEPAL                          7              1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          8              0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          8              1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          9              0        8     173
Birth       ki0047075b-MAL-ED          NEPAL                          9              1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          10             0       16     173
Birth       ki0047075b-MAL-ED          NEPAL                          10             1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          11             0       15     173
Birth       ki0047075b-MAL-ED          NEPAL                          11             1        3     173
Birth       ki0047075b-MAL-ED          NEPAL                          12             0        9     173
Birth       ki0047075b-MAL-ED          NEPAL                          12             1        1     173
Birth       ki0047075b-MAL-ED          PERU                           1              0       32     287
Birth       ki0047075b-MAL-ED          PERU                           1              1        5     287
Birth       ki0047075b-MAL-ED          PERU                           2              0       19     287
Birth       ki0047075b-MAL-ED          PERU                           2              1        4     287
Birth       ki0047075b-MAL-ED          PERU                           3              0       19     287
Birth       ki0047075b-MAL-ED          PERU                           3              1        3     287
Birth       ki0047075b-MAL-ED          PERU                           4              0       18     287
Birth       ki0047075b-MAL-ED          PERU                           4              1        3     287
Birth       ki0047075b-MAL-ED          PERU                           5              0       23     287
Birth       ki0047075b-MAL-ED          PERU                           5              1        2     287
Birth       ki0047075b-MAL-ED          PERU                           6              0       17     287
Birth       ki0047075b-MAL-ED          PERU                           6              1        2     287
Birth       ki0047075b-MAL-ED          PERU                           7              0       21     287
Birth       ki0047075b-MAL-ED          PERU                           7              1        2     287
Birth       ki0047075b-MAL-ED          PERU                           8              0       19     287
Birth       ki0047075b-MAL-ED          PERU                           8              1        0     287
Birth       ki0047075b-MAL-ED          PERU                           9              0       22     287
Birth       ki0047075b-MAL-ED          PERU                           9              1        0     287
Birth       ki0047075b-MAL-ED          PERU                           10             0       21     287
Birth       ki0047075b-MAL-ED          PERU                           10             1        3     287
Birth       ki0047075b-MAL-ED          PERU                           11             0       24     287
Birth       ki0047075b-MAL-ED          PERU                           11             1        7     287
Birth       ki0047075b-MAL-ED          PERU                           12             0       18     287
Birth       ki0047075b-MAL-ED          PERU                           12             1        3     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       26     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       23     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       16     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       12     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       15     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        3     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       20     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        9     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       19     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       24     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        4     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       20     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        7     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       37     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        3     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0        7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        3     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        2     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       13     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       11     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        5     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0        8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       12     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       14     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        2     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              0        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4              0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4              1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6              0        8      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7              0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7              1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8              0        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9              0        5      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9              1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10             0        8      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10             1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12             0        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12             1        2      90
Birth       ki1000108-IRC              INDIA                          1              0       27     388
Birth       ki1000108-IRC              INDIA                          1              1        7     388
Birth       ki1000108-IRC              INDIA                          2              0       23     388
Birth       ki1000108-IRC              INDIA                          2              1        2     388
Birth       ki1000108-IRC              INDIA                          3              0       23     388
Birth       ki1000108-IRC              INDIA                          3              1        4     388
Birth       ki1000108-IRC              INDIA                          4              0       20     388
Birth       ki1000108-IRC              INDIA                          4              1        2     388
Birth       ki1000108-IRC              INDIA                          5              0       20     388
Birth       ki1000108-IRC              INDIA                          5              1        1     388
Birth       ki1000108-IRC              INDIA                          6              0       30     388
Birth       ki1000108-IRC              INDIA                          6              1        4     388
Birth       ki1000108-IRC              INDIA                          7              0       31     388
Birth       ki1000108-IRC              INDIA                          7              1        4     388
Birth       ki1000108-IRC              INDIA                          8              0       36     388
Birth       ki1000108-IRC              INDIA                          8              1        3     388
Birth       ki1000108-IRC              INDIA                          9              0       23     388
Birth       ki1000108-IRC              INDIA                          9              1        2     388
Birth       ki1000108-IRC              INDIA                          10             0       33     388
Birth       ki1000108-IRC              INDIA                          10             1        4     388
Birth       ki1000108-IRC              INDIA                          11             0       34     388
Birth       ki1000108-IRC              INDIA                          11             1        6     388
Birth       ki1000108-IRC              INDIA                          12             0       43     388
Birth       ki1000108-IRC              INDIA                          12             1        6     388
Birth       ki1000109-EE               PAKISTAN                       1              0        0       2
Birth       ki1000109-EE               PAKISTAN                       1              1        0       2
Birth       ki1000109-EE               PAKISTAN                       2              0        0       2
Birth       ki1000109-EE               PAKISTAN                       2              1        0       2
Birth       ki1000109-EE               PAKISTAN                       3              0        0       2
Birth       ki1000109-EE               PAKISTAN                       3              1        0       2
Birth       ki1000109-EE               PAKISTAN                       4              0        0       2
Birth       ki1000109-EE               PAKISTAN                       4              1        0       2
Birth       ki1000109-EE               PAKISTAN                       5              0        0       2
Birth       ki1000109-EE               PAKISTAN                       5              1        0       2
Birth       ki1000109-EE               PAKISTAN                       6              0        0       2
Birth       ki1000109-EE               PAKISTAN                       6              1        0       2
Birth       ki1000109-EE               PAKISTAN                       7              0        0       2
Birth       ki1000109-EE               PAKISTAN                       7              1        0       2
Birth       ki1000109-EE               PAKISTAN                       8              0        0       2
Birth       ki1000109-EE               PAKISTAN                       8              1        0       2
Birth       ki1000109-EE               PAKISTAN                       9              0        0       2
Birth       ki1000109-EE               PAKISTAN                       9              1        0       2
Birth       ki1000109-EE               PAKISTAN                       10             0        0       2
Birth       ki1000109-EE               PAKISTAN                       10             1        0       2
Birth       ki1000109-EE               PAKISTAN                       11             0        0       2
Birth       ki1000109-EE               PAKISTAN                       11             1        0       2
Birth       ki1000109-EE               PAKISTAN                       12             0        1       2
Birth       ki1000109-EE               PAKISTAN                       12             1        1       2
Birth       ki1000109-ResPak           PAKISTAN                       1              0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       1              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       2              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       2              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       3              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       3              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       4              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       4              1        2       7
Birth       ki1000109-ResPak           PAKISTAN                       5              0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       5              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       6              0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       6              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       7              0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       7              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       8              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       8              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       9              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       9              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       10             0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       10             1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       11             0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       11             1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       12             0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       12             1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0       11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1        5     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              0       11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              0        6     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              1        5     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              0       14     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              0       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              0       11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              1        5     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7              0        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7              1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              0       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              0       19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             0       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             0       15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             0        8     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             1        7     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2              0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3              0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4              0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5              0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6              0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7              0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8              0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9              0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10             0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11             0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12             0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12             1        0      28
Birth       ki1114097-CMIN             BANGLADESH                     1              0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1              1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     2              0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     2              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     3              0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     3              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     4              0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     4              1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     5              0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     5              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     6              0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     6              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     7              0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     7              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     8              0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     8              1        3      13
Birth       ki1114097-CMIN             BANGLADESH                     9              0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     9              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     10             0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     10             1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     11             0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     11             1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     12             0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     12             1        0      13
Birth       ki1114097-CMIN             BRAZIL                         1              0       13     115
Birth       ki1114097-CMIN             BRAZIL                         1              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         2              0        7     115
Birth       ki1114097-CMIN             BRAZIL                         2              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         3              0       12     115
Birth       ki1114097-CMIN             BRAZIL                         3              1        1     115
Birth       ki1114097-CMIN             BRAZIL                         4              0        9     115
Birth       ki1114097-CMIN             BRAZIL                         4              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         5              0        5     115
Birth       ki1114097-CMIN             BRAZIL                         5              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         6              0        6     115
Birth       ki1114097-CMIN             BRAZIL                         6              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         7              0        4     115
Birth       ki1114097-CMIN             BRAZIL                         7              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         8              0       12     115
Birth       ki1114097-CMIN             BRAZIL                         8              1        1     115
Birth       ki1114097-CMIN             BRAZIL                         9              0        8     115
Birth       ki1114097-CMIN             BRAZIL                         9              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         10             0       14     115
Birth       ki1114097-CMIN             BRAZIL                         10             1        2     115
Birth       ki1114097-CMIN             BRAZIL                         11             0       11     115
Birth       ki1114097-CMIN             BRAZIL                         11             1        0     115
Birth       ki1114097-CMIN             BRAZIL                         12             0        9     115
Birth       ki1114097-CMIN             BRAZIL                         12             1        1     115
Birth       ki1114097-CMIN             PERU                           1              0        1      10
Birth       ki1114097-CMIN             PERU                           1              1        0      10
Birth       ki1114097-CMIN             PERU                           2              0        1      10
Birth       ki1114097-CMIN             PERU                           2              1        0      10
Birth       ki1114097-CMIN             PERU                           3              0        2      10
Birth       ki1114097-CMIN             PERU                           3              1        0      10
Birth       ki1114097-CMIN             PERU                           4              0        3      10
Birth       ki1114097-CMIN             PERU                           4              1        0      10
Birth       ki1114097-CMIN             PERU                           5              0        0      10
Birth       ki1114097-CMIN             PERU                           5              1        0      10
Birth       ki1114097-CMIN             PERU                           6              0        0      10
Birth       ki1114097-CMIN             PERU                           6              1        0      10
Birth       ki1114097-CMIN             PERU                           7              0        0      10
Birth       ki1114097-CMIN             PERU                           7              1        0      10
Birth       ki1114097-CMIN             PERU                           8              0        1      10
Birth       ki1114097-CMIN             PERU                           8              1        0      10
Birth       ki1114097-CMIN             PERU                           9              0        2      10
Birth       ki1114097-CMIN             PERU                           9              1        0      10
Birth       ki1114097-CMIN             PERU                           10             0        0      10
Birth       ki1114097-CMIN             PERU                           10             1        0      10
Birth       ki1114097-CMIN             PERU                           11             0        0      10
Birth       ki1114097-CMIN             PERU                           11             1        0      10
Birth       ki1114097-CMIN             PERU                           12             0        0      10
Birth       ki1114097-CMIN             PERU                           12             1        0      10
Birth       ki1114097-CONTENT          PERU                           1              0        0       2
Birth       ki1114097-CONTENT          PERU                           1              1        0       2
Birth       ki1114097-CONTENT          PERU                           2              0        0       2
Birth       ki1114097-CONTENT          PERU                           2              1        0       2
Birth       ki1114097-CONTENT          PERU                           3              0        0       2
Birth       ki1114097-CONTENT          PERU                           3              1        0       2
Birth       ki1114097-CONTENT          PERU                           4              0        0       2
Birth       ki1114097-CONTENT          PERU                           4              1        0       2
Birth       ki1114097-CONTENT          PERU                           5              0        2       2
Birth       ki1114097-CONTENT          PERU                           5              1        0       2
Birth       ki1114097-CONTENT          PERU                           6              0        0       2
Birth       ki1114097-CONTENT          PERU                           6              1        0       2
Birth       ki1114097-CONTENT          PERU                           7              0        0       2
Birth       ki1114097-CONTENT          PERU                           7              1        0       2
Birth       ki1114097-CONTENT          PERU                           8              0        0       2
Birth       ki1114097-CONTENT          PERU                           8              1        0       2
Birth       ki1114097-CONTENT          PERU                           9              0        0       2
Birth       ki1114097-CONTENT          PERU                           9              1        0       2
Birth       ki1114097-CONTENT          PERU                           10             0        0       2
Birth       ki1114097-CONTENT          PERU                           10             1        0       2
Birth       ki1114097-CONTENT          PERU                           11             0        0       2
Birth       ki1114097-CONTENT          PERU                           11             1        0       2
Birth       ki1114097-CONTENT          PERU                           12             0        0       2
Birth       ki1114097-CONTENT          PERU                           12             1        0       2
Birth       ki1119695-PROBIT           BELARUS                        1              0      858   13884
Birth       ki1119695-PROBIT           BELARUS                        1              1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        2              0      788   13884
Birth       ki1119695-PROBIT           BELARUS                        2              1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        3              0      964   13884
Birth       ki1119695-PROBIT           BELARUS                        3              1        4   13884
Birth       ki1119695-PROBIT           BELARUS                        4              0      955   13884
Birth       ki1119695-PROBIT           BELARUS                        4              1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        5              0      955   13884
Birth       ki1119695-PROBIT           BELARUS                        5              1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        6              0     1004   13884
Birth       ki1119695-PROBIT           BELARUS                        6              1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        7              0     1278   13884
Birth       ki1119695-PROBIT           BELARUS                        7              1        2   13884
Birth       ki1119695-PROBIT           BELARUS                        8              0     1323   13884
Birth       ki1119695-PROBIT           BELARUS                        8              1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        9              0     1308   13884
Birth       ki1119695-PROBIT           BELARUS                        9              1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        10             0     1503   13884
Birth       ki1119695-PROBIT           BELARUS                        10             1        6   13884
Birth       ki1119695-PROBIT           BELARUS                        11             0     1394   13884
Birth       ki1119695-PROBIT           BELARUS                        11             1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        12             0     1521   13884
Birth       ki1119695-PROBIT           BELARUS                        12             1        2   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              0     1171   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              1      173   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              0      882   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              1      154   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3              0     1004   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3              1      136   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4              0      896   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4              1      111   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5              0      871   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5              1      129   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6              0     1003   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6              1      129   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7              0     1055   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7              1      121   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8              0     1135   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8              1       91   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9              0     1230   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9              1       83   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10             0      957   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10             1       85   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11             0     1039   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11             1       95   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12             0     1131   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12             1      124   13805
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0     1204   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1      683   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0     1079   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1      485   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              0     1322   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              1      551   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4              0      989   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4              1      375   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5              0      674   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5              1      287   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6              0      717   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6              1      276   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7              0      766   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7              1      320   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8              0     1027   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8              1      468   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9              0     1317   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9              1      550   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10             0     1401   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10             1      722   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11             0     1374   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11             1      796   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12             0     1405   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12             1      825   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              0       92     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              1       38     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              0      111     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              1       63     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4              0      113     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4              1       46     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5              0       93     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5              1       30     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              0       60     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              1       34     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              0       53     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              1       16     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              0       25     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              1        7     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              0       20     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              1       11     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10             0        8     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10             1        2     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11             0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11             1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12             0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12             1        0     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0       14     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        3     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              0       14     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              1        5     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4              0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5              0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5              1        4     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6              0        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6              1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7              0       13     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7              1        7     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8              0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8              1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9              0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9              1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10             0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10             1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11             0       15     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11             1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12             0       24     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12             1        2     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              0       23     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              0       18     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4              0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5              0       19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6              0        9     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7              0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8              0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9              0       27     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10             0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11             0       19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12             0       13     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12             1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          1              0       14     236
6 months    ki0047075b-MAL-ED          INDIA                          1              1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          2              0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          2              1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          3              0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          3              1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          4              0       10     236
6 months    ki0047075b-MAL-ED          INDIA                          4              1        5     236
6 months    ki0047075b-MAL-ED          INDIA                          5              0        6     236
6 months    ki0047075b-MAL-ED          INDIA                          5              1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          6              0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          6              1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          7              0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          7              1        5     236
6 months    ki0047075b-MAL-ED          INDIA                          8              0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          8              1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          9              0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          9              1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          10             0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          10             1        7     236
6 months    ki0047075b-MAL-ED          INDIA                          11             0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          11             1        6     236
6 months    ki0047075b-MAL-ED          INDIA                          12             0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          12             1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              0       14     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          4              0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          4              1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          5              0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          5              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          6              0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          6              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          7              0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          7              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          8              0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          8              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          9              0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          9              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          10             0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          10             1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          11             0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          11             1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          12             0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          12             1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1              0       29     273
6 months    ki0047075b-MAL-ED          PERU                           1              1        8     273
6 months    ki0047075b-MAL-ED          PERU                           2              0       16     273
6 months    ki0047075b-MAL-ED          PERU                           2              1        6     273
6 months    ki0047075b-MAL-ED          PERU                           3              0       14     273
6 months    ki0047075b-MAL-ED          PERU                           3              1        7     273
6 months    ki0047075b-MAL-ED          PERU                           4              0       16     273
6 months    ki0047075b-MAL-ED          PERU                           4              1        4     273
6 months    ki0047075b-MAL-ED          PERU                           5              0       22     273
6 months    ki0047075b-MAL-ED          PERU                           5              1        2     273
6 months    ki0047075b-MAL-ED          PERU                           6              0       15     273
6 months    ki0047075b-MAL-ED          PERU                           6              1        4     273
6 months    ki0047075b-MAL-ED          PERU                           7              0       18     273
6 months    ki0047075b-MAL-ED          PERU                           7              1        3     273
6 months    ki0047075b-MAL-ED          PERU                           8              0       14     273
6 months    ki0047075b-MAL-ED          PERU                           8              1        3     273
6 months    ki0047075b-MAL-ED          PERU                           9              0       17     273
6 months    ki0047075b-MAL-ED          PERU                           9              1        5     273
6 months    ki0047075b-MAL-ED          PERU                           10             0       16     273
6 months    ki0047075b-MAL-ED          PERU                           10             1        3     273
6 months    ki0047075b-MAL-ED          PERU                           11             0       22     273
6 months    ki0047075b-MAL-ED          PERU                           11             1       11     273
6 months    ki0047075b-MAL-ED          PERU                           12             0       14     273
6 months    ki0047075b-MAL-ED          PERU                           12             1        4     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       27     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        8     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        4     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       16     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              0        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       19     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        4     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        5     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       20     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        4     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       25     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             1       10     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       17     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        7     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0       10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       17     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        6     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0       18     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1        9     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              0       16     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              0       18     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              1        7     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              0       25     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              1        4     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              0       35     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              1        9     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              0       25     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              1       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              0       20     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              1       13     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              0       20     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              1       21     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              0       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              1        9     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             0       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             1        5     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             0       28     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             1       12     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             0       25     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             1        3     369
6 months    ki1000108-IRC              INDIA                          1              0       25     407
6 months    ki1000108-IRC              INDIA                          1              1       11     407
6 months    ki1000108-IRC              INDIA                          2              0       16     407
6 months    ki1000108-IRC              INDIA                          2              1       11     407
6 months    ki1000108-IRC              INDIA                          3              0       19     407
6 months    ki1000108-IRC              INDIA                          3              1       10     407
6 months    ki1000108-IRC              INDIA                          4              0       16     407
6 months    ki1000108-IRC              INDIA                          4              1        6     407
6 months    ki1000108-IRC              INDIA                          5              0       13     407
6 months    ki1000108-IRC              INDIA                          5              1        7     407
6 months    ki1000108-IRC              INDIA                          6              0       32     407
6 months    ki1000108-IRC              INDIA                          6              1        5     407
6 months    ki1000108-IRC              INDIA                          7              0       25     407
6 months    ki1000108-IRC              INDIA                          7              1       11     407
6 months    ki1000108-IRC              INDIA                          8              0       39     407
6 months    ki1000108-IRC              INDIA                          8              1        6     407
6 months    ki1000108-IRC              INDIA                          9              0       20     407
6 months    ki1000108-IRC              INDIA                          9              1        7     407
6 months    ki1000108-IRC              INDIA                          10             0       31     407
6 months    ki1000108-IRC              INDIA                          10             1        5     407
6 months    ki1000108-IRC              INDIA                          11             0       34     407
6 months    ki1000108-IRC              INDIA                          11             1        7     407
6 months    ki1000108-IRC              INDIA                          12             0       37     407
6 months    ki1000108-IRC              INDIA                          12             1       14     407
6 months    ki1000109-EE               PAKISTAN                       1              0       34     372
6 months    ki1000109-EE               PAKISTAN                       1              1       53     372
6 months    ki1000109-EE               PAKISTAN                       2              0       46     372
6 months    ki1000109-EE               PAKISTAN                       2              1       35     372
6 months    ki1000109-EE               PAKISTAN                       3              0       21     372
6 months    ki1000109-EE               PAKISTAN                       3              1       20     372
6 months    ki1000109-EE               PAKISTAN                       4              0       12     372
6 months    ki1000109-EE               PAKISTAN                       4              1       17     372
6 months    ki1000109-EE               PAKISTAN                       5              0        0     372
6 months    ki1000109-EE               PAKISTAN                       5              1        2     372
6 months    ki1000109-EE               PAKISTAN                       6              0        0     372
6 months    ki1000109-EE               PAKISTAN                       6              1        0     372
6 months    ki1000109-EE               PAKISTAN                       7              0        0     372
6 months    ki1000109-EE               PAKISTAN                       7              1        0     372
6 months    ki1000109-EE               PAKISTAN                       8              0        0     372
6 months    ki1000109-EE               PAKISTAN                       8              1        0     372
6 months    ki1000109-EE               PAKISTAN                       9              0        0     372
6 months    ki1000109-EE               PAKISTAN                       9              1        0     372
6 months    ki1000109-EE               PAKISTAN                       10             0        0     372
6 months    ki1000109-EE               PAKISTAN                       10             1        0     372
6 months    ki1000109-EE               PAKISTAN                       11             0       20     372
6 months    ki1000109-EE               PAKISTAN                       11             1       29     372
6 months    ki1000109-EE               PAKISTAN                       12             0       46     372
6 months    ki1000109-EE               PAKISTAN                       12             1       37     372
6 months    ki1000109-ResPak           PAKISTAN                       1              0        3     235
6 months    ki1000109-ResPak           PAKISTAN                       1              1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       2              0        8     235
6 months    ki1000109-ResPak           PAKISTAN                       2              1        4     235
6 months    ki1000109-ResPak           PAKISTAN                       3              0        5     235
6 months    ki1000109-ResPak           PAKISTAN                       3              1        8     235
6 months    ki1000109-ResPak           PAKISTAN                       4              0       16     235
6 months    ki1000109-ResPak           PAKISTAN                       4              1       12     235
6 months    ki1000109-ResPak           PAKISTAN                       5              0       19     235
6 months    ki1000109-ResPak           PAKISTAN                       5              1       11     235
6 months    ki1000109-ResPak           PAKISTAN                       6              0       28     235
6 months    ki1000109-ResPak           PAKISTAN                       6              1       18     235
6 months    ki1000109-ResPak           PAKISTAN                       7              0       26     235
6 months    ki1000109-ResPak           PAKISTAN                       7              1        7     235
6 months    ki1000109-ResPak           PAKISTAN                       8              0       22     235
6 months    ki1000109-ResPak           PAKISTAN                       8              1       13     235
6 months    ki1000109-ResPak           PAKISTAN                       9              0       14     235
6 months    ki1000109-ResPak           PAKISTAN                       9              1        6     235
6 months    ki1000109-ResPak           PAKISTAN                       10             0        7     235
6 months    ki1000109-ResPak           PAKISTAN                       10             1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       11             0        3     235
6 months    ki1000109-ResPak           PAKISTAN                       11             1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12             0        1     235
6 months    ki1000109-ResPak           PAKISTAN                       12             1        1     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0       60    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1       25    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              0       59    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              1       22    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              0       61    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              1       19    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              0       57    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              1       20    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              0       49    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              1       27    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              0       74    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              1       28    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7              0       65    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7              1       50    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8              0      101    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8              1       51    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9              0      132    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9              1       34    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10             0      113    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10             1       35    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11             0       93    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11             1       32    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12             0       92    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12             1       37    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0       29     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              0       21     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              1       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              1       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4              0       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4              1       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              0       15     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              1       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              0       18     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              1       13     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              0        7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              1       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              0        7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             0       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             1       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             0       33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             1       11     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             0       40     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             1       22     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              0       35     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              1       15     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              0       36     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              1       14     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              0       36     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              1       14     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              0       34     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              1       10     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              0       32     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              1        8     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              0       28     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              1       11     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              0       27     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              1       18     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              0       31     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              1        7     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              0       23     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              1        7     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             0       37     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             1       15     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             0       31     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             1       18     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             0       43     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             1        7     537
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      187    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       12    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      125    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       12    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      140    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1       11    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      125    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1       13    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      147    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1       13    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      125    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1       18    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      126    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1       19    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      157    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1       17    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      172    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1       26    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      178    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1       18    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      162    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1       25    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      188    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1       13    2029
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              0       16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              1        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              0       15     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              1        4     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              0       12     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              1        9     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              0       19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              1        8     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              0       25     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              1        6     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              0       27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              1       12     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              0       15     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              1        9     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              0       14     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              1        5     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              0       23     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              1       11     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             0       18     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             1       11     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             0       18     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             1       10     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             0        7     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             1        3     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2              0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3              0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4              0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5              0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6              0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7              0       93     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7              1       26     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8              0      172     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8              1       48     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9              0      165     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9              1       39     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10             0        9     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10             1        4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11             0        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11             1        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12             0        1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12             1        0     563
6 months    ki1114097-CMIN             BANGLADESH                     1              0       15     243
6 months    ki1114097-CMIN             BANGLADESH                     1              1       12     243
6 months    ki1114097-CMIN             BANGLADESH                     2              0       16     243
6 months    ki1114097-CMIN             BANGLADESH                     2              1       14     243
6 months    ki1114097-CMIN             BANGLADESH                     3              0       13     243
6 months    ki1114097-CMIN             BANGLADESH                     3              1        5     243
6 months    ki1114097-CMIN             BANGLADESH                     4              0       14     243
6 months    ki1114097-CMIN             BANGLADESH                     4              1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     5              0       15     243
6 months    ki1114097-CMIN             BANGLADESH                     5              1        5     243
6 months    ki1114097-CMIN             BANGLADESH                     6              0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     6              1        6     243
6 months    ki1114097-CMIN             BANGLADESH                     7              0        9     243
6 months    ki1114097-CMIN             BANGLADESH                     7              1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     8              0        9     243
6 months    ki1114097-CMIN             BANGLADESH                     8              1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     9              0        7     243
6 months    ki1114097-CMIN             BANGLADESH                     9              1        9     243
6 months    ki1114097-CMIN             BANGLADESH                     10             0        8     243
6 months    ki1114097-CMIN             BANGLADESH                     10             1       12     243
6 months    ki1114097-CMIN             BANGLADESH                     11             0        2     243
6 months    ki1114097-CMIN             BANGLADESH                     11             1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     12             0       25     243
6 months    ki1114097-CMIN             BANGLADESH                     12             1       20     243
6 months    ki1114097-CMIN             BRAZIL                         1              0        9     108
6 months    ki1114097-CMIN             BRAZIL                         1              1        1     108
6 months    ki1114097-CMIN             BRAZIL                         2              0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3              0       11     108
6 months    ki1114097-CMIN             BRAZIL                         3              1        2     108
6 months    ki1114097-CMIN             BRAZIL                         4              0       10     108
6 months    ki1114097-CMIN             BRAZIL                         4              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5              0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6              0        5     108
6 months    ki1114097-CMIN             BRAZIL                         6              1        1     108
6 months    ki1114097-CMIN             BRAZIL                         7              0        3     108
6 months    ki1114097-CMIN             BRAZIL                         7              1        1     108
6 months    ki1114097-CMIN             BRAZIL                         8              0       11     108
6 months    ki1114097-CMIN             BRAZIL                         8              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9              0        6     108
6 months    ki1114097-CMIN             BRAZIL                         9              1        2     108
6 months    ki1114097-CMIN             BRAZIL                         10             0       13     108
6 months    ki1114097-CMIN             BRAZIL                         10             1        2     108
6 months    ki1114097-CMIN             BRAZIL                         11             0       12     108
6 months    ki1114097-CMIN             BRAZIL                         11             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         12             0        7     108
6 months    ki1114097-CMIN             BRAZIL                         12             1        1     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1              0       13     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1              1        2     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              0       70     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              1       17     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              0      100     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              1       15     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              0      116     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              1        9     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              0      103     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              1        7     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              0       58     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              1        3     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              0       36     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              1        4     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              0       33     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              1        4     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9              0       91     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9              1        7     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10             0       30     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10             1        4     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             0       45     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             1        2     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             0       77     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             1        2     848
6 months    ki1114097-CMIN             PERU                           1              0       37     637
6 months    ki1114097-CMIN             PERU                           1              1        4     637
6 months    ki1114097-CMIN             PERU                           2              0       53     637
6 months    ki1114097-CMIN             PERU                           2              1        3     637
6 months    ki1114097-CMIN             PERU                           3              0       63     637
6 months    ki1114097-CMIN             PERU                           3              1        6     637
6 months    ki1114097-CMIN             PERU                           4              0       64     637
6 months    ki1114097-CMIN             PERU                           4              1        5     637
6 months    ki1114097-CMIN             PERU                           5              0       63     637
6 months    ki1114097-CMIN             PERU                           5              1        7     637
6 months    ki1114097-CMIN             PERU                           6              0       46     637
6 months    ki1114097-CMIN             PERU                           6              1        2     637
6 months    ki1114097-CMIN             PERU                           7              0       42     637
6 months    ki1114097-CMIN             PERU                           7              1        2     637
6 months    ki1114097-CMIN             PERU                           8              0       51     637
6 months    ki1114097-CMIN             PERU                           8              1        3     637
6 months    ki1114097-CMIN             PERU                           9              0       41     637
6 months    ki1114097-CMIN             PERU                           9              1        1     637
6 months    ki1114097-CMIN             PERU                           10             0       33     637
6 months    ki1114097-CMIN             PERU                           10             1        4     637
6 months    ki1114097-CMIN             PERU                           11             0       62     637
6 months    ki1114097-CMIN             PERU                           11             1        3     637
6 months    ki1114097-CMIN             PERU                           12             0       39     637
6 months    ki1114097-CMIN             PERU                           12             1        3     637
6 months    ki1114097-CONTENT          PERU                           1              0        9     215
6 months    ki1114097-CONTENT          PERU                           1              1        0     215
6 months    ki1114097-CONTENT          PERU                           2              0       13     215
6 months    ki1114097-CONTENT          PERU                           2              1        0     215
6 months    ki1114097-CONTENT          PERU                           3              0       25     215
6 months    ki1114097-CONTENT          PERU                           3              1        2     215
6 months    ki1114097-CONTENT          PERU                           4              0       14     215
6 months    ki1114097-CONTENT          PERU                           4              1        4     215
6 months    ki1114097-CONTENT          PERU                           5              0       22     215
6 months    ki1114097-CONTENT          PERU                           5              1        3     215
6 months    ki1114097-CONTENT          PERU                           6              0       11     215
6 months    ki1114097-CONTENT          PERU                           6              1        3     215
6 months    ki1114097-CONTENT          PERU                           7              0       15     215
6 months    ki1114097-CONTENT          PERU                           7              1        1     215
6 months    ki1114097-CONTENT          PERU                           8              0       24     215
6 months    ki1114097-CONTENT          PERU                           8              1        2     215
6 months    ki1114097-CONTENT          PERU                           9              0       16     215
6 months    ki1114097-CONTENT          PERU                           9              1        3     215
6 months    ki1114097-CONTENT          PERU                           10             0       23     215
6 months    ki1114097-CONTENT          PERU                           10             1        0     215
6 months    ki1114097-CONTENT          PERU                           11             0       17     215
6 months    ki1114097-CONTENT          PERU                           11             1        1     215
6 months    ki1114097-CONTENT          PERU                           12             0        7     215
6 months    ki1114097-CONTENT          PERU                           12             1        0     215
6 months    ki1119695-PROBIT           BELARUS                        1              0     1019   15761
6 months    ki1119695-PROBIT           BELARUS                        1              1       83   15761
6 months    ki1119695-PROBIT           BELARUS                        2              0      871   15761
6 months    ki1119695-PROBIT           BELARUS                        2              1       80   15761
6 months    ki1119695-PROBIT           BELARUS                        3              0     1041   15761
6 months    ki1119695-PROBIT           BELARUS                        3              1       73   15761
6 months    ki1119695-PROBIT           BELARUS                        4              0     1010   15761
6 months    ki1119695-PROBIT           BELARUS                        4              1       60   15761
6 months    ki1119695-PROBIT           BELARUS                        5              0     1042   15761
6 months    ki1119695-PROBIT           BELARUS                        5              1       54   15761
6 months    ki1119695-PROBIT           BELARUS                        6              0     1055   15761
6 months    ki1119695-PROBIT           BELARUS                        6              1       65   15761
6 months    ki1119695-PROBIT           BELARUS                        7              0     1291   15761
6 months    ki1119695-PROBIT           BELARUS                        7              1       74   15761
6 months    ki1119695-PROBIT           BELARUS                        8              0     1414   15761
6 months    ki1119695-PROBIT           BELARUS                        8              1       84   15761
6 months    ki1119695-PROBIT           BELARUS                        9              0     1384   15761
6 months    ki1119695-PROBIT           BELARUS                        9              1       97   15761
6 months    ki1119695-PROBIT           BELARUS                        10             0     1556   15761
6 months    ki1119695-PROBIT           BELARUS                        10             1      112   15761
6 months    ki1119695-PROBIT           BELARUS                        11             0     1489   15761
6 months    ki1119695-PROBIT           BELARUS                        11             1      101   15761
6 months    ki1119695-PROBIT           BELARUS                        12             0     1601   15761
6 months    ki1119695-PROBIT           BELARUS                        12             1      105   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0      665    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1      140    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              0      475    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              1       99    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3              0      559    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3              1      148    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4              0      542    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4              1      116    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5              0      489    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5              1      110    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6              0      550    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6              1      105    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7              0      519    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7              1      121    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8              0      626    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8              1      103    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9              0      663    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9              1      102    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10             0      503    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10             1       97    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11             0      611    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11             1      117    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12             0      702    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12             1      117    8279
6 months    ki1148112-LCNI-5           MALAWI                         1              0       39     839
6 months    ki1148112-LCNI-5           MALAWI                         1              1       16     839
6 months    ki1148112-LCNI-5           MALAWI                         2              0       75     839
6 months    ki1148112-LCNI-5           MALAWI                         2              1       39     839
6 months    ki1148112-LCNI-5           MALAWI                         3              0       63     839
6 months    ki1148112-LCNI-5           MALAWI                         3              1       35     839
6 months    ki1148112-LCNI-5           MALAWI                         4              0       61     839
6 months    ki1148112-LCNI-5           MALAWI                         4              1       49     839
6 months    ki1148112-LCNI-5           MALAWI                         5              0       72     839
6 months    ki1148112-LCNI-5           MALAWI                         5              1       39     839
6 months    ki1148112-LCNI-5           MALAWI                         6              0       62     839
6 months    ki1148112-LCNI-5           MALAWI                         6              1       29     839
6 months    ki1148112-LCNI-5           MALAWI                         7              0       40     839
6 months    ki1148112-LCNI-5           MALAWI                         7              1       32     839
6 months    ki1148112-LCNI-5           MALAWI                         8              0       28     839
6 months    ki1148112-LCNI-5           MALAWI                         8              1       13     839
6 months    ki1148112-LCNI-5           MALAWI                         9              0       18     839
6 months    ki1148112-LCNI-5           MALAWI                         9              1       11     839
6 months    ki1148112-LCNI-5           MALAWI                         10             0       21     839
6 months    ki1148112-LCNI-5           MALAWI                         10             1       14     839
6 months    ki1148112-LCNI-5           MALAWI                         11             0       32     839
6 months    ki1148112-LCNI-5           MALAWI                         11             1       17     839
6 months    ki1148112-LCNI-5           MALAWI                         12             0       19     839
6 months    ki1148112-LCNI-5           MALAWI                         12             1       15     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0     1002   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1      357   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0      899   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1      292   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              0     1096   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              1      326   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4              0      917   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4              1      273   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5              0      867   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5              1      284   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6              0      879   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6              1      283   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7              0      930   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7              1      314   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8              0     1122   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8              1      350   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9              0     1196   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9              1      366   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10             0     1236   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10             1      449   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11             0     1209   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11             1      489   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12             0     1232   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12             1      443   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0       40    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1       13    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              0      134    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              1       31    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              0      324    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              1      106    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4              0      617    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4              1      228    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5              0      437    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5              1      148    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6              0      331    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6              1      103    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7              0      592    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7              1      246    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8              0      402    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8              1      108    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              0      330    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              1      101    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             0      225    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             1       81    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11             0      122    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11             1       35    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12             0       57    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12             1       20    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1        6     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              0        6     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              1       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              1       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4              0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4              1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5              0        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5              1       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6              0        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6              1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7              0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7              1        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8              0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8              1       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9              0       12     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9              1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10             0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10             1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11             0        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11             1        6     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12             0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12             1        9     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0       12     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4              0        9     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5              0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6              0        5     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7              0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8              0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9              0       23     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10             0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10             1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11             0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12             0       12     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12             1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1              0        6     227
24 months   ki0047075b-MAL-ED          INDIA                          1              1       12     227
24 months   ki0047075b-MAL-ED          INDIA                          2              0       15     227
24 months   ki0047075b-MAL-ED          INDIA                          2              1        5     227
24 months   ki0047075b-MAL-ED          INDIA                          3              0       11     227
24 months   ki0047075b-MAL-ED          INDIA                          3              1        8     227
24 months   ki0047075b-MAL-ED          INDIA                          4              0        8     227
24 months   ki0047075b-MAL-ED          INDIA                          4              1        6     227
24 months   ki0047075b-MAL-ED          INDIA                          5              0        4     227
24 months   ki0047075b-MAL-ED          INDIA                          5              1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          6              0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          6              1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          7              0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          7              1       11     227
24 months   ki0047075b-MAL-ED          INDIA                          8              0       11     227
24 months   ki0047075b-MAL-ED          INDIA                          8              1        8     227
24 months   ki0047075b-MAL-ED          INDIA                          9              0       11     227
24 months   ki0047075b-MAL-ED          INDIA                          9              1        8     227
24 months   ki0047075b-MAL-ED          INDIA                          10             0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          10             1       13     227
24 months   ki0047075b-MAL-ED          INDIA                          11             0       15     227
24 months   ki0047075b-MAL-ED          INDIA                          11             1        9     227
24 months   ki0047075b-MAL-ED          INDIA                          12             0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          12             1        7     227
24 months   ki0047075b-MAL-ED          NEPAL                          1              0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              0       10     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              0       11     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              1        8     228
24 months   ki0047075b-MAL-ED          NEPAL                          4              0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          4              1        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          5              0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          5              1        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          6              0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          6              1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          7              0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          7              1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          8              0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          8              1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          9              0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          9              1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          10             0       20     228
24 months   ki0047075b-MAL-ED          NEPAL                          10             1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          11             0       13     228
24 months   ki0047075b-MAL-ED          NEPAL                          11             1        9     228
24 months   ki0047075b-MAL-ED          NEPAL                          12             0       12     228
24 months   ki0047075b-MAL-ED          NEPAL                          12             1        4     228
24 months   ki0047075b-MAL-ED          PERU                           1              0       14     201
24 months   ki0047075b-MAL-ED          PERU                           1              1       15     201
24 months   ki0047075b-MAL-ED          PERU                           2              0       13     201
24 months   ki0047075b-MAL-ED          PERU                           2              1        7     201
24 months   ki0047075b-MAL-ED          PERU                           3              0        8     201
24 months   ki0047075b-MAL-ED          PERU                           3              1        6     201
24 months   ki0047075b-MAL-ED          PERU                           4              0        7     201
24 months   ki0047075b-MAL-ED          PERU                           4              1        5     201
24 months   ki0047075b-MAL-ED          PERU                           5              0       11     201
24 months   ki0047075b-MAL-ED          PERU                           5              1        7     201
24 months   ki0047075b-MAL-ED          PERU                           6              0        8     201
24 months   ki0047075b-MAL-ED          PERU                           6              1        4     201
24 months   ki0047075b-MAL-ED          PERU                           7              0       10     201
24 months   ki0047075b-MAL-ED          PERU                           7              1        4     201
24 months   ki0047075b-MAL-ED          PERU                           8              0        9     201
24 months   ki0047075b-MAL-ED          PERU                           8              1        4     201
24 months   ki0047075b-MAL-ED          PERU                           9              0       16     201
24 months   ki0047075b-MAL-ED          PERU                           9              1        4     201
24 months   ki0047075b-MAL-ED          PERU                           10             0       12     201
24 months   ki0047075b-MAL-ED          PERU                           10             1        2     201
24 months   ki0047075b-MAL-ED          PERU                           11             0       12     201
24 months   ki0047075b-MAL-ED          PERU                           11             1        9     201
24 months   ki0047075b-MAL-ED          PERU                           12             0        7     201
24 months   ki0047075b-MAL-ED          PERU                           12             1        7     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              1       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        6     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              0        9     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        7     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             1       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             1       13     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1       17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1       10     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1       13     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       10     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1       12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1       17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1       14     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1       20     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              0        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              1       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              0        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              1       19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              0        8     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              1       21     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              0       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              1       33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              0        8     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              1       28     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              0       14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              1       19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              0       11     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              1       30     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              0        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              1       20     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             0        5     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             1       14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             0       14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             1       26     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             0        8     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             1       21     372
24 months   ki1000108-IRC              INDIA                          1              0       17     409
24 months   ki1000108-IRC              INDIA                          1              1       19     409
24 months   ki1000108-IRC              INDIA                          2              0       13     409
24 months   ki1000108-IRC              INDIA                          2              1       14     409
24 months   ki1000108-IRC              INDIA                          3              0       14     409
24 months   ki1000108-IRC              INDIA                          3              1       15     409
24 months   ki1000108-IRC              INDIA                          4              0        9     409
24 months   ki1000108-IRC              INDIA                          4              1       13     409
24 months   ki1000108-IRC              INDIA                          5              0        4     409
24 months   ki1000108-IRC              INDIA                          5              1       17     409
24 months   ki1000108-IRC              INDIA                          6              0       29     409
24 months   ki1000108-IRC              INDIA                          6              1        8     409
24 months   ki1000108-IRC              INDIA                          7              0       21     409
24 months   ki1000108-IRC              INDIA                          7              1       15     409
24 months   ki1000108-IRC              INDIA                          8              0       34     409
24 months   ki1000108-IRC              INDIA                          8              1       11     409
24 months   ki1000108-IRC              INDIA                          9              0       13     409
24 months   ki1000108-IRC              INDIA                          9              1       14     409
24 months   ki1000108-IRC              INDIA                          10             0       27     409
24 months   ki1000108-IRC              INDIA                          10             1        9     409
24 months   ki1000108-IRC              INDIA                          11             0       27     409
24 months   ki1000108-IRC              INDIA                          11             1       14     409
24 months   ki1000108-IRC              INDIA                          12             0       31     409
24 months   ki1000108-IRC              INDIA                          12             1       21     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              0       15     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              1       27     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              0       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              1       23     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              0       23     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              1       18     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              0       12     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              1       22     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              0       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              1       21     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              0       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              1       17     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              0       17     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              1       20     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              0       14     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              1       16     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              0       11     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              1        8     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             0       19     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             1       21     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             0       20     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             1       21     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             0       21     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             1       24     429
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0        2     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2              0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2              1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3              0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3              1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4              0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4              1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          5              0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          5              1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6              0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6              1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7              0       47     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7              1       42     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8              0      108     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8              1       95     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9              0      106     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9              1       81     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10             0       11     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10             1        2     499
24 months   ki1113344-GMS-Nepal        NEPAL                          11             0        1     499
24 months   ki1113344-GMS-Nepal        NEPAL                          11             1        3     499
24 months   ki1113344-GMS-Nepal        NEPAL                          12             0        1     499
24 months   ki1113344-GMS-Nepal        NEPAL                          12             1        0     499
24 months   ki1114097-CMIN             BANGLADESH                     1              0        7     242
24 months   ki1114097-CMIN             BANGLADESH                     1              1       19     242
24 months   ki1114097-CMIN             BANGLADESH                     2              0        8     242
24 months   ki1114097-CMIN             BANGLADESH                     2              1       23     242
24 months   ki1114097-CMIN             BANGLADESH                     3              0        8     242
24 months   ki1114097-CMIN             BANGLADESH                     3              1       11     242
24 months   ki1114097-CMIN             BANGLADESH                     4              0        6     242
24 months   ki1114097-CMIN             BANGLADESH                     4              1       12     242
24 months   ki1114097-CMIN             BANGLADESH                     5              0       10     242
24 months   ki1114097-CMIN             BANGLADESH                     5              1        9     242
24 months   ki1114097-CMIN             BANGLADESH                     6              0        6     242
24 months   ki1114097-CMIN             BANGLADESH                     6              1       16     242
24 months   ki1114097-CMIN             BANGLADESH                     7              0        3     242
24 months   ki1114097-CMIN             BANGLADESH                     7              1        9     242
24 months   ki1114097-CMIN             BANGLADESH                     8              0        4     242
24 months   ki1114097-CMIN             BANGLADESH                     8              1        9     242
24 months   ki1114097-CMIN             BANGLADESH                     9              0        5     242
24 months   ki1114097-CMIN             BANGLADESH                     9              1       13     242
24 months   ki1114097-CMIN             BANGLADESH                     10             0        7     242
24 months   ki1114097-CMIN             BANGLADESH                     10             1       12     242
24 months   ki1114097-CMIN             BANGLADESH                     11             0        1     242
24 months   ki1114097-CMIN             BANGLADESH                     11             1        1     242
24 months   ki1114097-CMIN             BANGLADESH                     12             0       12     242
24 months   ki1114097-CMIN             BANGLADESH                     12             1       31     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              0        7     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              0       40     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              1       17     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              0       47     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              1       21     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              0       63     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              1       45     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              0       47     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              1       23     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              0       25     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              1        9     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              0       21     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              1        8     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              0       18     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              1       10     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              0       38     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              1       20     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             0        7     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             1        8     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             0       23     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             1        7     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             1       15     551
24 months   ki1114097-CMIN             PERU                           1              0        7     429
24 months   ki1114097-CMIN             PERU                           1              1        1     429
24 months   ki1114097-CMIN             PERU                           2              0       87     429
24 months   ki1114097-CMIN             PERU                           2              1       47     429
24 months   ki1114097-CMIN             PERU                           3              0       57     429
24 months   ki1114097-CMIN             PERU                           3              1       25     429
24 months   ki1114097-CMIN             PERU                           4              0       14     429
24 months   ki1114097-CMIN             PERU                           4              1       12     429
24 months   ki1114097-CMIN             PERU                           5              0       19     429
24 months   ki1114097-CMIN             PERU                           5              1       12     429
24 months   ki1114097-CMIN             PERU                           6              0       10     429
24 months   ki1114097-CMIN             PERU                           6              1        3     429
24 months   ki1114097-CMIN             PERU                           7              0       14     429
24 months   ki1114097-CMIN             PERU                           7              1        4     429
24 months   ki1114097-CMIN             PERU                           8              0       23     429
24 months   ki1114097-CMIN             PERU                           8              1        8     429
24 months   ki1114097-CMIN             PERU                           9              0       11     429
24 months   ki1114097-CMIN             PERU                           9              1        3     429
24 months   ki1114097-CMIN             PERU                           10             0       10     429
24 months   ki1114097-CMIN             PERU                           10             1        5     429
24 months   ki1114097-CMIN             PERU                           11             0       28     429
24 months   ki1114097-CMIN             PERU                           11             1       14     429
24 months   ki1114097-CMIN             PERU                           12             0       12     429
24 months   ki1114097-CMIN             PERU                           12             1        3     429
24 months   ki1114097-CONTENT          PERU                           1              0        8     164
24 months   ki1114097-CONTENT          PERU                           1              1        0     164
24 months   ki1114097-CONTENT          PERU                           2              0        9     164
24 months   ki1114097-CONTENT          PERU                           2              1        1     164
24 months   ki1114097-CONTENT          PERU                           3              0       19     164
24 months   ki1114097-CONTENT          PERU                           3              1        1     164
24 months   ki1114097-CONTENT          PERU                           4              0        9     164
24 months   ki1114097-CONTENT          PERU                           4              1        4     164
24 months   ki1114097-CONTENT          PERU                           5              0       19     164
24 months   ki1114097-CONTENT          PERU                           5              1        3     164
24 months   ki1114097-CONTENT          PERU                           6              0        8     164
24 months   ki1114097-CONTENT          PERU                           6              1        3     164
24 months   ki1114097-CONTENT          PERU                           7              0       13     164
24 months   ki1114097-CONTENT          PERU                           7              1        0     164
24 months   ki1114097-CONTENT          PERU                           8              0       21     164
24 months   ki1114097-CONTENT          PERU                           8              1        2     164
24 months   ki1114097-CONTENT          PERU                           9              0        8     164
24 months   ki1114097-CONTENT          PERU                           9              1        3     164
24 months   ki1114097-CONTENT          PERU                           10             0        9     164
24 months   ki1114097-CONTENT          PERU                           10             1        3     164
24 months   ki1114097-CONTENT          PERU                           11             0       16     164
24 months   ki1114097-CONTENT          PERU                           11             1        1     164
24 months   ki1114097-CONTENT          PERU                           12             0        4     164
24 months   ki1114097-CONTENT          PERU                           12             1        0     164
24 months   ki1119695-PROBIT           BELARUS                        1              0      252    4035
24 months   ki1119695-PROBIT           BELARUS                        1              1       17    4035
24 months   ki1119695-PROBIT           BELARUS                        2              0      192    4035
24 months   ki1119695-PROBIT           BELARUS                        2              1       19    4035
24 months   ki1119695-PROBIT           BELARUS                        3              0      309    4035
24 months   ki1119695-PROBIT           BELARUS                        3              1       15    4035
24 months   ki1119695-PROBIT           BELARUS                        4              0      309    4035
24 months   ki1119695-PROBIT           BELARUS                        4              1       17    4035
24 months   ki1119695-PROBIT           BELARUS                        5              0      291    4035
24 months   ki1119695-PROBIT           BELARUS                        5              1       16    4035
24 months   ki1119695-PROBIT           BELARUS                        6              0      246    4035
24 months   ki1119695-PROBIT           BELARUS                        6              1       20    4035
24 months   ki1119695-PROBIT           BELARUS                        7              0      350    4035
24 months   ki1119695-PROBIT           BELARUS                        7              1       23    4035
24 months   ki1119695-PROBIT           BELARUS                        8              0      331    4035
24 months   ki1119695-PROBIT           BELARUS                        8              1       22    4035
24 months   ki1119695-PROBIT           BELARUS                        9              0      344    4035
24 months   ki1119695-PROBIT           BELARUS                        9              1       38    4035
24 months   ki1119695-PROBIT           BELARUS                        10             0      340    4035
24 months   ki1119695-PROBIT           BELARUS                        10             1       52    4035
24 months   ki1119695-PROBIT           BELARUS                        11             0      341    4035
24 months   ki1119695-PROBIT           BELARUS                        11             1       48    4035
24 months   ki1119695-PROBIT           BELARUS                        12             0      386    4035
24 months   ki1119695-PROBIT           BELARUS                        12             1       57    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0       20     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1       35     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              0       19     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              1       44     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              0       20     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              1       38     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              0       20     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              1       24     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              0       19     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              1       32     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              0       20     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              1       29     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              0        4     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              1       28     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              0        9     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              1       22     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              0        1     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              1        2     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             0        5     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             1        1     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             0       10     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             1       15     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             0       11     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             1       28     456
24 months   ki1148112-LCNI-5           MALAWI                         1              0       20     579
24 months   ki1148112-LCNI-5           MALAWI                         1              1       21     579
24 months   ki1148112-LCNI-5           MALAWI                         2              0       57     579
24 months   ki1148112-LCNI-5           MALAWI                         2              1       31     579
24 months   ki1148112-LCNI-5           MALAWI                         3              0       38     579
24 months   ki1148112-LCNI-5           MALAWI                         3              1       32     579
24 months   ki1148112-LCNI-5           MALAWI                         4              0       38     579
24 months   ki1148112-LCNI-5           MALAWI                         4              1       41     579
24 months   ki1148112-LCNI-5           MALAWI                         5              0       34     579
24 months   ki1148112-LCNI-5           MALAWI                         5              1       30     579
24 months   ki1148112-LCNI-5           MALAWI                         6              0       30     579
24 months   ki1148112-LCNI-5           MALAWI                         6              1       34     579
24 months   ki1148112-LCNI-5           MALAWI                         7              0       27     579
24 months   ki1148112-LCNI-5           MALAWI                         7              1       14     579
24 months   ki1148112-LCNI-5           MALAWI                         8              0       20     579
24 months   ki1148112-LCNI-5           MALAWI                         8              1        7     579
24 months   ki1148112-LCNI-5           MALAWI                         9              0       12     579
24 months   ki1148112-LCNI-5           MALAWI                         9              1        8     579
24 months   ki1148112-LCNI-5           MALAWI                         10             0       17     579
24 months   ki1148112-LCNI-5           MALAWI                         10             1        8     579
24 months   ki1148112-LCNI-5           MALAWI                         11             0       20     579
24 months   ki1148112-LCNI-5           MALAWI                         11             1       16     579
24 months   ki1148112-LCNI-5           MALAWI                         12             0       10     579
24 months   ki1148112-LCNI-5           MALAWI                         12             1       14     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0      314    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1      389    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0      296    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1      315    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              0      376    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              1      354    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              0      296    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              1      243    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              0      210    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              1      188    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              0      281    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              1      285    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              0      367    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              1      277    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              0      355    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              1      294    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              0      385    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              1      350    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             0      463    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             1      416    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             0      472    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             1      498    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             0      581    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             1      627    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0       29    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1       18    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              0      191    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              1      135    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              0      235    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              1      166    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              0      455    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              1      348    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              0      349    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              1      210    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              0      255    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              1      168    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              0      455    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              1      328    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              0      311    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              1      161    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              0      281    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              1      164    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             0      186    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             1       90    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             0       91    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             1       55    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             0       50    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             1       21    4752


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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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




# Results Detail

## Results Plots
![](/tmp/01fd3dcd-c27d-47fb-aefa-23afec6ef951/ea5f33eb-d628-419b-8a32-9d4af53a22b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/01fd3dcd-c27d-47fb-aefa-23afec6ef951/ea5f33eb-d628-419b-8a32-9d4af53a22b4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/01fd3dcd-c27d-47fb-aefa-23afec6ef951/ea5f33eb-d628-419b-8a32-9d4af53a22b4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/01fd3dcd-c27d-47fb-aefa-23afec6ef951/ea5f33eb-d628-419b-8a32-9d4af53a22b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1287202    0.1108156   0.1466249
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1486486    0.1269856   0.1703117
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1192982    0.1004816   0.1381149
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1102284    0.0908849   0.1295719
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1290000    0.1082237   0.1497763
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1139576    0.0954462   0.1324690
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1028912    0.0855263   0.1202560
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0742251    0.0595512   0.0888991
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0632140    0.0500509   0.0763771
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0815739    0.0649540   0.0981938
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0837743    0.0676487   0.0998998
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0988048    0.0822950   0.1153145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3619502    0.3401238   0.3837766
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3101023    0.2850990   0.3351056
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2941805    0.2705802   0.3177807
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2749267    0.2499835   0.2998698
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2986472    0.2681570   0.3291375
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2779456    0.2473758   0.3085155
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2946593    0.2664352   0.3228834
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.3130435    0.2870085   0.3390784
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2945903    0.2741450   0.3150355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.3400848    0.3173098   0.3628598
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.3668203    0.3442300   0.3894105
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.3699552    0.3482745   0.3916358
6 months    ki1000108-IRC              INDIA                          1                    NA                0.3055556    0.1548966   0.4562145
6 months    ki1000108-IRC              INDIA                          2                    NA                0.4074074    0.2218437   0.5929711
6 months    ki1000108-IRC              INDIA                          3                    NA                0.3448276    0.1716219   0.5180332
6 months    ki1000108-IRC              INDIA                          4                    NA                0.2727273    0.0863968   0.4590577
6 months    ki1000108-IRC              INDIA                          5                    NA                0.3500000    0.1407054   0.5592946
6 months    ki1000108-IRC              INDIA                          6                    NA                0.1351351    0.0248442   0.2454260
6 months    ki1000108-IRC              INDIA                          7                    NA                0.3055556    0.1548966   0.4562145
6 months    ki1000108-IRC              INDIA                          8                    NA                0.1333333    0.0338910   0.2327757
6 months    ki1000108-IRC              INDIA                          9                    NA                0.2592593    0.0937582   0.4247603
6 months    ki1000108-IRC              INDIA                          10                   NA                0.1388889    0.0257806   0.2519972
6 months    ki1000108-IRC              INDIA                          11                   NA                0.1707317    0.0554143   0.2860491
6 months    ki1000108-IRC              INDIA                          12                   NA                0.2745098    0.1518812   0.3971384
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2941176    0.1847392   0.4034961
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2716049    0.1654211   0.3777888
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.2375000    0.1158949   0.3591051
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2597403    0.1603971   0.3590834
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.3552632    0.2609405   0.4495859
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.2745098    0.2390370   0.3099826
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.4347826    0.3351577   0.5344075
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.3355263    0.2446426   0.4264100
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.2048193    0.1397831   0.2698554
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.2364865    0.1736429   0.2993301
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2560000    0.1906230   0.3213770
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2868217    0.2090982   0.3645453
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3000000    0.1728614   0.4271386
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2800000    0.1554301   0.4045699
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.2800000    0.1554301   0.4045699
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2272727    0.1033322   0.3512132
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2000000    0.0759254   0.3240746
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2820513    0.1406897   0.4234128
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4000000    0.2567310   0.5432690
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.1842105    0.0608412   0.3075799
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2333333    0.0818434   0.3848233
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2884615    0.1652094   0.4117136
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.3673469    0.2322406   0.5024533
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1400000    0.0437322   0.2362678
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0603015    0.0272199   0.0933831
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0875912    0.0402412   0.1349412
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0728477    0.0313857   0.1143097
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0942029    0.0454542   0.1429516
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0812500    0.0389047   0.1235953
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1258741    0.0714937   0.1802545
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1310345    0.0760974   0.1859715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0977011    0.0535740   0.1418283
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1313131    0.0842579   0.1783684
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0918367    0.0513962   0.1322773
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1336898    0.0849010   0.1824787
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0646766    0.0306662   0.0986870
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0753176    0.0478114   0.1028238
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0841220    0.0620302   0.1062138
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0655296    0.0414100   0.0896493
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0560748    0.0326970   0.0794525
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0492701    0.0280345   0.0705057
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0580357    0.0356442   0.0804272
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0542125    0.0332748   0.0751501
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0560748    0.0380980   0.0740515
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0654963    0.0461688   0.0848238
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0671463    0.0462308   0.0880618
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0635220    0.0438040   0.0832400
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0615475    0.0401300   0.0829650
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1739130    0.1477279   0.2000982
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1724739    0.1415659   0.2033819
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2093352    0.1793448   0.2393256
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1762918    0.1471736   0.2054100
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1836394    0.1526306   0.2146482
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1603053    0.1322065   0.1884042
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1890625    0.1587249   0.2194001
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1412894    0.1160029   0.1665759
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1333333    0.1092432   0.1574235
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1616667    0.1322077   0.1911256
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1607143    0.1340340   0.1873946
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1428571    0.1188903   0.1668239
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.2909091    0.1708057   0.4110125
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.3421053    0.2549662   0.4292443
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                0.3571429    0.2622197   0.4520660
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                0.4454545    0.3525192   0.5383899
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                0.3513514    0.2624883   0.4402144
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                0.3186813    0.2228870   0.4144757
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                0.4444444    0.3295991   0.5592898
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                0.3170732    0.1745512   0.4595952
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                0.3793103    0.2026079   0.5560128
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                0.4000000    0.2376028   0.5623972
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                0.3469388    0.2135828   0.4802947
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                0.4411765    0.2741785   0.6081744
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2626932    0.2374593   0.2879270
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2451721    0.2199130   0.2704313
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2292546    0.2050526   0.2534566
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2294118    0.2035580   0.2552655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2467420    0.2196020   0.2738819
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2435456    0.2171756   0.2699157
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2524116    0.2269473   0.2778759
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.2377717    0.2147829   0.2607606
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2343150    0.2107771   0.2578528
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.2664688    0.2437987   0.2891390
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2879859    0.2649746   0.3109971
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2644776    0.2428107   0.2861445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2452830    0.1919202   0.2986458
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.1878788    0.1274618   0.2482958
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2465116    0.2022798   0.2907435
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.2698225    0.2344339   0.3052111
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.2529915    0.2090939   0.2968890
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.2373272    0.1944252   0.2802292
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.2935561    0.2588328   0.3282794
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.2117647    0.1706525   0.2528769
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.2343387    0.1897305   0.2789470
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.2647059    0.2152920   0.3141198
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.2229299    0.1579290   0.2879308
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.2597403    0.1936222   0.3258583
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6428571    0.4977768   0.7879374
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.6388889    0.4818032   0.7959746
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4390244    0.2869419   0.5911069
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6470588    0.4862394   0.8078782
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6176471    0.4541094   0.7811847
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5666667    0.3891377   0.7441956
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.5405405    0.3797755   0.7013056
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5333333    0.3546035   0.7120631
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4210526    0.1987903   0.6433149
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5250000    0.3700644   0.6799356
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5121951    0.3590145   0.6653757
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.5333333    0.3874011   0.6792656
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0631970    0.0022165   0.1241775
24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.0900474    0.0120817   0.1680131
24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.0462963   -0.0036304   0.0962230
24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0521472    0.0006358   0.1036586
24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0521173    0.0368817   0.0673529
24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0751880   -0.0091749   0.1595508
24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0616622    0.0148963   0.1084281
24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0623229    0.0186810   0.1059649
24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0994764    0.0567347   0.1422181
24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.1326531    0.0717387   0.1935675
24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.1233933    0.0509390   0.1958476
24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.1286682    0.0435677   0.2137687
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5121951    0.3590609   0.6653294
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.3522727    0.2523837   0.4521617
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4571429    0.3403428   0.5739429
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.5189873    0.4087150   0.6292597
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4687500    0.3463860   0.5911140
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5312500    0.4088860   0.6536140
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.3414634    0.1961875   0.4867393
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.2592593    0.0938188   0.4246998
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.4000000    0.1851111   0.6148889
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.3200000    0.1369866   0.5030134
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4444444    0.2819851   0.6069038
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.5833333    0.3859227   0.7807440
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5533428    0.5123979   0.5942878
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5155483    0.4717960   0.5593006
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4849315    0.4463441   0.5235190
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.4508349    0.4018456   0.4998241
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.4723618    0.4188541   0.5258695
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.5035336    0.4570184   0.5500487
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.4301242    0.3873900   0.4728584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4530046    0.4136694   0.4923398
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4761905    0.4379037   0.5144773
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4732651    0.4370938   0.5094363
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.5134021    0.4796208   0.5471833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.5190397    0.4848647   0.5532147
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3829787    0.3191995   0.4467579
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.4141104    0.3541481   0.4740728
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.4139651    0.3631434   0.4647868
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.4333748    0.3947142   0.4720355
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.3756708    0.3273425   0.4239992
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.3971631    0.3437206   0.4506056
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.4189017    0.3786171   0.4591862
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.3411017    0.2919401   0.3902633
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.3685393    0.3157324   0.4213462
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.3260870    0.2671994   0.3849745
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.3767123    0.2811788   0.4722458
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.2957746    0.2295605   0.3619887


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1036581   0.0985732   0.1087430
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3231530   0.3154984   0.3308077
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660829   0.1580659   0.1740998
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2525357   0.2384780   0.2665934
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4421416   0.4016536   0.4826297
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907322   0.4775988   0.5038655
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3922559   0.3752678   0.4092440


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1548196   0.9441066   1.4125610
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9268026   0.7510259   1.1437195
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8563409   0.6845361   1.0712652
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0021734   0.8100680   1.2398361
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8853122   0.7148568   1.0964121
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.7993394   0.6423171   0.9947477
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.5766391   0.4528181   0.7343183
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.4910962   0.3823070   0.6308424
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.6337302   0.4951837   0.8110403
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.6508242   0.5132450   0.8252826
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.7675932   0.6176032   0.9540095
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8567541   0.7709215   0.9521431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8127650   0.7361268   0.8973821
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.7595705   0.6815759   0.8464903
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8251059   0.7325773   0.9293214
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7679112   0.6786541   0.8689076
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8140880   0.7294587   0.9085357
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8648800   0.7797751   0.9592733
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8138972   0.7447011   0.8895229
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9395900   0.8600901   1.0264383
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0134551   0.9339407   1.0997394
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0221162   0.9411024   1.1101041
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 1.3333333   0.6814288   2.6088974
6 months    ki1000108-IRC              INDIA                          3                    1                 1.1285266   0.5582521   2.2813569
6 months    ki1000108-IRC              INDIA                          4                    1                 0.8925620   0.3843467   2.0727817
6 months    ki1000108-IRC              INDIA                          5                    1                 1.1454545   0.5276900   2.4864336
6 months    ki1000108-IRC              INDIA                          6                    1                 0.4422604   0.1704376   1.1476006
6 months    ki1000108-IRC              INDIA                          7                    1                 1.0000000   0.4979279   2.0083230
6 months    ki1000108-IRC              INDIA                          8                    1                 0.4363636   0.1784677   1.0669336
6 months    ki1000108-IRC              INDIA                          9                    1                 0.8484848   0.3787374   1.9008596
6 months    ki1000108-IRC              INDIA                          10                   1                 0.4545455   0.1754380   1.1776903
6 months    ki1000108-IRC              INDIA                          11                   1                 0.5587583   0.2421272   1.2894496
6 months    ki1000108-IRC              INDIA                          12                   1                 0.8983957   0.4618662   1.7475080
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9234568   0.5467594   1.5596850
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.8075000   0.5211961   1.2510766
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.8831169   0.5041353   1.5469962
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.2078947   0.7235317   2.0165111
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.9333333   0.6125520   1.4221015
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.4782609   1.0209983   2.1403123
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1407895   0.7697536   1.6906717
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.6963855   0.3761307   1.2893199
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.8040541   0.4578493   1.4120431
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8704000   0.5832739   1.2988686
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.9751938   0.5996183   1.5860139
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9333333   0.5048827   1.7253731
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.9333333   0.5048827   1.7253731
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.7575758   0.3797353   1.5113714
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.6666667   0.3144991   1.4131819
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.9401709   0.4877056   1.8124076
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.3333333   0.7655228   2.3223056
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.6140351   0.2779685   1.3564095
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.7777778   0.3582111   1.6887760
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.9615385   0.5267535   1.7551972
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.2244898   0.6986468   2.1461135
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.4666667   0.2080715   1.0466490
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.4525547   0.6724244   3.1377732
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.2080574   0.5479899   2.6631924
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.5621981   0.7348662   3.3209619
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.3473958   0.6322177   2.8715988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 2.0874126   1.0383523   4.1963514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 2.1729885   1.0894123   4.3343360
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.6202107   0.7960866   3.2974841
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 2.1776094   1.1308385   4.1933332
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.5229592   0.7536558   3.0775384
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 2.2170232   1.1471340   4.2847581
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0725539   0.5016346   2.2932467
6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        2                    1                 1.1168966   0.7180464   1.7372944
6 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.8700439   0.5545593   1.3650054
6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.7445108   0.4500433   1.2316509
6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.6541641   0.3710443   1.1533143
6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.7705465   0.4579646   1.2964800
6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.7197846   0.4420083   1.1721272
6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.7445108   0.4774095   1.1610500
6 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.8696013   0.5437642   1.3906881
6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.8915085   0.5991097   1.3266141
6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.8433886   0.5818895   1.2224046
6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.8171726   0.5622615   1.1876520
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9917247   0.7847665   1.2532619
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2036775   0.9777986   1.4817361
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0136778   0.8106556   1.2675454
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0559265   0.8421335   1.3239953
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9217557   0.7315817   1.1613653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0871094   0.8723897   1.3546776
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8124143   0.6429908   1.0264796
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7666667   0.6059902   0.9699460
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9295833   0.7338904   1.1774581
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9241071   0.7385650   1.1562612
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8214286   0.6556464   1.0291292
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.1759868   0.7239743   1.9102130
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                 1.2276786   0.7513487   2.0059855
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                 1.5312500   0.9641665   2.4318690
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                 1.2077703   0.7442409   1.9599957
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                 1.0954670   0.6573672   1.8255367
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                 1.5277778   0.9387188   2.4864795
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                 1.0899390   0.5920285   2.0066044
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                 1.3038793   0.6996849   2.4298097
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                 1.3750000   0.7706045   2.4534310
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                 1.1926020   0.6784450   2.0964110
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                 1.5165441   0.8661604   2.6552887
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9333023   0.8119800   1.0727520
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8727086   0.7568564   1.0062943
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8733070   0.7549450   1.0102260
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9392782   0.8140751   1.0837374
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9271106   0.8005322   1.0737033
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.9608609   0.8383792   1.1012364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9051311   0.7926374   1.0335902
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8919722   0.7792098   1.0210527
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0143730   0.8898719   1.1562928
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0962823   0.9710020   1.2377265
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0067929   0.8857700   1.1443512
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.7659674   0.5248217   1.1179150
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.0050089   0.7556453   1.3366628
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.1000455   0.8543198   1.4164487
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.0314267   0.7853434   1.3546189
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 0.9675647   0.7220616   1.2965395
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.1968056   0.9341796   1.5332636
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 0.8633484   0.6422385   1.1605821
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 0.9553810   0.7295033   1.2511979
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 1.0791855   0.8114415   1.4352747
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 0.9088682   0.6388625   1.2929877
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 1.0589411   0.7590834   1.4772503
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9938272   0.7118156   1.3875678
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.6829268   0.4516687   1.0325911
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0065359   0.7195002   1.4080811
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.9607843   0.6784734   1.3605639
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.8814815   0.5991400   1.2968750
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8408408   0.5788573   1.2213949
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.8296296   0.5538836   1.2426533
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6549708   0.3688901   1.1629120
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8166667   0.5632447   1.1841114
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.7967480   0.5477807   1.1588713
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.8296296   0.5818977   1.1828287
24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        2                    1                 1.4248676   0.3834115   5.2952181
24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.7325708   0.2773416   1.9350142
24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.8251534   0.1996148   3.4109592
24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.8246791   0.3128202   2.1740783
24 months   ki1119695-PROBIT           BELARUS                        6                    1                 1.1897391   0.2616087   5.4106723
24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.9757136   0.2780929   3.4233773
24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.9861690   0.2727103   3.5661619
24 months   ki1119695-PROBIT           BELARUS                        9                    1                 1.5740684   0.5583915   4.4371936
24 months   ki1119695-PROBIT           BELARUS                        10                   1                 2.0990396   0.6641680   6.6338144
24 months   ki1119695-PROBIT           BELARUS                        11                   1                 1.9525178   0.9553760   3.9903931
24 months   ki1119695-PROBIT           BELARUS                        12                   1                 2.0359846   0.6565999   6.3131795
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.6877706   0.4555013   1.0384787
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 0.8925170   0.6023074   1.3225581
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.0132610   0.7021463   1.4622277
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.9151786   0.6153666   1.3610615
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.0372024   0.7111408   1.5127649
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 0.6666667   0.3963488   1.1213467
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.5061728   0.2501809   1.0241029
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.7809524   0.4222939   1.4442233
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 0.6247619   0.3276747   1.1912042
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 0.8677249   0.5411217   1.3914549
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.1388889   0.7250497   1.7889365
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9316978   0.8350669   1.0395104
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8763672   0.7873166   0.9754900
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8147479   0.7134088   0.9304821
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8536513   0.7443830   0.9789591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9099848   0.8095029   1.0229394
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7773196   0.6867140   0.8798798
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8186690   0.7315726   0.9161346
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8605704   0.7711337   0.9603802
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.8552837   0.7716996   0.9479209
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9278192   0.8380513   1.0272025
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9380075   0.8515184   1.0332814
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 1.0812883   0.8717563   1.3411828
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.0809088   0.8838035   1.3219725
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.1315899   0.9416671   1.3598178
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 0.9809183   0.7946257   1.2108855
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.0370370   0.8352840   1.2875212
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.0937988   0.8952954   1.3363140
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 0.8906544   0.7144214   1.1103605
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 0.9622971   0.7772809   1.1913528
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 0.8514493   0.6687645   1.0840375
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 0.9836377   0.7235080   1.3372945
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 0.7723005   0.5887900   1.0130064


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0250621   -0.0419148   -0.0082094
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0387972   -0.0592872   -0.0183071
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0598553   -0.2028108    0.0831002
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0096865   -0.1145821    0.0952091
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0318436   -0.1525110    0.0888238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0367907    0.0044521    0.0691292
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0126312   -0.0377001    0.0124377
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0078302   -0.0326615    0.0170011
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0773865   -0.0392330    0.1940060
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0113101   -0.0353706    0.0127503
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0072527   -0.0460399    0.0605452
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0880786   -0.2264399    0.0502827
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0220570   -0.0370199    0.0811339
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0700535   -0.2175943    0.0774873
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0626107   -0.1017359   -0.0234854
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0092772   -0.0546661    0.0732205


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2417770   -0.4151278   -0.0896613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1200582   -0.1853810   -0.0583352
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2436111   -0.9850568    0.2208946
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0340557   -0.4766617    0.2758861
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1187500   -0.6726134    0.2517090
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3789251   -0.0561745    0.6347819
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.2014987   -0.6850686    0.1432994
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0471462   -0.2078466    0.0921734
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2101206   -0.1793339    0.4709646
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0449916   -0.1452695    0.0465061
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0287195   -0.2067455    0.2182395
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1587635   -0.4378866    0.0661761
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.2587209   -0.8596739    0.7045210
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1584413   -0.5455177    0.1316914
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1275862   -0.2103747   -0.0504604
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0236508   -0.1535935    0.1736623
