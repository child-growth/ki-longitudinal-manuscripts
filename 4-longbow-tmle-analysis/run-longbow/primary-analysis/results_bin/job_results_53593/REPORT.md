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

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/120015dc-0239-4e32-8371-7880bcbdcab9/d47bb5bc-16e0-437d-805c-dbef831eea82/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/120015dc-0239-4e32-8371-7880bcbdcab9/d47bb5bc-16e0-437d-805c-dbef831eea82/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/120015dc-0239-4e32-8371-7880bcbdcab9/d47bb5bc-16e0-437d-805c-dbef831eea82/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/120015dc-0239-4e32-8371-7880bcbdcab9/d47bb5bc-16e0-437d-805c-dbef831eea82/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1608858   0.0972984   0.2244732
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1746256   0.0876145   0.2616366
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2132756   0.1724668   0.2540844
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2379228   0.1702355   0.3056101
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.2434602   0.2185677   0.2683527
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.3099439   0.2361095   0.3837784
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1991907   0.1574496   0.2409319
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1508489   0.0690692   0.2326286
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1107784   0.1043645   0.1171922
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1111820   0.1035391   0.1188249
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0454545   0.0064356   0.0844735
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1200000   0.0561565   0.1838435
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0280447   0.0123801   0.0437094
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0736674   0.0344485   0.1128863
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0532847   0.0420643   0.0645051
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.1178552   0.0743671   0.1613432
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1008174   0.0699785   0.1316564
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0945946   0.0278402   0.1613490
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0876997   0.0810066   0.0943927
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0787579   0.0579238   0.0995920
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1082545   0.0453945   0.1711146
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1338012   0.0654482   0.2021542
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0987641   0.0697766   0.1277515
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1264039   0.0757710   0.1770368
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1005759   0.0840496   0.1171023
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1300515   0.0734031   0.1866999
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1987578   0.1551132   0.2424023
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1451613   0.0573630   0.2329596
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2177051   0.2034371   0.2319731
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2294368   0.1735209   0.2853527


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
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0854007   0.5735743   2.053953
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.1155652   0.7949960   1.565398
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.2730784   0.9838143   1.647393
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7573090   0.4233091   1.354842
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0036436   0.9604022   1.048832
6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 2.6399999   0.9616175   7.247788
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 2.6267797   1.2127565   5.689495
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 2.2118007   1.4477120   3.379168
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9382761   0.4348109   2.024701
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8980410   0.6799827   1.186027
24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.2359870   0.5688412   2.685572
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.2798568   0.7787769   2.103341
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2930677   0.8118823   2.059442
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7303427   0.3837740   1.389882
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0538881   0.8211513   1.352589


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0024805   -0.0359932   0.0409543
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0066492   -0.0151226   0.0284211
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0077099   -0.0013244   0.0167441
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0096173   -0.0250799   0.0058454
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000016   -0.0004684   0.0004652
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0354978   -0.0004879   0.0714835
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0134146    0.0011052   0.0257240
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0075649    0.0021925   0.0129373
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0010442   -0.0133851   0.0112967
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008039   -0.0027221   0.0011143
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0105573   -0.0364293   0.0575440
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0083171   -0.0089135   0.0255477
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0028723   -0.0030427   0.0087874
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0086536   -0.0246070   0.0072998
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0009996   -0.0038309   0.0058302


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0151839   -0.2508520   0.2246384
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0302341   -0.0739490   0.1243106
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0306958   -0.0058876   0.0659486
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0507311   -0.1352628   0.0275064
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000146   -0.0042374   0.0041904
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.4385027   -0.1484993   0.7254859
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.3235607   -0.0100042   0.5469621
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.1243211    0.0342797   0.2059673
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0104657   -0.1420133   0.1059291
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0092509   -0.0315413   0.0125578
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0888577   -0.4053518   0.4092723
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0776710   -0.0970573   0.2245703
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0277660   -0.0309880   0.0831717
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0455203   -0.1326078   0.0348709
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0045707   -0.0177258   0.0263788
