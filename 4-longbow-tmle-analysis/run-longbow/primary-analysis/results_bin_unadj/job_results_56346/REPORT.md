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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        exclfeed36    wasted   n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       27    208  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        4    208  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      147    208  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       30    208  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        4     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       56     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        2     62  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        1     40  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     40  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       34     40  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        5     40  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        0     25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       23     25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        2     25  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1                  0        5    218  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0    218  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0                  0      208    218  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0                  1        5    218  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1    104  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    104  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       94    104  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        9    104  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    111  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    111  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      110    111  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    111  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        3      3  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      3  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      3  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      3  wasted           
Birth       ki1000108-IRC              INDIA                          1                  0        0      3  wasted           
Birth       ki1000108-IRC              INDIA                          1                  1        0      3  wasted           
Birth       ki1000108-IRC              INDIA                          0                  0        2      3  wasted           
Birth       ki1000108-IRC              INDIA                          0                  1        1      3  wasted           
Birth       ki1000109-EE               PAKISTAN                       1                  0        2      6  wasted           
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      6  wasted           
Birth       ki1000109-EE               PAKISTAN                       0                  0        3      6  wasted           
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      6  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0       86    483  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1       29    483  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      293    483  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1       75    483  wasted           
Birth       ki1101329-Keneba           GAMBIA                         1                  0      267   1192  wasted           
Birth       ki1101329-Keneba           GAMBIA                         1                  1       76   1192  wasted           
Birth       ki1101329-Keneba           GAMBIA                         0                  0      622   1192  wasted           
Birth       ki1101329-Keneba           GAMBIA                         0                  1      227   1192  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      320    491  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       76    491  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0       77    491  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       18    491  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     5974   8619  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      762   8619  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1689   8619  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      194   8619  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1537   2128  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      174   2128  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      370   2128  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       47   2128  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       29    240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      203    240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        7    240  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       12    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      196    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        1    209  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        8    233  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1    233  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      206    233  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18    233  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        4    235  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    235  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      227    235  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4    235  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1                  0        6    272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0                  0      266    272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0    272  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1    250  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    250  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      242    250  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        7    250  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        4    243  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    243  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      238    243  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    243  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        8      9  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        1      9  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      9  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      9  wasted           
6 months    ki1000108-IRC              INDIA                          1                  0        0      4  wasted           
6 months    ki1000108-IRC              INDIA                          1                  1        0      4  wasted           
6 months    ki1000108-IRC              INDIA                          0                  0        3      4  wasted           
6 months    ki1000108-IRC              INDIA                          0                  1        1      4  wasted           
6 months    ki1000109-EE               PAKISTAN                       1                  0        4      9  wasted           
6 months    ki1000109-EE               PAKISTAN                       1                  1        0      9  wasted           
6 months    ki1000109-EE               PAKISTAN                       0                  0        5      9  wasted           
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      9  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0    168  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0    168  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      127    168  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       41    168  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      142    603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        3    603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      436    603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       22    603  wasted           
6 months    ki1101329-Keneba           GAMBIA                         1                  0      483   1790  wasted           
6 months    ki1101329-Keneba           GAMBIA                         1                  1       24   1790  wasted           
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1197   1790  wasted           
6 months    ki1101329-Keneba           GAMBIA                         0                  1       86   1790  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      383    527  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       39    527  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       95    527  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       10    527  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47    272  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0    272  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      221    272  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        4    272  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     5986   8535  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      575   8535  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1804   8535  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      170   8535  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3081   4188  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      159   4188  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      870   4188  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       78   4188  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       23    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        2    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      168    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       19    212  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       11    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      155    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        3    169  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        8    224  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1    224  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      189    224  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       26    224  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        4    227  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    227  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      218    227  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        5    227  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1                  0        4    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0                  0      193    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0                  1        4    201  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1    235  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    235  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      233    235  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1    235  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        3    213  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    213  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      206    213  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4    213  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        9      9  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      9  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      9  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      9  wasted           
24 months   ki1000108-IRC              INDIA                          1                  0        0      4  wasted           
24 months   ki1000108-IRC              INDIA                          1                  1        0      4  wasted           
24 months   ki1000108-IRC              INDIA                          0                  0        4      4  wasted           
24 months   ki1000108-IRC              INDIA                          0                  1        0      4  wasted           
24 months   ki1000109-EE               PAKISTAN                       1                  0        0      3  wasted           
24 months   ki1000109-EE               PAKISTAN                       1                  1        0      3  wasted           
24 months   ki1000109-EE               PAKISTAN                       0                  0        3      3  wasted           
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      3  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      130    577  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       11    577  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      385    577  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       51    577  wasted           
24 months   ki1101329-Keneba           GAMBIA                         1                  0      380   1395  wasted           
24 months   ki1101329-Keneba           GAMBIA                         1                  1       44   1395  wasted           
24 months   ki1101329-Keneba           GAMBIA                         0                  0      867   1395  wasted           
24 months   ki1101329-Keneba           GAMBIA                         0                  1      104   1395  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      304    445  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       58    445  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       60    445  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       23    445  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       33    184  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1    184  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      147    184  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        3    184  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2556   4317  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      755   4317  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      782   4317  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      224   4317  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2541   4035  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      591   4035  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      702   4035  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      201   4035  wasted           


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
![](/tmp/a9bf78c5-3493-40e8-b3e8-22d5454139c4/08249afa-ba44-4752-8dc1-09697340ffb7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a9bf78c5-3493-40e8-b3e8-22d5454139c4/08249afa-ba44-4752-8dc1-09697340ffb7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a9bf78c5-3493-40e8-b3e8-22d5454139c4/08249afa-ba44-4752-8dc1-09697340ffb7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a9bf78c5-3493-40e8-b3e8-22d5454139c4/08249afa-ba44-4752-8dc1-09697340ffb7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2521739   0.1727229   0.3316250
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2038043   0.1626050   0.2450037
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.2215743   0.1776048   0.2655438
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.2673734   0.2375898   0.2971570
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1919192   0.1530926   0.2307458
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1894737   0.1105900   0.2683573
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1131235   0.1045284   0.1217186
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1030271   0.0874661   0.1185880
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1016949   0.0837341   0.1196558
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1127098   0.0754584   0.1499612
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0473373   0.0288473   0.0658273
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0670304   0.0533428   0.0807179
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0924171   0.0647589   0.1200752
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0952381   0.0390378   0.1514384
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0876391   0.0798229   0.0954553
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0861196   0.0727790   0.0994601
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0490741   0.0385851   0.0595631
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0822785   0.0640829   0.1004740
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0780142   0.0337080   0.1223203
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1169725   0.0867792   0.1471658
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1037736   0.0747352   0.1328120
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1071061   0.0876479   0.1265642
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1602210   0.1223920   0.1980500
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2771084   0.1807124   0.3735044
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2280278   0.2106393   0.2454163
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2226640   0.1904944   0.2548336
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1886973   0.1726293   0.2047654
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2225914   0.1894170   0.2557658


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2153209   0.1786253   0.2520165
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.2541946   0.2294667   0.2789226
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1914460   0.1566101   0.2262820
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1109177   0.1033745   0.1184610
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1038534   0.0874500   0.1202568
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0614525   0.0503239   0.0725811
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0929791   0.0681617   0.1177965
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0872876   0.0805483   0.0940269
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0565903   0.0475372   0.0656433
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1074523   0.0821617   0.1327430
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1060932   0.0899270   0.1222593
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1820225   0.1461311   0.2179138
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2267779   0.2114523   0.2421034
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1962825   0.1816413   0.2109237


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8081897   0.5558264   1.175134
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.2066983   0.9610964   1.515062
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9872576   0.6214464   1.568402
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9107486   0.7693717   1.078105
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1083133   0.7661467   1.603294
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.4160171   0.9112768   2.200324
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0305250   0.5317475   1.997154
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9826616   0.8214247   1.175547
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.6766181   1.2316663   2.282313
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.4993745   0.8034957   2.797929
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.0321131   0.7393247   1.440852
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.7295388   1.1359084   2.633403
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9764776   0.8295879   1.149376
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1796212   0.9949265   1.398602


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0368530   -0.1050666   0.0313606
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0326203   -0.0052236   0.0704642
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0004732   -0.0174846   0.0165383
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0022058   -0.0060887   0.0016771
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0021585   -0.0058362   0.0101532
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0141152   -0.0023789   0.0306094
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0005621   -0.0119182   0.0130424
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003514   -0.0039371   0.0032342
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0075162    0.0027196   0.0123128
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0294382   -0.0110989   0.0699752
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0023196   -0.0220112   0.0266504
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0218015    0.0020282   0.0415747
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0012499   -0.0097481   0.0072482
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0075852   -0.0006536   0.0158240


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1711538   -0.5343115   0.1060477
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.1283280   -0.0337670   0.2650065
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0024715   -0.0953856   0.0825613
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0198866   -0.0554828   0.0145091
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0207838   -0.0592385   0.0947607
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.2296934   -0.0872917   0.4542658
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0060451   -0.1376585   0.1315967
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0040262   -0.0459387   0.0362067
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1328176    0.0395619   0.2170185
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2739648   -0.2130679   0.5654595
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0218638   -0.2365620   0.2262820
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1197735    0.0059331   0.2205770
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0055117   -0.0437011   0.0312803
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0386443   -0.0040621   0.0795344
