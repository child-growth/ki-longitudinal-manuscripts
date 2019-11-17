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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed3    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      135     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        3     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0       73     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     215
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       11      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       44      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        1      57
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       22      41
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        2      41
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       17      41
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        8      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       17      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1      26
Birth       ki0047075b-MAL-ED          PERU                           1                   0       47     223
Birth       ki0047075b-MAL-ED          PERU                           1                   1        2     223
Birth       ki0047075b-MAL-ED          PERU                           0                   0      173     223
Birth       ki0047075b-MAL-ED          PERU                           0                   1        1     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       12     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       87     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       15     102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       80     102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        5     102
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       4
Birth       ki1000108-IRC              INDIA                          1                   0        0      10
Birth       ki1000108-IRC              INDIA                          1                   1        0      10
Birth       ki1000108-IRC              INDIA                          0                   0       10      10
Birth       ki1000108-IRC              INDIA                          0                   1        0      10
Birth       ki1000109-EE               PAKISTAN                       1                   0       28      35
Birth       ki1000109-EE               PAKISTAN                       1                   1        7      35
Birth       ki1000109-EE               PAKISTAN                       0                   0        0      35
Birth       ki1000109-EE               PAKISTAN                       0                   1        0      35
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   0      323     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   1       23     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   0       15     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   0      385     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   0      150     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   1        2     539
Birth       ki1101329-Keneba           GAMBIA                         1                   0     1171    1356
Birth       ki1101329-Keneba           GAMBIA                         1                   1       27    1356
Birth       ki1101329-Keneba           GAMBIA                         0                   0      156    1356
Birth       ki1101329-Keneba           GAMBIA                         0                   1        2    1356
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      367     458
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       13     458
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0       73     458
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1        5     458
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    10706   13276
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1308   13276
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1118   13276
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      144   13276
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0       97     116
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1        8     116
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0        9     116
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1        2     116
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      149     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        3     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0       76     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        5     233
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       60     187
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      127     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     187
6 months    ki0047075b-MAL-ED          INDIA                          1                   0      107     210
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        3     210
6 months    ki0047075b-MAL-ED          INDIA                          0                   0       94     210
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        6     210
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       69     227
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     227
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      157     227
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     227
6 months    ki0047075b-MAL-ED          PERU                           1                   0       58     270
6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     270
6 months    ki0047075b-MAL-ED          PERU                           0                   0      203     270
6 months    ki0047075b-MAL-ED          PERU                           0                   1        6     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       22     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      216     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       43     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        3     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      158     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        8     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      10
6 months    ki1000108-IRC              INDIA                          1                   0        0      10
6 months    ki1000108-IRC              INDIA                          1                   1        0      10
6 months    ki1000108-IRC              INDIA                          0                   0        9      10
6 months    ki1000108-IRC              INDIA                          0                   1        1      10
6 months    ki1000109-EE               PAKISTAN                       1                   0       28      39
6 months    ki1000109-EE               PAKISTAN                       1                   1       11      39
6 months    ki1000109-EE               PAKISTAN                       0                   0        0      39
6 months    ki1000109-EE               PAKISTAN                       0                   1        0      39
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      342     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       37     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       16     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      422     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        6     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      168     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        8     604
6 months    ki1101329-Keneba           GAMBIA                         1                   0     1495    1742
6 months    ki1101329-Keneba           GAMBIA                         1                   1       46    1742
6 months    ki1101329-Keneba           GAMBIA                         0                   0      191    1742
6 months    ki1101329-Keneba           GAMBIA                         0                   1       10    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      356     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       11     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       69     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        5     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     7996    9328
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      518    9328
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0      758    9328
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1       56    9328
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0       76      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0       11      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1        1      88
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      117     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       18     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       60     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       10     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       51     152
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      100     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0     152
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       84     202
24 months   ki0047075b-MAL-ED          INDIA                          1                   1       18     202
24 months   ki0047075b-MAL-ED          INDIA                          0                   0       89     202
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       11     202
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       65     220
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        2     220
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      149     220
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        4     220
24 months   ki0047075b-MAL-ED          PERU                           1                   0       39     198
24 months   ki0047075b-MAL-ED          PERU                           1                   1        4     198
24 months   ki0047075b-MAL-ED          PERU                           0                   0      145     198
24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       18     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      184     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       25     228
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       26     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1       12     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       94     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       52     184
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      10
24 months   ki1000108-IRC              INDIA                          1                   0        0      10
24 months   ki1000108-IRC              INDIA                          1                   1        0      10
24 months   ki1000108-IRC              INDIA                          0                   0       10      10
24 months   ki1000108-IRC              INDIA                          0                   1        0      10
24 months   ki1000109-EE               PAKISTAN                       1                   0       12      20
24 months   ki1000109-EE               PAKISTAN                       1                   1        8      20
24 months   ki1000109-EE               PAKISTAN                       0                   0        0      20
24 months   ki1000109-EE               PAKISTAN                       0                   1        0      20
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      372     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       36     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      154     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       16     578
24 months   ki1101329-Keneba           GAMBIA                         1                   0     1170    1420
24 months   ki1101329-Keneba           GAMBIA                         1                   1      104    1420
24 months   ki1101329-Keneba           GAMBIA                         0                   0      129    1420
24 months   ki1101329-Keneba           GAMBIA                         0                   1       17    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      289     384
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       33     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       56     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1        6     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3764    4852
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      669    4852
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      345    4852
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1       74    4852
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      130     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        6     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0       13     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1        2     151


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/afb62296-5b2f-4bad-92e9-cfe135f647c4/d1af4877-921b-43d4-a968-776c147945fa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/afb62296-5b2f-4bad-92e9-cfe135f647c4/d1af4877-921b-43d4-a968-776c147945fa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/afb62296-5b2f-4bad-92e9-cfe135f647c4/d1af4877-921b-43d4-a968-776c147945fa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/afb62296-5b2f-4bad-92e9-cfe135f647c4/d1af4877-921b-43d4-a968-776c147945fa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.0342105   0.0159147   0.0525064
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0641026   0.0096865   0.1185186
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1088730   0.1027448   0.1150011
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1141046   0.0968916   0.1313175
6 months    ki1017093b-PROVIDE    BANGLADESH                     1                    NA                0.0140187   0.0028713   0.0251661
6 months    ki1017093b-PROVIDE    BANGLADESH                     0                    NA                0.0454545   0.0146554   0.0762537
6 months    ki1101329-Keneba      GAMBIA                         1                    NA                0.0298507   0.0213517   0.0383498
6 months    ki1101329-Keneba      GAMBIA                         0                    NA                0.0497512   0.0196839   0.0798186
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.0299728   0.0125080   0.0474375
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0675676   0.0103139   0.1248212
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0608410   0.0552914   0.0663905
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0687961   0.0494255   0.0881667
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1333333   0.0758505   0.1908162
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1428571   0.0606824   0.2250319
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1764706   0.1023052   0.2506360
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1100000   0.0485224   0.1714776
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3157895   0.1675945   0.4639844
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3561644   0.2782769   0.4340519
24 months   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                0.0882353   0.0606894   0.1157812
24 months   ki1017093b-PROVIDE    BANGLADESH                     0                    NA                0.0941176   0.0501866   0.1380486
24 months   ki1101329-Keneba      GAMBIA                         1                    NA                0.0816327   0.0665924   0.0966730
24 months   ki1101329-Keneba      GAMBIA                         0                    NA                0.1164384   0.0643919   0.1684848
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1024845   0.0693152   0.1356538
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0967742   0.0230863   0.1704621
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1509136   0.1385391   0.1632881
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1766110   0.1268233   0.2263986


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.0393013   0.0214863   0.0571164
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1093703   0.1036242   0.1151164
6 months    ki1017093b-PROVIDE    BANGLADESH                     NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ki1101329-Keneba      GAMBIA                         NA                   NA                0.0321470   0.0238614   0.0404325
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.0362812   0.0188094   0.0537530
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0615352   0.0561307   0.0669396
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1365854   0.0894611   0.1837097
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1435644   0.0950890   0.1920397
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3478261   0.2788203   0.4168318
24 months   ki1017093b-PROVIDE    BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1101329-Keneba      GAMBIA                         NA                   NA                0.0852113   0.0706846   0.0997379
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1015625   0.0713101   0.1318149
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1531327   0.1409934   0.1652721


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.8737673   0.6870436   5.110307
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0480525   0.8911531   1.232576
6 months    ki1017093b-PROVIDE    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE    BANGLADESH                     0                    1                 3.2424242   1.1406585   9.216883
6 months    ki1101329-Keneba      GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA                         0                    1                 1.6666667   0.8545016   3.250758
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 2.2542998   0.8061176   6.304126
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.1307524   0.8440955   1.514759
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.0714286   0.5221195   2.198652
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 0.6233333   0.3097633   1.254327
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1278539   0.6720524   1.892791
24 months   ki1017093b-PROVIDE    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH                     0                    1                 1.0666667   0.6083496   1.870270
24 months   ki1101329-Keneba      GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA                         0                    1                 1.4263699   0.8795566   2.313133
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.9442815   0.4128368   2.159855
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.1702787   0.8729152   1.568941


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0050908   -0.0047405   0.0149221
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0004973   -0.0012499   0.0022445
6 months    ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.0091601   -0.0004521   0.0187723
6 months    ki1101329-Keneba      GAMBIA                         1                    NA                 0.0022962   -0.0013214   0.0059138
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0063084   -0.0038212   0.0164381
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0006942   -0.0010457   0.0024341
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0032520   -0.0309971   0.0375011
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0329062   -0.0808165   0.0150041
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0320366   -0.1008256   0.1648989
24 months   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.0017301   -0.0135223   0.0169825
24 months   ki1101329-Keneba      GAMBIA                         1                    NA                 0.0035786   -0.0020187   0.0091759
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0009220   -0.0139710   0.0121270
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0022191   -0.0022283   0.0066665


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.1295322   -0.1516576   0.3420664
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0045470   -0.0115767   0.0204137
6 months    ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.3951936   -0.1009314   0.6677442
6 months    ki1101329-Keneba      GAMBIA                         1                    NA                 0.0714286   -0.0466034   0.1761494
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.1738760   -0.1415465   0.4021437
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0112813   -0.0173412   0.0390984
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0238095   -0.2619716   0.2448738
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.2292089   -0.6056616   0.0589832
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0921053   -0.3827696   0.4038972
24 months   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.0192308   -0.1657700   0.1748730
24 months   ki1101329-Keneba      GAMBIA                         1                    NA                 0.0419970   -0.0256507   0.1051828
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0090779   -0.1460736   0.1115421
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0144915   -0.0148530   0.0429875
