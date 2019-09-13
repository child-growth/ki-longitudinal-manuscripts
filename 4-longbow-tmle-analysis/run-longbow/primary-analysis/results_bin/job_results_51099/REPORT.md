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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        brthmon    sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                 0       24     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                 1        1     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                 0       25     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                 1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                 0       21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                 1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                 0       19     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                 1        2     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                 0       11     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                 1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                 0       19     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                 1        1     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                 0       23     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                 1        3     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                 0       20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                 1        1     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                0       25     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                0       15     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                0       26     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                1        1     257
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       10     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2                 0       18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2                 1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3                 0       17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3                 1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4                 0        9     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4                 1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5                 0       16     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5                 1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6                 0        8     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6                 1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7                 0       15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7                 1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8                 0       18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8                 1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9                 0       27     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9                 1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10                0       17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10                1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11                0       18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11                1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12                0       10     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12                1        0     191
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          2                 0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          2                 1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          3                 0       21     206
Birth       ki0047075b-MAL-ED          INDIA                          3                 1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          4                 0       13     206
Birth       ki0047075b-MAL-ED          INDIA                          4                 1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          5                 0        7     206
Birth       ki0047075b-MAL-ED          INDIA                          5                 1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          6                 0       18     206
Birth       ki0047075b-MAL-ED          INDIA                          6                 1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          7                 0       20     206
Birth       ki0047075b-MAL-ED          INDIA                          7                 1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          8                 0       17     206
Birth       ki0047075b-MAL-ED          INDIA                          8                 1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          9                 0       17     206
Birth       ki0047075b-MAL-ED          INDIA                          9                 1        2     206
Birth       ki0047075b-MAL-ED          INDIA                          10                0       20     206
Birth       ki0047075b-MAL-ED          INDIA                          10                1        3     206
Birth       ki0047075b-MAL-ED          INDIA                          11                0       20     206
Birth       ki0047075b-MAL-ED          INDIA                          11                1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          12                0       14     206
Birth       ki0047075b-MAL-ED          INDIA                          12                1        0     206
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       15     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          2                 0       13     173
Birth       ki0047075b-MAL-ED          NEPAL                          2                 1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          3                 0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          3                 1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          4                 0       17     173
Birth       ki0047075b-MAL-ED          NEPAL                          4                 1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          5                 0       19     173
Birth       ki0047075b-MAL-ED          NEPAL                          5                 1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          6                 0       10     173
Birth       ki0047075b-MAL-ED          NEPAL                          6                 1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          7                 0       16     173
Birth       ki0047075b-MAL-ED          NEPAL                          7                 1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          8                 0       14     173
Birth       ki0047075b-MAL-ED          NEPAL                          8                 1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          9                 0       11     173
Birth       ki0047075b-MAL-ED          NEPAL                          9                 1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          10                0       14     173
Birth       ki0047075b-MAL-ED          NEPAL                          10                1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          11                0       16     173
Birth       ki0047075b-MAL-ED          NEPAL                          11                1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          12                0       10     173
Birth       ki0047075b-MAL-ED          NEPAL                          12                1        0     173
Birth       ki0047075b-MAL-ED          PERU                           1                 0       37     287
Birth       ki0047075b-MAL-ED          PERU                           1                 1        2     287
Birth       ki0047075b-MAL-ED          PERU                           2                 0       21     287
Birth       ki0047075b-MAL-ED          PERU                           2                 1        0     287
Birth       ki0047075b-MAL-ED          PERU                           3                 0       23     287
Birth       ki0047075b-MAL-ED          PERU                           3                 1        0     287
Birth       ki0047075b-MAL-ED          PERU                           4                 0       20     287
Birth       ki0047075b-MAL-ED          PERU                           4                 1        1     287
Birth       ki0047075b-MAL-ED          PERU                           5                 0       27     287
Birth       ki0047075b-MAL-ED          PERU                           5                 1        0     287
Birth       ki0047075b-MAL-ED          PERU                           6                 0       15     287
Birth       ki0047075b-MAL-ED          PERU                           6                 1        1     287
Birth       ki0047075b-MAL-ED          PERU                           7                 0       23     287
Birth       ki0047075b-MAL-ED          PERU                           7                 1        0     287
Birth       ki0047075b-MAL-ED          PERU                           8                 0       19     287
Birth       ki0047075b-MAL-ED          PERU                           8                 1        0     287
Birth       ki0047075b-MAL-ED          PERU                           9                 0       22     287
Birth       ki0047075b-MAL-ED          PERU                           9                 1        0     287
Birth       ki0047075b-MAL-ED          PERU                           10                0       23     287
Birth       ki0047075b-MAL-ED          PERU                           10                1        2     287
Birth       ki0047075b-MAL-ED          PERU                           11                0       30     287
Birth       ki0047075b-MAL-ED          PERU                           11                1        1     287
Birth       ki0047075b-MAL-ED          PERU                           12                0       19     287
Birth       ki0047075b-MAL-ED          PERU                           12                1        1     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       27     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                 0       25     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                 1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                 0       17     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                 1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                 0       13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                 1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                 0       14     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                 1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                 0       18     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                 1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                 0       22     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                 1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                 0        9     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                 1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                 0       21     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                 1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10                0       28     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10                1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11                0       28     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11                1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12                0       38     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12                1        1     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 0        8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 0        7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                 0        4     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                 1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                 0        8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                 1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                 0       11     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                 1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                 0       13     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                 1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                 0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                 1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                 0       13     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                 1        3     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                0        8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                0       13     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                0       16     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                1        0     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                 0        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                 1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                 0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                 1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4                 0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4                 1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5                 0       11      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5                 1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6                 0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6                 1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7                 0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7                 1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8                 0        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8                 1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9                 0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9                 1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10                0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10                1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11                0       11      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12                0        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12                1        1      90
Birth       ki1000108-IRC              INDIA                          1                 0       32     388
Birth       ki1000108-IRC              INDIA                          1                 1        3     388
Birth       ki1000108-IRC              INDIA                          2                 0       25     388
Birth       ki1000108-IRC              INDIA                          2                 1        1     388
Birth       ki1000108-IRC              INDIA                          3                 0       26     388
Birth       ki1000108-IRC              INDIA                          3                 1        0     388
Birth       ki1000108-IRC              INDIA                          4                 0       21     388
Birth       ki1000108-IRC              INDIA                          4                 1        0     388
Birth       ki1000108-IRC              INDIA                          5                 0       21     388
Birth       ki1000108-IRC              INDIA                          5                 1        1     388
Birth       ki1000108-IRC              INDIA                          6                 0       31     388
Birth       ki1000108-IRC              INDIA                          6                 1        3     388
Birth       ki1000108-IRC              INDIA                          7                 0       34     388
Birth       ki1000108-IRC              INDIA                          7                 1        1     388
Birth       ki1000108-IRC              INDIA                          8                 0       38     388
Birth       ki1000108-IRC              INDIA                          8                 1        0     388
Birth       ki1000108-IRC              INDIA                          9                 0       24     388
Birth       ki1000108-IRC              INDIA                          9                 1        1     388
Birth       ki1000108-IRC              INDIA                          10                0       36     388
Birth       ki1000108-IRC              INDIA                          10                1        2     388
Birth       ki1000108-IRC              INDIA                          11                0       38     388
Birth       ki1000108-IRC              INDIA                          11                1        1     388
Birth       ki1000108-IRC              INDIA                          12                0       46     388
Birth       ki1000108-IRC              INDIA                          12                1        3     388
Birth       ki1000109-EE               PAKISTAN                       1                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       2                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       2                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       3                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       3                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       4                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       4                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       5                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       5                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       6                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       6                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       7                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       7                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       8                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       8                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       9                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       9                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       10                0        0       2
Birth       ki1000109-EE               PAKISTAN                       10                1        0       2
Birth       ki1000109-EE               PAKISTAN                       11                0        0       2
Birth       ki1000109-EE               PAKISTAN                       11                1        0       2
Birth       ki1000109-EE               PAKISTAN                       12                0        2       2
Birth       ki1000109-EE               PAKISTAN                       12                1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       1                 0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       1                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       2                 0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       2                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       3                 0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       3                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       4                 0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       4                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       5                 0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       5                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       6                 0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       6                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       7                 0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       7                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       8                 0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       8                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       9                 0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       9                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       10                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       10                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       11                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       11                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       12                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       12                1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                 0       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                 1        2     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                 0       10     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                 1        2     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                 0       15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                 1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                 0       15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                 1        2     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                 0       15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                 1        2     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                 0        7     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                 1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                 0       17     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                 1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                 0       19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                 1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                0       18     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                1        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                0       18     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                0       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                1        1     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0       11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                 0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                 0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                 0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                 0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                 0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                 0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                 0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                 0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10                0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11                0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12                1        0      28
Birth       ki1101329-Keneba           GAMBIA                         1                 0      156    1541
Birth       ki1101329-Keneba           GAMBIA                         1                 1        7    1541
Birth       ki1101329-Keneba           GAMBIA                         2                 0      143    1541
Birth       ki1101329-Keneba           GAMBIA                         2                 1        4    1541
Birth       ki1101329-Keneba           GAMBIA                         3                 0      163    1541
Birth       ki1101329-Keneba           GAMBIA                         3                 1        2    1541
Birth       ki1101329-Keneba           GAMBIA                         4                 0      104    1541
Birth       ki1101329-Keneba           GAMBIA                         4                 1        1    1541
Birth       ki1101329-Keneba           GAMBIA                         5                 0      106    1541
Birth       ki1101329-Keneba           GAMBIA                         5                 1        2    1541
Birth       ki1101329-Keneba           GAMBIA                         6                 0       88    1541
Birth       ki1101329-Keneba           GAMBIA                         6                 1        1    1541
Birth       ki1101329-Keneba           GAMBIA                         7                 0       74    1541
Birth       ki1101329-Keneba           GAMBIA                         7                 1        1    1541
Birth       ki1101329-Keneba           GAMBIA                         8                 0      124    1541
Birth       ki1101329-Keneba           GAMBIA                         8                 1        1    1541
Birth       ki1101329-Keneba           GAMBIA                         9                 0      122    1541
Birth       ki1101329-Keneba           GAMBIA                         9                 1        2    1541
Birth       ki1101329-Keneba           GAMBIA                         10                0      175    1541
Birth       ki1101329-Keneba           GAMBIA                         10                1        4    1541
Birth       ki1101329-Keneba           GAMBIA                         11                0      122    1541
Birth       ki1101329-Keneba           GAMBIA                         11                1        2    1541
Birth       ki1101329-Keneba           GAMBIA                         12                0      135    1541
Birth       ki1101329-Keneba           GAMBIA                         12                1        2    1541
Birth       ki1114097-CMIN             BANGLADESH                     1                 0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1                 1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     2                 0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     2                 1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     3                 0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     3                 1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     4                 0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     4                 1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     5                 0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     5                 1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     6                 0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     6                 1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     7                 0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     7                 1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     8                 0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     8                 1        2      13
Birth       ki1114097-CMIN             BANGLADESH                     9                 0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     9                 1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     10                0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     10                1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     11                0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     11                1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     12                0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     12                1        0      13
Birth       ki1114097-CMIN             BRAZIL                         1                 0       13     115
Birth       ki1114097-CMIN             BRAZIL                         1                 1        0     115
Birth       ki1114097-CMIN             BRAZIL                         2                 0        7     115
Birth       ki1114097-CMIN             BRAZIL                         2                 1        0     115
Birth       ki1114097-CMIN             BRAZIL                         3                 0       13     115
Birth       ki1114097-CMIN             BRAZIL                         3                 1        0     115
Birth       ki1114097-CMIN             BRAZIL                         4                 0        9     115
Birth       ki1114097-CMIN             BRAZIL                         4                 1        0     115
Birth       ki1114097-CMIN             BRAZIL                         5                 0        5     115
Birth       ki1114097-CMIN             BRAZIL                         5                 1        0     115
Birth       ki1114097-CMIN             BRAZIL                         6                 0        6     115
Birth       ki1114097-CMIN             BRAZIL                         6                 1        0     115
Birth       ki1114097-CMIN             BRAZIL                         7                 0        4     115
Birth       ki1114097-CMIN             BRAZIL                         7                 1        0     115
Birth       ki1114097-CMIN             BRAZIL                         8                 0       12     115
Birth       ki1114097-CMIN             BRAZIL                         8                 1        1     115
Birth       ki1114097-CMIN             BRAZIL                         9                 0        8     115
Birth       ki1114097-CMIN             BRAZIL                         9                 1        0     115
Birth       ki1114097-CMIN             BRAZIL                         10                0       14     115
Birth       ki1114097-CMIN             BRAZIL                         10                1        2     115
Birth       ki1114097-CMIN             BRAZIL                         11                0       11     115
Birth       ki1114097-CMIN             BRAZIL                         11                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         12                0       10     115
Birth       ki1114097-CMIN             BRAZIL                         12                1        0     115
Birth       ki1114097-CMIN             PERU                           1                 0        1      10
Birth       ki1114097-CMIN             PERU                           1                 1        0      10
Birth       ki1114097-CMIN             PERU                           2                 0        1      10
Birth       ki1114097-CMIN             PERU                           2                 1        0      10
Birth       ki1114097-CMIN             PERU                           3                 0        2      10
Birth       ki1114097-CMIN             PERU                           3                 1        0      10
Birth       ki1114097-CMIN             PERU                           4                 0        3      10
Birth       ki1114097-CMIN             PERU                           4                 1        0      10
Birth       ki1114097-CMIN             PERU                           5                 0        0      10
Birth       ki1114097-CMIN             PERU                           5                 1        0      10
Birth       ki1114097-CMIN             PERU                           6                 0        0      10
Birth       ki1114097-CMIN             PERU                           6                 1        0      10
Birth       ki1114097-CMIN             PERU                           7                 0        0      10
Birth       ki1114097-CMIN             PERU                           7                 1        0      10
Birth       ki1114097-CMIN             PERU                           8                 0        1      10
Birth       ki1114097-CMIN             PERU                           8                 1        0      10
Birth       ki1114097-CMIN             PERU                           9                 0        2      10
Birth       ki1114097-CMIN             PERU                           9                 1        0      10
Birth       ki1114097-CMIN             PERU                           10                0        0      10
Birth       ki1114097-CMIN             PERU                           10                1        0      10
Birth       ki1114097-CMIN             PERU                           11                0        0      10
Birth       ki1114097-CMIN             PERU                           11                1        0      10
Birth       ki1114097-CMIN             PERU                           12                0        0      10
Birth       ki1114097-CMIN             PERU                           12                1        0      10
Birth       ki1114097-CONTENT          PERU                           1                 0        0       2
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2
Birth       ki1114097-CONTENT          PERU                           2                 0        0       2
Birth       ki1114097-CONTENT          PERU                           2                 1        0       2
Birth       ki1114097-CONTENT          PERU                           3                 0        0       2
Birth       ki1114097-CONTENT          PERU                           3                 1        0       2
Birth       ki1114097-CONTENT          PERU                           4                 0        0       2
Birth       ki1114097-CONTENT          PERU                           4                 1        0       2
Birth       ki1114097-CONTENT          PERU                           5                 0        2       2
Birth       ki1114097-CONTENT          PERU                           5                 1        0       2
Birth       ki1114097-CONTENT          PERU                           6                 0        0       2
Birth       ki1114097-CONTENT          PERU                           6                 1        0       2
Birth       ki1114097-CONTENT          PERU                           7                 0        0       2
Birth       ki1114097-CONTENT          PERU                           7                 1        0       2
Birth       ki1114097-CONTENT          PERU                           8                 0        0       2
Birth       ki1114097-CONTENT          PERU                           8                 1        0       2
Birth       ki1114097-CONTENT          PERU                           9                 0        0       2
Birth       ki1114097-CONTENT          PERU                           9                 1        0       2
Birth       ki1114097-CONTENT          PERU                           10                0        0       2
Birth       ki1114097-CONTENT          PERU                           10                1        0       2
Birth       ki1114097-CONTENT          PERU                           11                0        0       2
Birth       ki1114097-CONTENT          PERU                           11                1        0       2
Birth       ki1114097-CONTENT          PERU                           12                0        0       2
Birth       ki1114097-CONTENT          PERU                           12                1        0       2
Birth       ki1119695-PROBIT           BELARUS                        1                 0      826   13884
Birth       ki1119695-PROBIT           BELARUS                        1                 1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        2                 0      804   13884
Birth       ki1119695-PROBIT           BELARUS                        2                 1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        3                 0      947   13884
Birth       ki1119695-PROBIT           BELARUS                        3                 1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        4                 0      970   13884
Birth       ki1119695-PROBIT           BELARUS                        4                 1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        5                 0      950   13884
Birth       ki1119695-PROBIT           BELARUS                        5                 1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        6                 0     1020   13884
Birth       ki1119695-PROBIT           BELARUS                        6                 1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        7                 0     1294   13884
Birth       ki1119695-PROBIT           BELARUS                        7                 1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        8                 0     1311   13884
Birth       ki1119695-PROBIT           BELARUS                        8                 1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        9                 0     1324   13884
Birth       ki1119695-PROBIT           BELARUS                        9                 1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        10                0     1497   13884
Birth       ki1119695-PROBIT           BELARUS                        10                1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        11                0     1387   13884
Birth       ki1119695-PROBIT           BELARUS                        11                1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        12                0     1549   13884
Birth       ki1119695-PROBIT           BELARUS                        12                1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     1284   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       55   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                 0     1004   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       45   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                 0     1117   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                 1       42   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                 0      954   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                 1       35   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                 0      980   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                 1       34   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                 0     1090   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                 1       45   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                 0     1129   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                 1       44   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                 0     1228   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                 1       25   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                 0     1274   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                 1       21   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                0     1005   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                1       34   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                0     1142   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                1       37   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                0     1182   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                1       24   13830
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1640   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      243   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                 0     1413   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                 1      150   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                 0     1720   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                 1      151   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                 0     1252   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                 1       88   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                 0      862   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                 1       98   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                 0      910   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                 1       85   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                 0      981   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                 1       97   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                 0     1355   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                 1      163   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                 0     1703   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                 1      167   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                0     1869   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                1      260   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                0     1907   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                1      273   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                0     1960   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                1      266   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                 0      126     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                 1        9     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                 0      156     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                 1       19     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4                 0      149     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4                 1       10     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5                 0      111     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5                 1       10     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6                 0       81     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6                 1        9     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7                 0       69     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7                 1        4     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8                 0       28     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8                 1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9                 0       31     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9                 1        2     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10                0        7     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10                1        1     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11                0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11                1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12                0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12                1        0     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                 0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                 1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                 0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                 1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                 0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                 1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                 0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                 1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                 0       10     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                 1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                 0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                 1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                 0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                 1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                 0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                 1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                0       26     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       15     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                 0       23     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                 0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4                 0       11     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5                 0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6                 0        8     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7                 0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8                 0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9                 0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10                0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11                0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12                0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12                1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          2                 0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          2                 1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          3                 0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          3                 1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          4                 0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          4                 1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          5                 0        8     236
6 months    ki0047075b-MAL-ED          INDIA                          5                 1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          6                 0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          6                 1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          7                 0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          7                 1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          8                 0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          8                 1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          9                 0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          9                 1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          10                0       24     236
6 months    ki0047075b-MAL-ED          INDIA                          10                1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          11                0       25     236
6 months    ki0047075b-MAL-ED          INDIA                          11                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          12                0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          12                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                 0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                 1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                 0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4                 0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          4                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          5                 0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          5                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          6                 0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          6                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          7                 0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          7                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          8                 0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          8                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          9                 0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          9                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          10                0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          10                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          11                0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          11                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          12                0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          12                1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1                 0       36     273
6 months    ki0047075b-MAL-ED          PERU                           1                 1        2     273
6 months    ki0047075b-MAL-ED          PERU                           2                 0       18     273
6 months    ki0047075b-MAL-ED          PERU                           2                 1        1     273
6 months    ki0047075b-MAL-ED          PERU                           3                 0       21     273
6 months    ki0047075b-MAL-ED          PERU                           3                 1        1     273
6 months    ki0047075b-MAL-ED          PERU                           4                 0       19     273
6 months    ki0047075b-MAL-ED          PERU                           4                 1        1     273
6 months    ki0047075b-MAL-ED          PERU                           5                 0       27     273
6 months    ki0047075b-MAL-ED          PERU                           5                 1        0     273
6 months    ki0047075b-MAL-ED          PERU                           6                 0       14     273
6 months    ki0047075b-MAL-ED          PERU                           6                 1        1     273
6 months    ki0047075b-MAL-ED          PERU                           7                 0       22     273
6 months    ki0047075b-MAL-ED          PERU                           7                 1        0     273
6 months    ki0047075b-MAL-ED          PERU                           8                 0       15     273
6 months    ki0047075b-MAL-ED          PERU                           8                 1        1     273
6 months    ki0047075b-MAL-ED          PERU                           9                 0       23     273
6 months    ki0047075b-MAL-ED          PERU                           9                 1        0     273
6 months    ki0047075b-MAL-ED          PERU                           10                0       19     273
6 months    ki0047075b-MAL-ED          PERU                           10                1        1     273
6 months    ki0047075b-MAL-ED          PERU                           11                0       28     273
6 months    ki0047075b-MAL-ED          PERU                           11                1        4     273
6 months    ki0047075b-MAL-ED          PERU                           12                0       19     273
6 months    ki0047075b-MAL-ED          PERU                           12                1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       36     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                 0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                 1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                 0       15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                 1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                 0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                 1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                 0       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                 1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                 0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                 1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                 0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                 1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                 0        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                 1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                 0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                 1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                0       25     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                0       34     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 0       29     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 0       16     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                 0        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                 1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                 0       15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                 1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                 0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                 1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                 0       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                 1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                 0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                 1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                 0       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                 1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                0       25     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                0       29     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                1        1     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       31     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        3     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                 0       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                 1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                 0       31     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                 1        0     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                 0       40     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                 1        4     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                 0       29     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                 1        6     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                 0       31     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                 1        6     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                 0       28     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                 1       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                 0       17     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                 1        0     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                 0       18     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                 1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                0       27     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                0       41     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                1        1     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                0       20     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                1        5     369
6 months    ki1000108-IRC              INDIA                          1                 0       34     407
6 months    ki1000108-IRC              INDIA                          1                 1        4     407
6 months    ki1000108-IRC              INDIA                          2                 0       23     407
6 months    ki1000108-IRC              INDIA                          2                 1        5     407
6 months    ki1000108-IRC              INDIA                          3                 0       27     407
6 months    ki1000108-IRC              INDIA                          3                 1        0     407
6 months    ki1000108-IRC              INDIA                          4                 0       17     407
6 months    ki1000108-IRC              INDIA                          4                 1        4     407
6 months    ki1000108-IRC              INDIA                          5                 0       18     407
6 months    ki1000108-IRC              INDIA                          5                 1        3     407
6 months    ki1000108-IRC              INDIA                          6                 0       36     407
6 months    ki1000108-IRC              INDIA                          6                 1        1     407
6 months    ki1000108-IRC              INDIA                          7                 0       35     407
6 months    ki1000108-IRC              INDIA                          7                 1        1     407
6 months    ki1000108-IRC              INDIA                          8                 0       43     407
6 months    ki1000108-IRC              INDIA                          8                 1        1     407
6 months    ki1000108-IRC              INDIA                          9                 0       26     407
6 months    ki1000108-IRC              INDIA                          9                 1        1     407
6 months    ki1000108-IRC              INDIA                          10                0       37     407
6 months    ki1000108-IRC              INDIA                          10                1        0     407
6 months    ki1000108-IRC              INDIA                          11                0       35     407
6 months    ki1000108-IRC              INDIA                          11                1        5     407
6 months    ki1000108-IRC              INDIA                          12                0       47     407
6 months    ki1000108-IRC              INDIA                          12                1        4     407
6 months    ki1000109-EE               PAKISTAN                       1                 0       62     372
6 months    ki1000109-EE               PAKISTAN                       1                 1       28     372
6 months    ki1000109-EE               PAKISTAN                       2                 0       53     372
6 months    ki1000109-EE               PAKISTAN                       2                 1       14     372
6 months    ki1000109-EE               PAKISTAN                       3                 0       36     372
6 months    ki1000109-EE               PAKISTAN                       3                 1        6     372
6 months    ki1000109-EE               PAKISTAN                       4                 0       11     372
6 months    ki1000109-EE               PAKISTAN                       4                 1        5     372
6 months    ki1000109-EE               PAKISTAN                       5                 0        0     372
6 months    ki1000109-EE               PAKISTAN                       5                 1        0     372
6 months    ki1000109-EE               PAKISTAN                       6                 0        0     372
6 months    ki1000109-EE               PAKISTAN                       6                 1        0     372
6 months    ki1000109-EE               PAKISTAN                       7                 0        0     372
6 months    ki1000109-EE               PAKISTAN                       7                 1        0     372
6 months    ki1000109-EE               PAKISTAN                       8                 0        0     372
6 months    ki1000109-EE               PAKISTAN                       8                 1        0     372
6 months    ki1000109-EE               PAKISTAN                       9                 0        0     372
6 months    ki1000109-EE               PAKISTAN                       9                 1        0     372
6 months    ki1000109-EE               PAKISTAN                       10                0        3     372
6 months    ki1000109-EE               PAKISTAN                       10                1        1     372
6 months    ki1000109-EE               PAKISTAN                       11                0       49     372
6 months    ki1000109-EE               PAKISTAN                       11                1       21     372
6 months    ki1000109-EE               PAKISTAN                       12                0       64     372
6 months    ki1000109-EE               PAKISTAN                       12                1       19     372
6 months    ki1000109-ResPak           PAKISTAN                       1                 0        9     235
6 months    ki1000109-ResPak           PAKISTAN                       1                 1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       2                 0       11     235
6 months    ki1000109-ResPak           PAKISTAN                       2                 1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       3                 0       10     235
6 months    ki1000109-ResPak           PAKISTAN                       3                 1       10     235
6 months    ki1000109-ResPak           PAKISTAN                       4                 0       16     235
6 months    ki1000109-ResPak           PAKISTAN                       4                 1        5     235
6 months    ki1000109-ResPak           PAKISTAN                       5                 0       36     235
6 months    ki1000109-ResPak           PAKISTAN                       5                 1        9     235
6 months    ki1000109-ResPak           PAKISTAN                       6                 0       36     235
6 months    ki1000109-ResPak           PAKISTAN                       6                 1        6     235
6 months    ki1000109-ResPak           PAKISTAN                       7                 0       20     235
6 months    ki1000109-ResPak           PAKISTAN                       7                 1        6     235
6 months    ki1000109-ResPak           PAKISTAN                       8                 0       27     235
6 months    ki1000109-ResPak           PAKISTAN                       8                 1        4     235
6 months    ki1000109-ResPak           PAKISTAN                       9                 0       18     235
6 months    ki1000109-ResPak           PAKISTAN                       9                 1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       10                0        4     235
6 months    ki1000109-ResPak           PAKISTAN                       10                1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       11                0        1     235
6 months    ki1000109-ResPak           PAKISTAN                       11                1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12                0        3     235
6 months    ki1000109-ResPak           PAKISTAN                       12                1        2     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0       77    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       10    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                 0       77    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                 1        6    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                 0       67    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                 1        7    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                 0       64    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                 1        2    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                 0       78    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                 1        9    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                 0       82    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                 1       14    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                 0      105    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                 1       17    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                 0      144    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                 1       18    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                 0      162    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                 1       12    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                0      138    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                1       11    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                0      109    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                1        9    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                0      105    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                1       13    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       21     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       26     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                 1        7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                 0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                 1        1     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                 0        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                 1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                 0       11     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                 1        1     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                 0       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                 1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                 0       30     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                 1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                 0       57     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                 1        6     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                 0       51     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                 1       11     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                0       39     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                1        8     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                1        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                0       29     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                1        5     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0       48     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                 0       47     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                 1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                 0       46     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                 1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                 0       40     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                 1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                 0       40     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                 1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                 0       38     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                 1        5     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                 0       38     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                 1        1     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                 0       33     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                 1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                 0       40     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                 1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                0       38     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                0       45     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                1        5     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                0       49     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                1        2     537
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      140    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        2    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      148    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0      138    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        2    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0      153    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0      148    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0      142    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0      193    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1        2    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0      196    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        3    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0      183    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0      203    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        5    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0      194    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1        1    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0      172    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0    2029
6 months    ki1101329-Keneba           GAMBIA                         1                 0      203    2089
6 months    ki1101329-Keneba           GAMBIA                         1                 1        7    2089
6 months    ki1101329-Keneba           GAMBIA                         2                 0      178    2089
6 months    ki1101329-Keneba           GAMBIA                         2                 1        9    2089
6 months    ki1101329-Keneba           GAMBIA                         3                 0      211    2089
6 months    ki1101329-Keneba           GAMBIA                         3                 1       10    2089
6 months    ki1101329-Keneba           GAMBIA                         4                 0      141    2089
6 months    ki1101329-Keneba           GAMBIA                         4                 1        2    2089
6 months    ki1101329-Keneba           GAMBIA                         5                 0      139    2089
6 months    ki1101329-Keneba           GAMBIA                         5                 1        4    2089
6 months    ki1101329-Keneba           GAMBIA                         6                 0      111    2089
6 months    ki1101329-Keneba           GAMBIA                         6                 1        7    2089
6 months    ki1101329-Keneba           GAMBIA                         7                 0       87    2089
6 months    ki1101329-Keneba           GAMBIA                         7                 1        5    2089
6 months    ki1101329-Keneba           GAMBIA                         8                 0      169    2089
6 months    ki1101329-Keneba           GAMBIA                         8                 1        5    2089
6 months    ki1101329-Keneba           GAMBIA                         9                 0      169    2089
6 months    ki1101329-Keneba           GAMBIA                         9                 1        5    2089
6 months    ki1101329-Keneba           GAMBIA                         10                0      242    2089
6 months    ki1101329-Keneba           GAMBIA                         10                1        6    2089
6 months    ki1101329-Keneba           GAMBIA                         11                0      183    2089
6 months    ki1101329-Keneba           GAMBIA                         11                1        4    2089
6 months    ki1101329-Keneba           GAMBIA                         12                0      186    2089
6 months    ki1101329-Keneba           GAMBIA                         12                1        6    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 0       23     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 1        5     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                 0       23     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                 1        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                 0       23     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                 1        4     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                 0       28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                 1        3     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                 0       26     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                 1        5     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                 0       19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                 1        3     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                 0       20     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                 1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                 0       13     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                 1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                 0       15     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                 1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                0       28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                0       24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                0       30     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                1        1     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2                 0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2                 1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3                 0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3                 1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4                 0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4                 1        1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5                 0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5                 1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6                 0      115     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6                 1        6     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7                 0      212     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7                 1        6     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8                 0      216     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8                 1        7     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9                 0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9                 1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11                1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12                0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12                1        0     563
6 months    ki1114097-CMIN             BANGLADESH                     1                 0       24     243
6 months    ki1114097-CMIN             BANGLADESH                     1                 1        2     243
6 months    ki1114097-CMIN             BANGLADESH                     2                 0       23     243
6 months    ki1114097-CMIN             BANGLADESH                     2                 1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     3                 0       16     243
6 months    ki1114097-CMIN             BANGLADESH                     3                 1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     4                 0       21     243
6 months    ki1114097-CMIN             BANGLADESH                     4                 1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     5                 0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     5                 1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     6                 0        5     243
6 months    ki1114097-CMIN             BANGLADESH                     6                 1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     7                 0       13     243
6 months    ki1114097-CMIN             BANGLADESH                     7                 1        2     243
6 months    ki1114097-CMIN             BANGLADESH                     8                 0       11     243
6 months    ki1114097-CMIN             BANGLADESH                     8                 1        6     243
6 months    ki1114097-CMIN             BANGLADESH                     9                 0       18     243
6 months    ki1114097-CMIN             BANGLADESH                     9                 1        2     243
6 months    ki1114097-CMIN             BANGLADESH                     10                0       22     243
6 months    ki1114097-CMIN             BANGLADESH                     10                1        2     243
6 months    ki1114097-CMIN             BANGLADESH                     11                0       23     243
6 months    ki1114097-CMIN             BANGLADESH                     11                1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     12                0       22     243
6 months    ki1114097-CMIN             BANGLADESH                     12                1        5     243
6 months    ki1114097-CMIN             BRAZIL                         1                 0       11     108
6 months    ki1114097-CMIN             BRAZIL                         1                 1        0     108
6 months    ki1114097-CMIN             BRAZIL                         2                 0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2                 1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3                 0       11     108
6 months    ki1114097-CMIN             BRAZIL                         3                 1        1     108
6 months    ki1114097-CMIN             BRAZIL                         4                 0        9     108
6 months    ki1114097-CMIN             BRAZIL                         4                 1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5                 0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5                 1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6                 0        7     108
6 months    ki1114097-CMIN             BRAZIL                         6                 1        0     108
6 months    ki1114097-CMIN             BRAZIL                         7                 0        3     108
6 months    ki1114097-CMIN             BRAZIL                         7                 1        1     108
6 months    ki1114097-CMIN             BRAZIL                         8                 0       12     108
6 months    ki1114097-CMIN             BRAZIL                         8                 1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9                 0        7     108
6 months    ki1114097-CMIN             BRAZIL                         9                 1        0     108
6 months    ki1114097-CMIN             BRAZIL                         10                0       14     108
6 months    ki1114097-CMIN             BRAZIL                         10                1        1     108
6 months    ki1114097-CMIN             BRAZIL                         11                0       11     108
6 months    ki1114097-CMIN             BRAZIL                         11                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         12                0        9     108
6 months    ki1114097-CMIN             BRAZIL                         12                1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                 0      100     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                 1        2     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                 0       56     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                 1        1     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                 0       65     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                 1        3     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                 0       45     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                 1        1     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                 0       55     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                 1        1     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                 0       38     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                 1        0     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                 0       37     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                 1        1     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                 0       54     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                 1        1     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                 0      111     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                 1        5     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                0      100     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                1        0     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                0       72     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                1        2     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                0       97     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                1        1     848
6 months    ki1114097-CMIN             PERU                           1                 0       42     637
6 months    ki1114097-CMIN             PERU                           1                 1        0     637
6 months    ki1114097-CMIN             PERU                           2                 0       57     637
6 months    ki1114097-CMIN             PERU                           2                 1        3     637
6 months    ki1114097-CMIN             PERU                           3                 0       67     637
6 months    ki1114097-CMIN             PERU                           3                 1        0     637
6 months    ki1114097-CMIN             PERU                           4                 0       60     637
6 months    ki1114097-CMIN             PERU                           4                 1        1     637
6 months    ki1114097-CMIN             PERU                           5                 0       54     637
6 months    ki1114097-CMIN             PERU                           5                 1        0     637
6 months    ki1114097-CMIN             PERU                           6                 0       54     637
6 months    ki1114097-CMIN             PERU                           6                 1        0     637
6 months    ki1114097-CMIN             PERU                           7                 0       52     637
6 months    ki1114097-CMIN             PERU                           7                 1        0     637
6 months    ki1114097-CMIN             PERU                           8                 0       72     637
6 months    ki1114097-CMIN             PERU                           8                 1        1     637
6 months    ki1114097-CMIN             PERU                           9                 0       50     637
6 months    ki1114097-CMIN             PERU                           9                 1        0     637
6 months    ki1114097-CMIN             PERU                           10                0       49     637
6 months    ki1114097-CMIN             PERU                           10                1        1     637
6 months    ki1114097-CMIN             PERU                           11                0       33     637
6 months    ki1114097-CMIN             PERU                           11                1        1     637
6 months    ki1114097-CMIN             PERU                           12                0       39     637
6 months    ki1114097-CMIN             PERU                           12                1        1     637
6 months    ki1114097-CONTENT          PERU                           1                 0       10     215
6 months    ki1114097-CONTENT          PERU                           1                 1        0     215
6 months    ki1114097-CONTENT          PERU                           2                 0       18     215
6 months    ki1114097-CONTENT          PERU                           2                 1        0     215
6 months    ki1114097-CONTENT          PERU                           3                 0       30     215
6 months    ki1114097-CONTENT          PERU                           3                 1        0     215
6 months    ki1114097-CONTENT          PERU                           4                 0       18     215
6 months    ki1114097-CONTENT          PERU                           4                 1        1     215
6 months    ki1114097-CONTENT          PERU                           5                 0       13     215
6 months    ki1114097-CONTENT          PERU                           5                 1        1     215
6 months    ki1114097-CONTENT          PERU                           6                 0       13     215
6 months    ki1114097-CONTENT          PERU                           6                 1        0     215
6 months    ki1114097-CONTENT          PERU                           7                 0       28     215
6 months    ki1114097-CONTENT          PERU                           7                 1        0     215
6 months    ki1114097-CONTENT          PERU                           8                 0       21     215
6 months    ki1114097-CONTENT          PERU                           8                 1        2     215
6 months    ki1114097-CONTENT          PERU                           9                 0       26     215
6 months    ki1114097-CONTENT          PERU                           9                 1        0     215
6 months    ki1114097-CONTENT          PERU                           10                0       14     215
6 months    ki1114097-CONTENT          PERU                           10                1        0     215
6 months    ki1114097-CONTENT          PERU                           11                0        9     215
6 months    ki1114097-CONTENT          PERU                           11                1        0     215
6 months    ki1114097-CONTENT          PERU                           12                0       11     215
6 months    ki1114097-CONTENT          PERU                           12                1        0     215
6 months    ki1119695-PROBIT           BELARUS                        1                 0      956   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 1       20   15761
6 months    ki1119695-PROBIT           BELARUS                        2                 0      919   15761
6 months    ki1119695-PROBIT           BELARUS                        2                 1       14   15761
6 months    ki1119695-PROBIT           BELARUS                        3                 0     1051   15761
6 months    ki1119695-PROBIT           BELARUS                        3                 1       15   15761
6 months    ki1119695-PROBIT           BELARUS                        4                 0     1081   15761
6 months    ki1119695-PROBIT           BELARUS                        4                 1       16   15761
6 months    ki1119695-PROBIT           BELARUS                        5                 0     1102   15761
6 months    ki1119695-PROBIT           BELARUS                        5                 1        9   15761
6 months    ki1119695-PROBIT           BELARUS                        6                 0     1095   15761
6 months    ki1119695-PROBIT           BELARUS                        6                 1       20   15761
6 months    ki1119695-PROBIT           BELARUS                        7                 0     1442   15761
6 months    ki1119695-PROBIT           BELARUS                        7                 1       21   15761
6 months    ki1119695-PROBIT           BELARUS                        8                 0     1458   15761
6 months    ki1119695-PROBIT           BELARUS                        8                 1       15   15761
6 months    ki1119695-PROBIT           BELARUS                        9                 0     1479   15761
6 months    ki1119695-PROBIT           BELARUS                        9                 1       30   15761
6 months    ki1119695-PROBIT           BELARUS                        10                0     1664   15761
6 months    ki1119695-PROBIT           BELARUS                        10                1       25   15761
6 months    ki1119695-PROBIT           BELARUS                        11                0     1558   15761
6 months    ki1119695-PROBIT           BELARUS                        11                1       32   15761
6 months    ki1119695-PROBIT           BELARUS                        12                0     1713   15761
6 months    ki1119695-PROBIT           BELARUS                        12                1       26   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      765    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       29    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                 0      566    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       21    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                 0      690    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                 1       47    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                 0      611    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                 1       25    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                 0      586    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                 1       22    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                 0      612    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                 1       33    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                 0      604    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                 1       34    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                 0      724    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                 1       22    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                 0      724    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                 1       25    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                0      576    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                1       24    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                0      734    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                1       31    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                0      757    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                1       33    8295
6 months    ki1148112-LCNI-5           MALAWI                         1                 0       59     839
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        9     839
6 months    ki1148112-LCNI-5           MALAWI                         2                 0       44     839
6 months    ki1148112-LCNI-5           MALAWI                         2                 1        2     839
6 months    ki1148112-LCNI-5           MALAWI                         3                 0       23     839
6 months    ki1148112-LCNI-5           MALAWI                         3                 1        3     839
6 months    ki1148112-LCNI-5           MALAWI                         4                 0       38     839
6 months    ki1148112-LCNI-5           MALAWI                         4                 1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         5                 0       38     839
6 months    ki1148112-LCNI-5           MALAWI                         5                 1        6     839
6 months    ki1148112-LCNI-5           MALAWI                         6                 0       28     839
6 months    ki1148112-LCNI-5           MALAWI                         6                 1        6     839
6 months    ki1148112-LCNI-5           MALAWI                         7                 0       57     839
6 months    ki1148112-LCNI-5           MALAWI                         7                 1        4     839
6 months    ki1148112-LCNI-5           MALAWI                         8                 0       89     839
6 months    ki1148112-LCNI-5           MALAWI                         8                 1        4     839
6 months    ki1148112-LCNI-5           MALAWI                         9                 0       88     839
6 months    ki1148112-LCNI-5           MALAWI                         9                 1        5     839
6 months    ki1148112-LCNI-5           MALAWI                         10                0      117     839
6 months    ki1148112-LCNI-5           MALAWI                         10                1       18     839
6 months    ki1148112-LCNI-5           MALAWI                         11                0       96     839
6 months    ki1148112-LCNI-5           MALAWI                         11                1        9     839
6 months    ki1148112-LCNI-5           MALAWI                         12                0       91     839
6 months    ki1148112-LCNI-5           MALAWI                         12                1        4     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1266   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1       74   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 0     1100   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 1       59   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                 0     1329   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                 1       82   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                 0     1108   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                 1       70   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                 0     1036   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                 1       77   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                 0     1146   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                 1       60   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                 0     1194   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                 1       65   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                 0     1438   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                 1       82   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                 0     1510   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                 1      110   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                0     1544   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                1      121   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                0     1638   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                1      121   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                0     1482   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                1       99   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0        0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1        0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                 0      514    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                 1       30    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                 0      904    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                 1       58    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                 0      685    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                 1       48    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                 0      568    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                 1       32    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                 0      413    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                 1       26    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                 0      485    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                 1       33    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                 0      500    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                 1       21    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                 0      369    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                 1       17    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                0      123    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                1        5    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                0        0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                1        0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                0        0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                1        0    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                 0       12     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                 1        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                 0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                 1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                 0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                 1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                 0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                 1        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                 0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                 1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                 0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                 1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                 0       15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                 1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                 0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                 1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                0       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                0       27     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                 0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                 0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4                 0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5                 0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6                 0        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7                 0        9     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7                 1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8                 0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9                 0       27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10                0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11                0       18     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12                0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12                1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       15     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          2                 0       17     227
24 months   ki0047075b-MAL-ED          INDIA                          2                 1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          3                 0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          3                 1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          4                 0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          4                 1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          5                 0        7     227
24 months   ki0047075b-MAL-ED          INDIA                          5                 1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          6                 0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          6                 1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          7                 0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          7                 1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          8                 0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          8                 1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          9                 0       15     227
24 months   ki0047075b-MAL-ED          INDIA                          9                 1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          10                0       22     227
24 months   ki0047075b-MAL-ED          INDIA                          10                1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          11                0       20     227
24 months   ki0047075b-MAL-ED          INDIA                          11                1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          12                0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          12                1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                 0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                 1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                 0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                 1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          4                 0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          4                 1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          5                 0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          5                 1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          6                 0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          6                 1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          7                 0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          7                 1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          8                 0       24     228
24 months   ki0047075b-MAL-ED          NEPAL                          8                 1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          9                 0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          9                 1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          10                0       20     228
24 months   ki0047075b-MAL-ED          NEPAL                          10                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          11                0       24     228
24 months   ki0047075b-MAL-ED          NEPAL                          11                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          12                0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          12                1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1                 0       26     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        4     201
24 months   ki0047075b-MAL-ED          PERU                           2                 0       16     201
24 months   ki0047075b-MAL-ED          PERU                           2                 1        1     201
24 months   ki0047075b-MAL-ED          PERU                           3                 0       15     201
24 months   ki0047075b-MAL-ED          PERU                           3                 1        0     201
24 months   ki0047075b-MAL-ED          PERU                           4                 0        9     201
24 months   ki0047075b-MAL-ED          PERU                           4                 1        2     201
24 months   ki0047075b-MAL-ED          PERU                           5                 0       17     201
24 months   ki0047075b-MAL-ED          PERU                           5                 1        2     201
24 months   ki0047075b-MAL-ED          PERU                           6                 0       10     201
24 months   ki0047075b-MAL-ED          PERU                           6                 1        1     201
24 months   ki0047075b-MAL-ED          PERU                           7                 0       15     201
24 months   ki0047075b-MAL-ED          PERU                           7                 1        0     201
24 months   ki0047075b-MAL-ED          PERU                           8                 0       11     201
24 months   ki0047075b-MAL-ED          PERU                           8                 1        1     201
24 months   ki0047075b-MAL-ED          PERU                           9                 0       21     201
24 months   ki0047075b-MAL-ED          PERU                           9                 1        0     201
24 months   ki0047075b-MAL-ED          PERU                           10                0       14     201
24 months   ki0047075b-MAL-ED          PERU                           10                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           11                0       18     201
24 months   ki0047075b-MAL-ED          PERU                           11                1        3     201
24 months   ki0047075b-MAL-ED          PERU                           12                0       14     201
24 months   ki0047075b-MAL-ED          PERU                           12                1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       27     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        7     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                 0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                 1        4     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                 0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                 1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                 0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                 1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                 0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                 1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                 0       15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                 1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                 0       20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                 1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                 0        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                 1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                 0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                 1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                0       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                1        4     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                0       28     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                1        3     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 1        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 1        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                 0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                 1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                 0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                 1        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                 0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                 1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                 0       17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                 1        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                 0        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                 1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                 0       13     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                 1        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                0        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                1        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                1        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                0       17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                1        9     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       26     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        8     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                 0        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                 1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                 0       18     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                 1       13     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                 0       28     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                 1       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                 0       23     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                 1       13     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                 0       26     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                 1       11     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                 0       29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                 1       10     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                 0       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                 1        5     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                 0       18     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                 1        3     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                0       20     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                1        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                0       28     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                1       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                0       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                1       13     372
24 months   ki1000108-IRC              INDIA                          1                 0       33     409
24 months   ki1000108-IRC              INDIA                          1                 1        5     409
24 months   ki1000108-IRC              INDIA                          2                 0       24     409
24 months   ki1000108-IRC              INDIA                          2                 1        4     409
24 months   ki1000108-IRC              INDIA                          3                 0       23     409
24 months   ki1000108-IRC              INDIA                          3                 1        4     409
24 months   ki1000108-IRC              INDIA                          4                 0       18     409
24 months   ki1000108-IRC              INDIA                          4                 1        3     409
24 months   ki1000108-IRC              INDIA                          5                 0       16     409
24 months   ki1000108-IRC              INDIA                          5                 1        6     409
24 months   ki1000108-IRC              INDIA                          6                 0       36     409
24 months   ki1000108-IRC              INDIA                          6                 1        1     409
24 months   ki1000108-IRC              INDIA                          7                 0       36     409
24 months   ki1000108-IRC              INDIA                          7                 1        0     409
24 months   ki1000108-IRC              INDIA                          8                 0       40     409
24 months   ki1000108-IRC              INDIA                          8                 1        4     409
24 months   ki1000108-IRC              INDIA                          9                 0       24     409
24 months   ki1000108-IRC              INDIA                          9                 1        3     409
24 months   ki1000108-IRC              INDIA                          10                0       36     409
24 months   ki1000108-IRC              INDIA                          10                1        1     409
24 months   ki1000108-IRC              INDIA                          11                0       38     409
24 months   ki1000108-IRC              INDIA                          11                1        2     409
24 months   ki1000108-IRC              INDIA                          12                0       44     409
24 months   ki1000108-IRC              INDIA                          12                1        8     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0       34     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1        9     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                 0       32     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                 1        4     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                 0       33     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                 1        6     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                 0       24     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                 1       10     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                 0       26     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                 1        9     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                 0       26     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                 1        7     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                 0       29     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                 1        5     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                 0       19     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                 1        8     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                 0       22     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                 1        4     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                0       24     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                1        9     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                0       31     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                1       12     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                0       36     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                1       10     429
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         1                 0      159    1725
24 months   ki1101329-Keneba           GAMBIA                         1                 1       12    1725
24 months   ki1101329-Keneba           GAMBIA                         2                 0      149    1725
24 months   ki1101329-Keneba           GAMBIA                         2                 1       18    1725
24 months   ki1101329-Keneba           GAMBIA                         3                 0      158    1725
24 months   ki1101329-Keneba           GAMBIA                         3                 1       12    1725
24 months   ki1101329-Keneba           GAMBIA                         4                 0      105    1725
24 months   ki1101329-Keneba           GAMBIA                         4                 1        9    1725
24 months   ki1101329-Keneba           GAMBIA                         5                 0      117    1725
24 months   ki1101329-Keneba           GAMBIA                         5                 1        5    1725
24 months   ki1101329-Keneba           GAMBIA                         6                 0       86    1725
24 months   ki1101329-Keneba           GAMBIA                         6                 1        6    1725
24 months   ki1101329-Keneba           GAMBIA                         7                 0       76    1725
24 months   ki1101329-Keneba           GAMBIA                         7                 1        5    1725
24 months   ki1101329-Keneba           GAMBIA                         8                 0      149    1725
24 months   ki1101329-Keneba           GAMBIA                         8                 1        9    1725
24 months   ki1101329-Keneba           GAMBIA                         9                 0      143    1725
24 months   ki1101329-Keneba           GAMBIA                         9                 1       16    1725
24 months   ki1101329-Keneba           GAMBIA                         10                0      187    1725
24 months   ki1101329-Keneba           GAMBIA                         10                1       13    1725
24 months   ki1101329-Keneba           GAMBIA                         11                0      127    1725
24 months   ki1101329-Keneba           GAMBIA                         11                1       14    1725
24 months   ki1101329-Keneba           GAMBIA                         12                0      132    1725
24 months   ki1101329-Keneba           GAMBIA                         12                1       18    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3                 0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3                 1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4                 0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4                 1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          5                 0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          5                 1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6                 0       81     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6                 1       10     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7                 0      183     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7                 1       23     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8                 0      181     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8                 1       21     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9                 0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9                 1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10                0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10                1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          11                0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          11                1        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          12                0        0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          12                1        0     499
24 months   ki1114097-CMIN             BANGLADESH                     1                 0       17     242
24 months   ki1114097-CMIN             BANGLADESH                     1                 1        9     242
24 months   ki1114097-CMIN             BANGLADESH                     2                 0       19     242
24 months   ki1114097-CMIN             BANGLADESH                     2                 1        5     242
24 months   ki1114097-CMIN             BANGLADESH                     3                 0       16     242
24 months   ki1114097-CMIN             BANGLADESH                     3                 1        2     242
24 months   ki1114097-CMIN             BANGLADESH                     4                 0       16     242
24 months   ki1114097-CMIN             BANGLADESH                     4                 1        6     242
24 months   ki1114097-CMIN             BANGLADESH                     5                 0       15     242
24 months   ki1114097-CMIN             BANGLADESH                     5                 1        1     242
24 months   ki1114097-CMIN             BANGLADESH                     6                 0        3     242
24 months   ki1114097-CMIN             BANGLADESH                     6                 1        5     242
24 months   ki1114097-CMIN             BANGLADESH                     7                 0       13     242
24 months   ki1114097-CMIN             BANGLADESH                     7                 1        2     242
24 months   ki1114097-CMIN             BANGLADESH                     8                 0        9     242
24 months   ki1114097-CMIN             BANGLADESH                     8                 1        9     242
24 months   ki1114097-CMIN             BANGLADESH                     9                 0       16     242
24 months   ki1114097-CMIN             BANGLADESH                     9                 1        4     242
24 months   ki1114097-CMIN             BANGLADESH                     10                0       14     242
24 months   ki1114097-CMIN             BANGLADESH                     10                1       10     242
24 months   ki1114097-CMIN             BANGLADESH                     11                0       18     242
24 months   ki1114097-CMIN             BANGLADESH                     11                1        7     242
24 months   ki1114097-CMIN             BANGLADESH                     12                0       18     242
24 months   ki1114097-CMIN             BANGLADESH                     12                1        8     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                 0       43     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                 1        5     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                 0       37     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                 1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                 0       51     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                 1        3     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                 0       41     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                 1       10     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                 0       44     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                 1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                 0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                 1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                 0       34     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                 1        6     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                 0       42     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                 1        7     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                 0       61     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                 1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                0       53     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                0       38     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                1        5     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                0       24     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                1        5     551
24 months   ki1114097-CMIN             PERU                           1                 0       13     429
24 months   ki1114097-CMIN             PERU                           1                 1        0     429
24 months   ki1114097-CMIN             PERU                           2                 0       36     429
24 months   ki1114097-CMIN             PERU                           2                 1        3     429
24 months   ki1114097-CMIN             PERU                           3                 0       48     429
24 months   ki1114097-CMIN             PERU                           3                 1        3     429
24 months   ki1114097-CMIN             PERU                           4                 0       43     429
24 months   ki1114097-CMIN             PERU                           4                 1        4     429
24 months   ki1114097-CMIN             PERU                           5                 0       28     429
24 months   ki1114097-CMIN             PERU                           5                 1        5     429
24 months   ki1114097-CMIN             PERU                           6                 0       38     429
24 months   ki1114097-CMIN             PERU                           6                 1        2     429
24 months   ki1114097-CMIN             PERU                           7                 0       40     429
24 months   ki1114097-CMIN             PERU                           7                 1        1     429
24 months   ki1114097-CMIN             PERU                           8                 0       33     429
24 months   ki1114097-CMIN             PERU                           8                 1        1     429
24 months   ki1114097-CMIN             PERU                           9                 0       37     429
24 months   ki1114097-CMIN             PERU                           9                 1        2     429
24 months   ki1114097-CMIN             PERU                           10                0       27     429
24 months   ki1114097-CMIN             PERU                           10                1        6     429
24 months   ki1114097-CMIN             PERU                           11                0       29     429
24 months   ki1114097-CMIN             PERU                           11                1        3     429
24 months   ki1114097-CMIN             PERU                           12                0       27     429
24 months   ki1114097-CMIN             PERU                           12                1        0     429
24 months   ki1114097-CONTENT          PERU                           1                 0        7     164
24 months   ki1114097-CONTENT          PERU                           1                 1        0     164
24 months   ki1114097-CONTENT          PERU                           2                 0       14     164
24 months   ki1114097-CONTENT          PERU                           2                 1        0     164
24 months   ki1114097-CONTENT          PERU                           3                 0       21     164
24 months   ki1114097-CONTENT          PERU                           3                 1        1     164
24 months   ki1114097-CONTENT          PERU                           4                 0       14     164
24 months   ki1114097-CONTENT          PERU                           4                 1        1     164
24 months   ki1114097-CONTENT          PERU                           5                 0       14     164
24 months   ki1114097-CONTENT          PERU                           5                 1        0     164
24 months   ki1114097-CONTENT          PERU                           6                 0       11     164
24 months   ki1114097-CONTENT          PERU                           6                 1        0     164
24 months   ki1114097-CONTENT          PERU                           7                 0       23     164
24 months   ki1114097-CONTENT          PERU                           7                 1        0     164
24 months   ki1114097-CONTENT          PERU                           8                 0       13     164
24 months   ki1114097-CONTENT          PERU                           8                 1        1     164
24 months   ki1114097-CONTENT          PERU                           9                 0       17     164
24 months   ki1114097-CONTENT          PERU                           9                 1        0     164
24 months   ki1114097-CONTENT          PERU                           10                0       11     164
24 months   ki1114097-CONTENT          PERU                           10                1        0     164
24 months   ki1114097-CONTENT          PERU                           11                0        6     164
24 months   ki1114097-CONTENT          PERU                           11                1        0     164
24 months   ki1114097-CONTENT          PERU                           12                0       10     164
24 months   ki1114097-CONTENT          PERU                           12                1        0     164
24 months   ki1119695-PROBIT           BELARUS                        1                 0      251    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 1        1    4035
24 months   ki1119695-PROBIT           BELARUS                        2                 0      210    4035
24 months   ki1119695-PROBIT           BELARUS                        2                 1        4    4035
24 months   ki1119695-PROBIT           BELARUS                        3                 0      316    4035
24 months   ki1119695-PROBIT           BELARUS                        3                 1        1    4035
24 months   ki1119695-PROBIT           BELARUS                        4                 0      332    4035
24 months   ki1119695-PROBIT           BELARUS                        4                 1        3    4035
24 months   ki1119695-PROBIT           BELARUS                        5                 0      300    4035
24 months   ki1119695-PROBIT           BELARUS                        5                 1        2    4035
24 months   ki1119695-PROBIT           BELARUS                        6                 0      263    4035
24 months   ki1119695-PROBIT           BELARUS                        6                 1        7    4035
24 months   ki1119695-PROBIT           BELARUS                        7                 0      375    4035
24 months   ki1119695-PROBIT           BELARUS                        7                 1        4    4035
24 months   ki1119695-PROBIT           BELARUS                        8                 0      340    4035
24 months   ki1119695-PROBIT           BELARUS                        8                 1        4    4035
24 months   ki1119695-PROBIT           BELARUS                        9                 0      382    4035
24 months   ki1119695-PROBIT           BELARUS                        9                 1        5    4035
24 months   ki1119695-PROBIT           BELARUS                        10                0      385    4035
24 months   ki1119695-PROBIT           BELARUS                        10                1        9    4035
24 months   ki1119695-PROBIT           BELARUS                        11                0      370    4035
24 months   ki1119695-PROBIT           BELARUS                        11                1        9    4035
24 months   ki1119695-PROBIT           BELARUS                        12                0      446    4035
24 months   ki1119695-PROBIT           BELARUS                        12                1       16    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0       42     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       10     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0       46     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       20     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                 0       39     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                 1       22     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                 0       35     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                 1       11     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                 0       39     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                 1       14     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                 0       31     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                 1       17     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                 0       13     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                 1       15     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                 0       25     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                 1        6     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                 0        3     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                 1        0     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                0        6     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                1        0     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                0       19     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                1        6     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                0       28     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                1       10     457
24 months   ki1148112-LCNI-5           MALAWI                         1                 0       36     579
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        5     579
24 months   ki1148112-LCNI-5           MALAWI                         2                 0       30     579
24 months   ki1148112-LCNI-5           MALAWI                         2                 1        0     579
24 months   ki1148112-LCNI-5           MALAWI                         3                 0       18     579
24 months   ki1148112-LCNI-5           MALAWI                         3                 1        1     579
24 months   ki1148112-LCNI-5           MALAWI                         4                 0       27     579
24 months   ki1148112-LCNI-5           MALAWI                         4                 1        1     579
24 months   ki1148112-LCNI-5           MALAWI                         5                 0       25     579
24 months   ki1148112-LCNI-5           MALAWI                         5                 1        6     579
24 months   ki1148112-LCNI-5           MALAWI                         6                 0       19     579
24 months   ki1148112-LCNI-5           MALAWI                         6                 1        5     579
24 months   ki1148112-LCNI-5           MALAWI                         7                 0       41     579
24 months   ki1148112-LCNI-5           MALAWI                         7                 1        6     579
24 months   ki1148112-LCNI-5           MALAWI                         8                 0       67     579
24 months   ki1148112-LCNI-5           MALAWI                         8                 1        4     579
24 months   ki1148112-LCNI-5           MALAWI                         9                 0       63     579
24 months   ki1148112-LCNI-5           MALAWI                         9                 1        4     579
24 months   ki1148112-LCNI-5           MALAWI                         10                0       75     579
24 months   ki1148112-LCNI-5           MALAWI                         10                1       18     579
24 months   ki1148112-LCNI-5           MALAWI                         11                0       58     579
24 months   ki1148112-LCNI-5           MALAWI                         11                1        6     579
24 months   ki1148112-LCNI-5           MALAWI                         12                0       53     579
24 months   ki1148112-LCNI-5           MALAWI                         12                1       11     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      550    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      116    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0      453    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      108    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 0      613    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 1      105    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                 0      442    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                 1       63    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                 0      305    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                 1       62    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                 0      532    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                 1       81    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                 0      586    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                 1       85    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                 0      537    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                 1       83    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                 0      704    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                 1       97    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                0      743    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                1      130    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                0      842    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                1      199    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                0      979    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                1      217    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0        0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1        0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                 0      698    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                 1       92    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                 0      764    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                 1       91    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                 0      572    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                 1       81    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                 0      514    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                 1       49    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                 0      391    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                 1       28    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                 0      448    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                 1       36    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                 0      473    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                 1       30    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                 0      339    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                 1       25    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                0      116    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                1        5    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                0        0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                1        0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                0        0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                1        0    4752


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




