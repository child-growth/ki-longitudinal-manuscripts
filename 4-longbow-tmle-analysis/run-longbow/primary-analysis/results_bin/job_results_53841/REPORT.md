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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        exclfeed3    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      132     244
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       27     244
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       74     244
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       11     244
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       62     202
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        2     202
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      137     202
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        1     202
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       91     216
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1       22     216
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0       76     216
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       27     216
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       62     228
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        9     228
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      145     228
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       12     228
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       62     287
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        2     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      214     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     287
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       25     269
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     269
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      223     269
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     269
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       46     219
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1     219
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      154     219
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       18     219
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
0-24 months   ki1000108-IRC              INDIA                          1                  0        0      10
0-24 months   ki1000108-IRC              INDIA                          1                  1        0      10
0-24 months   ki1000108-IRC              INDIA                          0                  0        9      10
0-24 months   ki1000108-IRC              INDIA                          0                  1        1      10
0-24 months   ki1000109-EE               PAKISTAN                       1                  0       17      39
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       22      39
0-24 months   ki1000109-EE               PAKISTAN                       0                  0        0      39
0-24 months   ki1000109-EE               PAKISTAN                       0                  1        0      39
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      318     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      104     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     444
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      440     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       63     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      170     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       27     700
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0     1515    2019
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1      284    2019
0-24 months   ki1101329-Keneba           GAMBIA                         0                  0      163    2019
0-24 months   ki1101329-Keneba           GAMBIA                         0                  1       57    2019
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      247     458
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      133     458
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       54     458
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       24     458
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12291   14981
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1267   14981
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1290   14981
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      133   14981
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      132     165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       16     165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       13     165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4     165
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      154     244
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        5     244
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       81     244
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        4     244
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       63     202
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     202
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      138     202
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     202
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0      108     216
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        5     216
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0       92     216
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       11     216
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       69     228
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        2     228
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      152     228
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        5     228
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       64     287
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      221     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        2     287
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       25     269
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     269
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      240     269
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        4     269
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       47     219
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     219
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      169     219
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        3     219
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        9      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        1      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
0-6 months    ki1000108-IRC              INDIA                          1                  0        0      10
0-6 months    ki1000108-IRC              INDIA                          1                  1        0      10
0-6 months    ki1000108-IRC              INDIA                          0                  0        9      10
0-6 months    ki1000108-IRC              INDIA                          0                  1        1      10
0-6 months    ki1000109-EE               PAKISTAN                       1                  0       32      39
0-6 months    ki1000109-EE               PAKISTAN                       1                  1        7      39
0-6 months    ki1000109-EE               PAKISTAN                       0                  0        0      39
0-6 months    ki1000109-EE               PAKISTAN                       0                  1        0      39
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      394     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       28     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       20     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        2     444
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      486     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       17     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      184     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       13     700
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0     1754    2019
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1       45    2019
0-6 months    ki1101329-Keneba           GAMBIA                         0                  0      201    2019
0-6 months    ki1101329-Keneba           GAMBIA                         0                  1       19    2019
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      363     458
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       17     458
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       71     458
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        7     458
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12964   14954
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      570   14954
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1354   14954
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1       66   14954
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0      148     164
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0     164
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0       15     164
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1        1     164
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      127     231
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       24     231
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       70     231
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       10     231
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       59     185
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     185
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      124     185
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        1     185
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       90     209
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1       19     209
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0       76     209
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       24     209
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       62     226
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        8     226
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      148     226
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        8     226
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       59     267
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        2     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      198     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       23     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      206     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       19     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       45     210
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1     210
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      148     210
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       16     210
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        8      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        2      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
6-24 months   ki1000108-IRC              INDIA                          1                  0        0      10
6-24 months   ki1000108-IRC              INDIA                          1                  1        0      10
6-24 months   ki1000108-IRC              INDIA                          0                  0       10      10
6-24 months   ki1000108-IRC              INDIA                          0                  1        0      10
6-24 months   ki1000109-EE               PAKISTAN                       1                  0       20      38
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       18      38
6-24 months   ki1000109-EE               PAKISTAN                       0                  0        0      38
6-24 months   ki1000109-EE               PAKISTAN                       0                  1        0      38
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      298     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      100     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       12     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     417
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      380     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       55     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      159     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       20     614
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0     1436    1910
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1      264    1910
6-24 months   ki1101329-Keneba           GAMBIA                         0                  0      158    1910
6-24 months   ki1101329-Keneba           GAMBIA                         0                  1       52    1910
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      244     451
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      131     451
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       55     451
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       21     451
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7986    9608
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      793    9608
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      756    9608
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       73    9608
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      132     165
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       16     165
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       14     165
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        3     165


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/797357a6-a1e5-4bb0-bc99-74b91e448498/45dd4f33-98d2-4a59-b3c2-bd5ea67bf122/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/797357a6-a1e5-4bb0-bc99-74b91e448498/45dd4f33-98d2-4a59-b3c2-bd5ea67bf122/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/797357a6-a1e5-4bb0-bc99-74b91e448498/45dd4f33-98d2-4a59-b3c2-bd5ea67bf122/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/797357a6-a1e5-4bb0-bc99-74b91e448498/45dd4f33-98d2-4a59-b3c2-bd5ea67bf122/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1671472   0.1084836   0.2258107
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1260104   0.0529559   0.1990650
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1962411   0.1225675   0.2699147
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.2641616   0.1777400   0.3505833
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1267606   0.0492016   0.2043196
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.0764331   0.0347819   0.1180843
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1284308   0.0988568   0.1580047
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1293151   0.0818873   0.1767428
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1581177   0.1412835   0.1749518
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.2571862   0.2014745   0.3128979
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3544872   0.3066054   0.4023689
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2904123   0.1918858   0.3889388
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0934834   0.0881825   0.0987842
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0935491   0.0786456   0.1084526
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.0442478   0.0062433   0.0822523
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.1067961   0.0470114   0.1665808
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0338070   0.0179871   0.0496269
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0641520   0.0290993   0.0992047
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0250718   0.0178485   0.0322951
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0852007   0.0492817   0.1211197
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0447368   0.0239291   0.0655446
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0897436   0.0262457   0.1532414
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0421714   0.0384454   0.0458974
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0460307   0.0348802   0.0571812
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1550122   0.0964495   0.2135749
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1196579   0.0459837   0.1933321
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1825124   0.1080460   0.2569788
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.2396259   0.1552058   0.3240460
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1142857   0.0395884   0.1889830
6-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.0512821   0.0165924   0.0859717
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1266963   0.0954352   0.1579574
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1071176   0.0606472   0.1535880
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1551579   0.1379548   0.1723610
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.2501294   0.1940757   0.3061832
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3523485   0.3041753   0.4005217
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2485617   0.1497170   0.3474063
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0906415   0.0841467   0.0971364
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0855440   0.0654959   0.1055922


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1557377   0.1101466   0.2013289
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.2268519   0.1708720   0.2828317
0-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.0921053   0.0544873   0.1297232
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2500000   0.2118239   0.2881761
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1688955   0.1525490   0.1852420
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3427948   0.2992779   0.3863116
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0934517   0.0884729   0.0984306
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.0740741   0.0390675   0.1090807
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.0316989   0.0240550   0.0393428
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0524017   0.0319714   0.0728321
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0425304   0.0390546   0.0460063
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1471861   0.1013989   0.1929734
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.2057416   0.1508055   0.2606778
6-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.0707965   0.0372831   0.1043098
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2565947   0.2209578   0.2922316
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1654450   0.1487764   0.1821136
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3370288   0.2933549   0.3807028
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0901332   0.0839189   0.0963475


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7538893   0.3828713   1.484439
0-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 1.3461075   0.8185329   2.213723
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 0.6029724   0.2657429   1.368149
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.0068856   0.6532096   1.552057
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.6265494   1.2803336   2.066385
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.8192462   0.5707873   1.175857
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0007034   0.8444043   1.185933
0-6 months    ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED         INDIA        0                    1                 2.4135921   0.8657917   6.728439
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.8975947   0.9252987   3.891571
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 3.3982679   2.0403821   5.659834
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 2.0060331   0.8602152   4.678095
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0915152   0.8395761   1.419056
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7719256   0.3750105   1.588940
6-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 1.3129295   0.7642801   2.255434
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 0.4487180   0.1751721   1.149429
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.8454672   0.5133459   1.392462
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.6120959   1.2579114   2.066006
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.7054427   0.4646546   1.071009
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9437619   0.7396702   1.204167


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0114095   -0.0438566   0.0210376
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0306107   -0.0239251   0.0851466
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0346553   -0.0953519   0.0260413
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0001407   -0.0161076   0.0163889
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0107778    0.0043625   0.0171931
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0116924   -0.0302157   0.0068309
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0000316   -0.0015348   0.0014715
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.0298263   -0.0042119   0.0638644
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0090501   -0.0017186   0.0198189
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0066271    0.0024320   0.0108221
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0076649   -0.0038202   0.0191500
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0003590   -0.0007768   0.0014948
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0078261   -0.0403163   0.0246642
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0232292   -0.0322340   0.0786925
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0434893   -0.1004663   0.0134878
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0045465   -0.0208462   0.0117533
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0102871    0.0037452   0.0168290
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0153197   -0.0338650   0.0032257
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0005083   -0.0023101   0.0012934


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0732607   -0.3018103    0.1151641
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.1349372   -0.1403355    0.3437601
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.3762575   -1.2005759    0.1392776
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627    0.0625110
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0010940   -0.1336219    0.1198007
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0638136    0.0252922    0.1008125
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0341090   -0.0896065    0.0185618
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0003387   -0.0165522    0.0156163
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.4026549   -0.2114697    0.7054642
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2111700   -0.0708441    0.4189138
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.2090630    0.0761545    0.3228507
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.1462719   -0.0948184    0.3342716
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0084415   -0.0186816    0.0348424
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0531711   -0.2976116    0.1452224
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.1129049   -0.2007198    0.3446117
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.6142857   -1.5915829   -0.0055315
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691    0.0774953
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0372205   -0.1794698    0.0878730
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0621784    0.0220146    0.1006927
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0454550   -0.1020215    0.0082079
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0056397   -0.0258279    0.0141512
