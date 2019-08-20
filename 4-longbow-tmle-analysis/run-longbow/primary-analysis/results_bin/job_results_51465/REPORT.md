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

agecat        studyid                    country                        exclfeed3    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      169     244
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        8     244
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       63     244
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        4     244
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       83     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      132     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     217
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0      135     238
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        9     238
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       82     238
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       12     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       84     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        2     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      147     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       68     281
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     281
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      212     281
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       33     267
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     267
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      232     267
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     267
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       68     246
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     246
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      178     246
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     246
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       10      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      10
0-24 months   ki1000108-IRC              INDIA                          1                    0        0      10
0-24 months   ki1000108-IRC              INDIA                          1                    1        0      10
0-24 months   ki1000108-IRC              INDIA                          0                    0        9      10
0-24 months   ki1000108-IRC              INDIA                          0                    1        1      10
0-24 months   ki1000109-EE               PAKISTAN                       1                    0      328     376
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       22     376
0-24 months   ki1000109-EE               PAKISTAN                       0                    0       20     376
0-24 months   ki1000109-EE               PAKISTAN                       0                    1        6     376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      355     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       40     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       16     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        2     413
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      442     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        8     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      183     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        7     640
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0     1656    1952
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       81    1952
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0      195    1952
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1       20    1952
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      328     470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       61     470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       67     470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       14     470
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    13338   15481
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      763   15481
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1260   15481
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      120   15481
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      137     163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       10     163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       15     163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        1     163
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      173     244
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     244
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0       64     244
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        3     244
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       83     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      133     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0      138     238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        6     238
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0       81     238
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       13     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       85     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        1     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      145     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        4     235
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       68     281
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     281
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      213     281
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       33     266
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     266
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      231     266
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     266
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       68     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      178     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     246
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        3      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      10
0-6 months    ki1000108-IRC              INDIA                          1                    0        0      10
0-6 months    ki1000108-IRC              INDIA                          1                    1        0      10
0-6 months    ki1000108-IRC              INDIA                          0                    0        7      10
0-6 months    ki1000108-IRC              INDIA                          0                    1        3      10
0-6 months    ki1000109-EE               PAKISTAN                       1                    0      318     365
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       21     365
0-6 months    ki1000109-EE               PAKISTAN                       0                    0       20     365
0-6 months    ki1000109-EE               PAKISTAN                       0                    1        6     365
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      443     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        5     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      180     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1        9     637
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0     1588    1834
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       35    1834
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0      200    1834
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1       11    1834
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      338     459
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       43     459
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       64     459
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       14     459
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0       34      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        2      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       10      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      169     244
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        8     244
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       63     244
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        4     244
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       83     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      132     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0      135     238
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        9     238
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       82     238
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       12     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       84     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      147     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       68     281
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     281
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      212     281
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1     281
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       33     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      232     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     267
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       68     246
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     246
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      178     246
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     246
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       10      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      10
6-24 months   ki1000108-IRC              INDIA                          1                    0        0      10
6-24 months   ki1000108-IRC              INDIA                          1                    1        0      10
6-24 months   ki1000108-IRC              INDIA                          0                    0        9      10
6-24 months   ki1000108-IRC              INDIA                          0                    1        1      10
6-24 months   ki1000109-EE               PAKISTAN                       1                    0      328     376
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       22     376
6-24 months   ki1000109-EE               PAKISTAN                       0                    0       20     376
6-24 months   ki1000109-EE               PAKISTAN                       0                    1        6     376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      355     413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       40     413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       16     413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        2     413
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      442     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        8     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      183     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        7     640
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0     1656    1952
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       81    1952
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0      195    1952
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1       20    1952
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      328     470
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       61     470
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       67     470
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       14     470
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    13338   15481
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      763   15481
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1260   15481
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      120   15481
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      137     163
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       10     163
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       15     163
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        1     163


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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/dd886c0e-a238-4aa8-98a6-6feb6b9e7b17/eb20b124-34ce-4aa9-bc9f-7bd68e71d101/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dd886c0e-a238-4aa8-98a6-6feb6b9e7b17/eb20b124-34ce-4aa9-bc9f-7bd68e71d101/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dd886c0e-a238-4aa8-98a6-6feb6b9e7b17/eb20b124-34ce-4aa9-bc9f-7bd68e71d101/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dd886c0e-a238-4aa8-98a6-6feb6b9e7b17/eb20b124-34ce-4aa9-bc9f-7bd68e71d101/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0625000   0.0228807   0.1021193
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1276596   0.0600562   0.1952629
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0628571   0.0373963   0.0883180
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0686043   0.3929342
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0177778   0.0055591   0.0299965
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0368421   0.0100361   0.0636481
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0469088   0.0369234   0.0568942
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0919050   0.0513880   0.1324221
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1568502   0.1206462   0.1930542
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1761065   0.0927937   0.2594194
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0553666   0.0511172   0.0596160
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0730939   0.0573119   0.0888758
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0416667   0.0089602   0.0743732
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1382979   0.0683644   0.2082313
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0619469   0.0362508   0.0876430
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0685978   0.3929407
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0111607   0.0014252   0.0208962
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0476190   0.0172344   0.0780037
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0217300   0.0145685   0.0288916
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0496221   0.0205747   0.0786695
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1128091   0.0810214   0.1445967
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1899655   0.1031042   0.2768268
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0625000   0.0228807   0.1021193
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1276596   0.0600562   0.1952629
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0628571   0.0373963   0.0883180
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0686043   0.3929342
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0177778   0.0055591   0.0299965
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0368421   0.0100361   0.0636481
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0467185   0.0367664   0.0566706
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0942390   0.0540905   0.1343876
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1570627   0.1208835   0.1932419
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1862889   0.1026562   0.2699217
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0552303   0.0509789   0.0594818
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0741731   0.0591316   0.0892145


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0882353   0.0521245   0.1243460
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0744681   0.0478968   0.1010394
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0517418   0.0419129   0.0615707
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1595745   0.1264314   0.1927176
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0570377   0.0528781   0.0611972
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0798319   0.0453258   0.1143380
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0739726   0.0470855   0.1008598
0-6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0250818   0.0179232   0.0322404
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1241830   0.0939798   0.1543862
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0882353   0.0521245   0.1243460
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0744681   0.0478968   0.1010394
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0517418   0.0419129   0.0615707
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1595745   0.1264314   0.1927176
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0570377   0.0528781   0.0611972


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 2.042553   0.8942249    4.665519
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000    1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 3.671329   1.6314273    8.261879
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 2.072368   0.7617066    5.638274
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.959228   1.2010895    3.195910
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.122769   0.6629097    1.901632
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.320180   1.0537391    1.653990
0-6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED     INDIA        0                    1                 3.319149   1.3047012    8.443886
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000    1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 3.725275   1.6472464    8.424770
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 4.266667   1.4478320   12.573589
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 2.283570   1.1660617    4.472054
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.683956   0.9828721    2.885125
6-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 2.042553   0.8942249    4.665519
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000    1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 3.671329   1.6314273    8.261879
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 2.072368   0.7617066    5.638274
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 2.017167   1.2530870    3.247152
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.186080   0.7158403    1.965224
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.342978   1.0859577    1.660828


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0257353   -0.0054772   0.0569478
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0116109   -0.0005313   0.0237532
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0056597   -0.0031121   0.0144315
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0048330    0.0003661   0.0092999
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0027243   -0.0128563   0.0183048
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0016710    0.0002001   0.0031419
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0381653    0.0070857   0.0692449
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0120257   -0.0004922   0.0245436
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0108173    0.0012626   0.0203721
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0033517   -0.0003035   0.0070070
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0113740   -0.0043167   0.0270646
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0257353   -0.0054772   0.0569478
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0116109   -0.0005313   0.0237532
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0056597   -0.0031121   0.0144315
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0050233    0.0005741   0.0094725
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0025118   -0.0130159   0.0180395
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0018073    0.0003441   0.0032706


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.2916667   -0.1381351   0.5591594
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1559184   -0.0137852   0.2972143
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2414815   -0.2111617   0.5249599
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0934062    0.0045853   0.1743016
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0170721   -0.0855357   0.1099811
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0292970    0.0033254   0.0545918
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.4780701    0.0069012   0.7256962
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1625696   -0.0137823   0.3082444
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.4921875   -0.0198203   0.7471383
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.1336328   -0.0194184   0.2637055
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0915902   -0.0422207   0.2082211
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.2916667   -0.1381351   0.5591594
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1559184   -0.0137852   0.2972143
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2414815   -0.2111617   0.5249599
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0970839    0.0087344   0.1775590
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0157405   -0.0864921   0.1083536
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0316869    0.0058500   0.0568523
