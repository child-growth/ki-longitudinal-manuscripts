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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        exclfeed36    sstunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0       32     221  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     221  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0      182     221  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    1        7     221  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0        4      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1        1      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0       58      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    1        2      65  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          1                    0        1      42  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          1                    1        0      42  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          0                    0       39      42  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          0                    1        2      42  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0        0      26  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1        0      26  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0       25      26  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          0                    1        1      26  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           1                    0        5     223  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           1                    1        0     223  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           0                    0      214     223  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           0                    1        4     223  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     105  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     105  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      103     105  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        1     105  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     119  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     119  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      111     119  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        8     119  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        3       3  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0       3  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       3  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       3  sstunted         
Birth       ki1000108-IRC              INDIA                          1                    0        0       4  sstunted         
Birth       ki1000108-IRC              INDIA                          1                    1        0       4  sstunted         
Birth       ki1000108-IRC              INDIA                          0                    0        4       4  sstunted         
Birth       ki1000108-IRC              INDIA                          0                    1        0       4  sstunted         
Birth       ki1000109-EE               PAKISTAN                       1                    0        2       7  sstunted         
Birth       ki1000109-EE               PAKISTAN                       1                    1        1       7  sstunted         
Birth       ki1000109-EE               PAKISTAN                       0                    0        4       7  sstunted         
Birth       ki1000109-EE               PAKISTAN                       0                    1        0       7  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0      118     490  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1        1     490  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0      368     490  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    1        3     490  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         1                    0      358    1253  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         1                    1        5    1253  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         0                    0      871    1253  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         0                    1       19    1253  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0      409     526  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1       13     526  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0      101     526  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    1        3     526  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7457   10681  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1      865   10681  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2103   10681  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    1      256   10681  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1848    2517  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    1      146    2517  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0      457    2517  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    1       66    2517  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       29     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        1     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      203     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        7     240  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       12     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      197     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          1                    0        8     233  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          1                    1        1     233  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          0                    0      216     233  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          0                    1        8     233  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        4     235  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     235  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      230     235  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        1     235  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           1                    0        6     272  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     272  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           0                    0      256     272  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           0                    1       10     272  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     250  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     250  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      243     250  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        6     250  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        4     243  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     243  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      225     243  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       14     243  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7       9  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        2       9  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       9  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       9  sstunted         
6 months    ki1000108-IRC              INDIA                          1                    0        0       4  sstunted         
6 months    ki1000108-IRC              INDIA                          1                    1        0       4  sstunted         
6 months    ki1000108-IRC              INDIA                          0                    0        4       4  sstunted         
6 months    ki1000108-IRC              INDIA                          0                    1        0       4  sstunted         
6 months    ki1000109-EE               PAKISTAN                       1                    0        3       9  sstunted         
6 months    ki1000109-EE               PAKISTAN                       1                    1        1       9  sstunted         
6 months    ki1000109-EE               PAKISTAN                       0                    0        5       9  sstunted         
6 months    ki1000109-EE               PAKISTAN                       0                    1        0       9  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     168  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     168  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      140     168  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       28     168  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      143     603  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        2     603  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      447     603  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       11     603  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         1                    0      490    1790  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         1                    1       17    1790  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         0                    0     1242    1790  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         0                    1       41    1790  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      410     527  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       12     527  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       98     527  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1        7     527  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         1                    0       44     272  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         1                    1        3     272  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         0                    0      208     272  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         0                    1       17     272  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6169    8552  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      409    8552  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1846    8552  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      128    8552  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3098    4185  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      143    4185  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      854    4185  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       90    4185  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       21     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      163     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       24     212  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       11     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      157     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     169  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          1                    0        8     224  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          1                    1        1     224  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          0                    0      186     224  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          0                    1       29     224  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        4     227  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     227  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      216     227  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        7     227  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           1                    0        4     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           0                    0      182     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           0                    1       15     201  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     235  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     235  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      208     235  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       26     235  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     213  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     213  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      142     213  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       68     213  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        6       9  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        3       9  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       9  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       9  sstunted         
24 months   ki1000108-IRC              INDIA                          1                    0        0       4  sstunted         
24 months   ki1000108-IRC              INDIA                          1                    1        0       4  sstunted         
24 months   ki1000108-IRC              INDIA                          0                    0        3       4  sstunted         
24 months   ki1000108-IRC              INDIA                          0                    1        1       4  sstunted         
24 months   ki1000109-EE               PAKISTAN                       1                    0        0       3  sstunted         
24 months   ki1000109-EE               PAKISTAN                       1                    1        0       3  sstunted         
24 months   ki1000109-EE               PAKISTAN                       0                    0        3       3  sstunted         
24 months   ki1000109-EE               PAKISTAN                       0                    1        0       3  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      128     577  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       13     577  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      397     577  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       39     577  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         1                    0      399    1394  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         1                    1       25    1394  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         0                    0      879    1394  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         0                    1       91    1394  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      329     446  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       34     446  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       69     446  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       14     446  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         1                    0       30     189  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         1                    1        4     189  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         0                    0      135     189  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         0                    1       20     189  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2829    4334  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      496    4334  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      863    4334  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      146    4334  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2870    4049  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      275    4049  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      787    4049  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      117    4049  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/7cc150d3-d269-410e-a049-7fc3b78bad66/4f7148ea-0e80-456f-9183-43fb79f6c35a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7cc150d3-d269-410e-a049-7fc3b78bad66/4f7148ea-0e80-456f-9183-43fb79f6c35a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7cc150d3-d269-410e-a049-7fc3b78bad66/4f7148ea-0e80-456f-9183-43fb79f6c35a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7cc150d3-d269-410e-a049-7fc3b78bad66/4f7148ea-0e80-456f-9183-43fb79f6c35a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0137741   0.0017794   0.0257688
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0213483   0.0118483   0.0308483
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1039414   0.0966074   0.1112754
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1085206   0.0955677   0.1214734
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0732197   0.0590257   0.0874136
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1261950   0.0960266   0.1563635
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0335306   0.0178566   0.0492046
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0319564   0.0223295   0.0415832
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0284360   0.0125625   0.0443096
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0666667   0.0189095   0.1144238
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0621770   0.0559329   0.0684210
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0648430   0.0533407   0.0763452
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0441222   0.0367800   0.0514644
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0953390   0.0761703   0.1145076
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0921986   0.0444047   0.1399925
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0894495   0.0626380   0.1162611
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0589623   0.0365332   0.0813914
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0938144   0.0754591   0.1121697
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0936639   0.0636576   0.1236702
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1686747   0.0880242   0.2493252
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1491729   0.1355479   0.1627980
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1446977   0.1185927   0.1708028
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0874404   0.0756739   0.0992069
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1294248   0.1067826   0.1520670


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0191540   0.0115617   0.0267464
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1049527   0.0986146   0.1112909
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0842273   0.0714625   0.0969920
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0324022   0.0241972   0.0406072
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0360531   0.0201218   0.0519845
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0627923   0.0572659   0.0683187
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0556750   0.0484735   0.0628765
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0901213   0.0667360   0.1135066
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0832138   0.0687092   0.0977183
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1076233   0.0788298   0.1364169
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1481311   0.1360218   0.1602403
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0968140   0.0862351   0.1073930


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.5498876   0.5828980   4.121050
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0440556   0.9078024   1.200759
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7235129   1.2660146   2.346337
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.9530512   0.5465105   1.662011
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.3444444   0.9454214   5.813725
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0428777   0.8518213   1.276787
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.1607946   1.6669157   2.801001
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9701835   0.5330870   1.765670
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.5910928   1.0373359   2.440459
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.8008505   1.0127956   3.202090
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9699998   0.7925768   1.187140
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.4801488   1.1914195   1.838849


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0053799   -0.0054900   0.0162498
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0010114   -0.0023023   0.0043250
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0110076    0.0040987   0.0179165
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0011283   -0.0143127   0.0120560
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0076171   -0.0024945   0.0177287
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0006154   -0.0023822   0.0036129
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0115528    0.0069503   0.0161554
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0020773   -0.0434866   0.0393321
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0242515    0.0040668   0.0444362
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0139594   -0.0022828   0.0302016
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0010419   -0.0078926   0.0058088
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0093736    0.0037631   0.0149842


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.2808770   -0.5597600   0.6684503
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0096363   -0.0224881   0.0407515
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1306892    0.0431871   0.2101892
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0348228   -0.5331853   0.3015467
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2112746   -0.1042928   0.4366642
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0098002   -0.0391005   0.0563996
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.2075050    0.1242079   0.2828796
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0230496   -0.6030206   0.3470885
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.2914362    0.0087497   0.4935057
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1297062   -0.0313041   0.2655790
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0070335   -0.0543920   0.0381979
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0968212    0.0364124   0.1534428
