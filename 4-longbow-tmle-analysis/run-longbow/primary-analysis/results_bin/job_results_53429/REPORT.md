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
* W_nchldlt5
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
* delta_W_nchldlt5
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

agecat      studyid                    country                        exclfeed36    stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       28     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      153     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1       36     221
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        3      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        2      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       53      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        7      65
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        0      42
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        1      42
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       33      42
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        8      42
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        2      26
Birth       ki0047075b-MAL-ED          PERU                           1                   0        5     223
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0     223
Birth       ki0047075b-MAL-ED          PERU                           0                   0      192     223
Birth       ki0047075b-MAL-ED          PERU                           0                   1       26     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       95     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        9     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       98     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       3
Birth       ki1000108-IRC              INDIA                          1                   0        0       4
Birth       ki1000108-IRC              INDIA                          1                   1        0       4
Birth       ki1000108-IRC              INDIA                          0                   0        3       4
Birth       ki1000108-IRC              INDIA                          0                   1        1       4
Birth       ki1000109-EE               PAKISTAN                       1                   0        2       7
Birth       ki1000109-EE               PAKISTAN                       1                   1        1       7
Birth       ki1000109-EE               PAKISTAN                       0                   0        3       7
Birth       ki1000109-EE               PAKISTAN                       0                   1        1       7
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   0      111     490
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   1        8     490
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   0      335     490
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   1       36     490
Birth       ki1101329-Keneba           GAMBIA                         1                   0      347    1253
Birth       ki1101329-Keneba           GAMBIA                         1                   1       16    1253
Birth       ki1101329-Keneba           GAMBIA                         0                   0      839    1253
Birth       ki1101329-Keneba           GAMBIA                         0                   1       51    1253
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      356     526
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       66     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0       85     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1       19     526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5638   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2684   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1588   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      771   10681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1406    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      588    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      350    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1      173    2517
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       24     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        6     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      172     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       38     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      191     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        6     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        8     233
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1     233
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      181     233
6 months    ki0047075b-MAL-ED          INDIA                          0                   1       43     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        4     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      219     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       12     235
6 months    ki0047075b-MAL-ED          PERU                           1                   0        4     272
6 months    ki0047075b-MAL-ED          PERU                           1                   1        2     272
6 months    ki0047075b-MAL-ED          PERU                           0                   0      208     272
6 months    ki0047075b-MAL-ED          PERU                           0                   1       58     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      201     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       48     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        3     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      181     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       58     243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        4       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
6 months    ki1000108-IRC              INDIA                          1                   0        0       4
6 months    ki1000108-IRC              INDIA                          1                   1        0       4
6 months    ki1000108-IRC              INDIA                          0                   0        3       4
6 months    ki1000108-IRC              INDIA                          0                   1        1       4
6 months    ki1000109-EE               PAKISTAN                       1                   0        3       9
6 months    ki1000109-EE               PAKISTAN                       1                   1        1       9
6 months    ki1000109-EE               PAKISTAN                       0                   0        4       9
6 months    ki1000109-EE               PAKISTAN                       0                   1        1       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       81     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      126     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       19     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      382     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       76     603
6 months    ki1101329-Keneba           GAMBIA                         1                   0      435    1790
6 months    ki1101329-Keneba           GAMBIA                         1                   1       72    1790
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1091    1790
6 months    ki1101329-Keneba           GAMBIA                         0                   1      192    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      339     527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       83     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       76     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       29     527
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       80     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     4971    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1607    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1467    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      507    8552
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2471    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      770    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      657    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      287    4185
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       12     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       99     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       88     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      151     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        7     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        4     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        5     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      124     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       91     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        4     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      173     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       50     227
24 months   ki0047075b-MAL-ED          PERU                           1                   0        2     201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        2     201
24 months   ki0047075b-MAL-ED          PERU                           0                   0      125     201
24 months   ki0047075b-MAL-ED          PERU                           0                   1       72     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      152     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       82     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       58     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1      152     213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        4       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
24 months   ki1000108-IRC              INDIA                          1                   0        0       4
24 months   ki1000108-IRC              INDIA                          1                   1        0       4
24 months   ki1000108-IRC              INDIA                          0                   0        1       4
24 months   ki1000108-IRC              INDIA                          0                   1        3       4
24 months   ki1000109-EE               PAKISTAN                       1                   0        0       3
24 months   ki1000109-EE               PAKISTAN                       1                   1        0       3
24 months   ki1000109-EE               PAKISTAN                       0                   0        2       3
24 months   ki1000109-EE               PAKISTAN                       0                   1        1       3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       91     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       50     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      296     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1      140     577
24 months   ki1101329-Keneba           GAMBIA                         1                   0      297    1394
24 months   ki1101329-Keneba           GAMBIA                         1                   1      127    1394
24 months   ki1101329-Keneba           GAMBIA                         0                   0      620    1394
24 months   ki1101329-Keneba           GAMBIA                         0                   1      350    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      208     446
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      155     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       40     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       43     446
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1       17     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       75     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1703    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1622    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      509    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      500    4334
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1900    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1245    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      508    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      396    4049


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




