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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        exclfeed3    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       26    117
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       51    117
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       15    117
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       25    117
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        4     22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        5     22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       11     22
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       27    162
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       51    162
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       35    162
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       49    162
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        6     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       16     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       14     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       60     96
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1     33
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3     33
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        5     33
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       24     33
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        2     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       63     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     44
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        7     44
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7     44
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       29     44
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        5     11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        6     11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     11
0-24 months   ki1000108-IRC              INDIA                          1                      0        0     14
0-24 months   ki1000108-IRC              INDIA                          1                      1        0     14
0-24 months   ki1000108-IRC              INDIA                          0                      0        8     14
0-24 months   ki1000108-IRC              INDIA                          0                      1        6     14
0-24 months   ki1000109-EE               PAKISTAN                       1                      0       14     30
0-24 months   ki1000109-EE               PAKISTAN                       1                      1       16     30
0-24 months   ki1000109-EE               PAKISTAN                       0                      0        0     30
0-24 months   ki1000109-EE               PAKISTAN                       0                      1        0     30
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0      144    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       81    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        6    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7    238
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       89    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      125    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       40    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       54    308
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      456   1502
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1      849   1502
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0       82   1502
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1      115   1502
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      185    491
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      231    491
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       32    491
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       43    491
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2251   4340
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1698   4340
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      219   4340
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      172   4340
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0       37     54
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       12     54
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0        5     54
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0     54
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        7     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       30     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        5     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       16     58
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1     13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        4     13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0     13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1        8     13
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        6     74
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1       24     74
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       17     74
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       27     74
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        4     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        6     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        5     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       31     46
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       11     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       24     29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        8     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        3      6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        3      6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      6
0-6 months    ki1000108-IRC              INDIA                          1                      0        0     10
0-6 months    ki1000108-IRC              INDIA                          1                      1        0     10
0-6 months    ki1000108-IRC              INDIA                          0                      0        5     10
0-6 months    ki1000108-IRC              INDIA                          0                      1        5     10
0-6 months    ki1000109-EE               PAKISTAN                       1                      0        5     12
0-6 months    ki1000109-EE               PAKISTAN                       1                      1        7     12
0-6 months    ki1000109-EE               PAKISTAN                       0                      0        0     12
0-6 months    ki1000109-EE               PAKISTAN                       0                      1        0     12
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      0       45     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      1       43     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      0        3     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      1        3     94
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       24    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1      100    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       16    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1       45    185
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0       98    645
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1      444    645
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0       32    645
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1       71    645
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       54    181
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1       96    181
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       13    181
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       18    181
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0      762   2720
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1698   2720
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0       88   2720
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      172   2720
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0        5     10
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        3     10
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0        2     10
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0     10
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       19     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       21     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       10     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     59
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        3      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       21     88
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       27     88
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       18     88
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       22     88
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0        9     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       29     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1     22
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3     22
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        5     22
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       13     22
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     48
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     48
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8     48
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       39     48
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     32
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        3     32
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7     32
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       21     32
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        2      5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        3      5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      5
6-24 months   ki1000108-IRC              INDIA                          1                      0        0      4
6-24 months   ki1000108-IRC              INDIA                          1                      1        0      4
6-24 months   ki1000108-IRC              INDIA                          0                      0        3      4
6-24 months   ki1000108-IRC              INDIA                          0                      1        1      4
6-24 months   ki1000109-EE               PAKISTAN                       1                      0        9     18
6-24 months   ki1000109-EE               PAKISTAN                       1                      1        9     18
6-24 months   ki1000109-EE               PAKISTAN                       0                      0        0     18
6-24 months   ki1000109-EE               PAKISTAN                       0                      1        0     18
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       99    144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       38    144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        3    144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        4    144
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       65    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       24    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1        9    123
6-24 months   ki1101329-Keneba           GAMBIA                         1                      0      358    857
6-24 months   ki1101329-Keneba           GAMBIA                         1                      1      405    857
6-24 months   ki1101329-Keneba           GAMBIA                         0                      0       50    857
6-24 months   ki1101329-Keneba           GAMBIA                         0                      1       44    857
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      131    310
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      135    310
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       19    310
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       25    310
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1489   1620
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   1620
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      131   1620
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   1620
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0       32     44
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1        9     44
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0        3     44
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0     44


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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
![](/tmp/7def5d38-08be-4c15-9a9c-2a1db5d1c9a8/3f5b7836-a742-4309-a129-f335a02b1e55/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7def5d38-08be-4c15-9a9c-2a1db5d1c9a8/3f5b7836-a742-4309-a129-f335a02b1e55/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7def5d38-08be-4c15-9a9c-2a1db5d1c9a8/3f5b7836-a742-4309-a129-f335a02b1e55/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7def5d38-08be-4c15-9a9c-2a1db5d1c9a8/3f5b7836-a742-4309-a129-f335a02b1e55/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.6665661   0.5605468   0.7725854
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.6357235   0.4749461   0.7965009
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.6514344   0.5360163   0.7668526
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.5883630   0.4687110   0.7080151
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.7272727   0.5132170   0.9413285
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.8108108   0.7343861   0.8872355
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5823698   0.5142141   0.6505255
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5734224   0.4693151   0.6775298
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.6500269   0.6225174   0.6775365
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5806902   0.5123410   0.6490393
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5558160   0.5031403   0.6084918
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5930325   0.4645490   0.7215160
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4294633   0.4142056   0.4447211
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4443238   0.3966193   0.4920284
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8108108   0.6837788   0.9378428
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.7619048   0.5846570   0.9391525
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.8000000   0.6503909   0.9496091
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.6136364   0.4674979   0.7597749
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8068795   0.7386464   0.8751126
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.7418528   0.6301690   0.8535366
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.8196426   0.7881216   0.8511636
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.7024603   0.6170828   0.7878378
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6412986   0.5636574   0.7189397
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5903629   0.4106563   0.7700695
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6893700   0.6711296   0.7076105
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6716004   0.6141448   0.7290561
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5250000   0.3534413   0.6965587
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4736842   0.2738216   0.6735468
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.5518257   0.3942050   0.7094465
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.5491210   0.3508869   0.7473550
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2777778   0.1853143   0.3702413
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1045711   0.4408835
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5294305   0.4915601   0.5673008
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.4560423   0.3482888   0.5637958
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5042390   0.4386362   0.5698417
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4978449   0.3381889   0.6575009


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.6495726   0.5607849   0.7383604
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.6172840   0.5340594   0.7005085
0-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.7916667   0.7146386   0.8686947
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.6418109   0.6160920   0.6675299
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5580448   0.5093588   0.6067308
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4308756   0.4161410   0.4456101
0-6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.7931034   0.6894917   0.8967152
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.6891892   0.5810852   0.7972932
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.7984496   0.7683939   0.8285053
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.6298343   0.5587812   0.7008873
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.6875000   0.6700777   0.7049223
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5084746   0.3754416   0.6415076
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.5568182   0.4384773   0.6751591
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5239207   0.4881434   0.5596979
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5161290   0.4555456   0.5767125


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9537291   0.7061120   1.2881798
0-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.9031807   0.6889283   1.1840643
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 1.1148649   0.8180289   1.5194129
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.6990889
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9846362   0.7928367   1.2228350
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 0.8933325   0.7887960   1.0117228
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0669582   0.8427466   1.3508211
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0346025   0.9256383   1.1563937
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9396825   0.7098559   1.2439191
0-6 months    ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA        0                    1                 0.7670455   0.5666415   1.0383263
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9194096   0.7732694   1.0931689
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 0.8570324   0.7549542   0.9729127
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9205741   0.6635197   1.2772141
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9742235   0.8909929   1.0652288
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9022556   0.5291159   1.5385386
6-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.9950985   0.6240984   1.5866423
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9818182   0.4873998   1.9777746
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 0.8613829   0.6731024   1.1023293
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9873194   0.6982579   1.3960453


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0169935   -0.0849155    0.0509286
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0341505   -0.1230577    0.0547567
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0643939   -0.1121822    0.2409701
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899    0.0282857
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0012010   -0.0392961    0.0368942
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0082160   -0.0179160    0.0014840
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0022288   -0.0185442    0.0230017
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0014122   -0.0030189    0.0058434
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0177074   -0.0968466    0.0614319
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.1108108   -0.2373338    0.0157122
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0230957   -0.0663895    0.0201980
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0211930   -0.0357267   -0.0066593
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0114643   -0.0445547    0.0216260
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0018700   -0.0075517    0.0038117
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0165254   -0.1017525    0.0687016
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0049924   -0.1113748    0.1213596
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0013550   -0.0528032    0.0500932
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0055098   -0.0180642    0.0070446
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0118901   -0.0132087    0.0369889


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0261610   -0.1367176    0.0736429
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0553238   -0.2107352    0.0801388
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0813397   -0.1745047    0.2814531
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925    0.0750564
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0020665   -0.0698081    0.0613856
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0128013   -0.0280357    0.0022074
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0039939   -0.0339319    0.0405285
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0032776   -0.0070569    0.0135061
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0223267   -0.1273587    0.0729199
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.1607843   -0.3673319    0.0145624
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0294670   -0.0865513    0.0246183
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0265427   -0.0450755   -0.0083386
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0182021   -0.0722146    0.0330895
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0027200   -0.0110199    0.0055117
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0325000   -0.2127605    0.1209672
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0089660   -0.2234691    0.1972430
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0049020   -0.2095297    0.1651070
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0105165   -0.0347791    0.0131773
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0230370   -0.0269046    0.0705498
