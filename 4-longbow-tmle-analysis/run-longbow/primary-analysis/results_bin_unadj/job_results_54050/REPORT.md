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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed3    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      109     202
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       21     202
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       60     202
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       12     202
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       11      55
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0      55
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0       43      55
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        1      55
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       19      39
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        3      39
Birth       ki0047075b-MAL-ED          INDIA                          0                 0       15      39
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        2      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        8      25
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       15      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        2      25
Birth       ki0047075b-MAL-ED          PERU                           1                 0       47     218
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     218
Birth       ki0047075b-MAL-ED          PERU                           0                 0      166     218
Birth       ki0047075b-MAL-ED          PERU                           0                 1        5     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       12      99
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0      99
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       78      99
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        9      99
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       15      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       79      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1      95
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0       4
Birth       ki1000108-IRC              INDIA                          1                 0        0       9
Birth       ki1000108-IRC              INDIA                          1                 1        0       9
Birth       ki1000108-IRC              INDIA                          0                 0        6       9
Birth       ki1000108-IRC              INDIA                          0                 1        3       9
Birth       ki1000109-EE               PAKISTAN                       1                 0       18      22
Birth       ki1000109-EE               PAKISTAN                       1                 1        4      22
Birth       ki1000109-EE               PAKISTAN                       0                 0        0      22
Birth       ki1000109-EE               PAKISTAN                       0                 1        0      22
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0      283     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1       27     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0       14     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        1     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      299     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1       82     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 0      116     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 1       35     532
Birth       ki1101329-Keneba           GAMBIA                         1                 0      858    1282
Birth       ki1101329-Keneba           GAMBIA                         1                 1      275    1282
Birth       ki1101329-Keneba           GAMBIA                         0                 0      102    1282
Birth       ki1101329-Keneba           GAMBIA                         0                 1       47    1282
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 0      282     422
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 1       70     422
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 0       60     422
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 1       10     422
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8558   10634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1078   10634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0      898   10634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      100   10634
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0       87      97
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1        2      97
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0        8      97
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0      97
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      147     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        5     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       78     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        3     233
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       59     187
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      127     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     187
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      105     210
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        5     210
6 months    ki0047075b-MAL-ED          INDIA                          0                 0       88     210
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       12     210
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       69     227
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        1     227
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      154     227
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        3     227
6 months    ki0047075b-MAL-ED          PERU                           1                 0       61     270
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     270
6 months    ki0047075b-MAL-ED          PERU                           0                 0      209     270
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       22     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      216     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        6     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       46     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      166     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        9      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      10
6 months    ki1000108-IRC              INDIA                          1                 0        0      10
6 months    ki1000108-IRC              INDIA                          1                 1        0      10
6 months    ki1000108-IRC              INDIA                          0                 0        8      10
6 months    ki1000108-IRC              INDIA                          0                 1        2      10
6 months    ki1000109-EE               PAKISTAN                       1                 0       35      39
6 months    ki1000109-EE               PAKISTAN                       1                 1        4      39
6 months    ki1000109-EE               PAKISTAN                       0                 0        0      39
6 months    ki1000109-EE               PAKISTAN                       0                 1        0      39
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0      330     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       46     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 0       17     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 1        2     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      416     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      162     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       13     603
6 months    ki1101329-Keneba           GAMBIA                         1                 0     1459    1742
6 months    ki1101329-Keneba           GAMBIA                         1                 1       82    1742
6 months    ki1101329-Keneba           GAMBIA                         0                 0      177    1742
6 months    ki1101329-Keneba           GAMBIA                         0                 1       24    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      330     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       37     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0       67     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1        7     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7754    9310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      745    9310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0      747    9310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1       64    9310
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0       72      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1        4      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0       12      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0      88
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      120     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       15     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       66     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       50     152
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        2     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0       99     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     152
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       91     202
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       11     202
24 months   ki0047075b-MAL-ED          INDIA                          0                 0       87     202
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       13     202
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       66     220
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        1     220
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      149     220
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4     220
24 months   ki0047075b-MAL-ED          PERU                           1                 0       42     198
24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     198
24 months   ki0047075b-MAL-ED          PERU                           0                 0      153     198
24 months   ki0047075b-MAL-ED          PERU                           0                 1        2     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       19     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      208     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     228
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       38     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      142     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     184
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        9      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      10
24 months   ki1000108-IRC              INDIA                          1                 0        0      10
24 months   ki1000108-IRC              INDIA                          1                 1        0      10
24 months   ki1000108-IRC              INDIA                          0                 0       10      10
24 months   ki1000108-IRC              INDIA                          0                 1        0      10
24 months   ki1000109-EE               PAKISTAN                       1                 0       17      20
24 months   ki1000109-EE               PAKISTAN                       1                 1        3      20
24 months   ki1000109-EE               PAKISTAN                       0                 0        0      20
24 months   ki1000109-EE               PAKISTAN                       0                 1        0      20
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      368     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       40     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      149     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     579
24 months   ki1101329-Keneba           GAMBIA                         1                 0     1146    1421
24 months   ki1101329-Keneba           GAMBIA                         1                 1      128    1421
24 months   ki1101329-Keneba           GAMBIA                         0                 0      128    1421
24 months   ki1101329-Keneba           GAMBIA                         0                 1       19    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      258     384
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       64     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0       53     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1        9     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     3452    4833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      964    4833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0      324    4833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1       93    4833
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      113     150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1       22     150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0       12     150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1        3     150


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/62b7064b-8ea3-4a04-94c6-4355cfe563de/3151e308-d8e3-4942-ac64-e628c160573b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/62b7064b-8ea3-4a04-94c6-4355cfe563de/3151e308-d8e3-4942-ac64-e628c160573b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/62b7064b-8ea3-4a04-94c6-4355cfe563de/3151e308-d8e3-4942-ac64-e628c160573b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/62b7064b-8ea3-4a04-94c6-4355cfe563de/3151e308-d8e3-4942-ac64-e628c160573b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1615385   0.0981174   0.2249595
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1666667   0.0803702   0.2529632
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2152231   0.1739172   0.2565290
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2317881   0.1644200   0.2991562
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.2427184   0.2177448   0.2676921
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.3154362   0.2407936   0.3900789
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1988636   0.1571169   0.2406104
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1428571   0.0607857   0.2249285
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1118721   0.1051014   0.1186429
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1002004   0.0824811   0.1179197
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0454545   0.0064356   0.0844735
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1200000   0.0561565   0.1838435
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0280374   0.0123850   0.0436898
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0742857   0.0354008   0.1131706
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0532122   0.0420023   0.0644221
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.1194030   0.0745624   0.1642435
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1008174   0.0699785   0.1316564
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0945946   0.0278402   0.1613490
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0876574   0.0809626   0.0943522
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0789149   0.0580869   0.0997430
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1078431   0.0474980   0.1681883
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1300000   0.0639220   0.1960780
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0980392   0.0691599   0.1269185
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1286550   0.0784284   0.1788816
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1004710   0.0839573   0.1169846
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1292517   0.0750008   0.1835026
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1987578   0.1551132   0.2424023
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1451613   0.0573630   0.2329596
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2182971   0.2040303   0.2325639
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2230216   0.1693570   0.2766862


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1633663   0.1122571   0.2144755
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.2511700   0.2274208   0.2749193
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1895735   0.1521320   0.2270149
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1107768   0.1043978   0.1171557
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0809524   0.0439731   0.1179317
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0608496   0.0496205   0.0720787
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0997732   0.0717702   0.1277763
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0868958   0.0805887   0.0932029
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1188119   0.0740803   0.1635435
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1034483   0.0876083   0.1192882
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1901042   0.1508072   0.2294011
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2187047   0.2046312   0.2327783


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0317460   0.5387284   1.975949
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.0769666   0.7602217   1.525683
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.2995973   1.0040278   1.682178
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7183673   0.3896809   1.324293
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8956689   0.7436255   1.078799
6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 2.6399999   0.9616175   7.247788
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 2.6495238   1.2325604   5.695442
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 2.2439024   1.4588147   3.451500
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9382761   0.4348109   2.024701
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9002656   0.6820330   1.188327
24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.2054545   0.5660335   2.567199
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.3122807   0.8046925   2.140048
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2864583   0.8196550   2.019112
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7303427   0.3837740   1.389882
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0216424   0.7989659   1.306380


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0018279   -0.0363461   0.0400018
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0047017   -0.0177367   0.0271402
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0084516   -0.0007850   0.0176882
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0092902   -0.0246930   0.0061127
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0010954   -0.0028761   0.0006853
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0354978   -0.0004879   0.0714835
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0134220    0.0011420   0.0257019
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0076374    0.0022125   0.0130623
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0010442   -0.0133851   0.0112967
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0007616   -0.0026838   0.0011607
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0109687   -0.0333580   0.0552955
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0090420   -0.0081069   0.0261908
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0029773   -0.0029068   0.0088614
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0086536   -0.0246070   0.0072998
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004076   -0.0043247   0.0051400


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0111888   -0.2523813   0.2192893
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0213787   -0.0861288   0.1182449
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0336489   -0.0037837   0.0696856
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0490057   -0.1331673   0.0289051
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0098883   -0.0260513   0.0060202
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.4385027   -0.1484993   0.7254859
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.3237383   -0.0088626   0.5466876
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.1255127    0.0346530   0.2078206
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0104657   -0.1420133   0.1059291
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0087641   -0.0311034   0.0130913
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0923203   -0.3672710   0.3974256
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0844402   -0.0894183   0.2305529
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0287807   -0.0296568   0.0839017
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0455203   -0.1326078   0.0348709
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0018639   -0.0199951   0.0232544
