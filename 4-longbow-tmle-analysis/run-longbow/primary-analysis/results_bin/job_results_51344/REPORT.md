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

**Intervention Variable:** exclfeed6

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

agecat        studyid                    country                        exclfeed6    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       16    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       20    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       28    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       57    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0    170
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        3    170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       66    170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1      101    170
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        0     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       18     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       71     90
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0     29
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0     29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        5     29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       24     29
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     3133   7501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2310   7501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1171   7501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      887   7501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      982   1836
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      373   1836
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      346   1836
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      135   1836
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        3     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1        9     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        9     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       38     59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        0     76
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        1     76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       22     76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       53     76
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        0     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       34     42
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       10     10
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1010   4682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2310   4682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      475   4682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      887   4682
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      139    522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      229    522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       75    522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       79    522
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       13     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       11     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       19     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       19     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0     94
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        2     94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       44     94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       48     94
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        0     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       10     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       37     48
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0     19
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0     19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        5     19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       14     19
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2123   2819
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   2819
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      696   2819
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   2819
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      843   1314
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      144   1314
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      271   1314
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/ae985b7c-3d36-4436-b917-b0aa5ac446cb/d72c4fcf-5531-4a9a-9b6c-8e097b0477e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae985b7c-3d36-4436-b917-b0aa5ac446cb/d72c4fcf-5531-4a9a-9b6c-8e097b0477e3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae985b7c-3d36-4436-b917-b0aa5ac446cb/d72c4fcf-5531-4a9a-9b6c-8e097b0477e3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae985b7c-3d36-4436-b917-b0aa5ac446cb/d72c4fcf-5531-4a9a-9b6c-8e097b0477e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5688396   0.4248201   0.7128591
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.6691948   0.5580927   0.7802970
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.4693285   0.3776591   0.5609978
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3604921   0.2696193   0.4513648
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5669236   0.4572365   0.6766106
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5876937   0.5237860   0.6516014
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5651149   0.5120073   0.6182224
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5604935   0.5260143   0.5949727
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5261098   0.4723065   0.5799130
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5198354   0.4321902   0.6074807
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4201168   0.4073548   0.4328787
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4402182   0.4195387   0.4608976
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2757971   0.2518488   0.2997454
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2768424   0.2384276   0.3152572
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.6371744   0.5080593   0.7662894
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.4608223   0.3201147   0.6015298
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7539544   0.6388304   0.8690784
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8018183   0.7339407   0.8696958
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.7161073   0.6362999   0.7959146
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.6128522   0.5556963   0.6700082
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5911494   0.5030481   0.6792506
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5838407   0.4372847   0.7303968
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6920045   0.6765025   0.7075065
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6575916   0.6328877   0.6822955
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.5967008   0.5496829   0.6437188
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.5701235   0.5054720   0.6347750
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5112810   0.2949032   0.7276588
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5174069   0.3440263   0.6907875
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3335213   0.2303296   0.4367130
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.2712317   0.1560385   0.3864249
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5034052   0.4395288   0.5672817
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5355819   0.4947751   0.5763888
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4967327   0.4313476   0.5621178
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4970059   0.3843994   0.6096123
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1460986   0.1244429   0.1677543
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1726298   0.1310258   0.2142337


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
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.1764210   0.8666514   1.5969125
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 0.7681018   0.5581328   1.0570610
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.6990889
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.0366366   0.8367336   1.2842981
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 0.9918223   0.8872066   1.1087738
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9880741   0.8108938   1.2039683
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0478472   0.9932993   1.1053906
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0037901   0.8580805   1.1742426
0-6 months    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     0                    1                 0.7232278   0.5003129   1.0454627
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.0634838   0.8925847   1.2671041
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 0.8558107   0.7410044   0.9884043
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9876366   0.7375626   1.3224993
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9502707   0.9104250   0.9918604
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9554595   0.8475358   1.0771261
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0119814   0.5848994   1.7509103
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 0.8132365   0.4797045   1.3786689
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.8711340   0.4389733   1.7287486
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.0639181   0.9187848   1.2319769
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0005500   0.7693134   1.3012906
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1815976   0.8902419   1.5683074


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0675240   -0.0639541    0.1990022
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0529860   -0.1129527    0.0069806
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899    0.0282857
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0161383   -0.0748289    0.1071056
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0040289   -0.0474342    0.0393764
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0000875   -0.0275650    0.0273901
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0060931   -0.0002061    0.0123922
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0008914   -0.0103149    0.0120976
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.0723596   -0.1649814    0.0202622
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0340891   -0.0616647    0.1298428
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0718286   -0.1399733   -0.0036840
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0005061   -0.0480988    0.0470867
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0091766   -0.0175239   -0.0008294
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0066625   -0.0265096    0.0131845
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0274100   -0.2040476    0.1492275
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0247965   -0.0928630    0.0432701
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0312695   -0.1927776    0.1302386
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0214865   -0.0303801    0.0733532
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0008199   -0.0334248    0.0317850
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0061084   -0.0053610    0.0175778


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1061092   -0.1236782    0.2889061
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                -0.1272655   -0.2808630    0.0079130
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925    0.0750564
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0276786   -0.1417422    0.1719594
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0071805   -0.0875749    0.0672710
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0001663   -0.0537907    0.0507294
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0142959   -0.0005943    0.0289646
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0032216   -0.0381174    0.0429145
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.1281120   -0.3077130    0.0268226
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0432579   -0.0865687    0.1575723
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1114869   -0.2234539   -0.0097669
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0008568   -0.0847673    0.0765629
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0134392   -0.0257489   -0.0012771
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0112917   -0.0454877    0.0217858
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0566474   -0.4936703    0.2525099
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0803190   -0.3250620    0.1192193
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.1131222   -0.8811275    0.3413307
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0409352   -0.0633574    0.1349989
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0016533   -0.0695997    0.0619769
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0401322   -0.0381270    0.1124917