# Results Detail

## Results Plots
![](/tmp/5818c01a-60e2-4597-83c3-ddbf0834f6ea/b485ff7f-2405-47a7-8591-02bb5ddf69c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5818c01a-60e2-4597-83c3-ddbf0834f6ea/b485ff7f-2405-47a7-8591-02bb5ddf69c4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5818c01a-60e2-4597-83c3-ddbf0834f6ea/b485ff7f-2405-47a7-8591-02bb5ddf69c4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5818c01a-60e2-4597-83c3-ddbf0834f6ea/b485ff7f-2405-47a7-8591-02bb5ddf69c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0410754   0.0304449   0.0517060
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0428980   0.0306356   0.0551603
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0362381   0.0254787   0.0469976
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0353893   0.0238739   0.0469046
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0335306   0.0224501   0.0446111
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0396476   0.0282951   0.0510000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0375107   0.0266366   0.0483847
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0199521   0.0122092   0.0276951
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0162162   0.0093368   0.0230957
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0327238   0.0219054   0.0435422
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0313825   0.0214301   0.0413349
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0199005   0.0120181   0.0277829
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.1290494   0.1129945   0.1451043
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0959693   0.0795622   0.1123764
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0807055   0.0666761   0.0947349
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0656716   0.0522964   0.0790469
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.1020833   0.0805436   0.1236231
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0854271   0.0648539   0.1060004
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0899814   0.0718092   0.1081537
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.1073781   0.0905042   0.1242520
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0893048   0.0756808   0.1029288
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.1221231   0.1072751   0.1369711
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.1252294   0.1099387   0.1405200
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.1194969   0.1042954   0.1346983
6 months    ki1119695-PROBIT     BELARUS      1                    NA                0.0204918   0.0024183   0.0385653
6 months    ki1119695-PROBIT     BELARUS      2                    NA                0.0150054   0.0059302   0.0240805
6 months    ki1119695-PROBIT     BELARUS      3                    NA                0.0140713   0.0077469   0.0203957
6 months    ki1119695-PROBIT     BELARUS      4                    NA                0.0145852   0.0034123   0.0257581
6 months    ki1119695-PROBIT     BELARUS      5                    NA                0.0081008   0.0026684   0.0135332
6 months    ki1119695-PROBIT     BELARUS      6                    NA                0.0179372   0.0046510   0.0312235
6 months    ki1119695-PROBIT     BELARUS      7                    NA                0.0143541   0.0042865   0.0244217
6 months    ki1119695-PROBIT     BELARUS      8                    NA                0.0101833   0.0017291   0.0186375
6 months    ki1119695-PROBIT     BELARUS      9                    NA                0.0198807   0.0085115   0.0312499
6 months    ki1119695-PROBIT     BELARUS      10                   NA                0.0148017   0.0076038   0.0219995
6 months    ki1119695-PROBIT     BELARUS      11                   NA                0.0201258   0.0093318   0.0309198
6 months    ki1119695-PROBIT     BELARUS      12                   NA                0.0149511   0.0081243   0.0217780
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0365239   0.0234750   0.0495728
6 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0357751   0.0207494   0.0508008
6 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0637720   0.0461301   0.0814140
6 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0393082   0.0242046   0.0544117
6 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0361842   0.0213392   0.0510292
6 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0511628   0.0341582   0.0681674
6 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0532915   0.0358614   0.0707217
6 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0294906   0.0173498   0.0416314
6 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0333778   0.0205134   0.0462423
6 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0400000   0.0243193   0.0556807
6 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0405229   0.0265492   0.0544966
6 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0417722   0.0278201   0.0557242
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0552239   0.0422466   0.0682012
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0509060   0.0364419   0.0653700
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0581148   0.0456828   0.0705468
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0594228   0.0462511   0.0725944
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0691824   0.0535174   0.0848474
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0497512   0.0373113   0.0621911
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0516283   0.0396522   0.0636043
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0539474   0.0426317   0.0652631
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0679012   0.0535784   0.0822241
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0726727   0.0592957   0.0860496
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0687891   0.0565383   0.0810399
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0626186   0.0507082   0.0745290
24 months   ki1101329-Keneba     GAMBIA       1                    NA                0.0701754   0.0318781   0.1084728
24 months   ki1101329-Keneba     GAMBIA       2                    NA                0.1077844   0.0607378   0.1548311
24 months   ki1101329-Keneba     GAMBIA       3                    NA                0.0705882   0.0320741   0.1091023
24 months   ki1101329-Keneba     GAMBIA       4                    NA                0.0789474   0.0294328   0.1284619
24 months   ki1101329-Keneba     GAMBIA       5                    NA                0.0409836   0.0057942   0.0761730
24 months   ki1101329-Keneba     GAMBIA       6                    NA                0.0652174   0.0147493   0.1156855
24 months   ki1101329-Keneba     GAMBIA       7                    NA                0.0617284   0.0093034   0.1141534
24 months   ki1101329-Keneba     GAMBIA       8                    NA                0.0569620   0.0208125   0.0931116
24 months   ki1101329-Keneba     GAMBIA       9                    NA                0.1006289   0.0538547   0.1474031
24 months   ki1101329-Keneba     GAMBIA       10                   NA                0.0650000   0.0308240   0.0991760
24 months   ki1101329-Keneba     GAMBIA       11                   NA                0.0992908   0.0499153   0.1486662
24 months   ki1101329-Keneba     GAMBIA       12                   NA                0.1200000   0.0679812   0.1720188
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.1741742   0.1425440   0.2058044
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.1925134   0.1568051   0.2282216
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.1462396   0.1202511   0.1722280
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.1247525   0.0933615   0.1561434
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.1689373   0.1284915   0.2093831
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.1321370   0.1037661   0.1605080
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.1266766   0.0999475   0.1534057
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.1338710   0.1070715   0.1606705
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.1210986   0.0974807   0.1447166
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.1489118   0.1237681   0.1740555
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.1911623   0.1661390   0.2161856
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.1814381   0.1575082   0.2053680


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0318872   0.0289588   0.0348156
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.1040636   0.0993965   0.1087307
6 months    ki1119695-PROBIT     BELARUS      NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0417119   0.0374091   0.0460146
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0606746   0.0568229   0.0645262
24 months   ki1101329-Keneba     GAMBIA       NA                   NA                0.0794203   0.0666566   0.0921840
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.1559314   0.1471744   0.1646884


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.0443713   0.7102141   1.5357500
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 0.8822339   0.5950136   1.3080989
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.8615682   0.5684934   1.3057314
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.8163170   0.5364963   1.2420839
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 0.9652383   0.6561645   1.4198953
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 0.9132140   0.6191579   1.3469259
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.4857433   0.3046676   0.7744394
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.3947912   0.2401857   0.6489149
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 0.7966751   0.5235305   1.2123290
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.7640219   0.5073820   1.1504733
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 0.4844867   0.3018540   0.7776187
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    1                 0.7436633   0.6014371   0.9195226
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.6253846   0.5057733   0.7732832
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.5088877   0.4039152   0.6411411
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    1                 0.7910408   0.6198728   1.0094742
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.6619724   0.5022724   0.8724498
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.6972636   0.5515735   0.8814357
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.8320700   0.6787466   1.0200280
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.6920204   0.5736313   0.8348434
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   1                 0.9463281   0.7983965   1.1216693
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   1                 0.9703987   0.8161603   1.1537851
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   1                 0.9259777   0.7694676   1.1143220
6 months    ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT     BELARUS      2                    1                 0.7322615   0.2549421   2.1032496
6 months    ki1119695-PROBIT     BELARUS      3                    1                 0.6866792   0.2702442   1.7448229
6 months    ki1119695-PROBIT     BELARUS      4                    1                 0.7117593   0.3156736   1.6048266
6 months    ki1119695-PROBIT     BELARUS      5                    1                 0.3953195   0.1337366   1.1685474
6 months    ki1119695-PROBIT     BELARUS      6                    1                 0.8753363   0.4248208   1.8036162
6 months    ki1119695-PROBIT     BELARUS      7                    1                 0.7004785   0.2360502   2.0786688
6 months    ki1119695-PROBIT     BELARUS      8                    1                 0.4969450   0.1741040   1.4184302
6 months    ki1119695-PROBIT     BELARUS      9                    1                 0.9701789   0.3479744   2.7049324
6 months    ki1119695-PROBIT     BELARUS      10                   1                 0.7223209   0.2612603   1.9970411
6 months    ki1119695-PROBIT     BELARUS      11                   1                 0.9821384   0.3812020   2.5304058
6 months    ki1119695-PROBIT     BELARUS      12                   1                 0.7296147   0.2710973   1.9636408
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 0.9794983   0.5643292   1.7001016
6 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.7460347   1.1112594   2.7434074
6 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 1.0762308   0.6368609   1.8187216
6 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.9906987   0.5750131   1.7068898
6 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.4008019   0.8599191   2.2818962
6 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.4590855   0.8989182   2.3683249
6 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.8074327   0.4681407   1.3926320
6 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.9138622   0.5403100   1.5456758
6 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.0951724   0.6443697   1.8613578
6 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.1094884   0.6752710   1.8229194
6 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.1436927   0.7013007   1.8651530
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    1                 0.9218105   0.6420326   1.3235069
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.0523493   0.7578251   1.4613385
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.0760336   0.7763707   1.4913601
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.2527622   0.9005496   1.7427282
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.9009009   0.6391049   1.2699361
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.9348904   0.6747663   1.2952931
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.9768848   0.7124380   1.3394904
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.2295629   0.9006399   1.6786120
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.3159646   0.9689277   1.7872984
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.2456402   0.9261433   1.6753558
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.1339043   0.8379369   1.5344102
24 months   ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba     GAMBIA       2                    1                 1.5359281   0.7636187   3.0893368
24 months   ki1101329-Keneba     GAMBIA       3                    1                 1.0058824   0.4649438   2.1761756
24 months   ki1101329-Keneba     GAMBIA       4                    1                 1.1250000   0.4898799   2.5835412
24 months   ki1101329-Keneba     GAMBIA       5                    1                 0.5840165   0.2111459   1.6153529
24 months   ki1101329-Keneba     GAMBIA       6                    1                 0.9293478   0.3605242   2.3956430
24 months   ki1101329-Keneba     GAMBIA       7                    1                 0.8796296   0.3205343   2.4139332
24 months   ki1101329-Keneba     GAMBIA       8                    1                 0.8117089   0.3514741   1.8745943
24 months   ki1101329-Keneba     GAMBIA       9                    1                 1.4339623   0.7001807   2.9367389
24 months   ki1101329-Keneba     GAMBIA       10                   1                 0.9262500   0.4341248   1.9762500
24 months   ki1101329-Keneba     GAMBIA       11                   1                 1.4148936   0.6761996   2.9605519
24 months   ki1101329-Keneba     GAMBIA       12                   1                 1.7100000   0.8517524   3.4330399
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.1052923   0.8571744   1.4252303
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.8396168   0.6506104   1.0835307
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.7162513   0.5247565   0.9776265
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 0.9699333   0.7201928   1.3062761
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.7586488   0.5722589   1.0057477
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.7272984   0.5503637   0.9611153
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.7686040   0.5876976   1.0051974
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.6952732   0.5304459   0.9113177
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 0.8549591   0.6707295   1.0897912
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.0975355   0.8801962   1.3685406
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.0417051   0.8305713   1.3065098


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.0091882   -0.0191733    0.0007968
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0249858   -0.0400719   -0.0098996
6 months    ki1119695-PROBIT     BELARUS      1                    NA                -0.0050740   -0.0211775    0.0110295
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0051879   -0.0073096    0.0176855
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0054507   -0.0071620    0.0180633
24 months   ki1101329-Keneba     GAMBIA       1                    NA                 0.0092449   -0.0273449    0.0458347
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0182428   -0.0484227    0.0119372


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.2881478   -0.6413201   -0.0109696
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.2401008   -0.3936138   -0.1034979
6 months    ki1119695-PROBIT     BELARUS      1                    NA                -0.3291000   -1.8744679    0.3854491
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.1243757   -0.2325276    0.3779305
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0898347   -0.1433846    0.2754835
24 months   ki1101329-Keneba     GAMBIA       1                    NA                 0.1164042   -0.4877795    0.4752303
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.1169922   -0.3282597    0.0606720
