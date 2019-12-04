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

agecat      studyid                    country                        exclfeed3    swasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      126     202
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        4     202
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       68     202
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        4     202
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       11      55
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0      55
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       44      55
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0      55
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       22      39
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0      39
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       17      39
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        8      25
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       16      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1      25
Birth       ki0047075b-MAL-ED          PERU                           1                  0       47     218
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     218
Birth       ki0047075b-MAL-ED          PERU                           0                  0      171     218
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       12      99
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0      99
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       87      99
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0      99
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       15      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       80      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0      95
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       4
Birth       ki1000108-IRC              INDIA                          1                  0        0       9
Birth       ki1000108-IRC              INDIA                          1                  1        0       9
Birth       ki1000108-IRC              INDIA                          0                  0        9       9
Birth       ki1000108-IRC              INDIA                          0                  1        0       9
Birth       ki1000109-EE               PAKISTAN                       1                  0       22      22
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      22
Birth       ki1000109-EE               PAKISTAN                       0                  0        0      22
Birth       ki1000109-EE               PAKISTAN                       0                  1        0      22
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0      303     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        7     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0      375     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1        6     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      144     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1        7     532
Birth       ki1101329-Keneba           GAMBIA                         1                  0     1052    1282
Birth       ki1101329-Keneba           GAMBIA                         1                  1       81    1282
Birth       ki1101329-Keneba           GAMBIA                         0                  0      138    1282
Birth       ki1101329-Keneba           GAMBIA                         0                  1       11    1282
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      335     422
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       17     422
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0       70     422
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1        0     422
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     9443   10634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      193   10634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0      981   10634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       17   10634
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0       89      97
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0      97
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0        8      97
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0      97
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      151     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       80     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     233
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       60     187
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      127     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     187
6 months    ki0047075b-MAL-ED          INDIA                          1                  0      109     210
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1     210
6 months    ki0047075b-MAL-ED          INDIA                          0                  0       96     210
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        4     210
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       70     227
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     227
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      157     227
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     227
6 months    ki0047075b-MAL-ED          PERU                           1                  0       61     270
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     270
6 months    ki0047075b-MAL-ED          PERU                           0                  0      209     270
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       22     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      220     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       46     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      166     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
6 months    ki1000108-IRC              INDIA                          1                  0        0      10
6 months    ki1000108-IRC              INDIA                          1                  1        0      10
6 months    ki1000108-IRC              INDIA                          0                  0       10      10
6 months    ki1000108-IRC              INDIA                          0                  1        0      10
6 months    ki1000109-EE               PAKISTAN                       1                  0       38      39
6 months    ki1000109-EE               PAKISTAN                       1                  1        1      39
6 months    ki1000109-EE               PAKISTAN                       0                  0        0      39
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      39
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      360     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       16     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       18     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        1     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      427     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        1     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      171     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        4     603
6 months    ki1101329-Keneba           GAMBIA                         1                  0     1516    1742
6 months    ki1101329-Keneba           GAMBIA                         1                  1       25    1742
6 months    ki1101329-Keneba           GAMBIA                         0                  0      196    1742
6 months    ki1101329-Keneba           GAMBIA                         0                  1        5    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      360     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        7     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       74     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8378    9310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      121    9310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0      803    9310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1        8    9310
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0       76      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0       12      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0      88
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      135     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       70     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       51     152
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      100     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     152
24 months   ki0047075b-MAL-ED          INDIA                          1                  0      102     202
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     202
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       99     202
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        1     202
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       67     220
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     220
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      153     220
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     220
24 months   ki0047075b-MAL-ED          PERU                           1                  0       43     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     198
24 months   ki0047075b-MAL-ED          PERU                           0                  0      154     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       19     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      209     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     228
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       38     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      146     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     184
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
24 months   ki1000108-IRC              INDIA                          1                  0        0      10
24 months   ki1000108-IRC              INDIA                          1                  1        0      10
24 months   ki1000108-IRC              INDIA                          0                  0       10      10
24 months   ki1000108-IRC              INDIA                          0                  1        0      10
24 months   ki1000109-EE               PAKISTAN                       1                  0       20      20
24 months   ki1000109-EE               PAKISTAN                       1                  1        0      20
24 months   ki1000109-EE               PAKISTAN                       0                  0        0      20
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      20
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      403     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        5     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      167     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        4     579
24 months   ki1101329-Keneba           GAMBIA                         1                  0     1254    1421
24 months   ki1101329-Keneba           GAMBIA                         1                  1       20    1421
24 months   ki1101329-Keneba           GAMBIA                         0                  0      144    1421
24 months   ki1101329-Keneba           GAMBIA                         0                  1        3    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      313     384
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        9     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       60     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1        2     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     4246    4833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      170    4833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      400    4833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       17    4833
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      131     150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        4     150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       14     150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        1     150


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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/b3f25884-d4f7-4a60-96e6-4effbc60af28/7bce38f3-deb4-4d03-8690-20eb8164f2f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3f25884-d4f7-4a60-96e6-4effbc60af28/7bce38f3-deb4-4d03-8690-20eb8164f2f2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3f25884-d4f7-4a60-96e6-4effbc60af28/7bce38f3-deb4-4d03-8690-20eb8164f2f2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3f25884-d4f7-4a60-96e6-4effbc60af28/7bce38f3-deb4-4d03-8690-20eb8164f2f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE   BANGLADESH   1                    NA                0.0157480   0.0032351   0.0282610
Birth       ki1017093b-PROVIDE   BANGLADESH   0                    NA                0.0463576   0.0127899   0.0799253
Birth       ki1101329-Keneba     GAMBIA       1                    NA                0.0719257   0.0570097   0.0868418
Birth       ki1101329-Keneba     GAMBIA       0                    NA                0.0761931   0.0345846   0.1178015
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0199848   0.0169119   0.0230578
Birth       kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0164328   0.0079178   0.0249478
6 months    ki1101329-Keneba     GAMBIA       1                    NA                0.0162232   0.0099138   0.0225326
6 months    ki1101329-Keneba     GAMBIA       0                    NA                0.0248756   0.0033383   0.0464129
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0142370   0.0114519   0.0170221
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0098644   0.0015474   0.0181813
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0384246   0.0311178   0.0457314
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0436274   0.0260320   0.0612229


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0244361   0.0113037   0.0375685
Birth       ki1101329-Keneba     GAMBIA       NA                   NA                0.0717629   0.0576293   0.0858965
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0197480   0.0168324   0.0226636
6 months    ki1101329-Keneba     GAMBIA       NA                   NA                0.0172216   0.0111106   0.0233326
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0138561   0.0112336   0.0164785
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0386923   0.0318833   0.0455013


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093b-PROVIDE   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE   BANGLADESH   0                    1                 2.9437086   1.0046589   8.625236
Birth       ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba     GAMBIA       0                    1                 1.0593294   0.5940295   1.889096
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3    BANGLADESH   0                    1                 0.8222614   0.4799237   1.408794
6 months    ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba     GAMBIA       0                    1                 1.5333333   0.5935144   3.961338
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    1                 0.6928697   0.2896953   1.657150
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    1                 1.1354034   0.7269427   1.773373


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE   BANGLADESH   1                    NA                 0.0086881   -0.0015476   0.0189237
Birth       ki1101329-Keneba     GAMBIA       1                    NA                -0.0001629   -0.0051525   0.0048267
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0002369   -0.0010892   0.0006155
6 months    ki1101329-Keneba     GAMBIA       1                    NA                 0.0009984   -0.0015944   0.0035911
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0003809   -0.0011520   0.0003902
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0002677   -0.0013606   0.0018960


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE   BANGLADESH   1                    NA                 0.3555421   -0.1520028   0.6394748
Birth       ki1101329-Keneba     GAMBIA       1                    NA                -0.0022696   -0.0742758   0.0649103
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0119941   -0.0560466   0.0302207
6 months    ki1101329-Keneba     GAMBIA       1                    NA                 0.0579710   -0.1036799   0.1959457
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0274898   -0.0845481   0.0265667
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0069187   -0.0363367   0.0483687
