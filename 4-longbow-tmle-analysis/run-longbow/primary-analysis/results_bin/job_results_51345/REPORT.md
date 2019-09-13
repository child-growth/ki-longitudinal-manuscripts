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

**Intervention Variable:** exclfeed36

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

agecat        studyid                    country                        exclfeed36    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       15    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       23    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       29    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       55    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       17     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        0    177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        3    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       70    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1      104    177
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       20     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       72     93
0-24 months   ki0047075b-MAL-ED          PERU                           1                       0        0     32
0-24 months   ki0047075b-MAL-ED          PERU                           1                       1        0     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0        6     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1       26     32
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       13     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       65     78
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       37     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        2      5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      5
0-24 months   ki1000108-IRC              INDIA                          1                       0        0      5
0-24 months   ki1000108-IRC              INDIA                          1                       1        0      5
0-24 months   ki1000108-IRC              INDIA                          0                       0        3      5
0-24 months   ki1000108-IRC              INDIA                          0                       1        2      5
0-24 months   ki1000109-EE               PAKISTAN                       1                       0       80    255
0-24 months   ki1000109-EE               PAKISTAN                       1                       1       66    255
0-24 months   ki1000109-EE               PAKISTAN                       0                       0       68    255
0-24 months   ki1000109-EE               PAKISTAN                       0                       1       41    255
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      100    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8    108
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       21    291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       48    291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0       96    291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1      126    291
0-24 months   ki1101329-Keneba           GAMBIA                         1                       0      131   1211
0-24 months   ki1101329-Keneba           GAMBIA                         1                       1      195   1211
0-24 months   ki1101329-Keneba           GAMBIA                         0                       0      388   1211
0-24 months   ki1101329-Keneba           GAMBIA                         0                       1      497   1211
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      186    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      218    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       49    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       53    506
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     2398   5715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1805   5715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      864   5715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      648   5715
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      945   1783
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      361   1783
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      342   1783
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      135   1783
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0        3     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1       12     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0        9     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       36     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       13     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0        0     82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1        1     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0       25     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       56     82
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0        9     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       34     43
0-6 months    ki0047075b-MAL-ED          PERU                           1                       0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                       1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1       11     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       24     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       11     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2      3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      3
0-6 months    ki1000108-IRC              INDIA                          1                       0        0      3
0-6 months    ki1000108-IRC              INDIA                          1                       1        0      3
0-6 months    ki1000108-IRC              INDIA                          0                       0        2      3
0-6 months    ki1000108-IRC              INDIA                          0                       1        1      3
0-6 months    ki1000109-EE               PAKISTAN                       1                       0       21    107
0-6 months    ki1000109-EE               PAKISTAN                       1                       1       38    107
0-6 months    ki1000109-EE               PAKISTAN                       0                       0       25    107
0-6 months    ki1000109-EE               PAKISTAN                       0                       1       23    107
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       48     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     48
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       0        3    168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       1       40    168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       0       25    168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       1      100    168
0-6 months    ki1101329-Keneba           GAMBIA                         1                       0       29    373
0-6 months    ki1101329-Keneba           GAMBIA                         1                       1       72    373
0-6 months    ki1101329-Keneba           GAMBIA                         0                       0      102    373
0-6 months    ki1101329-Keneba           GAMBIA                         0                       1      170    373
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0       51    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1       77    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0       14    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       21    163
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0      680   3444
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1805   3444
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       0      311   3444
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      648   3444
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      134    512
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      226    512
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       0       73    512
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       79    512
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       12     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       11     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       19     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       45     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       48     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       38     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                       0        0     21
6-24 months   ki0047075b-MAL-ED          PERU                           1                       1        0     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0        6     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       15     21
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       41     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1      2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      2
6-24 months   ki1000108-IRC              INDIA                          1                       0        0      2
6-24 months   ki1000108-IRC              INDIA                          1                       1        0      2
6-24 months   ki1000108-IRC              INDIA                          0                       0        1      2
6-24 months   ki1000108-IRC              INDIA                          0                       1        1      2
6-24 months   ki1000109-EE               PAKISTAN                       1                       0       59    148
6-24 months   ki1000109-EE               PAKISTAN                       1                       1       28    148
6-24 months   ki1000109-EE               PAKISTAN                       0                       0       43    148
6-24 months   ki1000109-EE               PAKISTAN                       0                       1       18    148
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       52     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8     60
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       18    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1        8    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0       71    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1       26    123
6-24 months   ki1101329-Keneba           GAMBIA                         1                       0      102    838
6-24 months   ki1101329-Keneba           GAMBIA                         1                       1      123    838
6-24 months   ki1101329-Keneba           GAMBIA                         0                       0      286    838
6-24 months   ki1101329-Keneba           GAMBIA                         0                       1      327    838
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      135    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      141    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       35    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       32    343
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     1718   2271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1        0   2271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      553   2271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1        0   2271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      811   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      135   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      269   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       56   1271


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/6db5fcc9-f3f1-49e7-959f-963528a2b1da/8aeb8c84-c167-4a69-aebb-2d5efc79aad1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6db5fcc9-f3f1-49e7-959f-963528a2b1da/8aeb8c84-c167-4a69-aebb-2d5efc79aad1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6db5fcc9-f3f1-49e7-959f-963528a2b1da/8aeb8c84-c167-4a69-aebb-2d5efc79aad1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6db5fcc9-f3f1-49e7-959f-963528a2b1da/8aeb8c84-c167-4a69-aebb-2d5efc79aad1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6147375   0.4813483   0.7481266
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6552255   0.5438985   0.7665524
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.4547944   0.3662560   0.5433328
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3705230   0.2737131   0.4673328
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.7194383   0.6071942   0.8316824
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.5711118   0.5040465   0.6381771
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5928708   0.5331605   0.6525811
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5643856   0.5293667   0.5994044
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5380378   0.4848809   0.5911946
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4979425   0.3944367   0.6014482
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4242905   0.4097748   0.4388063
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4387682   0.4154446   0.4620917
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2787901   0.2541556   0.3034246
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2771023   0.2373368   0.3168678
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.6157830   0.4892552   0.7423108
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4464985   0.3045484   0.5884486
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.7144930   0.6278864   0.8010996
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.6250847   0.5672441   0.6829252
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6003479   0.5148132   0.6858827
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5852101   0.4189963   0.7514239
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7236329   0.7062326   0.7410333
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6804540   0.6512422   0.7096658
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6045089   0.5569466   0.6520711
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.5706222   0.5072397   0.6340048
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4887682   0.2783250   0.6992114
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4838105   0.3120773   0.6555437
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3310198   0.2313425   0.4306971
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3036353   0.1871830   0.4200875
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5402899   0.4669179   0.6136620
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5345437   0.4933167   0.5757707
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5111238   0.4454518   0.5767958
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4696554   0.3408420   0.5984688
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1429882   0.1209195   0.1650569
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1743936   0.1322790   0.2165082


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6393443   0.5530901   0.7255985
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.4196078   0.3541827   0.4850330
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.5979381   0.5402414   0.6556349
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5714286   0.5409902   0.6018670
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5355731   0.4882587   0.5828875
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4292213   0.4164001   0.4420426
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2781828   0.2567503   0.2996153
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5700935   0.4742263   0.6659606
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.6487936   0.6002638   0.6973233
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6012270   0.5255442   0.6769098
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.7122532   0.6971343   0.7273720
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.5957031   0.5531528   0.6382534
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3108108   0.2352987   0.3863229
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5369928   0.5007974   0.5731883
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1502754   0.1309788   0.1695719


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0658622   0.8084355   1.4052602
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.8147044   0.5874474   1.1298768
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.7938301   0.6526894   0.9654919
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.9519538   0.8464556   1.0706008
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9254787   0.7349481   1.1654030
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0341220   0.9736947   1.0982995
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9939459   0.8449999   1.1691463
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 0.7250906   0.4942332   1.0637819
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.8748647   0.7517941   1.0180823
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9747849   0.7081509   1.3418123
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9403304   0.8959306   0.9869305
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9439435   0.8401354   1.0605782
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9898568   0.5639979   1.7372697
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9172722   0.5609653   1.4998935
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8711340   0.4389733   1.7287486
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.9893645   0.8475106   1.1549616
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9188682   0.6782753   1.2448024
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2196361   0.9155097   1.6247915


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0246068   -0.0971617    0.1463752
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0351865   -0.0920809    0.0217078
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1215002   -0.2221922   -0.0208082
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0214422   -0.0718323    0.0289479
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0024646   -0.0262511    0.0213218
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0049308   -0.0019676    0.0118292
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0006073   -0.0123535    0.0111390
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0456896   -0.1356500    0.0442709
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0656994   -0.1415340    0.0101352
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0008791   -0.0401613    0.0419194
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0113797   -0.0206664   -0.0020931
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0088058   -0.0283049    0.0106934
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0048972   -0.1800152    0.1702207
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0202090   -0.0854837    0.0450656
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0312695   -0.1927776    0.1302386
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0032971   -0.0645890    0.0579948
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0067506   -0.0344848    0.0209835
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0072872   -0.0046578    0.0192321


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0384875   -0.1708788    0.2104168
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0838557   -0.2283654    0.0436532
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.2031986   -0.3869314   -0.0438056
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0375239   -0.1295164    0.0469764
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0046019   -0.0500092    0.0388418
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0114878   -0.0047167    0.0274310
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0021830   -0.0453071    0.0391620
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0801440   -0.2518630    0.0680201
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.1012640   -0.2255404    0.0104101
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0014621   -0.0691833    0.0674397
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0159771   -0.0291187   -0.0030033
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0147821   -0.0480194    0.0174010
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0101209   -0.4456368    0.2941905
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0650203   -0.2979478    0.1261064
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1131222   -0.8811275    0.3413307
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0061399   -0.1269729    0.1017374
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0133842   -0.0698052    0.0400613
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0484921   -0.0342632    0.1246259
