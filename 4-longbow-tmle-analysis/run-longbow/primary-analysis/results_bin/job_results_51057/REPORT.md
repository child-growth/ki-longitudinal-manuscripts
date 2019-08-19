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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        brthmon    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0       16     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        4     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                0       19     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                1        6     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                0       18     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                1        7     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                0       21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                0       16     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                0        7     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                1        4     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                0       15     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                0       21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                0       19     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                1        2     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10               0       20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10               1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11               0       13     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11               1        2     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12               0       25     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12               1        2     257
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0       10     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2                0       17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2                1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3                0       17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3                1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4                0        9     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4                1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5                0       15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5                1        3     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6                0        6     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6                1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7                0       13     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7                1        3     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8                0       16     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8                1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9                0       25     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9                1        4     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10               0       17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10               1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11               0       18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11               1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12               0        7     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12               1        3     191
Birth       ki0047075b-MAL-ED          INDIA                          1                0       15     206
Birth       ki0047075b-MAL-ED          INDIA                          1                1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          2                0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          2                1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          3                0       19     206
Birth       ki0047075b-MAL-ED          INDIA                          3                1        2     206
Birth       ki0047075b-MAL-ED          INDIA                          4                0       12     206
Birth       ki0047075b-MAL-ED          INDIA                          4                1        2     206
Birth       ki0047075b-MAL-ED          INDIA                          5                0        6     206
Birth       ki0047075b-MAL-ED          INDIA                          5                1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          6                0       17     206
Birth       ki0047075b-MAL-ED          INDIA                          6                1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          7                0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          7                1        5     206
Birth       ki0047075b-MAL-ED          INDIA                          8                0       13     206
Birth       ki0047075b-MAL-ED          INDIA                          8                1        4     206
Birth       ki0047075b-MAL-ED          INDIA                          9                0       14     206
Birth       ki0047075b-MAL-ED          INDIA                          9                1        5     206
Birth       ki0047075b-MAL-ED          INDIA                          10               0       18     206
Birth       ki0047075b-MAL-ED          INDIA                          10               1        5     206
Birth       ki0047075b-MAL-ED          INDIA                          11               0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          11               1        4     206
Birth       ki0047075b-MAL-ED          INDIA                          12               0       11     206
Birth       ki0047075b-MAL-ED          INDIA                          12               1        3     206
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       13     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        4     173
Birth       ki0047075b-MAL-ED          NEPAL                          2                0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          2                1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          3                0       11     173
Birth       ki0047075b-MAL-ED          NEPAL                          3                1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          4                0       16     173
Birth       ki0047075b-MAL-ED          NEPAL                          4                1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          5                0       18     173
Birth       ki0047075b-MAL-ED          NEPAL                          5                1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          6                0       10     173
Birth       ki0047075b-MAL-ED          NEPAL                          6                1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          7                0       15     173
Birth       ki0047075b-MAL-ED          NEPAL                          7                1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          8                0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          8                1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          9                0       10     173
Birth       ki0047075b-MAL-ED          NEPAL                          9                1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          10               0       14     173
Birth       ki0047075b-MAL-ED          NEPAL                          10               1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          11               0       15     173
Birth       ki0047075b-MAL-ED          NEPAL                          11               1        3     173
Birth       ki0047075b-MAL-ED          NEPAL                          12               0        9     173
Birth       ki0047075b-MAL-ED          NEPAL                          12               1        1     173
Birth       ki0047075b-MAL-ED          PERU                           1                0       33     287
Birth       ki0047075b-MAL-ED          PERU                           1                1        6     287
Birth       ki0047075b-MAL-ED          PERU                           2                0       18     287
Birth       ki0047075b-MAL-ED          PERU                           2                1        3     287
Birth       ki0047075b-MAL-ED          PERU                           3                0       20     287
Birth       ki0047075b-MAL-ED          PERU                           3                1        3     287
Birth       ki0047075b-MAL-ED          PERU                           4                0       18     287
Birth       ki0047075b-MAL-ED          PERU                           4                1        3     287
Birth       ki0047075b-MAL-ED          PERU                           5                0       25     287
Birth       ki0047075b-MAL-ED          PERU                           5                1        2     287
Birth       ki0047075b-MAL-ED          PERU                           6                0       14     287
Birth       ki0047075b-MAL-ED          PERU                           6                1        2     287
Birth       ki0047075b-MAL-ED          PERU                           7                0       21     287
Birth       ki0047075b-MAL-ED          PERU                           7                1        2     287
Birth       ki0047075b-MAL-ED          PERU                           8                0       19     287
Birth       ki0047075b-MAL-ED          PERU                           8                1        0     287
Birth       ki0047075b-MAL-ED          PERU                           9                0       22     287
Birth       ki0047075b-MAL-ED          PERU                           9                1        0     287
Birth       ki0047075b-MAL-ED          PERU                           10               0       22     287
Birth       ki0047075b-MAL-ED          PERU                           10               1        3     287
Birth       ki0047075b-MAL-ED          PERU                           11               0       24     287
Birth       ki0047075b-MAL-ED          PERU                           11               1        7     287
Birth       ki0047075b-MAL-ED          PERU                           12               0       17     287
Birth       ki0047075b-MAL-ED          PERU                           12               1        3     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       26     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       23     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       16     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       15     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        3     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       20     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        8     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       19     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        4     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       21     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        7     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       36     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        3     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0        7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        3     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0        7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        2     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       12     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       11     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        5     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0        8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       12     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       14     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        2     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                0        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4                0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4                1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5                0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5                1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6                0        8      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6                1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7                0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8                0        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8                1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9                0        5      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9                1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10               0        8      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11               0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12               0        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12               1        2      90
Birth       ki1000108-IRC              INDIA                          1                0       28     388
Birth       ki1000108-IRC              INDIA                          1                1        7     388
Birth       ki1000108-IRC              INDIA                          2                0       24     388
Birth       ki1000108-IRC              INDIA                          2                1        2     388
Birth       ki1000108-IRC              INDIA                          3                0       22     388
Birth       ki1000108-IRC              INDIA                          3                1        4     388
Birth       ki1000108-IRC              INDIA                          4                0       19     388
Birth       ki1000108-IRC              INDIA                          4                1        2     388
Birth       ki1000108-IRC              INDIA                          5                0       21     388
Birth       ki1000108-IRC              INDIA                          5                1        1     388
Birth       ki1000108-IRC              INDIA                          6                0       30     388
Birth       ki1000108-IRC              INDIA                          6                1        4     388
Birth       ki1000108-IRC              INDIA                          7                0       31     388
Birth       ki1000108-IRC              INDIA                          7                1        4     388
Birth       ki1000108-IRC              INDIA                          8                0       35     388
Birth       ki1000108-IRC              INDIA                          8                1        3     388
Birth       ki1000108-IRC              INDIA                          9                0       23     388
Birth       ki1000108-IRC              INDIA                          9                1        2     388
Birth       ki1000108-IRC              INDIA                          10               0       34     388
Birth       ki1000108-IRC              INDIA                          10               1        4     388
Birth       ki1000108-IRC              INDIA                          11               0       33     388
Birth       ki1000108-IRC              INDIA                          11               1        6     388
Birth       ki1000108-IRC              INDIA                          12               0       43     388
Birth       ki1000108-IRC              INDIA                          12               1        6     388
Birth       ki1000109-EE               PAKISTAN                       1                0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                1        0       2
Birth       ki1000109-EE               PAKISTAN                       2                0        0       2
Birth       ki1000109-EE               PAKISTAN                       2                1        0       2
Birth       ki1000109-EE               PAKISTAN                       3                0        0       2
Birth       ki1000109-EE               PAKISTAN                       3                1        0       2
Birth       ki1000109-EE               PAKISTAN                       4                0        0       2
Birth       ki1000109-EE               PAKISTAN                       4                1        0       2
Birth       ki1000109-EE               PAKISTAN                       5                0        0       2
Birth       ki1000109-EE               PAKISTAN                       5                1        0       2
Birth       ki1000109-EE               PAKISTAN                       6                0        0       2
Birth       ki1000109-EE               PAKISTAN                       6                1        0       2
Birth       ki1000109-EE               PAKISTAN                       7                0        0       2
Birth       ki1000109-EE               PAKISTAN                       7                1        0       2
Birth       ki1000109-EE               PAKISTAN                       8                0        0       2
Birth       ki1000109-EE               PAKISTAN                       8                1        0       2
Birth       ki1000109-EE               PAKISTAN                       9                0        0       2
Birth       ki1000109-EE               PAKISTAN                       9                1        0       2
Birth       ki1000109-EE               PAKISTAN                       10               0        0       2
Birth       ki1000109-EE               PAKISTAN                       10               1        0       2
Birth       ki1000109-EE               PAKISTAN                       11               0        0       2
Birth       ki1000109-EE               PAKISTAN                       11               1        0       2
Birth       ki1000109-EE               PAKISTAN                       12               0        1       2
Birth       ki1000109-EE               PAKISTAN                       12               1        1       2
Birth       ki1000109-ResPak           PAKISTAN                       1                0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       1                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       2                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       2                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       3                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       3                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       4                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       4                1        2       7
Birth       ki1000109-ResPak           PAKISTAN                       5                0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       5                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       6                0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       6                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       7                0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       7                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       8                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       8                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       9                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       9                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       10               0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       10               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       11               0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       11               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       12               0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       12               1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0        9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        5     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                0       11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                0        8     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                0       12     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                0       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                0       12     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                1        5     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                0        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                0       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                0       19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10               0       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10               1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11               0       15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11               1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12               0       10     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12               1        7     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        1      28
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
Birth       ki1101329-Keneba           GAMBIA                         1                0      151    1541
Birth       ki1101329-Keneba           GAMBIA                         1                1       12    1541
Birth       ki1101329-Keneba           GAMBIA                         2                0      142    1541
Birth       ki1101329-Keneba           GAMBIA                         2                1        5    1541
Birth       ki1101329-Keneba           GAMBIA                         3                0      161    1541
Birth       ki1101329-Keneba           GAMBIA                         3                1        4    1541
Birth       ki1101329-Keneba           GAMBIA                         4                0      103    1541
Birth       ki1101329-Keneba           GAMBIA                         4                1        2    1541
Birth       ki1101329-Keneba           GAMBIA                         5                0      105    1541
Birth       ki1101329-Keneba           GAMBIA                         5                1        3    1541
Birth       ki1101329-Keneba           GAMBIA                         6                0       85    1541
Birth       ki1101329-Keneba           GAMBIA                         6                1        4    1541
Birth       ki1101329-Keneba           GAMBIA                         7                0       71    1541
Birth       ki1101329-Keneba           GAMBIA                         7                1        4    1541
Birth       ki1101329-Keneba           GAMBIA                         8                0      119    1541
Birth       ki1101329-Keneba           GAMBIA                         8                1        6    1541
Birth       ki1101329-Keneba           GAMBIA                         9                0      116    1541
Birth       ki1101329-Keneba           GAMBIA                         9                1        8    1541
Birth       ki1101329-Keneba           GAMBIA                         10               0      164    1541
Birth       ki1101329-Keneba           GAMBIA                         10               1       15    1541
Birth       ki1101329-Keneba           GAMBIA                         11               0      113    1541
Birth       ki1101329-Keneba           GAMBIA                         11               1       11    1541
Birth       ki1101329-Keneba           GAMBIA                         12               0      129    1541
Birth       ki1101329-Keneba           GAMBIA                         12               1        8    1541
Birth       ki1114097-CMIN             BANGLADESH                     1                0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1                1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     2                0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     2                1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     3                0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     3                1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     4                0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     4                1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     5                0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     5                1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     6                0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     6                1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     7                0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     7                1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     8                0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     8                1        3      13
Birth       ki1114097-CMIN             BANGLADESH                     9                0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     9                1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     10               0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     10               1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     11               0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     11               1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     12               0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     12               1        0      13
Birth       ki1114097-CMIN             BRAZIL                         1                0       13     115
Birth       ki1114097-CMIN             BRAZIL                         1                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         2                0        7     115
Birth       ki1114097-CMIN             BRAZIL                         2                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         3                0       12     115
Birth       ki1114097-CMIN             BRAZIL                         3                1        1     115
Birth       ki1114097-CMIN             BRAZIL                         4                0        9     115
Birth       ki1114097-CMIN             BRAZIL                         4                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         5                0        5     115
Birth       ki1114097-CMIN             BRAZIL                         5                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         6                0        6     115
Birth       ki1114097-CMIN             BRAZIL                         6                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         7                0        4     115
Birth       ki1114097-CMIN             BRAZIL                         7                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         8                0       12     115
Birth       ki1114097-CMIN             BRAZIL                         8                1        1     115
Birth       ki1114097-CMIN             BRAZIL                         9                0        8     115
Birth       ki1114097-CMIN             BRAZIL                         9                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         10               0       14     115
Birth       ki1114097-CMIN             BRAZIL                         10               1        2     115
Birth       ki1114097-CMIN             BRAZIL                         11               0       11     115
Birth       ki1114097-CMIN             BRAZIL                         11               1        0     115
Birth       ki1114097-CMIN             BRAZIL                         12               0        9     115
Birth       ki1114097-CMIN             BRAZIL                         12               1        1     115
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
Birth       ki1119695-PROBIT           BELARUS                        1                0      826   13884
Birth       ki1119695-PROBIT           BELARUS                        1                1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        2                0      801   13884
Birth       ki1119695-PROBIT           BELARUS                        2                1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        3                0      943   13884
Birth       ki1119695-PROBIT           BELARUS                        3                1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        4                0      970   13884
Birth       ki1119695-PROBIT           BELARUS                        4                1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        5                0      949   13884
Birth       ki1119695-PROBIT           BELARUS                        5                1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        6                0     1017   13884
Birth       ki1119695-PROBIT           BELARUS                        6                1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        7                0     1292   13884
Birth       ki1119695-PROBIT           BELARUS                        7                1        2   13884
Birth       ki1119695-PROBIT           BELARUS                        8                0     1308   13884
Birth       ki1119695-PROBIT           BELARUS                        8                1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        9                0     1319   13884
Birth       ki1119695-PROBIT           BELARUS                        9                1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        10               0     1494   13884
Birth       ki1119695-PROBIT           BELARUS                        10               1        6   13884
Birth       ki1119695-PROBIT           BELARUS                        11               0     1385   13884
Birth       ki1119695-PROBIT           BELARUS                        11               1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        12               0     1547   13884
Birth       ki1119695-PROBIT           BELARUS                        12               1        2   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1167   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      172   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                0      891   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                1      158   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                0     1024   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                1      135   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                0      880   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                1      109   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                0      886   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                1      128   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                0     1005   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                1      130   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                0     1053   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                1      120   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                0     1160   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                1       93   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                0     1213   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                1       82   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10               0      956   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10               1       83   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11               0     1069   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11               1      110   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12               0     1094   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12               1      112   13830
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     1205   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      678   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0     1076   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1      487   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                0     1333   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                1      538   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                0      959   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                1      381   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                0      675   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                1      285   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                0      720   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                1      275   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                0      768   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                1      310   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                0     1044   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                1      474   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                0     1317   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                1      553   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10               0     1403   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10               1      726   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11               0     1366   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11               1      814   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12               0     1409   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12               1      817   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                0       97     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                1       38     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                0      110     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                1       65     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4                0      114     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4                1       45     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5                0       89     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5                1       32     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6                0       59     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6                1       31     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7                0       57     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7                1       16     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8                0       21     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8                1        7     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9                0       22     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9                1       11     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10               0        6     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10               1        2     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11               0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11               1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12               0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12               1        0     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       14     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        4     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       14     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       19     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        4     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                1        4     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                0        8     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                0       11     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                1        7     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10               0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10               1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11               0       15     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12               0       24     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12               1        2     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       14     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       22     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4                0       11     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5                0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5                1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6                0        8     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7                0       15     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7                1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8                0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9                0       29     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9                1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10               0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11               0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11               1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12               0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12               1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          1                1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          2                0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          2                1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          3                0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          3                1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          4                0        9     236
6 months    ki0047075b-MAL-ED          INDIA                          4                1        6     236
6 months    ki0047075b-MAL-ED          INDIA                          5                0        7     236
6 months    ki0047075b-MAL-ED          INDIA                          5                1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          6                0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          6                1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          7                0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          7                1        6     236
6 months    ki0047075b-MAL-ED          INDIA                          8                0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          8                1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          9                0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          9                1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          10               0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          10               1        7     236
6 months    ki0047075b-MAL-ED          INDIA                          11               0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          11               1        6     236
6 months    ki0047075b-MAL-ED          INDIA                          12               0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          12               1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                0       15     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          4                0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          4                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          5                0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          5                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          6                0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          6                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          7                0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          7                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          8                0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          8                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          9                0       14     236
6 months    ki0047075b-MAL-ED          NEPAL                          9                1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          10               0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          10               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          11               0       23     236
6 months    ki0047075b-MAL-ED          NEPAL                          11               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          12               0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          12               1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1                0       28     273
6 months    ki0047075b-MAL-ED          PERU                           1                1       10     273
6 months    ki0047075b-MAL-ED          PERU                           2                0       15     273
6 months    ki0047075b-MAL-ED          PERU                           2                1        4     273
6 months    ki0047075b-MAL-ED          PERU                           3                0       15     273
6 months    ki0047075b-MAL-ED          PERU                           3                1        7     273
6 months    ki0047075b-MAL-ED          PERU                           4                0       16     273
6 months    ki0047075b-MAL-ED          PERU                           4                1        4     273
6 months    ki0047075b-MAL-ED          PERU                           5                0       24     273
6 months    ki0047075b-MAL-ED          PERU                           5                1        3     273
6 months    ki0047075b-MAL-ED          PERU                           6                0       12     273
6 months    ki0047075b-MAL-ED          PERU                           6                1        3     273
6 months    ki0047075b-MAL-ED          PERU                           7                0       19     273
6 months    ki0047075b-MAL-ED          PERU                           7                1        3     273
6 months    ki0047075b-MAL-ED          PERU                           8                0       13     273
6 months    ki0047075b-MAL-ED          PERU                           8                1        3     273
6 months    ki0047075b-MAL-ED          PERU                           9                0       18     273
6 months    ki0047075b-MAL-ED          PERU                           9                1        5     273
6 months    ki0047075b-MAL-ED          PERU                           10               0       16     273
6 months    ki0047075b-MAL-ED          PERU                           10               1        4     273
6 months    ki0047075b-MAL-ED          PERU                           11               0       22     273
6 months    ki0047075b-MAL-ED          PERU                           11               1       10     273
6 months    ki0047075b-MAL-ED          PERU                           12               0       15     273
6 months    ki0047075b-MAL-ED          PERU                           12               1        4     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       29     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       21     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       11     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       16     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        7     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       16     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        4     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               1       11     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       17     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        7     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       17     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       17     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       16     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        7     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1       10     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       24     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       10     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1        5     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       25     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        6     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                0       36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                0       23     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                1       12     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                0       21     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                1       16     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                0       19     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                1       20     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                0       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                1        6     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                0       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                1        6     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               0       21     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               0       35     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               1        7     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               0       18     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               1        7     369
6 months    ki1000108-IRC              INDIA                          1                0       27     407
6 months    ki1000108-IRC              INDIA                          1                1       11     407
6 months    ki1000108-IRC              INDIA                          2                0       15     407
6 months    ki1000108-IRC              INDIA                          2                1       13     407
6 months    ki1000108-IRC              INDIA                          3                0       19     407
6 months    ki1000108-IRC              INDIA                          3                1        8     407
6 months    ki1000108-IRC              INDIA                          4                0       15     407
6 months    ki1000108-IRC              INDIA                          4                1        6     407
6 months    ki1000108-IRC              INDIA                          5                0       14     407
6 months    ki1000108-IRC              INDIA                          5                1        7     407
6 months    ki1000108-IRC              INDIA                          6                0       32     407
6 months    ki1000108-IRC              INDIA                          6                1        5     407
6 months    ki1000108-IRC              INDIA                          7                0       25     407
6 months    ki1000108-IRC              INDIA                          7                1       11     407
6 months    ki1000108-IRC              INDIA                          8                0       38     407
6 months    ki1000108-IRC              INDIA                          8                1        6     407
6 months    ki1000108-IRC              INDIA                          9                0       20     407
6 months    ki1000108-IRC              INDIA                          9                1        7     407
6 months    ki1000108-IRC              INDIA                          10               0       32     407
6 months    ki1000108-IRC              INDIA                          10               1        5     407
6 months    ki1000108-IRC              INDIA                          11               0       33     407
6 months    ki1000108-IRC              INDIA                          11               1        7     407
6 months    ki1000108-IRC              INDIA                          12               0       37     407
6 months    ki1000108-IRC              INDIA                          12               1       14     407
6 months    ki1000109-EE               PAKISTAN                       1                0       39     372
6 months    ki1000109-EE               PAKISTAN                       1                1       51     372
6 months    ki1000109-EE               PAKISTAN                       2                0       36     372
6 months    ki1000109-EE               PAKISTAN                       2                1       31     372
6 months    ki1000109-EE               PAKISTAN                       3                0       24     372
6 months    ki1000109-EE               PAKISTAN                       3                1       18     372
6 months    ki1000109-EE               PAKISTAN                       4                0        5     372
6 months    ki1000109-EE               PAKISTAN                       4                1       11     372
6 months    ki1000109-EE               PAKISTAN                       5                0        0     372
6 months    ki1000109-EE               PAKISTAN                       5                1        0     372
6 months    ki1000109-EE               PAKISTAN                       6                0        0     372
6 months    ki1000109-EE               PAKISTAN                       6                1        0     372
6 months    ki1000109-EE               PAKISTAN                       7                0        0     372
6 months    ki1000109-EE               PAKISTAN                       7                1        0     372
6 months    ki1000109-EE               PAKISTAN                       8                0        0     372
6 months    ki1000109-EE               PAKISTAN                       8                1        0     372
6 months    ki1000109-EE               PAKISTAN                       9                0        0     372
6 months    ki1000109-EE               PAKISTAN                       9                1        0     372
6 months    ki1000109-EE               PAKISTAN                       10               0        3     372
6 months    ki1000109-EE               PAKISTAN                       10               1        1     372
6 months    ki1000109-EE               PAKISTAN                       11               0       28     372
6 months    ki1000109-EE               PAKISTAN                       11               1       42     372
6 months    ki1000109-EE               PAKISTAN                       12               0       44     372
6 months    ki1000109-EE               PAKISTAN                       12               1       39     372
6 months    ki1000109-ResPak           PAKISTAN                       1                0        4     235
6 months    ki1000109-ResPak           PAKISTAN                       1                1        5     235
6 months    ki1000109-ResPak           PAKISTAN                       2                0        9     235
6 months    ki1000109-ResPak           PAKISTAN                       2                1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       3                0        8     235
6 months    ki1000109-ResPak           PAKISTAN                       3                1       12     235
6 months    ki1000109-ResPak           PAKISTAN                       4                0       13     235
6 months    ki1000109-ResPak           PAKISTAN                       4                1        8     235
6 months    ki1000109-ResPak           PAKISTAN                       5                0       30     235
6 months    ki1000109-ResPak           PAKISTAN                       5                1       15     235
6 months    ki1000109-ResPak           PAKISTAN                       6                0       27     235
6 months    ki1000109-ResPak           PAKISTAN                       6                1       15     235
6 months    ki1000109-ResPak           PAKISTAN                       7                0       16     235
6 months    ki1000109-ResPak           PAKISTAN                       7                1       10     235
6 months    ki1000109-ResPak           PAKISTAN                       8                0       23     235
6 months    ki1000109-ResPak           PAKISTAN                       8                1        8     235
6 months    ki1000109-ResPak           PAKISTAN                       9                0       15     235
6 months    ki1000109-ResPak           PAKISTAN                       9                1        5     235
6 months    ki1000109-ResPak           PAKISTAN                       10               0        4     235
6 months    ki1000109-ResPak           PAKISTAN                       10               1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       11               0        1     235
6 months    ki1000109-ResPak           PAKISTAN                       11               1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12               0        2     235
6 months    ki1000109-ResPak           PAKISTAN                       12               1        3     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0       58    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       29    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                0       62    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                1       21    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                0       52    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                1       22    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                0       52    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                1       14    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                0       61    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                1       26    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                0       64    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                1       32    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                0       71    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                1       51    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                0      111    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                1       51    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                0      143    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                1       31    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10               0      108    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10               1       41    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11               0       86    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11               1       32    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12               0       88    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12               1       30    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                1       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                0        7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                1       13     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                0        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                1        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                0        8     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                1        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                0       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                1       11     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                0       24     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                1        9     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                0       43     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                1       20     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                0       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                1       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10               0       25     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10               1       22     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11               0       15     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11               1       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12               0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12               1       15     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       37     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       15     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                0       35     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                1       14     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                0       38     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                1       12     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                0       32     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                1       10     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                0       33     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                1        9     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                0       27     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                1       16     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                0       28     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                1       11     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                0       28     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                1        7     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                0       29     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                1       13     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10               0       32     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10               1       10     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11               0       33     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11               1       17     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12               0       41     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12               1       10     537
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      126    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       16    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      137    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1       12    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      128    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1       12    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      139    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1       14    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      130    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1       19    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      126    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1       17    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      175    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1       20    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      171    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1       28    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      170    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1       14    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      184    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1       24    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      182    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1       13    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      164    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        8    2029
6 months    ki1101329-Keneba           GAMBIA                         1                0      183    2089
6 months    ki1101329-Keneba           GAMBIA                         1                1       27    2089
6 months    ki1101329-Keneba           GAMBIA                         2                0      166    2089
6 months    ki1101329-Keneba           GAMBIA                         2                1       21    2089
6 months    ki1101329-Keneba           GAMBIA                         3                0      190    2089
6 months    ki1101329-Keneba           GAMBIA                         3                1       31    2089
6 months    ki1101329-Keneba           GAMBIA                         4                0      128    2089
6 months    ki1101329-Keneba           GAMBIA                         4                1       15    2089
6 months    ki1101329-Keneba           GAMBIA                         5                0      123    2089
6 months    ki1101329-Keneba           GAMBIA                         5                1       20    2089
6 months    ki1101329-Keneba           GAMBIA                         6                0       96    2089
6 months    ki1101329-Keneba           GAMBIA                         6                1       22    2089
6 months    ki1101329-Keneba           GAMBIA                         7                0       73    2089
6 months    ki1101329-Keneba           GAMBIA                         7                1       19    2089
6 months    ki1101329-Keneba           GAMBIA                         8                0      149    2089
6 months    ki1101329-Keneba           GAMBIA                         8                1       25    2089
6 months    ki1101329-Keneba           GAMBIA                         9                0      146    2089
6 months    ki1101329-Keneba           GAMBIA                         9                1       28    2089
6 months    ki1101329-Keneba           GAMBIA                         10               0      208    2089
6 months    ki1101329-Keneba           GAMBIA                         10               1       40    2089
6 months    ki1101329-Keneba           GAMBIA                         11               0      163    2089
6 months    ki1101329-Keneba           GAMBIA                         11               1       24    2089
6 months    ki1101329-Keneba           GAMBIA                         12               0      169    2089
6 months    ki1101329-Keneba           GAMBIA                         12               1       23    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1       12     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                0       23     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                1        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                0       17     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                1       10     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                1       10     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                1       10     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                0       12     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                1       10     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                0       15     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                1        6     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                0       12     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                1        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                0       11     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                1        5     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10               0       25     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10               1        4     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11               0       16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11               1        8     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12               0       20     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12               1       11     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4                1        1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6                0       94     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6                1       27     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7                0      168     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7                1       50     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8                0      182     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8                1       41     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12               1        0     563
6 months    ki1114097-CMIN             BANGLADESH                     1                0       13     243
6 months    ki1114097-CMIN             BANGLADESH                     1                1       13     243
6 months    ki1114097-CMIN             BANGLADESH                     2                0       19     243
6 months    ki1114097-CMIN             BANGLADESH                     2                1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     3                0       13     243
6 months    ki1114097-CMIN             BANGLADESH                     3                1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     4                0       16     243
6 months    ki1114097-CMIN             BANGLADESH                     4                1        6     243
6 months    ki1114097-CMIN             BANGLADESH                     5                0       14     243
6 months    ki1114097-CMIN             BANGLADESH                     5                1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     6                0        5     243
6 months    ki1114097-CMIN             BANGLADESH                     6                1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     7                0       10     243
6 months    ki1114097-CMIN             BANGLADESH                     7                1        5     243
6 months    ki1114097-CMIN             BANGLADESH                     8                0        7     243
6 months    ki1114097-CMIN             BANGLADESH                     8                1       10     243
6 months    ki1114097-CMIN             BANGLADESH                     9                0       10     243
6 months    ki1114097-CMIN             BANGLADESH                     9                1       10     243
6 months    ki1114097-CMIN             BANGLADESH                     10               0       16     243
6 months    ki1114097-CMIN             BANGLADESH                     10               1        8     243
6 months    ki1114097-CMIN             BANGLADESH                     11               0       15     243
6 months    ki1114097-CMIN             BANGLADESH                     11               1       12     243
6 months    ki1114097-CMIN             BANGLADESH                     12               0       12     243
6 months    ki1114097-CMIN             BANGLADESH                     12               1       15     243
6 months    ki1114097-CMIN             BRAZIL                         1                0       10     108
6 months    ki1114097-CMIN             BRAZIL                         1                1        1     108
6 months    ki1114097-CMIN             BRAZIL                         2                0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3                0       10     108
6 months    ki1114097-CMIN             BRAZIL                         3                1        2     108
6 months    ki1114097-CMIN             BRAZIL                         4                0        9     108
6 months    ki1114097-CMIN             BRAZIL                         4                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5                0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6                0        6     108
6 months    ki1114097-CMIN             BRAZIL                         6                1        1     108
6 months    ki1114097-CMIN             BRAZIL                         7                0        3     108
6 months    ki1114097-CMIN             BRAZIL                         7                1        1     108
6 months    ki1114097-CMIN             BRAZIL                         8                0       12     108
6 months    ki1114097-CMIN             BRAZIL                         8                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9                0        5     108
6 months    ki1114097-CMIN             BRAZIL                         9                1        2     108
6 months    ki1114097-CMIN             BRAZIL                         10               0       13     108
6 months    ki1114097-CMIN             BRAZIL                         10               1        2     108
6 months    ki1114097-CMIN             BRAZIL                         11               0       11     108
6 months    ki1114097-CMIN             BRAZIL                         11               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         12               0        8     108
6 months    ki1114097-CMIN             BRAZIL                         12               1        1     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0       85     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1       17     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                0       54     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                1        3     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                0       58     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                1       10     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                0       45     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                1        1     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                0       52     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                1        4     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                0       38     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                1        0     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                0       35     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                1        3     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                0       50     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                1        5     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                0      102     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                1       14     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               0       95     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               1        5     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               0       70     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               1        4     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               0       88     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               1       10     848
6 months    ki1114097-CMIN             PERU                           1                0       41     637
6 months    ki1114097-CMIN             PERU                           1                1        1     637
6 months    ki1114097-CMIN             PERU                           2                0       52     637
6 months    ki1114097-CMIN             PERU                           2                1        8     637
6 months    ki1114097-CMIN             PERU                           3                0       66     637
6 months    ki1114097-CMIN             PERU                           3                1        1     637
6 months    ki1114097-CMIN             PERU                           4                0       54     637
6 months    ki1114097-CMIN             PERU                           4                1        7     637
6 months    ki1114097-CMIN             PERU                           5                0       52     637
6 months    ki1114097-CMIN             PERU                           5                1        2     637
6 months    ki1114097-CMIN             PERU                           6                0       49     637
6 months    ki1114097-CMIN             PERU                           6                1        5     637
6 months    ki1114097-CMIN             PERU                           7                0       51     637
6 months    ki1114097-CMIN             PERU                           7                1        1     637
6 months    ki1114097-CMIN             PERU                           8                0       70     637
6 months    ki1114097-CMIN             PERU                           8                1        3     637
6 months    ki1114097-CMIN             PERU                           9                0       45     637
6 months    ki1114097-CMIN             PERU                           9                1        5     637
6 months    ki1114097-CMIN             PERU                           10               0       45     637
6 months    ki1114097-CMIN             PERU                           10               1        5     637
6 months    ki1114097-CMIN             PERU                           11               0       31     637
6 months    ki1114097-CMIN             PERU                           11               1        3     637
6 months    ki1114097-CMIN             PERU                           12               0       38     637
6 months    ki1114097-CMIN             PERU                           12               1        2     637
6 months    ki1114097-CONTENT          PERU                           1                0       10     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    ki1114097-CONTENT          PERU                           2                0       16     215
6 months    ki1114097-CONTENT          PERU                           2                1        2     215
6 months    ki1114097-CONTENT          PERU                           3                0       27     215
6 months    ki1114097-CONTENT          PERU                           3                1        3     215
6 months    ki1114097-CONTENT          PERU                           4                0       15     215
6 months    ki1114097-CONTENT          PERU                           4                1        4     215
6 months    ki1114097-CONTENT          PERU                           5                0       12     215
6 months    ki1114097-CONTENT          PERU                           5                1        2     215
6 months    ki1114097-CONTENT          PERU                           6                0       11     215
6 months    ki1114097-CONTENT          PERU                           6                1        2     215
6 months    ki1114097-CONTENT          PERU                           7                0       27     215
6 months    ki1114097-CONTENT          PERU                           7                1        1     215
6 months    ki1114097-CONTENT          PERU                           8                0       21     215
6 months    ki1114097-CONTENT          PERU                           8                1        2     215
6 months    ki1114097-CONTENT          PERU                           9                0       24     215
6 months    ki1114097-CONTENT          PERU                           9                1        2     215
6 months    ki1114097-CONTENT          PERU                           10               0       14     215
6 months    ki1114097-CONTENT          PERU                           10               1        0     215
6 months    ki1114097-CONTENT          PERU                           11               0        8     215
6 months    ki1114097-CONTENT          PERU                           11               1        1     215
6 months    ki1114097-CONTENT          PERU                           12               0       11     215
6 months    ki1114097-CONTENT          PERU                           12               1        0     215
6 months    ki1119695-PROBIT           BELARUS                        1                0      887   15761
6 months    ki1119695-PROBIT           BELARUS                        1                1       89   15761
6 months    ki1119695-PROBIT           BELARUS                        2                0      858   15761
6 months    ki1119695-PROBIT           BELARUS                        2                1       75   15761
6 months    ki1119695-PROBIT           BELARUS                        3                0     1009   15761
6 months    ki1119695-PROBIT           BELARUS                        3                1       57   15761
6 months    ki1119695-PROBIT           BELARUS                        4                0     1026   15761
6 months    ki1119695-PROBIT           BELARUS                        4                1       71   15761
6 months    ki1119695-PROBIT           BELARUS                        5                0     1064   15761
6 months    ki1119695-PROBIT           BELARUS                        5                1       47   15761
6 months    ki1119695-PROBIT           BELARUS                        6                0     1045   15761
6 months    ki1119695-PROBIT           BELARUS                        6                1       70   15761
6 months    ki1119695-PROBIT           BELARUS                        7                0     1381   15761
6 months    ki1119695-PROBIT           BELARUS                        7                1       82   15761
6 months    ki1119695-PROBIT           BELARUS                        8                0     1394   15761
6 months    ki1119695-PROBIT           BELARUS                        8                1       79   15761
6 months    ki1119695-PROBIT           BELARUS                        9                0     1411   15761
6 months    ki1119695-PROBIT           BELARUS                        9                1       98   15761
6 months    ki1119695-PROBIT           BELARUS                        10               0     1575   15761
6 months    ki1119695-PROBIT           BELARUS                        10               1      114   15761
6 months    ki1119695-PROBIT           BELARUS                        11               0     1483   15761
6 months    ki1119695-PROBIT           BELARUS                        11               1      107   15761
6 months    ki1119695-PROBIT           BELARUS                        12               0     1640   15761
6 months    ki1119695-PROBIT           BELARUS                        12               1       99   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      653    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      141    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0      485    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1      102    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                0      579    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                1      158    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                0      522    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                1      114    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                0      505    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                1      103    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                0      540    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                1      105    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                0      518    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                1      120    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                0      641    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                1      105    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                0      652    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                1       97    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               0      500    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               1      100    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               0      644    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               1      121    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               0      677    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               1      113    8295
6 months    ki1148112-LCNI-5           MALAWI                         1                0       38     839
6 months    ki1148112-LCNI-5           MALAWI                         1                1       30     839
6 months    ki1148112-LCNI-5           MALAWI                         2                0       33     839
6 months    ki1148112-LCNI-5           MALAWI                         2                1       13     839
6 months    ki1148112-LCNI-5           MALAWI                         3                0       15     839
6 months    ki1148112-LCNI-5           MALAWI                         3                1       11     839
6 months    ki1148112-LCNI-5           MALAWI                         4                0       23     839
6 months    ki1148112-LCNI-5           MALAWI                         4                1       16     839
6 months    ki1148112-LCNI-5           MALAWI                         5                0       28     839
6 months    ki1148112-LCNI-5           MALAWI                         5                1       16     839
6 months    ki1148112-LCNI-5           MALAWI                         6                0       19     839
6 months    ki1148112-LCNI-5           MALAWI                         6                1       15     839
6 months    ki1148112-LCNI-5           MALAWI                         7                0       41     839
6 months    ki1148112-LCNI-5           MALAWI                         7                1       20     839
6 months    ki1148112-LCNI-5           MALAWI                         8                0       66     839
6 months    ki1148112-LCNI-5           MALAWI                         8                1       27     839
6 months    ki1148112-LCNI-5           MALAWI                         9                0       59     839
6 months    ki1148112-LCNI-5           MALAWI                         9                1       34     839
6 months    ki1148112-LCNI-5           MALAWI                         10               0       74     839
6 months    ki1148112-LCNI-5           MALAWI                         10               1       61     839
6 months    ki1148112-LCNI-5           MALAWI                         11               0       70     839
6 months    ki1148112-LCNI-5           MALAWI                         11               1       35     839
6 months    ki1148112-LCNI-5           MALAWI                         12               0       64     839
6 months    ki1148112-LCNI-5           MALAWI                         12               1       31     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     1003   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      337   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0      868   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1      291   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                0     1081   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                1      330   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                0      904   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                1      274   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                0      834   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                1      279   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                0      928   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                1      278   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                0      944   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                1      315   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                0     1148   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                1      372   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                0     1251   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                1      369   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               0     1218   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               1      447   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               0     1248   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               1      511   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               0     1158   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               1      423   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                0      407    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                1      137    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                0      718    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                1      244    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                0      531    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                1      202    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                0      453    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                1      147    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                0      334    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                1      105    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                0      367    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                1      151    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                0      397    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                1      124    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                0      300    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                1       86    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10               0      104    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10               1       24    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11               0        0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11               1        0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12               0        0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12               1        0    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        6     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0        6     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1       12     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       12     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        6     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1       10     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6                0        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7                0        9     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       26     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       17     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                0        6     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1       13     227
24 months   ki0047075b-MAL-ED          INDIA                          2                0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          2                1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          3                0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          3                1        7     227
24 months   ki0047075b-MAL-ED          INDIA                          4                0        7     227
24 months   ki0047075b-MAL-ED          INDIA                          4                1        7     227
24 months   ki0047075b-MAL-ED          INDIA                          5                0        5     227
24 months   ki0047075b-MAL-ED          INDIA                          5                1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          6                0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          6                1        5     227
24 months   ki0047075b-MAL-ED          INDIA                          7                0       11     227
24 months   ki0047075b-MAL-ED          INDIA                          7                1       12     227
24 months   ki0047075b-MAL-ED          INDIA                          8                0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          8                1        9     227
24 months   ki0047075b-MAL-ED          INDIA                          9                0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          9                1        6     227
24 months   ki0047075b-MAL-ED          INDIA                          10               0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          10               1       13     227
24 months   ki0047075b-MAL-ED          INDIA                          11               0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          11               1       10     227
24 months   ki0047075b-MAL-ED          INDIA                          12               0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          12               1        6     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                0       12     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                0        8     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                1        9     228
24 months   ki0047075b-MAL-ED          NEPAL                          4                0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          4                1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          5                0       13     228
24 months   ki0047075b-MAL-ED          NEPAL                          5                1        6     228
24 months   ki0047075b-MAL-ED          NEPAL                          6                0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          6                1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          7                0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          7                1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          8                0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          8                1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          9                0       13     228
24 months   ki0047075b-MAL-ED          NEPAL                          9                1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          10               0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          10               1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          11               0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          11               1        9     228
24 months   ki0047075b-MAL-ED          NEPAL                          12               0       13     228
24 months   ki0047075b-MAL-ED          NEPAL                          12               1        3     228
24 months   ki0047075b-MAL-ED          PERU                           1                0       15     201
24 months   ki0047075b-MAL-ED          PERU                           1                1       15     201
24 months   ki0047075b-MAL-ED          PERU                           2                0       11     201
24 months   ki0047075b-MAL-ED          PERU                           2                1        6     201
24 months   ki0047075b-MAL-ED          PERU                           3                0        8     201
24 months   ki0047075b-MAL-ED          PERU                           3                1        7     201
24 months   ki0047075b-MAL-ED          PERU                           4                0        7     201
24 months   ki0047075b-MAL-ED          PERU                           4                1        4     201
24 months   ki0047075b-MAL-ED          PERU                           5                0       11     201
24 months   ki0047075b-MAL-ED          PERU                           5                1        8     201
24 months   ki0047075b-MAL-ED          PERU                           6                0        8     201
24 months   ki0047075b-MAL-ED          PERU                           6                1        3     201
24 months   ki0047075b-MAL-ED          PERU                           7                0       11     201
24 months   ki0047075b-MAL-ED          PERU                           7                1        4     201
24 months   ki0047075b-MAL-ED          PERU                           8                0        8     201
24 months   ki0047075b-MAL-ED          PERU                           8                1        4     201
24 months   ki0047075b-MAL-ED          PERU                           9                0       17     201
24 months   ki0047075b-MAL-ED          PERU                           9                1        4     201
24 months   ki0047075b-MAL-ED          PERU                           10               0       11     201
24 months   ki0047075b-MAL-ED          PERU                           10               1        3     201
24 months   ki0047075b-MAL-ED          PERU                           11               0       13     201
24 months   ki0047075b-MAL-ED          PERU                           11               1        8     201
24 months   ki0047075b-MAL-ED          PERU                           12               0        7     201
24 months   ki0047075b-MAL-ED          PERU                           12               1        8     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       21     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        4     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0        9     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        7     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        7     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        7     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1       13     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1       19     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1       13     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1       12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1       12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1       16     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1       19     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1       29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0        8     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1       28     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       10     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1       27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       11     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1       28     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0        5     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1       14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1       20     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1       31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1       21     372
24 months   ki1000108-IRC              INDIA                          1                0       18     409
24 months   ki1000108-IRC              INDIA                          1                1       20     409
24 months   ki1000108-IRC              INDIA                          2                0       12     409
24 months   ki1000108-IRC              INDIA                          2                1       16     409
24 months   ki1000108-IRC              INDIA                          3                0       15     409
24 months   ki1000108-IRC              INDIA                          3                1       12     409
24 months   ki1000108-IRC              INDIA                          4                0        8     409
24 months   ki1000108-IRC              INDIA                          4                1       13     409
24 months   ki1000108-IRC              INDIA                          5                0        5     409
24 months   ki1000108-IRC              INDIA                          5                1       17     409
24 months   ki1000108-IRC              INDIA                          6                0       29     409
24 months   ki1000108-IRC              INDIA                          6                1        8     409
24 months   ki1000108-IRC              INDIA                          7                0       21     409
24 months   ki1000108-IRC              INDIA                          7                1       15     409
24 months   ki1000108-IRC              INDIA                          8                0       33     409
24 months   ki1000108-IRC              INDIA                          8                1       11     409
24 months   ki1000108-IRC              INDIA                          9                0       13     409
24 months   ki1000108-IRC              INDIA                          9                1       14     409
24 months   ki1000108-IRC              INDIA                          10               0       28     409
24 months   ki1000108-IRC              INDIA                          10               1        9     409
24 months   ki1000108-IRC              INDIA                          11               0       26     409
24 months   ki1000108-IRC              INDIA                          11               1       14     409
24 months   ki1000108-IRC              INDIA                          12               0       31     409
24 months   ki1000108-IRC              INDIA                          12               1       21     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       14     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       29     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1       23     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       22     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1       17     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       12     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1       22     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       12     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1       23     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       16     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1       17     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       16     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1       18     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       14     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       14     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1       12     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       15     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1       18     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       21     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1       22     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       22     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1       24     429
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
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        1       6
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
24 months   ki1101329-Keneba           GAMBIA                         1                0      115    1725
24 months   ki1101329-Keneba           GAMBIA                         1                1       56    1725
24 months   ki1101329-Keneba           GAMBIA                         2                0      117    1725
24 months   ki1101329-Keneba           GAMBIA                         2                1       50    1725
24 months   ki1101329-Keneba           GAMBIA                         3                0      121    1725
24 months   ki1101329-Keneba           GAMBIA                         3                1       49    1725
24 months   ki1101329-Keneba           GAMBIA                         4                0       75    1725
24 months   ki1101329-Keneba           GAMBIA                         4                1       39    1725
24 months   ki1101329-Keneba           GAMBIA                         5                0       76    1725
24 months   ki1101329-Keneba           GAMBIA                         5                1       46    1725
24 months   ki1101329-Keneba           GAMBIA                         6                0       61    1725
24 months   ki1101329-Keneba           GAMBIA                         6                1       31    1725
24 months   ki1101329-Keneba           GAMBIA                         7                0       46    1725
24 months   ki1101329-Keneba           GAMBIA                         7                1       35    1725
24 months   ki1101329-Keneba           GAMBIA                         8                0      114    1725
24 months   ki1101329-Keneba           GAMBIA                         8                1       44    1725
24 months   ki1101329-Keneba           GAMBIA                         9                0      109    1725
24 months   ki1101329-Keneba           GAMBIA                         9                1       50    1725
24 months   ki1101329-Keneba           GAMBIA                         10               0      122    1725
24 months   ki1101329-Keneba           GAMBIA                         10               1       78    1725
24 months   ki1101329-Keneba           GAMBIA                         11               0       95    1725
24 months   ki1101329-Keneba           GAMBIA                         11               1       46    1725
24 months   ki1101329-Keneba           GAMBIA                         12               0       97    1725
24 months   ki1101329-Keneba           GAMBIA                         12               1       53    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6                0       49     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6                1       42     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      110     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       96     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      117     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       85     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9                0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9                1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10               0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0     499
24 months   ki1114097-CMIN             BANGLADESH                     1                0        8     242
24 months   ki1114097-CMIN             BANGLADESH                     1                1       18     242
24 months   ki1114097-CMIN             BANGLADESH                     2                0        8     242
24 months   ki1114097-CMIN             BANGLADESH                     2                1       16     242
24 months   ki1114097-CMIN             BANGLADESH                     3                0        9     242
24 months   ki1114097-CMIN             BANGLADESH                     3                1        9     242
24 months   ki1114097-CMIN             BANGLADESH                     4                0        7     242
24 months   ki1114097-CMIN             BANGLADESH                     4                1       15     242
24 months   ki1114097-CMIN             BANGLADESH                     5                0        5     242
24 months   ki1114097-CMIN             BANGLADESH                     5                1       11     242
24 months   ki1114097-CMIN             BANGLADESH                     6                0        2     242
24 months   ki1114097-CMIN             BANGLADESH                     6                1        6     242
24 months   ki1114097-CMIN             BANGLADESH                     7                0        7     242
24 months   ki1114097-CMIN             BANGLADESH                     7                1        8     242
24 months   ki1114097-CMIN             BANGLADESH                     8                0        4     242
24 months   ki1114097-CMIN             BANGLADESH                     8                1       14     242
24 months   ki1114097-CMIN             BANGLADESH                     9                0        8     242
24 months   ki1114097-CMIN             BANGLADESH                     9                1       12     242
24 months   ki1114097-CMIN             BANGLADESH                     10               0        6     242
24 months   ki1114097-CMIN             BANGLADESH                     10               1       18     242
24 months   ki1114097-CMIN             BANGLADESH                     11               0        8     242
24 months   ki1114097-CMIN             BANGLADESH                     11               1       17     242
24 months   ki1114097-CMIN             BANGLADESH                     12               0        5     242
24 months   ki1114097-CMIN             BANGLADESH                     12               1       21     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       29     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1       19     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0       26     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1       15     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0       38     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1       16     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0       29     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1       22     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0       29     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1       16     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       25     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1       12     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0       33     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1       16     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0       40     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1       25     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0       40     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1       17     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0       30     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1       13     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0       17     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1       12     551
24 months   ki1114097-CMIN             PERU                           1                0       10     429
24 months   ki1114097-CMIN             PERU                           1                1        3     429
24 months   ki1114097-CMIN             PERU                           2                0       28     429
24 months   ki1114097-CMIN             PERU                           2                1       11     429
24 months   ki1114097-CMIN             PERU                           3                0       33     429
24 months   ki1114097-CMIN             PERU                           3                1       18     429
24 months   ki1114097-CMIN             PERU                           4                0       29     429
24 months   ki1114097-CMIN             PERU                           4                1       18     429
24 months   ki1114097-CMIN             PERU                           5                0       18     429
24 months   ki1114097-CMIN             PERU                           5                1       15     429
24 months   ki1114097-CMIN             PERU                           6                0       27     429
24 months   ki1114097-CMIN             PERU                           6                1       13     429
24 months   ki1114097-CMIN             PERU                           7                0       31     429
24 months   ki1114097-CMIN             PERU                           7                1       10     429
24 months   ki1114097-CMIN             PERU                           8                0       25     429
24 months   ki1114097-CMIN             PERU                           8                1        9     429
24 months   ki1114097-CMIN             PERU                           9                0       26     429
24 months   ki1114097-CMIN             PERU                           9                1       13     429
24 months   ki1114097-CMIN             PERU                           10               0       22     429
24 months   ki1114097-CMIN             PERU                           10               1       11     429
24 months   ki1114097-CMIN             PERU                           11               0       23     429
24 months   ki1114097-CMIN             PERU                           11               1        9     429
24 months   ki1114097-CMIN             PERU                           12               0       20     429
24 months   ki1114097-CMIN             PERU                           12               1        7     429
24 months   ki1114097-CONTENT          PERU                           1                0        7     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   ki1114097-CONTENT          PERU                           2                0       12     164
24 months   ki1114097-CONTENT          PERU                           2                1        2     164
24 months   ki1114097-CONTENT          PERU                           3                0       20     164
24 months   ki1114097-CONTENT          PERU                           3                1        2     164
24 months   ki1114097-CONTENT          PERU                           4                0       10     164
24 months   ki1114097-CONTENT          PERU                           4                1        5     164
24 months   ki1114097-CONTENT          PERU                           5                0       12     164
24 months   ki1114097-CONTENT          PERU                           5                1        2     164
24 months   ki1114097-CONTENT          PERU                           6                0       10     164
24 months   ki1114097-CONTENT          PERU                           6                1        1     164
24 months   ki1114097-CONTENT          PERU                           7                0       21     164
24 months   ki1114097-CONTENT          PERU                           7                1        2     164
24 months   ki1114097-CONTENT          PERU                           8                0       12     164
24 months   ki1114097-CONTENT          PERU                           8                1        2     164
24 months   ki1114097-CONTENT          PERU                           9                0       14     164
24 months   ki1114097-CONTENT          PERU                           9                1        3     164
24 months   ki1114097-CONTENT          PERU                           10               0       10     164
24 months   ki1114097-CONTENT          PERU                           10               1        1     164
24 months   ki1114097-CONTENT          PERU                           11               0        5     164
24 months   ki1114097-CONTENT          PERU                           11               1        1     164
24 months   ki1114097-CONTENT          PERU                           12               0       10     164
24 months   ki1114097-CONTENT          PERU                           12               1        0     164
24 months   ki1119695-PROBIT           BELARUS                        1                0      234    4035
24 months   ki1119695-PROBIT           BELARUS                        1                1       18    4035
24 months   ki1119695-PROBIT           BELARUS                        2                0      195    4035
24 months   ki1119695-PROBIT           BELARUS                        2                1       19    4035
24 months   ki1119695-PROBIT           BELARUS                        3                0      305    4035
24 months   ki1119695-PROBIT           BELARUS                        3                1       12    4035
24 months   ki1119695-PROBIT           BELARUS                        4                0      318    4035
24 months   ki1119695-PROBIT           BELARUS                        4                1       17    4035
24 months   ki1119695-PROBIT           BELARUS                        5                0      286    4035
24 months   ki1119695-PROBIT           BELARUS                        5                1       16    4035
24 months   ki1119695-PROBIT           BELARUS                        6                0      250    4035
24 months   ki1119695-PROBIT           BELARUS                        6                1       20    4035
24 months   ki1119695-PROBIT           BELARUS                        7                0      354    4035
24 months   ki1119695-PROBIT           BELARUS                        7                1       25    4035
24 months   ki1119695-PROBIT           BELARUS                        8                0      324    4035
24 months   ki1119695-PROBIT           BELARUS                        8                1       20    4035
24 months   ki1119695-PROBIT           BELARUS                        9                0      347    4035
24 months   ki1119695-PROBIT           BELARUS                        9                1       40    4035
24 months   ki1119695-PROBIT           BELARUS                        10               0      342    4035
24 months   ki1119695-PROBIT           BELARUS                        10               1       52    4035
24 months   ki1119695-PROBIT           BELARUS                        11               0      333    4035
24 months   ki1119695-PROBIT           BELARUS                        11               1       46    4035
24 months   ki1119695-PROBIT           BELARUS                        12               0      403    4035
24 months   ki1119695-PROBIT           BELARUS                        12               1       59    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       18     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       34     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0       20     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       46     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0       21     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       40     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0       20     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1       26     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0       21     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1       32     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0       18     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1       30     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0        5     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1       23     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0        9     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1       22     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0        1     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1        2     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0        5     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1        1     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0       10     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1       15     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0       11     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1       27     457
24 months   ki1148112-LCNI-5           MALAWI                         1                0       27     579
24 months   ki1148112-LCNI-5           MALAWI                         1                1       14     579
24 months   ki1148112-LCNI-5           MALAWI                         2                0       23     579
24 months   ki1148112-LCNI-5           MALAWI                         2                1        7     579
24 months   ki1148112-LCNI-5           MALAWI                         3                0       11     579
24 months   ki1148112-LCNI-5           MALAWI                         3                1        8     579
24 months   ki1148112-LCNI-5           MALAWI                         4                0       17     579
24 months   ki1148112-LCNI-5           MALAWI                         4                1       11     579
24 months   ki1148112-LCNI-5           MALAWI                         5                0       18     579
24 months   ki1148112-LCNI-5           MALAWI                         5                1       13     579
24 months   ki1148112-LCNI-5           MALAWI                         6                0       10     579
24 months   ki1148112-LCNI-5           MALAWI                         6                1       14     579
24 months   ki1148112-LCNI-5           MALAWI                         7                0       23     579
24 months   ki1148112-LCNI-5           MALAWI                         7                1       24     579
24 months   ki1148112-LCNI-5           MALAWI                         8                0       47     579
24 months   ki1148112-LCNI-5           MALAWI                         8                1       24     579
24 months   ki1148112-LCNI-5           MALAWI                         9                0       40     579
24 months   ki1148112-LCNI-5           MALAWI                         9                1       27     579
24 months   ki1148112-LCNI-5           MALAWI                         10               0       44     579
24 months   ki1148112-LCNI-5           MALAWI                         10               1       49     579
24 months   ki1148112-LCNI-5           MALAWI                         11               0       33     579
24 months   ki1148112-LCNI-5           MALAWI                         11               1       31     579
24 months   ki1148112-LCNI-5           MALAWI                         12               0       30     579
24 months   ki1148112-LCNI-5           MALAWI                         12               1       34     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      302    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      364    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0      266    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      295    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0      372    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1      346    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0      275    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1      230    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0      193    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1      174    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0      319    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1      294    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0      382    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1      289    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0      333    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1      287    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0      429    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1      372    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0      453    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1      420    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0      508    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1      533    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0      564    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1      632    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0      440    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1      350    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      507    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1      348    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0      385    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1      268    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0      364    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1      199    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      250    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1      169    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      295    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1      189    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      323    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1      180    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      241    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1      123    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0       83    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1       38    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0        0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1        0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0        0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        0    4752


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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




