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

agecat        studyid                    country                        exclfeed6    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0        7    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       11    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       33    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       63    114
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        6     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17     24
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0    162
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        1    162
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       62    162
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       99    162
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        0     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       19     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       74     94
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        6     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       28     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     75
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     75
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       11     75
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       64     75
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        9     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       41     50
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        7     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        9     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     16
0-24 months   ki1000108-IRC              INDIA                          1                      0        0     19
0-24 months   ki1000108-IRC              INDIA                          1                      1        0     19
0-24 months   ki1000108-IRC              INDIA                          0                      0       11     19
0-24 months   ki1000108-IRC              INDIA                          0                      1        8     19
0-24 months   ki1000109-EE               PAKISTAN                       1                      0       15     34
0-24 months   ki1000109-EE               PAKISTAN                       1                      1       16     34
0-24 months   ki1000109-EE               PAKISTAN                       0                      0        0     34
0-24 months   ki1000109-EE               PAKISTAN                       0                      1        3     34
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0      144    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       81    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        6    238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7    238
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      100    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8    108
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       31    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       45    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       98    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1      134    308
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      180   1602
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1      316   1602
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0      406   1602
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1      700   1602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      192    594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      251    594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       70    594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       81    594
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2000   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1503   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      598   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      425   4526
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      983   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      372   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      352   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      134   1841
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        2     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1        5     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0       10     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       41     58
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13     15
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        0     72
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        0     72
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       20     72
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       52     72
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        0     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       36     44
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       10     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       24     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       13     14
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        4      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      9
0-6 months    ki1000108-IRC              INDIA                          1                      0        0     13
0-6 months    ki1000108-IRC              INDIA                          1                      1        0     13
0-6 months    ki1000108-IRC              INDIA                          0                      0        7     13
0-6 months    ki1000108-IRC              INDIA                          0                      1        6     13
0-6 months    ki1000109-EE               PAKISTAN                       1                      0        6     15
0-6 months    ki1000109-EE               PAKISTAN                       1                      1        7     15
0-6 months    ki1000109-EE               PAKISTAN                       0                      0        0     15
0-6 months    ki1000109-EE               PAKISTAN                       0                      1        2     15
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      0       45     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      1       43     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      0        3     94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      1        3     94
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       48     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     48
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       14    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       38    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       26    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1      107    185
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0       37    678
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1      166    678
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0      110    678
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1      365    678
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       54    228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1      116    228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       24    228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       34    228
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0      702   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1503   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      202   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      425   2832
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      141    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      229    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       77    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       79    526
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0        5     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1        6     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       23     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       22     56
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0     90
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        1     90
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       42     90
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       47     90
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       38     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        6     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       18     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       40     47
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       28     36
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        3      7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4      7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      7
6-24 months   ki1000108-IRC              INDIA                          1                      0        0      6
6-24 months   ki1000108-IRC              INDIA                          1                      1        0      6
6-24 months   ki1000108-IRC              INDIA                          0                      0        4      6
6-24 months   ki1000108-IRC              INDIA                          0                      1        2      6
6-24 months   ki1000109-EE               PAKISTAN                       1                      0        9     19
6-24 months   ki1000109-EE               PAKISTAN                       1                      1        9     19
6-24 months   ki1000109-EE               PAKISTAN                       0                      0        0     19
6-24 months   ki1000109-EE               PAKISTAN                       0                      1        1     19
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       99    144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       38    144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        3    144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        4    144
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       52     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8     60
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       17    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        7    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       72    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       27    123
6-24 months   ki1101329-Keneba           GAMBIA                         1                      0      143    924
6-24 months   ki1101329-Keneba           GAMBIA                         1                      1      150    924
6-24 months   ki1101329-Keneba           GAMBIA                         0                      0      296    924
6-24 months   ki1101329-Keneba           GAMBIA                         0                      1      335    924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      138    366
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      135    366
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       46    366
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       47    366
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1298   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      396   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   1694
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      842   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      143   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      275   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       55   1315


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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/99220d84-8480-41eb-bbb9-00d82e8c52be/9eecf55f-46ce-4bf4-a508-db96c6bc0408/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/99220d84-8480-41eb-bbb9-00d82e8c52be/9eecf55f-46ce-4bf4-a508-db96c6bc0408/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/99220d84-8480-41eb-bbb9-00d82e8c52be/9eecf55f-46ce-4bf4-a508-db96c6bc0408/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/99220d84-8480-41eb-bbb9-00d82e8c52be/9eecf55f-46ce-4bf4-a508-db96c6bc0408/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.6111111   0.3920367   0.8301855
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.6562500   0.5578656   0.7546344
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5966802   0.4752831   0.7180773
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5767153   0.5118076   0.6416229
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.6359497   0.5899898   0.6819095
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.6359612   0.6062442   0.6656783
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5654579   0.5156658   0.6152499
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5418366   0.4516201   0.6320530
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4268893   0.4108748   0.4429038
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4231906   0.3945525   0.4518288
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2759500   0.2519948   0.2999052
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2719825   0.2341416   0.3098234
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7264865   0.6082689   0.8447041
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8025292   0.7350750   0.8699834
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.8229118   0.7727677   0.8730559
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.7649370   0.7280482   0.8018259
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6816216   0.6110799   0.7521633
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5652890   0.4329104   0.6976676
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6818042   0.6625390   0.7010693
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6793741   0.6431793   0.7155689
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.5947149   0.5475036   0.6419262
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.5554920   0.4915591   0.6194249
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5454545   0.2423555   0.8485536
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4888889   0.3352411   0.6425366
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2916667   0.0943448   0.4889886
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1836941   0.3617604
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5170746   0.4531857   0.5809635
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5333253   0.4925648   0.5740858
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4951361   0.4304388   0.5598334
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4999855   0.3913213   0.6086497
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1455026   0.1239113   0.1670940
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1643103   0.1251532   0.2034674


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.6491228   0.5591034   0.7391422
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.6342072   0.6090524   0.6593621
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5589226   0.5151400   0.6027051
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4259832   0.4115786   0.4403878
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2748506   0.2539041   0.2957971
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.7831858   0.7527627   0.8136090
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.6578947   0.5956613   0.7201282
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.6807910   0.6636189   0.6979630
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.5855513   0.5434121   0.6276905
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5000000   0.3630175   0.6369825
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5248918   0.4904236   0.5593599
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4972678   0.4417121   0.5528234
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1505703   0.1316510   0.1694897


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0738636   0.7282183   1.583568
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.699089
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9665399   0.7656206   1.220186
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.0000182   0.9182573   1.089059
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9582263   0.7940692   1.156319
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9913358   0.9198798   1.068342
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9856226   0.8424705   1.153099
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1046718   0.9196502   1.326917
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 0.9295493   0.8616094   1.002846
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 0.8293296   0.6419271   1.071442
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9964359   0.9387134   1.057708
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9340475   0.8270028   1.054948
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.8962963   0.4731967   1.697702
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9350649   0.4411401   1.982015
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.0314281   0.8928179   1.191558
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0097940   0.7848734   1.299170
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1292599   0.8528622   1.495233


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0380117   -0.1640633   0.2400867
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899   0.0282857
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0155114   -0.1204119   0.0893892
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0017424   -0.0395669   0.0360821
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0065353   -0.0324870   0.0194164
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0009061   -0.0080580   0.0062458
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0010994   -0.0122845   0.0100858
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0572973   -0.0410565   0.1556510
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0397259   -0.0824656   0.0030137
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0237269   -0.0615833   0.0141296
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0010132   -0.0099821   0.0079557
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0091636   -0.0292602   0.0109330
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0454545   -0.3193804   0.2284714
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0152439   -0.1895523   0.1590645
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0078171   -0.0442486   0.0598829
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0021316   -0.0293164   0.0335797
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0050677   -0.0062372   0.0163726


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0585586   -0.3102443   0.3235521
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925   0.0750564
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0266900   -0.2239127   0.1387521
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0027474   -0.0641945   0.0551517
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0116927   -0.0592626   0.0337410
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0021271   -0.0190587   0.0145232
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0039998   -0.0455257   0.0358767
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0731034   -0.0618858   0.1909325
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0507235   -0.1069638   0.0026595
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0360648   -0.0955930   0.0202289
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0014883   -0.0147501   0.0116002
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0156495   -0.0505420   0.0180841
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0909091   -0.8045548   0.3405118
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0551471   -0.9164156   0.4190533
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0148929   -0.0895268   0.1093050
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0042867   -0.0610246   0.0655777
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0336567   -0.0443371   0.1058257
