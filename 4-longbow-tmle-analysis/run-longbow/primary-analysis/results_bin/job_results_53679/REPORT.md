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

agecat        studyid                    country                        exclfeed36    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0        4    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       12    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       39    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       66    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        6     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       17     24
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        2    178
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        5    178
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       68    178
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1      103    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        1     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        0     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       19     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       78     98
0-24 months   ki0047075b-MAL-ED          PERU                           1                       0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                       1        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0        6     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1       28     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       14     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       66     80
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        9     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       41     50
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        2      5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      5
0-24 months   ki1000108-IRC              INDIA                          1                       0        0      5
0-24 months   ki1000108-IRC              INDIA                          1                       1        0      5
0-24 months   ki1000108-IRC              INDIA                          0                       0        3      5
0-24 months   ki1000108-IRC              INDIA                          0                       1        2      5
0-24 months   ki1000109-EE               PAKISTAN                       1                       0        1      4
0-24 months   ki1000109-EE               PAKISTAN                       1                       1        0      4
0-24 months   ki1000109-EE               PAKISTAN                       0                       0        0      4
0-24 months   ki1000109-EE               PAKISTAN                       0                       1        3      4
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      100    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8    108
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       21    292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       44    292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0       97    292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1      130    292
0-24 months   ki1101329-Keneba           GAMBIA                         1                       0      131   1460
0-24 months   ki1101329-Keneba           GAMBIA                         1                       1      255   1460
0-24 months   ki1101329-Keneba           GAMBIA                         0                       0      392   1460
0-24 months   ki1101329-Keneba           GAMBIA                         0                       1      682   1460
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      190    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      257    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       52    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       60    559
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     1673   3743
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1225   3743
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      498   3743
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      347   3743
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      946   1787
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      360   1787
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      347   1787
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      134   1787
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0        1     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1        6     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0       11     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       42     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       13     15
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0        2     83
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0       24     83
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       54     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0        1     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        0     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0        8     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       39     48
0-6 months    ki0047075b-MAL-ED          PERU                           1                       0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                       1        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1       10     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        5     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       24     29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       13     14
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2      3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      3
0-6 months    ki1000108-IRC              INDIA                          1                       0        0      3
0-6 months    ki1000108-IRC              INDIA                          1                       1        0      3
0-6 months    ki1000108-IRC              INDIA                          0                       0        2      3
0-6 months    ki1000108-IRC              INDIA                          0                       1        1      3
0-6 months    ki1000109-EE               PAKISTAN                       1                       0        1      3
0-6 months    ki1000109-EE               PAKISTAN                       1                       1        0      3
0-6 months    ki1000109-EE               PAKISTAN                       0                       0        0      3
0-6 months    ki1000109-EE               PAKISTAN                       0                       1        2      3
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       48     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     48
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       0        4    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       1       37    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       0       25    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       1      103    169
0-6 months    ki1101329-Keneba           GAMBIA                         1                       0       29    622
0-6 months    ki1101329-Keneba           GAMBIA                         1                       1      132    622
0-6 months    ki1101329-Keneba           GAMBIA                         0                       0      106    622
0-6 months    ki1101329-Keneba           GAMBIA                         0                       1      355    622
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0       54    216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1      117    216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0       18    216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       27    216
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0      542   2265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1225   2265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       0      151   2265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      347   2265
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      136    516
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      226    516
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       0       75    516
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       79    516
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0        3     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1        6     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       28     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       24     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       44     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       49     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       39     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                       0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                       1        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0        6     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       18     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        9     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       42     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        8     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       28     36
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1      2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      2
6-24 months   ki1000108-IRC              INDIA                          1                       0        0      2
6-24 months   ki1000108-IRC              INDIA                          1                       1        0      2
6-24 months   ki1000108-IRC              INDIA                          0                       0        1      2
6-24 months   ki1000108-IRC              INDIA                          0                       1        1      2
6-24 months   ki1000109-EE               PAKISTAN                       1                       0        0      1
6-24 months   ki1000109-EE               PAKISTAN                       1                       1        0      1
6-24 months   ki1000109-EE               PAKISTAN                       0                       0        0      1
6-24 months   ki1000109-EE               PAKISTAN                       0                       1        1      1
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       52     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8     60
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       17    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1        7    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0       72    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1       27    123
6-24 months   ki1101329-Keneba           GAMBIA                         1                       0      102    838
6-24 months   ki1101329-Keneba           GAMBIA                         1                       1      123    838
6-24 months   ki1101329-Keneba           GAMBIA                         0                       0      286    838
6-24 months   ki1101329-Keneba           GAMBIA                         0                       1      327    838
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      136    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      140    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       34    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       33    343
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     1131   1478
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1        0   1478
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      347   1478
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1        0   1478
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      810   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      134   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      272   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       55   1271


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/57c2c442-a525-4a05-90aa-72a982e4931e/476ce018-0fa3-4e1a-b8c7-9257f3bb54f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/57c2c442-a525-4a05-90aa-72a982e4931e/476ce018-0fa3-4e1a-b8c7-9257f3bb54f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/57c2c442-a525-4a05-90aa-72a982e4931e/476ce018-0fa3-4e1a-b8c7-9257f3bb54f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/57c2c442-a525-4a05-90aa-72a982e4931e/476ce018-0fa3-4e1a-b8c7-9257f3bb54f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.6723087   0.5431070   0.8015105
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.5700210   0.5038101   0.6362319
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.6527035   0.6014659   0.7039411
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.6379205   0.6075561   0.6682850
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5770300   0.5270810   0.6269789
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5090128   0.3956938   0.6223319
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4193676   0.4017586   0.4369766
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4205327   0.3892396   0.4518258
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2785749   0.2540462   0.3031035
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2718598   0.2332342   0.3104855
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.8234697   0.7691795   0.8777600
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.7713027   0.7335091   0.8090963
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6854040   0.6151317   0.7556762
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6317773   0.4864043   0.7771502
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.6940976   0.6727911   0.7154042
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6938168   0.6532637   0.7343699
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.5979261   0.5503453   0.6455069
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.5683850   0.5026315   0.6341385
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2916667   0.0943448   0.4889886
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2727273   0.1836941   0.3617604
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5422615   0.4637968   0.6207263
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5353949   0.4941169   0.5766729
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5072503   0.4420371   0.5724635
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4840094   0.3457717   0.6222472
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1424642   0.1205174   0.1644109
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1687373   0.1272809   0.2101937


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.5958904   0.5383795   0.6534013
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.6417808   0.6154966   0.6680651
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5670841   0.5219813   0.6121868
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4199840   0.4041851   0.4357828
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2764410   0.2550939   0.2977881
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.7829582   0.7512519   0.8146645
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6666667   0.6030996   0.7302337
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.6940397   0.6750581   0.7130214
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.5910853   0.5486247   0.6335459
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5369928   0.5007974   0.5731883
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1487018   0.1295178   0.1678858


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8478560   0.6770765   1.061711
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.9773512   0.8922035   1.070625
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.8821254   0.6950960   1.119479
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0027782   0.9231258   1.089303
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9758951   0.8319517   1.144743
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.9366497   0.8635571   1.015929
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9217590   0.7170051   1.184984
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9995954   0.9362309   1.067249
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9505941   0.8405629   1.075029
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9350649   0.4411401   1.982015
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.9873370   0.8387601   1.162233
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9541827   0.6982306   1.303960
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1844195   0.8861305   1.583119


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0764183   -0.1936551   0.0408185
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0109227   -0.0546177   0.0327723
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0099459   -0.0336698   0.0137780
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0006164   -0.0072270   0.0084598
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0021339   -0.0136512   0.0093834
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0405115   -0.0888856   0.0078625
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0187373   -0.0530581   0.0155835
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000579   -0.0099418   0.0098260
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0068408   -0.0272824   0.0136007
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0152439   -0.1895523   0.1590645
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0052687   -0.0720285   0.0614911
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0028771   -0.0307310   0.0249768
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0062377   -0.0055678   0.0180432


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1282422   -0.3440348   0.0529036
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0170194   -0.0874297   0.0488320
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0175387   -0.0603389   0.0235340
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0014677   -0.0173835   0.0199695
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0077192   -0.0502428   0.0330826
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0517416   -0.1157012   0.0085513
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0281060   -0.0811517   0.0223372
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000834   -0.0144265   0.0140568
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0115733   -0.0467433   0.0224150
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0551471   -0.9164156   0.4190533
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0098115   -0.1420515   0.1071162
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0057043   -0.0624460   0.0480070
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0419474   -0.0406915   0.1180241