# Results Detail

## Results Plots
![](/tmp/8ebd58fd-2bc0-4001-9cb0-5e2604d3d6d9/15e89a6f-e544-4ec4-b2f9-1ccc0395b385/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ebd58fd-2bc0-4001-9cb0-5e2604d3d6d9/15e89a6f-e544-4ec4-b2f9-1ccc0395b385/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8ebd58fd-2bc0-4001-9cb0-5e2604d3d6d9/15e89a6f-e544-4ec4-b2f9-1ccc0395b385/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8ebd58fd-2bc0-4001-9cb0-5e2604d3d6d9/15e89a6f-e544-4ec4-b2f9-1ccc0395b385/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0672269   0.0221890   0.1122648
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0970350   0.0668838   0.1271862
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0446693   0.0229115   0.0664271
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0576064   0.0422057   0.0730070
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1566165   0.1218226   0.1914103
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1796868   0.1041165   0.2552571
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3233379   0.3129475   0.3337283
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3242368   0.3132560   0.3352176
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3026865   0.2806212   0.3247518
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3006977   0.2757306   0.3256647
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2000000   0.0565653   0.3434347
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1809524   0.1287751   0.2331297
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1291812   0.0742354   0.1841270
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1676167   0.1335270   0.2017064
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.1386663   0.1090027   0.1683300
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.1507041   0.1313648   0.1700433
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1970003   0.1589704   0.2350302
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2746743   0.1882608   0.3610877
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3560788   0.2167258   0.4954318
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3551064   0.2923292   0.4178836
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2446961   0.2331967   0.2561955
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2555941   0.2366101   0.2745780
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2426583   0.2266903   0.2586263
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2850356   0.2524696   0.3176017
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5512419   0.3118327   0.7906510
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4688205   0.3967350   0.5409060
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3713369   0.2945906   0.4480831
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.3242411   0.2804094   0.3680728
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2998996   0.2571577   0.3426415
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.3599002   0.3300883   0.3897121
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4329321   0.3822637   0.4836005
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5057488   0.4007389   0.6107586
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.4929371   0.3177283   0.6681459
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4852648   0.4060246   0.5645050
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4856441   0.4655114   0.5057767
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4978178   0.4626756   0.5329600
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3988733   0.3786170   0.4191296
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4258012   0.3881747   0.4634278


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
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.2896195   0.7396488   2.248524
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1473045   0.7124418   1.847600
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0027802   0.9878914   1.017893
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9934293   0.9413508   1.048389
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9047619   0.4176743   1.959886
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.2975318   0.8106252   2.076901
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.0868108   0.8497683   1.389976
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3942835   0.9636579   2.017341
6 months    ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                 0.9972690   0.6486364   1.533287
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0445367   0.9637631   1.132080
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1746379   1.0368775   1.330701
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8504806   0.5364929   1.348232
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8731723   0.6837334   1.115098
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2000689   1.0203185   1.411486
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1681941   0.9234842   1.477749
24 months   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                 0.9844355   0.6656915   1.455799
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0250672   0.9476086   1.108857
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0675101   0.9707616   1.173901


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0225690   -0.0184828   0.0636209
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0088024   -0.0103091   0.0279139
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0049805   -0.0113660   0.0213270
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001337   -0.0009524   0.0012199
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0003425   -0.0037033   0.0030184
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0166667   -0.1502205   0.1168871
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0283644   -0.0206332   0.0773620
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0088197   -0.0161375   0.0337769
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0155234   -0.0033918   0.0344386
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0005388   -0.1266337   0.1277114
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0024975   -0.0021967   0.0071917
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0099104    0.0021892   0.0176316
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0748268   -0.3042256   0.1545721
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0420474   -0.1086034   0.0245085
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0422812    0.0065757   0.0779867
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0110141   -0.0104481   0.0324762
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0061646   -0.1652234   0.1528942
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0039729   -0.0051117   0.0130575
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0064120   -0.0024174   0.0152413


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2513369   -0.3701009   0.5909086
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.1646178   -0.2787621   0.4542664
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0308204   -0.0756905   0.1267850
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004134   -0.0029501   0.0037656
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0011327   -0.0123090   0.0099202
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0909091   -1.1267403   0.4404194
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1800393   -0.1968702   0.4382552
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0598001   -0.1256330   0.2146856
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0730432   -0.0199268   0.1575386
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0015110   -0.4270868   0.3013877
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0101036   -0.0090708   0.0289136
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0392384    0.0084276   0.0690919
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1570621   -0.7548476   0.2370889
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1276915   -0.3497560   0.0578386
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1235639    0.0127060   0.2219741
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0248095   -0.0247919   0.0720101
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0126642   -0.3982786   0.2666062
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0081143   -0.0106127   0.0264944
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0158209   -0.0061789   0.0373397
