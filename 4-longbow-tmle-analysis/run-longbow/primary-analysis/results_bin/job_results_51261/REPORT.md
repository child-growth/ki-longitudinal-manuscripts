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

agecat      studyid                    country                        exclfeed36    wasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       48     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       10     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      143     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       29     230
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       12     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      159     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        6     177
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        5     195
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     195
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      157     195
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       33     195
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       11     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      136     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       20     167
Birth       ki0047075b-MAL-ED          PERU                           1                  0       15     266
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     266
Birth       ki0047075b-MAL-ED          PERU                           0                  0      245     266
Birth       ki0047075b-MAL-ED          PERU                           0                  1        6     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      220     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       14     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      113     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        2     116
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       3
Birth       ki1000108-IRC              INDIA                          1                  0        0       3
Birth       ki1000108-IRC              INDIA                          1                  1        0       3
Birth       ki1000108-IRC              INDIA                          0                  0        2       3
Birth       ki1000108-IRC              INDIA                          0                  1        1       3
Birth       ki1000109-EE               PAKISTAN                       1                  0        0       1
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       1
Birth       ki1000109-EE               PAKISTAN                       0                  0        1       1
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       1
Birth       ki1101329-Keneba           GAMBIA                         1                  0      335    1202
Birth       ki1101329-Keneba           GAMBIA                         1                  1       10    1202
Birth       ki1101329-Keneba           GAMBIA                         0                  0      842    1202
Birth       ki1101329-Keneba           GAMBIA                         0                  1       15    1202
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8283   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      892   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1913   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      231   11319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      460     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       31     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      107     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4     602
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       61     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        2     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      171     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        6     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      191     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        7     236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      211     236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       15     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      217     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4     236
6 months    ki0047075b-MAL-ED          PERU                           1                  0       16     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                  0      255     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      247     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        7     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      245     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        8       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        1       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       9
6 months    ki1000108-IRC              INDIA                          1                  0        0       4
6 months    ki1000108-IRC              INDIA                          1                  1        0       4
6 months    ki1000108-IRC              INDIA                          0                  0        3       4
6 months    ki1000108-IRC              INDIA                          0                  1        1       4
6 months    ki1000109-EE               PAKISTAN                       1                  0      202     371
6 months    ki1000109-EE               PAKISTAN                       1                  1       22     371
6 months    ki1000109-EE               PAKISTAN                       0                  0      120     371
6 months    ki1000109-EE               PAKISTAN                       0                  1       27     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       41     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      138     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      420     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       22     582
6 months    ki1101329-Keneba           GAMBIA                         1                  0      483    1790
6 months    ki1101329-Keneba           GAMBIA                         1                  1       24    1790
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1197    1790
6 months    ki1101329-Keneba           GAMBIA                         0                  1       86    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      384     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       39     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       93     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       10     526
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        4     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     9860   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      794   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2358   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      341   13353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3086    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      156    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      852    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       78    4172
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       50     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        8     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      140     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       13     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      150     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        3     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        6     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      194     227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       27     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      209     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        5     228
24 months   ki0047075b-MAL-ED          PERU                           1                  0       12     200
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     200
24 months   ki0047075b-MAL-ED          PERU                           0                  0      185     200
24 months   ki0047075b-MAL-ED          PERU                           0                  1        3     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      237     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      209     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       9
24 months   ki1000108-IRC              INDIA                          1                  0        0       4
24 months   ki1000108-IRC              INDIA                          1                  1        0       4
24 months   ki1000108-IRC              INDIA                          0                  0        4       4
24 months   ki1000108-IRC              INDIA                          0                  1        0       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      135     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       13     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      376     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       52     576
24 months   ki1101329-Keneba           GAMBIA                         1                  0      380    1395
24 months   ki1101329-Keneba           GAMBIA                         1                  1       44    1395
24 months   ki1101329-Keneba           GAMBIA                         0                  0      867    1395
24 months   ki1101329-Keneba           GAMBIA                         0                  1      104    1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      310     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       58     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       64     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       23     455
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        3     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     4094    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1172    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1063    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      343    6672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2531    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      596    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      683    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      199    4009


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/23e532ab-e144-4c46-bf5e-49df5aba0dc1/88f8084e-513a-491f-a0c6-15d16db17f2a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/23e532ab-e144-4c46-bf5e-49df5aba0dc1/88f8084e-513a-491f-a0c6-15d16db17f2a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/23e532ab-e144-4c46-bf5e-49df5aba0dc1/88f8084e-513a-491f-a0c6-15d16db17f2a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/23e532ab-e144-4c46-bf5e-49df5aba0dc1/88f8084e-513a-491f-a0c6-15d16db17f2a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1738034   0.0784305   0.2691764
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1685393   0.1124119   0.2246666
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0286765   0.0108062   0.0465467
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0176772   0.0087861   0.0265682
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0989326   0.0926611   0.1052042
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1004371   0.0934901   0.1073842
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0981286   0.0589553   0.1373018
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1772341   0.1140774   0.2403908
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0462206   0.0276148   0.0648264
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0667409   0.0530422   0.0804397
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0919841   0.0643328   0.1196353
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0903959   0.0320756   0.1487162
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0761248   0.0705426   0.0817070
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1212624   0.1078985   0.1346263
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0490070   0.0378804   0.0601335
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0788629   0.0603479   0.0973778
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1379310   0.0489766   0.2268855
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0849673   0.0406801   0.1292545
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0868682   0.0409465   0.1327899
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1211770   0.0901829   0.1521710
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1028323   0.0735553   0.1321093
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1082633   0.0887885   0.1277381
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1582333   0.1207313   0.1957353
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2642815   0.1702971   0.3582659
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2253404   0.2122862   0.2383945
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2322731   0.2069514   0.2575949
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1929475   0.1768233   0.2090718
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2154891   0.1823602   0.2486180


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1695652   0.1209635   0.2181669
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0207987   0.0127276   0.0288697
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0992137   0.0929975   0.1054299
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1320755   0.0975770   0.1665739
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0614525   0.0503239   0.0725811
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0931559   0.0682937   0.1180181
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0849996   0.0797287   0.0902706
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0560882   0.0466363   0.0655401
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0995261   0.0590366   0.1400156
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1128472   0.0869854   0.1387090
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1060932   0.0899270   0.1222593
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1780220   0.1428346   0.2132094
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2270683   0.2155455   0.2385912
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1983038   0.1835884   0.2130192


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9697120   0.5094235   1.845893
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 0.6164346   0.2767218   1.373190
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0152074   0.9780435   1.053783
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 1.8061416   1.0573929   3.085085
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.4439655   0.9189287   2.268986
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9827348   0.4819667   2.003806
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5929432   1.4012912   1.810807
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.6092177   1.1593227   2.233702
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6160131   0.2688229   1.411606
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.3949522   0.7752012   2.510176
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.0528138   0.7518480   1.474257
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.6702020   1.0877657   2.564500
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0307657   0.9113955   1.165770
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1168273   0.9397841   1.327223


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0042382   -0.0873425   0.0788661
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0078778   -0.0221420   0.0063864
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0002811   -0.0004581   0.0010203
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0339469    0.0042773   0.0636165
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0152319   -0.0013637   0.0318275
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0011718   -0.0113138   0.0136575
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0088749    0.0059862   0.0117635
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0070813    0.0020877   0.0120748
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0384050   -0.1105304   0.0337205
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0259790   -0.0152702   0.0672283
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0032609   -0.0212918   0.0278135
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0197887    0.0000794   0.0394980
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017280   -0.0043635   0.0078194
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0053563   -0.0028375   0.0135501


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0249947   -0.6537389   0.3647038
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.3787640   -1.2398031   0.1512691
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0028334   -0.0046501   0.0102611
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.2570265    0.0050560   0.4451852
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.2478649   -0.0731278   0.4728426
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0125794   -0.1309621   0.1379026
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1044105    0.0702323   0.1373323
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1262522    0.0274529   0.2150146
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3858785   -1.3179029   0.1713807
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2302142   -0.2333550   0.5195462
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0307361   -0.2306615   0.2366117
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1111588   -0.0052553   0.2140915
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0076099   -0.0195867   0.0340810
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0270105   -0.0150440   0.0673226
