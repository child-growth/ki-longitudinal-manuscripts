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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        exclfeed3    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      148    240
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        8    240
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       80    240
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        4    240
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       62    195
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1    195
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      131    195
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1    195
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0      104    215
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        8    215
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       93    215
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       10    215
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       69    228
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        2    228
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      155    228
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2    228
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       62    281
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0    281
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      218    281
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1    281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       24    264
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    264
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      238    264
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    264
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       46    218
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    218
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      172    218
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    218
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       10     10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0     10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0     10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0     10
0-24 months   ki1000108-IRC              INDIA                          1                    0        0     10
0-24 months   ki1000108-IRC              INDIA                          1                    1        0     10
0-24 months   ki1000108-IRC              INDIA                          0                    0        9     10
0-24 months   ki1000108-IRC              INDIA                          0                    1        1     10
0-24 months   ki1000109-EE               PAKISTAN                       1                    0       38     39
0-24 months   ki1000109-EE               PAKISTAN                       1                    1        1     39
0-24 months   ki1000109-EE               PAKISTAN                       0                    0        0     39
0-24 months   ki1000109-EE               PAKISTAN                       0                    1        0     39
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      355    413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       40    413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       16    413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        2    413
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      443    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        8    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      183    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        7    641
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0     1645   1950
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       90   1950
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0      194   1950
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1       21   1950
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      326    457
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       54    457
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       63    457
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       14    457
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7714   8954
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      470   8954
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      731   8954
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1       39   8954
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      136    163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       10    163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       16    163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        1    163
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      152    240
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        4    240
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0       81    240
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        3    240
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       62    195
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1    195
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      132    195
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0    195
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0      107    215
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        5    215
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0       90    215
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       13    215
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       70    228
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        1    228
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      152    228
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        5    228
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       62    281
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0    281
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      219    281
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0    281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       24    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      238    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        1    263
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       46    218
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    218
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      172    218
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    218
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7     10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        3     10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0     10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0     10
0-6 months    ki1000108-IRC              INDIA                          1                    0        0     10
0-6 months    ki1000108-IRC              INDIA                          1                    1        0     10
0-6 months    ki1000108-IRC              INDIA                          0                    0        7     10
0-6 months    ki1000108-IRC              INDIA                          0                    1        3     10
0-6 months    ki1000109-EE               PAKISTAN                       1                    0       35     38
0-6 months    ki1000109-EE               PAKISTAN                       1                    1        3     38
0-6 months    ki1000109-EE               PAKISTAN                       0                    0        0     38
0-6 months    ki1000109-EE               PAKISTAN                       0                    1        0     38
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      444    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        5    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      180    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1        9    638
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0     1583   1837
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       43   1837
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0      198   1837
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1       13   1837
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      338    453
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       41    453
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       64    453
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       10    453
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0       23     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        2     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      148    240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        8    240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       80    240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        4    240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       62    195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1    195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      131    195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1    195
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0      104    215
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        8    215
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       93    215
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       10    215
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       69    228
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        2    228
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      155    228
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2    228
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       62    281
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0    281
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      218    281
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1    281
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       24    264
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    264
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      238    264
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    264
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       46    218
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    218
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      172    218
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    218
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       10     10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0     10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0     10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0     10
6-24 months   ki1000108-IRC              INDIA                          1                    0        0     10
6-24 months   ki1000108-IRC              INDIA                          1                    1        0     10
6-24 months   ki1000108-IRC              INDIA                          0                    0        9     10
6-24 months   ki1000108-IRC              INDIA                          0                    1        1     10
6-24 months   ki1000109-EE               PAKISTAN                       1                    0       38     39
6-24 months   ki1000109-EE               PAKISTAN                       1                    1        1     39
6-24 months   ki1000109-EE               PAKISTAN                       0                    0        0     39
6-24 months   ki1000109-EE               PAKISTAN                       0                    1        0     39
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      355    413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       40    413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       16    413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        2    413
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      443    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        8    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      183    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        7    641
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0     1645   1950
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       90   1950
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0      194   1950
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1       21   1950
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      326    457
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       54    457
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       63    457
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       14    457
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7714   8954
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      470   8954
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      731   8954
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1       39   8954
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      136    163
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       10    163
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       16    163
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        1    163


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/070f42e8-0f9f-44ca-8a0d-a58cb3a8cae2/da9de384-5b5f-489a-81ec-4ecf04501b50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/070f42e8-0f9f-44ca-8a0d-a58cb3a8cae2/da9de384-5b5f-489a-81ec-4ecf04501b50/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/070f42e8-0f9f-44ca-8a0d-a58cb3a8cae2/da9de384-5b5f-489a-81ec-4ecf04501b50/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/070f42e8-0f9f-44ca-8a0d-a58cb3a8cae2/da9de384-5b5f-489a-81ec-4ecf04501b50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0714286   0.0236212   0.1192360
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.0970874   0.0397753   0.1543994
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0177384   0.0055465   0.0299302
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0368421   0.0100362   0.0636481
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0520687   0.0416010   0.0625365
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0953377   0.0554567   0.1352187
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1425733   0.1074344   0.1777123
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1929376   0.1055412   0.2803340
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0574316   0.0516417   0.0632215
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0504736   0.0341649   0.0667824
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0446429   0.0063066   0.0829792
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1262136   0.0619304   0.1904968
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0111359   0.0014219   0.0208498
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0476190   0.0172344   0.0780036
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0266228   0.0187377   0.0345079
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0581125   0.0268284   0.0893966
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1081576   0.0767697   0.1395454
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1241911   0.0444466   0.2039356
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0714286   0.0236212   0.1192360
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.0970874   0.0397753   0.1543994
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0177384   0.0055465   0.0299302
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0368421   0.0100362   0.0636481
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0520911   0.0416275   0.0625547
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0960302   0.0562968   0.1357637
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1421858   0.1070335   0.1773381
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1813363   0.0936124   0.2690602
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0574412   0.0516503   0.0632322
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0501709   0.0339461   0.0663957


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0837209   0.0466125   0.1208293
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0234009   0.0116889   0.0351130
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0569231   0.0466368   0.0672094
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1487965   0.1161318   0.1814612
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0568461   0.0514610   0.0622312
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0837209   0.0466125   0.1208293
0-6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0219436   0.0105669   0.0333202
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0304845   0.0226208   0.0383482
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1125828   0.0834435   0.1417221
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0837209   0.0466125   0.1208293
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0234009   0.0116889   0.0351130
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0569231   0.0466368   0.0672094
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1487965   0.1161318   0.1814612
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0568461   0.0514610   0.0622312


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.3592233   0.5568160    3.317950
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 2.0769736   0.7633930    5.650850
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.8309968   1.1512912    2.911991
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3532512   0.8087503    2.264344
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8788484   0.6225651    1.240633
0-6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED     INDIA        0                    1                 2.8271844   1.0417139    7.672905
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 4.2761905   1.4510528   12.601750
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 2.1828096   1.1802724    4.036914
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1482426   0.5667362    2.326411
6-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.3592233   0.5568160    3.317950
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 2.0769736   0.7633930    5.650850
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.8435056   1.1640768    2.919492
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2753477   0.7418920    2.192384
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8734297   0.6185232    1.233389


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0122924   -0.0235037   0.0480884
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0056626   -0.0030924   0.0144175
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0048543    0.0002909   0.0094178
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0062231   -0.0094865   0.0219328
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0005855   -0.0020970   0.0009260
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0390781    0.0028081   0.0753481
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0108077    0.0012697   0.0203457
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0038617   -0.0000853   0.0078087
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0044252   -0.0093972   0.0182476
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0122924   -0.0235037   0.0480884
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0056626   -0.0030924   0.0144175
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0048320    0.0002695   0.0093945
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0066107   -0.0090427   0.0222641
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0005951   -0.0021054   0.0009152


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.1468254   -0.4013411   0.4805641
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2419808   -0.2103743   0.5252765
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0852788    0.0029429   0.1608155
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0418232   -0.0694472   0.1415166
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0102991   -0.0371219   0.0158299
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.4667659   -0.0999062   0.7414883
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.4925231   -0.0191564   0.7473078
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.1266774   -0.0083057   0.2435901
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0393063   -0.0913492   0.1543198
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.1468254   -0.4013411   0.4805641
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2419808   -0.2103743   0.5252765
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0848863    0.0025857   0.1603959
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0444279   -0.0664729   0.1437962
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0104688   -0.0372664   0.0156364
