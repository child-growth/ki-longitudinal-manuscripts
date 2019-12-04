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

agecat        studyid                    country                        predexfd6    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       15    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       30    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       25    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       44    114
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17     24
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0    162
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        2    162
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       62    162
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       98    162
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        2     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       18     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       73     94
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        6     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       22     34
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2004   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1506   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      594   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      422   4526
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      986   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      372   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      349   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      134   1841
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        4     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       14     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       32     58
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13     15
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        0     72
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        1     72
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       20     72
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       51     72
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        1     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       35     44
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        3     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1        7     10
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1506   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      202   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      422   2832
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      141    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      229    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       77    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       79    526
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       11     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       16     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       17     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       12     56
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0     90
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        1     90
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       42     90
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       47     90
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       38     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       15     24
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1302   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      392   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   1694
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      845   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      143   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      272   1315
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




# Results Detail

## Results Plots
![](/tmp/8bda109a-ddcc-41cb-8382-132a1a9ec03b/4751247f-cb96-4ae9-8263-974ddc069607/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8bda109a-ddcc-41cb-8382-132a1a9ec03b/4751247f-cb96-4ae9-8263-974ddc069607/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8bda109a-ddcc-41cb-8382-132a1a9ec03b/4751247f-cb96-4ae9-8263-974ddc069607/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8bda109a-ddcc-41cb-8382-132a1a9ec03b/4751247f-cb96-4ae9-8263-974ddc069607/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.6487685   0.5185790   0.7789581
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.6355126   0.5117562   0.7592689
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5912170   0.4711072   0.7113268
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5768277   0.5119043   0.6417512
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.6262191   0.5807867   0.6716515
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.6376864   0.6079185   0.6674543
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5648625   0.5151078   0.6146171
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5424717   0.4528553   0.6320882
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4260953   0.4100980   0.4420927
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4245269   0.3956268   0.4534269
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2759428   0.2520322   0.2998534
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2729085   0.2347194   0.3110976
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7451819   0.6262559   0.8641078
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8065160   0.7391563   0.8738757
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.8195814   0.7692465   0.8699163
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.7662033   0.7293337   0.8030730
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6836428   0.6130669   0.7542187
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5820380   0.4507338   0.7133421
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6826530   0.6634219   0.7018841
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6749354   0.6383904   0.7114803
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.5934481   0.5464057   0.6404906
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.5602794   0.4966702   0.6238886
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5778977   0.3902409   0.7655544
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4036330   0.2118681   0.5953980
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2916667   0.0943448   0.4889886
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1836941   0.3617604
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5069334   0.4404624   0.5734043
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5344383   0.4934262   0.5754503
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4936965   0.4286508   0.5587422
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4954043   0.3879591   0.6028496
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1442515   0.1227953   0.1657076
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1559010   0.1168207   0.1949813


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
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9795675   0.7408215   1.295255
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.699089
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9756616   0.7731685   1.231188
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.0183120   0.9349952   1.109053
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9603607   0.7975770   1.156368
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9963190   0.9240410   1.074250
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9890038   0.8451969   1.157279
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.0823076   0.9033360   1.296738
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 0.9348716   0.8663170   1.008851
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 0.8513773   0.6642363   1.091243
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9886947   0.9306957   1.050308
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9441085   0.8375860   1.064178
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.6984507   0.3936021   1.239407
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9350649   0.4411401   1.982015
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.0542574   0.9069726   1.225460
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0034592   0.7785272   1.293379
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0807584   0.8074132   1.446643


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0003543   -0.1088461   0.1095547
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899   0.0282857
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0100482   -0.1135643   0.0934679
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0079882   -0.0292199   0.0451962
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0059399   -0.0314280   0.0195481
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0001121   -0.0072782   0.0070540
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0010922   -0.0122310   0.0100467
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0386019   -0.0608699   0.1380737
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0363956   -0.0792762   0.0064851
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0257481   -0.0637394   0.0122432
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0018620   -0.0108531   0.0071290
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0078968   -0.0276552   0.0118616
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0778977   -0.2220723   0.0662769
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0152439   -0.1895523   0.1590645
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0179584   -0.0368077   0.0727245
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0035712   -0.0283631   0.0355056
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0063189   -0.0050545   0.0176922


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0005458   -0.1826548   0.1553674
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925   0.0750564
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0172896   -0.2118744   0.1460516
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0125955   -0.0478666   0.0695689
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0106274   -0.0573175   0.0340009
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0002632   -0.0172281   0.0164187
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0039736   -0.0453247   0.0357416
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0492507   -0.0868808   0.1683318
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0464712   -0.1028796   0.0070522
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0391371   -0.0989203   0.0173938
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0027351   -0.0160307   0.0103866
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0134861   -0.0477834   0.0196886
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1557953   -0.4932675   0.1054095
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0551471   -0.9164156   0.4190533
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0342136   -0.0761489   0.1332580
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0071817   -0.0591959   0.0693996
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0419662   -0.0364686   0.1144654
