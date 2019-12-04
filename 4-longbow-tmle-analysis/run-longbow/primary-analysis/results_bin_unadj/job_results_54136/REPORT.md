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

unadjusted

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
![](/tmp/a8b3e128-552f-466f-ab1f-bec000f067c0/5bc328f9-558e-4ed3-a020-05bac3dd25e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a8b3e128-552f-466f-ab1f-bec000f067c0/5bc328f9-558e-4ed3-a020-05bac3dd25e8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a8b3e128-552f-466f-ab1f-bec000f067c0/5bc328f9-558e-4ed3-a020-05bac3dd25e8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a8b3e128-552f-466f-ab1f-bec000f067c0/5bc328f9-558e-4ed3-a020-05bac3dd25e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.6769231   0.5630458   0.7908004
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.5726872   0.5065636   0.6388109
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.6606218   0.6095386   0.7117049
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.6350093   0.6043746   0.6656440
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5749441   0.5250126   0.6248755
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5357143   0.4313777   0.6400508
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4227053   0.4047610   0.4406496
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4106509   0.3773373   0.4439645
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2756508   0.2504727   0.3008289
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2785863   0.2383755   0.3187970
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.8198758   0.7635719   0.8761797
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.7700651   0.7321647   0.8079655
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6842105   0.6140569   0.7543642
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6000000   0.4531242   0.7468758
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.6932654   0.6717596   0.7147713
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6967871   0.6564084   0.7371659
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6243094   0.5743715   0.6742473
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.5129870   0.4339679   0.5920062
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2916667   0.0943448   0.4889886
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2727273   0.1836941   0.3617604
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5466667   0.4735346   0.6197988
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5334421   0.4918549   0.5750292
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5072464   0.4420152   0.5724775
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4925373   0.3695646   0.6155100
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1419492   0.1200890   0.1638093
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1681957   0.1285165   0.2078750


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


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8460152   0.6896996   1.0377587
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.9612298   0.8774828   1.0529696
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9317676   0.7528165   1.1532571
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9714827   0.8864845   1.0646307
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0106491   0.8519515   1.1989081
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.9392460   0.8631361   1.0220672
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.8769231   0.6725124   1.1434646
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0050799   0.9411399   1.0733640
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.8216872   0.6907597   0.9774307
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9350649   0.4411401   1.9820154
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.9758087   0.8357970   1.1392749
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9710021   0.7332506   1.2858431
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1849012   0.8939395   1.5705658


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0810327   -0.1832360    0.0211706
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0188409   -0.0626454    0.0249635
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0078600   -0.0311387    0.0154187
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0027213   -0.0112659    0.0058232
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007901   -0.0119794    0.0135596
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0369176   -0.0871947    0.0133595
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0175439   -0.0517806    0.0166929
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0007743   -0.0092845    0.0108332
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0332241   -0.0614668   -0.0049814
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0152439   -0.1895523    0.1590645
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0096738   -0.0712544    0.0519067
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0028732   -0.0300857    0.0243393
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0067527   -0.0049023    0.0184076


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1359859   -0.3227219    0.0243876
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0293573   -0.0999370    0.0366935
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0138604   -0.0558133    0.0264255
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0064796   -0.0270338    0.0136631
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0028582   -0.0444281    0.0480036
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0471514   -0.1136363    0.0153643
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0263158   -0.0792180    0.0239932
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0011157   -0.0134833    0.0155043
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0562087   -0.1054523   -0.0091586
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0551471   -0.9164156    0.4190533
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0180148   -0.1393322    0.0903846
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0056966   -0.0610868    0.0468022
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0454107   -0.0361425    0.1205450
