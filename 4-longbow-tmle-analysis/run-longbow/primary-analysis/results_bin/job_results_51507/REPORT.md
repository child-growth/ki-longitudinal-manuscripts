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
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      149     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       32     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       61     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        6     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       84     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      139     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        1     225
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0      116     240
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1       30     240
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0       70     240
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       24     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       76     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1       10     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      139     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       10     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       67     286
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        3     286
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      208     286
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     286
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       34     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      220     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     275
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       65     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        4     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      161     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       19     249
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
0-24 months   ki1000108-IRC              INDIA                          1                  0        0      10
0-24 months   ki1000108-IRC              INDIA                          1                  1        0      10
0-24 months   ki1000108-IRC              INDIA                          0                  0        9      10
0-24 months   ki1000108-IRC              INDIA                          0                  1        1      10
0-24 months   ki1000109-EE               PAKISTAN                       1                  0      222     378
0-24 months   ki1000109-EE               PAKISTAN                       1                  1      130     378
0-24 months   ki1000109-EE               PAKISTAN                       0                  0       12     378
0-24 months   ki1000109-EE               PAKISTAN                       0                  1       14     378
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      318     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      104     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     444
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      440     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       63     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      170     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       27     700
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0     1514    2019
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1      285    2019
0-24 months   ki1101329-Keneba           GAMBIA                         0                  0      164    2019
0-24 months   ki1101329-Keneba           GAMBIA                         0                  1       56    2019
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      258     475
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      134     475
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       59     475
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       24     475
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    21114   25765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1897   25765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2349   25765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      405   25765
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      132     165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       17     165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       13     165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        3     165
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      174     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        7     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       65     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        2     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       85     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      140     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     225
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0      140     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        6     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0       82     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       12     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       84     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        2     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      145     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4     235
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       70     286
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     286
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      214     286
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        2     286
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       34     275
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     275
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      237     275
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        4     275
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       69     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      176     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     249
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        9      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        1      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
0-6 months    ki1000108-IRC              INDIA                          1                  0        0      10
0-6 months    ki1000108-IRC              INDIA                          1                  1        0      10
0-6 months    ki1000108-IRC              INDIA                          0                  0        9      10
0-6 months    ki1000108-IRC              INDIA                          0                  1        1      10
0-6 months    ki1000109-EE               PAKISTAN                       1                  0      308     378
0-6 months    ki1000109-EE               PAKISTAN                       1                  1       44     378
0-6 months    ki1000109-EE               PAKISTAN                       0                  0       17     378
0-6 months    ki1000109-EE               PAKISTAN                       0                  1        9     378
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      394     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       28     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       20     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        2     444
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      486     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       17     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      184     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       13     700
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0     1753    2019
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1       46    2019
0-6 months    ki1101329-Keneba           GAMBIA                         0                  0      202    2019
0-6 months    ki1101329-Keneba           GAMBIA                         0                  1       18    2019
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      381     475
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       11     475
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       76     475
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        7     475
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    22238   25742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      759   25742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2486   25742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      259   25742
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0      149     165
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0     165
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0       15     165
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1        1     165
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      142     235
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       29     235
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       59     235
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        5     235
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       80     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      125     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0      114     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1       27     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0       72     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       20     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       76     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        9     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      140     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        7     232
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       63     268
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        3     268
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      195     268
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        7     268
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       32     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      202     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       19     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       61     239
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        4     239
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      157     239
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       17     239
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        8      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        2      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
6-24 months   ki1000108-IRC              INDIA                          1                  0        0      10
6-24 months   ki1000108-IRC              INDIA                          1                  1        0      10
6-24 months   ki1000108-IRC              INDIA                          0                  0       10      10
6-24 months   ki1000108-IRC              INDIA                          0                  1        0      10
6-24 months   ki1000109-EE               PAKISTAN                       1                  0      227     372
6-24 months   ki1000109-EE               PAKISTAN                       1                  1      120     372
6-24 months   ki1000109-EE               PAKISTAN                       0                  0       13     372
6-24 months   ki1000109-EE               PAKISTAN                       0                  1       12     372
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      253     468
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      134     468
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       59     468
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       22     468
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    13906   16707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1271   16707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1346   16707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      184   16707
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      132     165
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       17     165
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       14     165
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        2     165


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
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/38221ade-476b-41cd-b179-e6c967c5fafe/20eca260-5dec-4572-86f3-4fcb26a001d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/38221ade-476b-41cd-b179-e6c967c5fafe/20eca260-5dec-4572-86f3-4fcb26a001d0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/38221ade-476b-41cd-b179-e6c967c5fafe/20eca260-5dec-4572-86f3-4fcb26a001d0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/38221ade-476b-41cd-b179-e6c967c5fafe/20eca260-5dec-4572-86f3-4fcb26a001d0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1767956   0.1211058   0.2324854
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0895522   0.0210423   0.1580622
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1990988   0.1339837   0.2642140
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.2603223   0.1752855   0.3453592
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1206040   0.0498282   0.1913797
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.0644997   0.0247923   0.1042071
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3705133   0.3198577   0.4211688
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.5333758   0.3186974   0.7480542
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1235144   0.0945869   0.1524420
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1336823   0.0848843   0.1824803
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1584103   0.1415676   0.1752530
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.2563147   0.1997986   0.3128309
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3411014   0.2941411   0.3880618
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2976426   0.1967448   0.3985404
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0845381   0.0805483   0.0885279
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1263689   0.1132605   0.1394772
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.0410959   0.0088284   0.0733634
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.1276596   0.0600574   0.1952617
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.1250000   0.0904052   0.1595948
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.3461538   0.1630451   0.5292626
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0338024   0.0179928   0.0496120
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0629883   0.0276455   0.0983310
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0256184   0.0183197   0.0329171
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0822286   0.0469372   0.1175201
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0280612   0.0116955   0.0444270
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0843373   0.0244901   0.1441846
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0350778   0.0326353   0.0375203
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0716970   0.0613635   0.0820305
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1695906   0.1132239   0.2259574
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0781250   0.0122357   0.1440143
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1857296   0.1216243   0.2498349
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.2251384   0.1427037   0.3075731
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1058824   0.0403304   0.1714343
6-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.0476190   0.0131187   0.0821194
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3459455   0.2958032   0.3960877
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.4747855   0.2489218   0.7006492
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1242773   0.0931810   0.1553736
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1185511   0.0723836   0.1647186
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1554342   0.1382302   0.1726382
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.2500153   0.1933769   0.3066537
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3459954   0.2986238   0.3933670
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2847352   0.1851243   0.3843461
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0852383   0.0803716   0.0901050
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1044482   0.0874806   0.1214157


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1532258   0.1083048   0.1981468
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.2250000   0.1720591   0.2779409
0-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.0851064   0.0493539   0.1208589
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3809524   0.3319322   0.4299725
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2500000   0.2118239   0.2881761
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1688955   0.1525490   0.1852420
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3326316   0.2902162   0.3750470
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0893460   0.0853745   0.0933175
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.0750000   0.0416074   0.1083926
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.1402116   0.1051635   0.1752598
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.0316989   0.0240550   0.0393428
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0378947   0.0207054   0.0550841
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0395463   0.0370065   0.0420860
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1446809   0.0996085   0.1897532
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.2017167   0.1500806   0.2533529
6-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.0689655   0.0362886   0.1016424
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3548387   0.3061520   0.4035255
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2565947   0.2209578   0.2922316
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1654450   0.1487764   0.1821136
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3333333   0.2905787   0.3760880
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0870892   0.0823628   0.0918157


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.5065299   0.2214605   1.158548
0-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 1.3075029   0.8343078   2.049081
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 0.5348059   0.2303918   1.241438
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.4395592   0.9412269   2.201733
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.0823213   0.7020011   1.668686
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.6180432   1.2689044   2.063247
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.8725926   0.6055131   1.257475
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.4948157   1.3404659   1.666938
0-6 months    ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED         INDIA        0                    1                 3.1063830   1.2049021   8.008630
0-6 months    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE              PAKISTAN     0                    1                 2.7692308   1.5243435   5.030781
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.8634273   0.8962603   3.874278
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 3.2097505   1.9187773   5.369304
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 3.0054765   1.1995016   7.530535
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 2.0439411   1.7542129   2.381521
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.4606681   0.1860779   1.140464
6-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 1.2121841   0.7407814   1.983568
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 0.4497355   0.1734112   1.166372
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.3724288   0.8344803   2.257166
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9539237   0.6031684   1.508651
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.6084958   1.2525593   2.065578
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.8229450   0.5658392   1.196875
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.2253662   1.0344307   1.451545


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0235698   -0.0479064    0.0007669
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0259012   -0.0153120    0.0671143
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0354976   -0.0879885    0.0169933
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0104391   -0.0039826    0.0248608
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130    0.0157220
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0050570   -0.0107489    0.0208629
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0104852    0.0040814    0.0168889
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0084699   -0.0274756    0.0105359
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0048079    0.0033229    0.0062930
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.0339041    0.0040800    0.0637282
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0152116    0.0012041    0.0292192
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0090548   -0.0017861    0.0198956
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0060805    0.0019938    0.0101672
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0098335   -0.0011773    0.0208444
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0044684    0.0032444    0.0056925
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0249098   -0.0490938   -0.0007258
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0159872   -0.0241266    0.0561009
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0369168   -0.0839927    0.0101590
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0088933   -0.0052055    0.0229920
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993    0.0202761
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0021275   -0.0180400    0.0137850
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0100108    0.0034977    0.0165240
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0126621   -0.0314422    0.0061181
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0018509    0.0002202    0.0034817


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1538238   -0.3197802   -0.0087356
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.1151163   -0.0888578    0.2808803
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4170967   -1.1576356    0.0692761
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0274027   -0.0112547    0.0645823
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627    0.0625110
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0393323   -0.0917653    0.1546878
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0620809    0.0236268    0.0990205
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0254632   -0.0842241    0.0301132
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0538124    0.0372961    0.0700453
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.4520548   -0.0343995    0.7097408
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1084906    0.0057298    0.2006307
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2112780   -0.0725179    0.4199794
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.1918199    0.0615477    0.3040083
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2594955   -0.0622319    0.4837785
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1129928    0.0830453    0.1419623
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1721706   -0.3457595   -0.0209729
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0792555   -0.1429905    0.2582874
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.5352941   -1.3371869   -0.0085321
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0250628   -0.0155024    0.0640076
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691    0.0774953
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0174168   -0.1562414    0.1047397
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0605084    0.0205239    0.0988606
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0379862   -0.0959031    0.0168698
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0212532    0.0024121    0.0397384
