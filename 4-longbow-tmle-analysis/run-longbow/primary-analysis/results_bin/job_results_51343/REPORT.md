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

agecat        studyid                    country                        exclfeed3    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       32    118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       62    118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       10    118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       14    118
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       11     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       34    177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       65    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       36    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       42    177
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        6     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       21     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       14     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       51     92
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2     32
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       23     32
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        1     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        3     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       62     78
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       12     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       25     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        5     11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        6     11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     11
0-24 months   ki1000108-IRC              INDIA                          1                      0        0     14
0-24 months   ki1000108-IRC              INDIA                          1                      1        0     14
0-24 months   ki1000108-IRC              INDIA                          0                      0        8     14
0-24 months   ki1000108-IRC              INDIA                          0                      1        6     14
0-24 months   ki1000109-EE               PAKISTAN                       1                      0      131    257
0-24 months   ki1000109-EE               PAKISTAN                       1                      1      104    257
0-24 months   ki1000109-EE               PAKISTAN                       0                      0       19    257
0-24 months   ki1000109-EE               PAKISTAN                       0                      1        3    257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0      144    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       81    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        6    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7    238
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       88    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      125    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       40    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       54    307
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      453   1234
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1      620   1234
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0       81   1234
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1       80   1234
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      185    470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      208    470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       34    470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       43    470
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     3664   7337
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2708   7337
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      519   7337
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      446   7337
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0       37     53
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       12     53
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0        4     53
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0     53
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        8     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       35     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        4     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       11     58
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        5     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1        8     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        7     82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1       30     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       18     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       27     82
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        4     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        9     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        5     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       24     42
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       11     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       23     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        5     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        6     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        3      6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        3      6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      6
0-6 months    ki1000108-IRC              INDIA                          1                      0        0     10
0-6 months    ki1000108-IRC              INDIA                          1                      1        0     10
0-6 months    ki1000108-IRC              INDIA                          0                      0        5     10
0-6 months    ki1000108-IRC              INDIA                          0                      1        5     10
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       38    108
0-6 months    ki1000109-EE               PAKISTAN                       1                      1       59    108
0-6 months    ki1000109-EE               PAKISTAN                       0                      0        9    108
0-6 months    ki1000109-EE               PAKISTAN                       0                      1        2    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      0       45     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      1       43     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      0        3     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      1        3     94
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       23    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1      100    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       16    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1       45    184
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0       95    377
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1      215    377
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0       31    377
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1       36    377
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       48    150
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1       71    150
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       14    150
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       17    150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1190   4580
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2708   4580
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      236   4580
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      446   4580
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0        5     10
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        3     10
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0        2     10
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0     10
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       24     60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       27     60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0        6     60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1        3     60
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        3      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       27     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       35     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       18     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       15     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       12     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0        9     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       27     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2     21
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       12     21
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       39     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        6     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       19     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        2      5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        3      5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      5
6-24 months   ki1000108-IRC              INDIA                          1                      0        0      4
6-24 months   ki1000108-IRC              INDIA                          1                      1        0      4
6-24 months   ki1000108-IRC              INDIA                          0                      0        3      4
6-24 months   ki1000108-IRC              INDIA                          0                      1        1      4
6-24 months   ki1000109-EE               PAKISTAN                       1                      0       93    149
6-24 months   ki1000109-EE               PAKISTAN                       1                      1       45    149
6-24 months   ki1000109-EE               PAKISTAN                       0                      0       10    149
6-24 months   ki1000109-EE               PAKISTAN                       0                      1        1    149
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      137    320
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      137    320
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       20    320
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       26    320
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2474   2757
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   2757
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      283   2757
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   2757
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0       32     43
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1        9     43
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0        2     43
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0     43


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




# Results Detail

