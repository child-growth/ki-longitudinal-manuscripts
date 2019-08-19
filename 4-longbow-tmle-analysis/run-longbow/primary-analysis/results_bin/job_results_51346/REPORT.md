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

**Intervention Variable:** predexfd6

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

agecat        studyid                    country                        predexfd6    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       26    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       42    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       35    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        2    170
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        7    170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       64    170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       97    170
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        4     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       17     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       68     90
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1     29
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        5     29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       19     29
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       65     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       37     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        7     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        9     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     16
0-24 months   ki1000108-IRC              INDIA                          1                      0        0     19
0-24 months   ki1000108-IRC              INDIA                          1                      1        0     19
0-24 months   ki1000108-IRC              INDIA                          0                      0       11     19
0-24 months   ki1000108-IRC              INDIA                          0                      1        8     19
0-24 months   ki1000109-EE               PAKISTAN                       1                      0       76    257
0-24 months   ki1000109-EE               PAKISTAN                       1                      1       65    257
0-24 months   ki1000109-EE               PAKISTAN                       0                      0       74    257
0-24 months   ki1000109-EE               PAKISTAN                       0                      1       42    257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0      144    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       81    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        6    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7    238
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      100    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8    108
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       31    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       49    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       97    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1      130    307
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      180   1326
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1      234   1326
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0      402   1326
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1      510   1326
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      187    538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      208    538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       68    538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       75    538
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     3142   7501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2315   7501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1162   7501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      882   7501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      985   1836
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      373   1836
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      343   1836
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      135   1836
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        5     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       21     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        7     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       26     59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        1     76
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        3     76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       21     76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       51     76
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        2     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       32     42
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        3     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1        7     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       24     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       11     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        4      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      9
0-6 months    ki1000108-IRC              INDIA                          1                      0        0     13
0-6 months    ki1000108-IRC              INDIA                          1                      1        0     13
0-6 months    ki1000108-IRC              INDIA                          0                      0        7     13
0-6 months    ki1000108-IRC              INDIA                          0                      1        6     13
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       20    108
0-6 months    ki1000109-EE               PAKISTAN                       1                      1       37    108
0-6 months    ki1000109-EE               PAKISTAN                       0                      0       27    108
0-6 months    ki1000109-EE               PAKISTAN                       0                      1       24    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      0       45     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      1       43     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      0        3     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      1        3     94
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       48     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     48
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       13    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       41    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       26    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1      104    184
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0       37    402
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1       84    402
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0      106    402
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1      175    402
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       49    171
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1       73    171
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       21    171
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       28    171
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1013   4682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2315   4682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      472   4682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      882   4682
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      139    522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      229    522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       75    522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       79    522
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       21     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       21     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       11     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        1     94
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        4     94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       43     94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       46     94
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        2     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0        9     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       36     48
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1     19
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        2     19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       12     19
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8     49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     49
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        3      7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4      7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      7
6-24 months   ki1000108-IRC              INDIA                          1                      0        0      6
6-24 months   ki1000108-IRC              INDIA                          1                      1        0      6
6-24 months   ki1000108-IRC              INDIA                          0                      0        4      6
6-24 months   ki1000108-IRC              INDIA                          0                      1        2      6
6-24 months   ki1000109-EE               PAKISTAN                       1                      0       56    149
6-24 months   ki1000109-EE               PAKISTAN                       1                      1       28    149
6-24 months   ki1000109-EE               PAKISTAN                       0                      0       47    149
6-24 months   ki1000109-EE               PAKISTAN                       0                      1       18    149
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       99    144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       38    144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        3    144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        4    144
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       52     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8     60
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       18    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        8    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       71    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       26    123
6-24 months   ki1101329-Keneba           GAMBIA                         1                      0      143    924
6-24 months   ki1101329-Keneba           GAMBIA                         1                      1      150    924
6-24 months   ki1101329-Keneba           GAMBIA                         0                      0      296    924
6-24 months   ki1101329-Keneba           GAMBIA                         0                      1      335    924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      138    367
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      135    367
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       47    367
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       47    367
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2129   2819
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   2819
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      690   2819
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   2819
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      846   1314
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      144   1314
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      268   1314
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       56   1314


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/fb788d3e-ab80-4081-89a4-e227cf088a22/59100a63-8e86-4b96-830c-09b893ca315e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb788d3e-ab80-4081-89a4-e227cf088a22/59100a63-8e86-4b96-830c-09b893ca315e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb788d3e-ab80-4081-89a4-e227cf088a22/59100a63-8e86-4b96-830c-09b893ca315e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb788d3e-ab80-4081-89a4-e227cf088a22/59100a63-8e86-4b96-830c-09b893ca315e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.6083173   0.4985529   0.7180818
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.6723828   0.5257456   0.8190200
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.4614799   0.3700928   0.5528669
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3555034   0.2650314   0.4459754
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5592706   0.4485504   0.6699908
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5860764   0.5221221   0.6500307
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5639437   0.5106676   0.6172198
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5604645   0.5260751   0.5948539
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5265746   0.4727228   0.5804265
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5204626   0.4326780   0.6082473
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4195714   0.4068331   0.4323096
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4415678   0.4207029   0.4624327
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2760506   0.2520472   0.3000541
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2829733   0.2434661   0.3224806
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8076923   0.6590088   0.9563759
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.7878788   0.6482934   0.9274642
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.6483068   0.5198600   0.7767536
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.4667120   0.3269489   0.6064751
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7595453   0.6472366   0.8718541
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.7991229   0.7307628   0.8674829
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.7131561   0.6320569   0.7942554
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.6129395   0.5557626   0.6701165
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6003176   0.5124680   0.6881672
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5726332   0.4314876   0.7137788
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6902463   0.6747281   0.7057646
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6614818   0.6365738   0.6863898
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.6020042   0.5549906   0.6490178
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.5621271   0.4977721   0.6264821
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5000000   0.3367001   0.6632999
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4500000   0.2444054   0.6555946
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3323053   0.2292897   0.4353209
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.2777979   0.1641814   0.3914144
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5067563   0.4429225   0.5705900
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5336859   0.4930608   0.5743110
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4943570   0.4291188   0.5595953
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5003040   0.3865167   0.6140914
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1452378   0.1237592   0.1667164
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1718756   0.1300205   0.2137308


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.6363636   0.5494154   0.7233119
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5610860   0.5320121   0.5901599
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5260223   0.4802445   0.5718001
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4262098   0.4150208   0.4373989
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2766885   0.2556490   0.2977279
0-6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.7966102   0.6946250   0.8985954
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.6442786   0.5973688   0.6911884
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5906433   0.5164645   0.6648221
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.6828279   0.6694976   0.6961581
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.5900383   0.5478064   0.6322702
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5248918   0.4904236   0.5593599
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4959128   0.4403572   0.5514684
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1522070   0.1331665   0.1712475


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.1053158   0.8314106   1.4694582
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 0.7703551   0.5583877   1.0627867
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.6990889
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.0479300   0.8424668   1.3035022
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 0.9938307   0.8886723   1.1114326
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9883930   0.8113523   1.2040646
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0524259   0.9973932   1.1104952
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0250776   0.8753367   1.2004342
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9754690   0.7555273   1.2594379
0-6 months    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     0                    1                 0.7198937   0.5021219   1.0321138
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.0521069   0.8867135   1.2483502
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 0.8594745   0.7426821   0.9946335
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9538837   0.7158793   1.2710163
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9583272   0.9179892   1.0004376
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9337594   0.8278726   1.0531893
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9000000   0.5131644   1.5784417
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 0.8359719   0.4982307   1.4026615
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.8711340   0.4389733   1.7287486
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.0531412   0.9101683   1.2185728
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0120298   0.7774738   1.3173489
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1834085   0.8899775   1.5735854


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0280463   -0.0540977   0.1101903
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0451375   -0.1043553   0.0140803
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899   0.0282857
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0237913   -0.0681982   0.1157808
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0028577   -0.0463023   0.0405869
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0005523   -0.0279119   0.0268072
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0066385    0.0003727   0.0129042
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0006378   -0.0106377   0.0119133
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0110821   -0.1251307   0.1029664
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.0834920   -0.1755242   0.0085403
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0284982   -0.0646677   0.1216640
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0688775   -0.1382685   0.0005134
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0096743   -0.0572183   0.0378697
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0074185   -0.0157309   0.0008940
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0119659   -0.0318680   0.0079363
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0161290   -0.1017291   0.0694710
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0235805   -0.0916436   0.0444827
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0312695   -0.1927776   0.1302386
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0181355   -0.0335121   0.0697831
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0015558   -0.0308540   0.0339656
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0069692   -0.0043926   0.0183310


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0440727   -0.0932001    0.1641082
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                -0.1084143   -0.2598468    0.0248162
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925    0.0750564
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0408041   -0.1309977    0.1865087
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0050931   -0.0855717    0.0694192
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0010500   -0.0544350    0.0496322
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0155755    0.0007649    0.0301666
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0023051   -0.0392929    0.0422382
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0139116   -0.1678073    0.1197034
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.1478218   -0.3268682    0.0070642
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0361632   -0.0897956    0.1475636
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1069064   -0.2209088   -0.0035491
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0163793   -0.1001907    0.0610474
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0108643   -0.0231191    0.0012437
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0202799   -0.0545788    0.0129036
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0333333   -0.2253187    0.1285714
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0763802   -0.3212271    0.1230921
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.1131222   -0.8811275    0.3413307
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0345509   -0.0692182    0.1282491
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0031372   -0.0644200    0.0664065
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0457877   -0.0316603    0.1174217