# Results Detail

## Results Plots
![](/tmp/6406952b-8dd0-4e6a-9357-9bdd7adcf5f2/3cb5abe7-a785-473b-a404-e688dbb87ec1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6406952b-8dd0-4e6a-9357-9bdd7adcf5f2/3cb5abe7-a785-473b-a404-e688dbb87ec1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6406952b-8dd0-4e6a-9357-9bdd7adcf5f2/3cb5abe7-a785-473b-a404-e688dbb87ec1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6406952b-8dd0-4e6a-9357-9bdd7adcf5f2/3cb5abe7-a785-473b-a404-e688dbb87ec1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1284541    0.1105318   0.1463763
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1506196    0.1289741   0.1722652
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1164797    0.0980102   0.1349492
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1102123    0.0906948   0.1297298
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1262327    0.1057905   0.1466750
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1145374    0.0960096   0.1330653
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1023018    0.0849589   0.1196447
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0742219    0.0597072   0.0887366
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0633205    0.0500558   0.0765851
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0798845    0.0633988   0.0963702
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0932994    0.0766967   0.1099021
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0928690    0.0764872   0.1092507
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3600637    0.3381013   0.3820262
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3115803    0.2864787   0.3366819
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2875468    0.2646730   0.3104206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2843284    0.2592599   0.3093969
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2968750    0.2665125   0.3272375
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2763819    0.2459829   0.3067809
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2875696    0.2593817   0.3157575
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.3122530    0.2864832   0.3380227
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2957219    0.2750370   0.3164068
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.3410052    0.3184340   0.3635763
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.3733945    0.3507479   0.3960411
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.3670261    0.3455584   0.3884938
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2941176    0.1407532   0.4474821
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.3125000    0.0850747   0.5399253
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.1935484    0.0542839   0.3328129
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.1818182    0.0677001   0.2959363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.3428571    0.1853900   0.5003242
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.4324324    0.2725855   0.5922794
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.5128205    0.3557364   0.6699046
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.3529412    0.1254650   0.5804174
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.3000000    0.0988908   0.5011092
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.2758621    0.1129718   0.4387523
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.1666667    0.0538050   0.2795283
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.2800000    0.1037567   0.4562433
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2894737    0.1451010   0.4338464
6 months    ki1000108-IRC              INDIA                          2                    NA                0.4642857    0.2793322   0.6492392
6 months    ki1000108-IRC              INDIA                          3                    NA                0.2962963    0.1238482   0.4687444
6 months    ki1000108-IRC              INDIA                          4                    NA                0.2857143    0.0922617   0.4791669
6 months    ki1000108-IRC              INDIA                          5                    NA                0.3333333    0.1314658   0.5352008
6 months    ki1000108-IRC              INDIA                          6                    NA                0.1351351    0.0248442   0.2454260
6 months    ki1000108-IRC              INDIA                          7                    NA                0.3055556    0.1548966   0.4562145
6 months    ki1000108-IRC              INDIA                          8                    NA                0.1363636    0.0348392   0.2378881
6 months    ki1000108-IRC              INDIA                          9                    NA                0.2592593    0.0937582   0.4247603
6 months    ki1000108-IRC              INDIA                          10                   NA                0.1351351    0.0248442   0.2454260
6 months    ki1000108-IRC              INDIA                          11                   NA                0.1750000    0.0571042   0.2928958
6 months    ki1000108-IRC              INDIA                          12                   NA                0.2745098    0.1518812   0.3971384
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3333333    0.2480594   0.4186073
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2530120    0.1456608   0.3603632
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.2972973    0.1298673   0.4647273
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2121212    0.1087220   0.3155205
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.2988506    0.2178324   0.3798687
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.3333333    0.2743385   0.3923282
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.4180328    0.3207141   0.5153515
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.3148148    0.2459016   0.3837280
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.1781609    0.1262272   0.2300946
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.2751678    0.2044808   0.3458548
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2711864    0.2139494   0.3284235
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2542373    0.1538596   0.3546149
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2884615    0.1652094   0.4117136
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2857143    0.1591076   0.4123210
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.2400000    0.1215104   0.3584896
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2380952    0.1091653   0.3670252
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2142857    0.0900756   0.3384959
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.3720930    0.2274851   0.5167009
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.2820513    0.1406897   0.4234128
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.2000000    0.0673587   0.3326413
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.3095238    0.1695813   0.4494663
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2380952    0.1091653   0.3670252
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.3400000    0.2085746   0.4714254
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1960784    0.0870124   0.3051445
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1126761    0.0606564   0.1646958
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0805369    0.0368324   0.1242415
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0857143    0.0393313   0.1320973
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0915033    0.0458061   0.1372004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1275168    0.0739465   0.1810871
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1188811    0.0658219   0.1719403
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1025641    0.0599712   0.1451570
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1407035    0.0923807   0.1890264
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0760870    0.0377677   0.1144062
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1153846    0.0719561   0.1588131
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0666667    0.0316471   0.1016862
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0465116    0.0150320   0.0779912
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1285714    0.0832889   0.1738539
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1122995    0.0670354   0.1575635
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1402715    0.0944762   0.1860668
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1048951    0.0546610   0.1551292
6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.1398601    0.0829990   0.1967213
6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.1864407    0.1161535   0.2567278
6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.2065217    0.1237831   0.2892604
6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.1436782    0.0915477   0.1958086
6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.1609195    0.1063081   0.2155310
6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.1612903    0.1155040   0.2070767
6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.1283422    0.0803922   0.1762923
6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.1197917    0.0738499   0.1657334
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0911885    0.0628736   0.1195034
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0803859    0.0513157   0.1094560
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0534709    0.0329464   0.0739954
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0647220    0.0377641   0.0916798
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0423042    0.0262833   0.0583252
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0627803    0.0385621   0.0869985
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0560492    0.0336378   0.0784607
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0536320    0.0355012   0.0717629
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0649437    0.0433277   0.0865596
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0674956    0.0470781   0.0879130
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0672956    0.0467104   0.0878808
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0569293    0.0370281   0.0768304
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1775819    0.1509985   0.2041652
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1737649    0.1431108   0.2044190
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2143826    0.1847520   0.2440133
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1792453    0.1494343   0.2090563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1694079    0.1395896   0.1992262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1627907    0.1342985   0.1912829
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1880878    0.1577629   0.2184126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1407507    0.1157938   0.1657075
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1295060    0.1054590   0.1535530
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1666667    0.1368450   0.1964884
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1581699    0.1323106   0.1840293
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1430380    0.1186224   0.1674536
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.4411765    0.3230911   0.5592618
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.2826087    0.1524123   0.4128051
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                0.4230769    0.2330614   0.6130924
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                0.4102564    0.2557900   0.5647228
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                0.3636364    0.2214143   0.5058585
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                0.4411765    0.2741785   0.6081744
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                0.3278689    0.2099945   0.4457432
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                0.2903226    0.1980152   0.3826300
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                0.3655914    0.2676541   0.4635287
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                0.4518519    0.3678503   0.5358534
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                0.3333333    0.2431126   0.4235540
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                0.3263158    0.2319765   0.4206551
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2514925    0.2263200   0.2766651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2510785    0.2251749   0.2769821
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2338767    0.2095446   0.2582088
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2325976    0.2070043   0.2581909
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2506739    0.2222843   0.2790634
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2305141    0.2053872   0.2556410
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2501986    0.2248627   0.2755345
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.2447368    0.2215615   0.2679122
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2277778    0.2045567   0.2509989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.2684685    0.2448532   0.2920838
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2905060    0.2681725   0.3128395
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2675522    0.2449476   0.2901568
24 months   ki1000108-IRC              INDIA                          1                    NA                0.5263158    0.3673676   0.6852640
24 months   ki1000108-IRC              INDIA                          2                    NA                0.5714286    0.3879044   0.7549527
24 months   ki1000108-IRC              INDIA                          3                    NA                0.4444444    0.2567851   0.6321038
24 months   ki1000108-IRC              INDIA                          4                    NA                0.6190476    0.4110936   0.8270017
24 months   ki1000108-IRC              INDIA                          5                    NA                0.7727273    0.5973977   0.9480568
24 months   ki1000108-IRC              INDIA                          6                    NA                0.2162162    0.0834092   0.3490232
24 months   ki1000108-IRC              INDIA                          7                    NA                0.4166667    0.2554235   0.5779098
24 months   ki1000108-IRC              INDIA                          8                    NA                0.2500000    0.1218986   0.3781014
24 months   ki1000108-IRC              INDIA                          9                    NA                0.5185185    0.3298195   0.7072176
24 months   ki1000108-IRC              INDIA                          10                   NA                0.2432432    0.1048301   0.3816564
24 months   ki1000108-IRC              INDIA                          11                   NA                0.3500000    0.2020073   0.4979927
24 months   ki1000108-IRC              INDIA                          12                   NA                0.4038462    0.2703204   0.5373719
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6744186    0.5341969   0.8146403
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.6388889    0.4818032   0.7959746
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4358974    0.2800880   0.5917069
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6470588    0.4862394   0.8078782
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6571429    0.4997057   0.8145800
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5151515    0.3444378   0.6858652
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.5294118    0.3614414   0.6973822
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.4814815    0.2927932   0.6701698
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4615385    0.2696939   0.6533830
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5454545    0.3753696   0.7155395
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5116279    0.3620480   0.6612078
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.5217391    0.3772168   0.6662615
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3274854    0.2571259   0.3978449
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2994012    0.2299184   0.3688840
24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.2882353    0.2201284   0.3563422
24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.3421053    0.2549929   0.4292176
24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.3770492    0.2910251   0.4630732
24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.3369565    0.2403430   0.4335701
24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.4320988    0.3241893   0.5400082
24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.2784810    0.2085665   0.3483955
24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.3144654    0.2422755   0.3866553
24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.3900000    0.3223829   0.4576171
24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.3262411    0.2488331   0.4036492
24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.3533333    0.2768158   0.4298509
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0714286   -0.0377341   0.1805912
24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.0887850    0.0111569   0.1664132
24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.0378549    0.0121123   0.0635975
24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0507463    0.0004625   0.1010301
24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0529801    0.0371172   0.0688431
24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0740741   -0.0084879   0.1566360
24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0659631    0.0193872   0.1125389
24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0581395    0.0146646   0.1016145
24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.1033592    0.0609609   0.1457575
24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.1319797    0.0715501   0.1924093
24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.1213720    0.0474567   0.1952874
24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.1277056    0.0439472   0.2114641
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.3414634    0.1961875   0.4867393
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.2333333    0.0818536   0.3848131
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4210526    0.1988576   0.6432477
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.3928571    0.2118035   0.5739108
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4193548    0.2454992   0.5932105
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5833333    0.3859227   0.7807440
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.5106383    0.3676020   0.6536746
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.3380282    0.2279020   0.4481543
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.4029851    0.2854349   0.5205352
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.5268817    0.4253216   0.6284419
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4843750    0.3618312   0.6069188
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.5312500    0.4088860   0.6536140
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5465465    0.5067483   0.5863448
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5258467    0.4814318   0.5702616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4818942    0.4425275   0.5212608
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.4554455    0.4079578   0.5029333
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.4741144    0.4164636   0.5317653
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.4796085    0.4331895   0.5260274
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.4307004    0.3889500   0.4724509
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4629032    0.4229571   0.5028493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4644195    0.4269591   0.5018798
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4810997    0.4442304   0.5179690
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.5120077    0.4792666   0.5447488
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.5284281    0.4936319   0.5632243


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035430   0.0984652   0.1086208
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3231530   0.3154984   0.3308077
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1412159   0.1262788   0.1561530
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662447   0.1582324   0.1742571
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3344928   0.3122213   0.3567642
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4421416   0.4016536   0.4826297
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907322   0.4775988   0.5038655


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1725564   0.9597224   1.4325897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9067811   0.7341345   1.1200291
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8579902   0.6848113   1.0749635
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9827072   0.7935810   1.2169059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8916607   0.7201543   1.1040118
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.7964075   0.6394143   0.9919468
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.5778086   0.4544167   0.7347063
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.4929424   0.3832538   0.6340245
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.6218916   0.4847616   0.7978130
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.7263250   0.5793296   0.9106181
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.7229743   0.5773615   0.9053111
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8653476   0.7792277   0.9609855
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.7985996   0.7230114   0.8820903
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.7896612   0.7098135   0.8784910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8245068   0.7315905   0.9292241
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7675916   0.6779740   0.8690554
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7986630   0.7138285   0.8935796
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8672158   0.7821208   0.9615692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8213044   0.7512498   0.8978917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9470689   0.8681192   1.0331986
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0370234   0.9551478   1.1259173
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0193364   0.9382091   1.1074788
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 1.0625000   0.4340220   2.6010345
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.6580645   0.2706140   1.6002457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.6181818   0.2733603   1.3979672
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 1.1657143   0.5818574   2.3354345
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 1.4702703   0.7759069   2.7860231
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 1.7435897   0.9523644   3.1921659
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 1.2000000   0.5237642   2.7493287
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 1.0200000   0.4362746   2.3847365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 0.9379310   0.4266308   2.0620045
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 0.5666667   0.2410738   1.3320036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 0.9520000   0.4203951   2.1558387
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 1.6038961   0.8471555   3.0366121
6 months    ki1000108-IRC              INDIA                          3                    1                 1.0235690   0.4756000   2.2028883
6 months    ki1000108-IRC              INDIA                          4                    1                 0.9870130   0.4257019   2.2884433
6 months    ki1000108-IRC              INDIA                          5                    1                 1.1515152   0.5254721   2.5234207
6 months    ki1000108-IRC              INDIA                          6                    1                 0.4668305   0.1793768   1.2149321
6 months    ki1000108-IRC              INDIA                          7                    1                 1.0555556   0.5234791   2.1284471
6 months    ki1000108-IRC              INDIA                          8                    1                 0.4710744   0.1922678   1.1541767
6 months    ki1000108-IRC              INDIA                          9                    1                 0.8956229   0.3983886   2.0134624
6 months    ki1000108-IRC              INDIA                          10                   1                 0.4668305   0.1793768   1.2149321
6 months    ki1000108-IRC              INDIA                          11                   1                 0.6045455   0.2614553   1.3978499
6 months    ki1000108-IRC              INDIA                          12                   1                 0.9483066   0.4854736   1.8523879
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7590361   0.4802163   1.1997424
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.8918919   0.5045618   1.5765583
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.6363636   0.3137214   1.2908228
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.8965517   0.6877690   1.1687137
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.0000000   0.7502522   1.3328851
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.2540984   0.8374418   1.8780560
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 0.9444444   0.6971544   1.2794517
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.5344828   0.3394146   0.8416604
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.8255034   0.5128185   1.3288441
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8135593   0.6335489   1.0447161
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.7627119   0.4851778   1.1990024
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9904762   0.5351889   1.8330780
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8320000   0.4330741   1.5983963
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.8253968   0.4140918   1.6452387
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.7428571   0.3615487   1.5263138
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.2899225   0.7239751   2.2982836
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9777778   0.5060732   1.8891523
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.6933333   0.3150035   1.5260500
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 1.0730159   0.5760265   1.9988023
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8253968   0.4140918   1.6452387
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.1786667   0.6624611   2.0971119
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.6797386   0.3370759   1.3707434
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7147651   0.3505394   1.4574370
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7607143   0.3735089   1.5493239
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8120915   0.4113743   1.6031449
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.1317114   0.6062436   2.1126338
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0550699   0.5551398   2.0052111
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9102564   0.4891934   1.6937407
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2487437   0.7023884   2.2200835
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6752717   0.3410064   1.3371945
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.0240385   0.5644510   1.8578313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.5916667   0.2940069   1.1906845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.4127907   0.1819373   0.9365655
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.8734403   0.5114134   1.4917440
6 months    ki1101329-Keneba           GAMBIA                         3                    1                 1.0910005   0.6749314   1.7635601
6 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.8158508   0.4502343   1.4783692
6 months    ki1101329-Keneba           GAMBIA                         5                    1                 1.0878011   0.6352496   1.8627501
6 months    ki1101329-Keneba           GAMBIA                         6                    1                 1.4500942   0.8656399   2.4291545
6 months    ki1101329-Keneba           GAMBIA                         7                    1                 1.6062802   0.9422277   2.7383359
6 months    ki1101329-Keneba           GAMBIA                         8                    1                 1.1174968   0.6739739   1.8528893
6 months    ki1101329-Keneba           GAMBIA                         9                    1                 1.2515964   0.7674538   2.0411568
6 months    ki1101329-Keneba           GAMBIA                         10                   1                 1.2544803   0.7980076   1.9720625
6 months    ki1101329-Keneba           GAMBIA                         11                   1                 0.9982175   0.5973624   1.6680630
6 months    ki1101329-Keneba           GAMBIA                         12                   1                 0.9317130   0.5535364   1.5682602
6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.8815347   0.5743288   1.3530637
6 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.5863777   0.4076335   0.8434999
6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.7097600   0.4577588   1.1004907
6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.4639206   0.2921817   0.7366042
6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.6884668   0.4443369   1.0667278
6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.6146521   0.3787138   0.9975795
6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.5881447   0.3848439   0.8988428
6 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.7121913   0.4771877   1.0629285
6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.7401760   0.5389571   1.0165198
6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.7379832   0.5121939   1.0633066
6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.6243030   0.4190338   0.9301260
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9785059   0.7763952   1.2332301
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2072327   0.9847039   1.4800498
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0093671   0.8069947   1.2624890
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9539707   0.7571563   1.2019449
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9167079   0.7281302   1.1541252
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0591609   0.8499904   1.3198053
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.7925960   0.6284525   0.9996116
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7292750   0.5745234   0.9257099
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9385343   0.7432465   1.1851339
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8906874   0.7135996   1.1117216
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8054763   0.6418780   1.0107715
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 0.6405797   0.3759920   1.0913592
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                 0.9589744   0.5685153   1.6176025
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                 0.9299145   0.5858928   1.4759372
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                 0.8242424   0.5131328   1.3239760
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                 1.0000000   0.6290145   1.5897886
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                 0.7431694   0.4747136   1.1634398
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                 0.6580645   0.4342810   0.9971630
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                 0.8286738   0.5674413   1.2101698
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                 1.0241975   0.7393543   1.4187794
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                 0.7555556   0.5163558   1.1055636
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                 0.7396491   0.4987935   1.0968083
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9983537   0.8656548   1.1513945
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9299548   0.8042269   1.0753382
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9248689   0.8005789   1.0684550
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9967447   0.8588027   1.1568431
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9165842   0.7905087   1.0627671
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.9948548   0.8677964   1.1405166
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9731376   0.8458843   1.1195347
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9057039   0.7889454   1.0397419
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0675007   0.9338206   1.2203177
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1551276   1.0229859   1.3043384
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0638573   0.9331416   1.2128840
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                 1.0857143   0.6986418   1.6872388
24 months   ki1000108-IRC              INDIA                          3                    1                 0.8444444   0.5024813   1.4191303
24 months   ki1000108-IRC              INDIA                          4                    1                 1.1761905   0.7486832   1.8478095
24 months   ki1000108-IRC              INDIA                          5                    1                 1.4681818   1.0063050   2.1420522
24 months   ki1000108-IRC              INDIA                          6                    1                 0.4108108   0.2071974   0.8145156
24 months   ki1000108-IRC              INDIA                          7                    1                 0.7916667   0.4845703   1.2933853
24 months   ki1000108-IRC              INDIA                          8                    1                 0.4750000   0.2620496   0.8610012
24 months   ki1000108-IRC              INDIA                          9                    1                 0.9851852   0.6139547   1.5808818
24 months   ki1000108-IRC              INDIA                          10                   1                 0.4621622   0.2426716   0.8801765
24 months   ki1000108-IRC              INDIA                          11                   1                 0.6650000   0.3955100   1.1181133
24 months   ki1000108-IRC              INDIA                          12                   1                 0.7673077   0.4903347   1.2007332
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9473180   0.6865215   1.3071862
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.6463307   0.4274319   0.9773330
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.9594320   0.6938835   1.3266058
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.9743842   0.7095203   1.3381219
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.7638454   0.5165416   1.1295503
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.7849899   0.5371824   1.1471132
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.7139208   0.4581252   1.1125407
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6843501   0.4299663   1.0892368
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8087774   0.5559851   1.1765081
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.7586207   0.5299324   1.0859977
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7736132   0.5471495   1.0938096
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9142429   0.6663675   1.2543231
24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.8801471   0.6395257   1.2113022
24 months   ki1101329-Keneba           GAMBIA                         4                    1                 1.0446429   0.7486451   1.4576715
24 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.1513466   0.8415951   1.5751031
24 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.0289208   0.7190837   1.4722597
24 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.3194444   0.9491177   1.8342653
24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.8503617   0.6110778   1.1833436
24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.9602426   0.7011818   1.3150168
24 months   ki1101329-Keneba           GAMBIA                         10                   1                 1.1908929   0.9035942   1.5695383
24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.9962006   0.7233248   1.3720194
24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0789286   0.7952613   1.4637792
24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        2                    1                 1.2429907   0.2042359   7.5649077
24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.5299686   0.0954558   2.9423755
24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.7104478   0.1082025   4.6647333
24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.7417219   0.1587302   3.4659521
24 months   ki1119695-PROBIT           BELARUS                        6                    1                 1.0370370   0.1496238   7.1876633
24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.9234828   0.1706268   4.9981619
24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.8139535   0.1403336   4.7210378
24 months   ki1119695-PROBIT           BELARUS                        9                    1                 1.4470284   0.3006197   6.9652506
24 months   ki1119695-PROBIT           BELARUS                        10                   1                 1.8477157   0.3418062   9.9882714
24 months   ki1119695-PROBIT           BELARUS                        11                   1                 1.6992084   0.5792078   4.9849284
24 months   ki1119695-PROBIT           BELARUS                        12                   1                 1.7878788   0.3399911   9.4017468
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.6833333   0.3144405   1.4850008
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 1.2330827   0.6260410   2.4287434
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.1505102   0.6144587   2.1542112
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 1.2281106   0.6780301   2.2244670
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.7083333   0.9919194   2.9421773
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 1.4954407   0.8985593   2.4888095
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.9899396   0.5792780   1.6917274
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 1.1801706   0.7045568   1.9768493
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.5430108   0.9672054   2.4616098
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 1.4185268   0.8647021   2.3270653
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.5558036   0.9590552   2.5238639
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9621261   0.8662413   1.0686244
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8817074   0.7913427   0.9823910
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8333152   0.7339043   0.9461918
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8674731   0.7516773   1.0011072
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.8775254   0.7796510   0.9876866
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7880398   0.6991661   0.8882106
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8469603   0.7576418   0.9468086
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8497345   0.7639894   0.9451031
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.8802538   0.7927219   0.9774509
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9368053   0.8481531   1.0347237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9668492   0.8767660   1.0661880


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0249110   -0.0417869   -0.0080352
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0369107   -0.0574468   -0.0163747
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0066954   -0.1395296    0.1529203
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0437734   -0.1805392    0.0929924
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0489022   -0.1327947    0.0349903
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0203051   -0.1371620    0.0965518
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0155839   -0.0655172    0.0343495
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0126445   -0.0304991    0.0557880
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0285021   -0.0530070   -0.0039973
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0113371   -0.0365480    0.0138737
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0728809   -0.1857983    0.0400365
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0001095   -0.0240106    0.0237916
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1106679   -0.2618523    0.0405166
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1196400   -0.2535708    0.0142907
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0070074   -0.0598133    0.0738280
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0138255   -0.0888873    0.1165382
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1006782   -0.0398757    0.2412321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0558144   -0.0939304   -0.0176984


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2405864   -0.4144133   -0.0881224
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1142206   -0.1796593   -0.0524119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0222576   -0.6074578    0.4052843
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1781579   -0.8893869    0.2653405
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1719298   -0.5079481    0.0892130
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0757212   -0.6129583    0.2825754
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1605062   -0.8071109    0.2547360
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0895400   -0.2733388    0.3490048
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.4546785   -0.9179633   -0.1033003
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0681955   -0.2311134    0.0731629
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1978869   -0.5475477    0.0727697
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0004356   -0.1001786    0.0902646
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2662539   -0.6889862    0.0506738
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.2156537   -0.4844196    0.0044500
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0209493   -0.2006579    0.2016541
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.1621678   -2.5533822    0.8024522
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2277058   -0.1658272    0.4883990
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1137370   -0.1943799   -0.0385389