## Results Plots
![](/tmp/e7698ab1-4e7a-4a31-a7f7-00f096f7f347/f9d028c8-1359-4509-9829-c1ced3851986/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e7698ab1-4e7a-4a31-a7f7-00f096f7f347/f9d028c8-1359-4509-9829-c1ced3851986/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e7698ab1-4e7a-4a31-a7f7-00f096f7f347/f9d028c8-1359-4509-9829-c1ced3851986/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e7698ab1-4e7a-4a31-a7f7-00f096f7f347/f9d028c8-1359-4509-9829-c1ced3851986/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.6691344   0.5788435   0.7594252
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.7060914   0.4618299   0.9503528
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.6594078   0.5546636   0.7641520
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.5344487   0.4084668   0.6604305
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.7777778   0.5946691   0.9608864
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.7846154   0.6984506   0.8707802
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.6012176   0.5356951   0.6667401
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5699097   0.4569363   0.6828831
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5749248   0.5427306   0.6071191
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5123735   0.4314124   0.5933345
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5298514   0.4758683   0.5838346
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5647629   0.4418449   0.6876808
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4253537   0.4133702   0.4373372
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4699719   0.4382083   0.5017356
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.8108108   0.6777087   0.9439129
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.6000000   0.4545320   0.7454680
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8141026   0.7459181   0.8822872
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.7382034   0.6236163   0.8527904
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.6930159   0.6410076   0.7450242
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.5134394   0.4053242   0.6215546
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5987733   0.5096528   0.6878938
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5596380   0.3757704   0.7435056
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6905023   0.6761161   0.7048884
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6755203   0.6404182   0.7106224
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.5431709   0.4054513   0.6808906
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.3882978   0.1663872   0.6102084
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2777778   0.1853143   0.3702413
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1045711   0.4408835
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5289548   0.4911006   0.5668089
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.4389046   0.3333583   0.5444509
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4994705   0.4348233   0.5641177
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5578630   0.3906513   0.7250747


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.6440678   0.5565826   0.7315530
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.6045198   0.5246128   0.6844268
0-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.7826087   0.7016344   0.8635829
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5672609   0.5371792   0.5973426
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5340426   0.4848509   0.5832342
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4298760   0.4185519   0.4412000
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.6951220   0.5922224   0.7980215
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.6657825   0.6181920   0.7133730
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5866667   0.5072781   0.6660552
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.6886463   0.6752359   0.7020567
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5239207   0.4881434   0.5596979
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5093750   0.4496016   0.5691484


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0552311   0.7263509   1.5330229
0-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.8104979   0.6106756   1.0757053
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 1.0087912   0.7775396   1.3088204
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.6990889
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9479259   0.7601424   1.1820988
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 0.8912008   0.7542241   1.0530542
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0658891   0.8380014   1.3557489
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.1048968   1.0284191   1.1870618
0-6 months    ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA        0                    1                 0.7400000   0.5521528   0.9917544
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9067694   0.7598100   1.0821531
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 0.7408768   0.5935501   0.9247718
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9346408   0.6510019   1.3418601
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9783028   0.9257193   1.0338732
6-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.7148722   0.3807521   1.3421914
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9818182   0.4873998   1.9777746
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 0.8297582   0.6460539   1.0656987
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1169088   0.8055843   1.5485471


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0250666   -0.0811986    0.0310654
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0548880   -0.1281354    0.0183594
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0048309   -0.1385574    0.1482192
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899    0.0282857
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0181557   -0.0539652    0.0176537
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0076639   -0.0190502    0.0037225
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0041911   -0.0175003    0.0258826
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0045223    0.0003189    0.0087257
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.1156889   -0.2269651   -0.0044126
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0260592   -0.0698043    0.0176860
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0272334   -0.0494384   -0.0050284
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0121067   -0.0537761    0.0295628
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0018560   -0.0072911    0.0035791
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0168551   -0.1059622    0.0722520
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0013550   -0.0528032    0.0500932
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0050341   -0.0173536    0.0072853
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0099045   -0.0147747    0.0345836


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0389192   -0.1315439    0.0461236
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0907961   -0.2204970    0.0251217
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0061728   -0.1952351    0.1736417
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925    0.0750564
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0311386   -0.0946688    0.0287046
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0135103   -0.0337939    0.0063753
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0078479   -0.0336275    0.0476591
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0105200    0.0006961    0.0202473
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.1664296   -0.3465073   -0.0104349
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0330682   -0.0904986    0.0213377
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0409044   -0.0750037   -0.0078867
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0206364   -0.0942961    0.0480651
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0026951   -0.0106198    0.0051674
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0320248   -0.2170297    0.1248569
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0049020   -0.2095297    0.1651070
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0096086   -0.0334070    0.0136418
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0194443   -0.0302768    0.0667659
