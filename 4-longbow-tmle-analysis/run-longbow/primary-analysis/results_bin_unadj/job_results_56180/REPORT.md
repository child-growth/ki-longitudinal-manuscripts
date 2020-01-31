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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        exclfeed36    stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       28     221  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     221  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      153     221  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1       36     221  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        3      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        2      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       53      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        7      65  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        0      42  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        1      42  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       33      42  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        8      42  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        0      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       24      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        2      26  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                   0        5     223  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0     223  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                   0      192     223  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                   1       26     223  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1     105  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     105  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       95     105  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        9     105  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       98     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     119  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        3       3  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       3  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       3  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       3  stunted          
Birth       ki1000108-IRC              INDIA                          1                   0        0       4  stunted          
Birth       ki1000108-IRC              INDIA                          1                   1        0       4  stunted          
Birth       ki1000108-IRC              INDIA                          0                   0        3       4  stunted          
Birth       ki1000108-IRC              INDIA                          0                   1        1       4  stunted          
Birth       ki1000109-EE               PAKISTAN                       1                   0        2       7  stunted          
Birth       ki1000109-EE               PAKISTAN                       1                   1        1       7  stunted          
Birth       ki1000109-EE               PAKISTAN                       0                   0        3       7  stunted          
Birth       ki1000109-EE               PAKISTAN                       0                   1        1       7  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   0      111     490  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   1        8     490  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   0      335     490  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   1       36     490  stunted          
Birth       ki1101329-Keneba           GAMBIA                         1                   0      347    1253  stunted          
Birth       ki1101329-Keneba           GAMBIA                         1                   1       16    1253  stunted          
Birth       ki1101329-Keneba           GAMBIA                         0                   0      839    1253  stunted          
Birth       ki1101329-Keneba           GAMBIA                         0                   1       51    1253  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      356     526  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       66     526  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0       85     526  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1       19     526  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5638   10681  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2684   10681  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1588   10681  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      771   10681  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1406    2517  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      588    2517  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      350    2517  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1      173    2517  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       24     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        6     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      172     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       38     240  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       12     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      191     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        6     209  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        8     233  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1     233  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      181     233  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                   1       43     233  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        4     235  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     235  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      219     235  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       12     235  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                   0        4     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                   1        2     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                   0      208     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                   1       58     272  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1     250  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     250  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      201     250  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       48     250  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        3     243  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     243  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      181     243  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       58     243  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5       9  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        4       9  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9  stunted          
6 months    ki1000108-IRC              INDIA                          1                   0        0       4  stunted          
6 months    ki1000108-IRC              INDIA                          1                   1        0       4  stunted          
6 months    ki1000108-IRC              INDIA                          0                   0        3       4  stunted          
6 months    ki1000108-IRC              INDIA                          0                   1        1       4  stunted          
6 months    ki1000109-EE               PAKISTAN                       1                   0        3       9  stunted          
6 months    ki1000109-EE               PAKISTAN                       1                   1        1       9  stunted          
6 months    ki1000109-EE               PAKISTAN                       0                   0        4       9  stunted          
6 months    ki1000109-EE               PAKISTAN                       0                   1        1       9  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       87     168  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       81     168  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      126     603  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       19     603  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      382     603  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       76     603  stunted          
6 months    ki1101329-Keneba           GAMBIA                         1                   0      435    1790  stunted          
6 months    ki1101329-Keneba           GAMBIA                         1                   1       72    1790  stunted          
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1091    1790  stunted          
6 months    ki1101329-Keneba           GAMBIA                         0                   1      192    1790  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      339     527  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       83     527  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       76     527  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       29     527  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       30     272  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         1                   1       17     272  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      145     272  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       80     272  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     4971    8552  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1607    8552  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1467    8552  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      507    8552  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2471    4185  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      770    4185  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      657    4185  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      287    4185  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       12     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       13     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       99     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       88     212  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       11     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      151     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        7     169  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        4     224  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        5     224  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      124     224  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       91     224  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        4     227  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     227  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      173     227  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       50     227  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                   0        2     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                   1        2     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                   0      125     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                   1       72     201  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1     235  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     235  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      152     235  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       82     235  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     213  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     213  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       58     213  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1      152     213  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        4       9  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5       9  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9  stunted          
24 months   ki1000108-IRC              INDIA                          1                   0        0       4  stunted          
24 months   ki1000108-IRC              INDIA                          1                   1        0       4  stunted          
24 months   ki1000108-IRC              INDIA                          0                   0        1       4  stunted          
24 months   ki1000108-IRC              INDIA                          0                   1        3       4  stunted          
24 months   ki1000109-EE               PAKISTAN                       1                   0        0       3  stunted          
24 months   ki1000109-EE               PAKISTAN                       1                   1        0       3  stunted          
24 months   ki1000109-EE               PAKISTAN                       0                   0        2       3  stunted          
24 months   ki1000109-EE               PAKISTAN                       0                   1        1       3  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       91     577  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       50     577  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      296     577  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1      140     577  stunted          
24 months   ki1101329-Keneba           GAMBIA                         1                   0      297    1394  stunted          
24 months   ki1101329-Keneba           GAMBIA                         1                   1      127    1394  stunted          
24 months   ki1101329-Keneba           GAMBIA                         0                   0      620    1394  stunted          
24 months   ki1101329-Keneba           GAMBIA                         0                   1      350    1394  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      208     446  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      155     446  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       40     446  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       43     446  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       17     189  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         1                   1       17     189  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         0                   0       80     189  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       75     189  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1703    4334  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1622    4334  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      509    4334  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      500    4334  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1900    4049  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1245    4049  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      508    4049  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      396    4049  stunted          


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
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/dbb29189-8806-4370-91a8-decec7ca350a/16475aa2-d44f-4fd8-abe0-2121372b3470/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dbb29189-8806-4370-91a8-decec7ca350a/16475aa2-d44f-4fd8-abe0-2121372b3470/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dbb29189-8806-4370-91a8-decec7ca350a/16475aa2-d44f-4fd8-abe0-2121372b3470/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dbb29189-8806-4370-91a8-decec7ca350a/16475aa2-d44f-4fd8-abe0-2121372b3470/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0672269   0.0221890   0.1122648
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0970350   0.0668838   0.1271862
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0440771   0.0229526   0.0652016
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0573034   0.0420276   0.0725791
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1563981   0.1217093   0.1910869
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1826923   0.1083566   0.2570280
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3225186   0.3107697   0.3342676
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3268334   0.3058405   0.3478263
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2948847   0.2709517   0.3188176
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3307839   0.2825025   0.3790653
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2000000   0.0565653   0.3434347
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1809524   0.1287751   0.2331297
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1310345   0.0760654   0.1860036
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1659389   0.1318393   0.2000384
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.1420118   0.1116192   0.1724045
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.1496493   0.1301242   0.1691743
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1966825   0.1587221   0.2346429
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2761905   0.1905888   0.3617922
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3617021   0.2240807   0.4993236
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3555556   0.2928937   0.4182174
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2442992   0.2324362   0.2561621
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2568389   0.2359212   0.2777567
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2375810   0.2213939   0.2537681
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3040254   0.2694184   0.3386324
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5200000   0.3236969   0.7163031
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4705882   0.3988796   0.5422968
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3546099   0.2755781   0.4336417
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.3211009   0.2772373   0.3649646
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2995283   0.2559134   0.3431432
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.3608247   0.3305921   0.3910574
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4269972   0.3760556   0.4779389
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5180723   0.4104549   0.6256897
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.5000000   0.3314881   0.6685119
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4838710   0.4049889   0.5627530
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4878195   0.4674393   0.5081998
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4955401   0.4591818   0.5318985
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3958665   0.3757182   0.4160147
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4380531   0.3995818   0.4765244


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0897959   0.0644568   0.1151350
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0534717   0.0410100   0.0659333
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1615970   0.1301114   0.1930825
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.3234716   0.3131402   0.3338029
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3023441   0.2806174   0.3240708
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1575456   0.1284434   0.1866478
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.1474860   0.1310548   0.1639172
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2125237   0.1775632   0.2474842
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2471936   0.2366536   0.2577336
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2525687   0.2374550   0.2676823
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.3421808   0.3172662   0.3670954
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4439462   0.3977834   0.4901089
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4896170   0.4715168   0.5077172
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4052853   0.3865623   0.4240082


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.4433962   0.6897053   3.020700
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.3000702   0.7512677   2.249774
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1681235   0.7349028   1.856725
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0133784   0.9417596   1.090444
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1217401   0.9519408   1.321827
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9047619   0.4176743   1.959886
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.2663755   0.7937635   2.020384
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.0537802   0.8201517   1.353960
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4042456   0.9747072   2.023075
6 months    ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                 0.9830065   0.6463228   1.495076
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0513294   0.9582963   1.153394
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2796706   1.1238830   1.457053
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9049774   0.6023325   1.359687
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9055046   0.6972119   1.176025
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2046432   1.0183521   1.425013
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2132919   0.9548405   1.541700
24 months   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                 0.9677419   0.6655301   1.407186
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0158267   0.9350905   1.103534
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1065679   1.0052705   1.218073


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0225690   -0.0184828   0.0636209
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0093945   -0.0091251   0.0279142
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0051989   -0.0110450   0.0214427
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0009530   -0.0043186   0.0062245
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0074594   -0.0034967   0.0184155
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0166667   -0.1502205   0.1168871
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0265111   -0.0226353   0.0756575
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0054742   -0.0204185   0.0313669
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0158413   -0.0030122   0.0346947
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0050845   -0.1301713   0.1200023
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0028945   -0.0025300   0.0083189
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0149877    0.0065057   0.0234697
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0435849   -0.2279428   0.1407730
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0253205   -0.0936310   0.0429900
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0426525    0.0056956   0.0796094
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0169489   -0.0054524   0.0393502
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0132275   -0.1658197   0.1393646
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017974   -0.0077160   0.0113109
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0094188    0.0002825   0.0185551


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2513369   -0.3701009   0.5909086
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.1756918   -0.2514252   0.4570318
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0321717   -0.0736184   0.1275377
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0029460   -0.0134880   0.0191136
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0246719   -0.0122174   0.0602168
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0909091   -1.1267403   0.4404194
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1682759   -0.2086753   0.4276668
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0371167   -0.1554281   0.1975751
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0745388   -0.0180969   0.1587456
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0142575   -0.4333092   0.2822775
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0117093   -0.0104872   0.0334182
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0593411    0.0255092   0.0919984
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0914851   -0.5562346   0.2344729
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0768944   -0.3056841   0.1118055
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1246489    0.0097378   0.2262257
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0381779   -0.0137168   0.0874160
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0271739   -0.3937793   0.2430034
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0036711   -0.0159493   0.0229126
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0232399    0.0004991   0.0454634
