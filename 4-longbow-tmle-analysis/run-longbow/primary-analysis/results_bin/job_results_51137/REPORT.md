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

agecat      studyid                    country                        exclfeed36    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0       61     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1        1     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0      175     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    1        6     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0       12     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1        1     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0      165     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    1        7     185
Birth       ki0047075b-MAL-ED          INDIA                          1                    0        5     198
Birth       ki0047075b-MAL-ED          INDIA                          1                    1        0     198
Birth       ki0047075b-MAL-ED          INDIA                          0                    0      186     198
Birth       ki0047075b-MAL-ED          INDIA                          0                    1        7     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0       11     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0      155     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                    1        6     172
Birth       ki0047075b-MAL-ED          PERU                           1                    0       14     273
Birth       ki0047075b-MAL-ED          PERU                           1                    1        1     273
Birth       ki0047075b-MAL-ED          PERU                           0                    0      253     273
Birth       ki0047075b-MAL-ED          PERU                           0                    1        5     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      235     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        1     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      114     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6     121
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       3
Birth       ki1000108-IRC              INDIA                          1                    0        0       4
Birth       ki1000108-IRC              INDIA                          1                    1        0       4
Birth       ki1000108-IRC              INDIA                          0                    0        4       4
Birth       ki1000108-IRC              INDIA                          0                    1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                    0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                    1        0       2
Birth       ki1000109-EE               PAKISTAN                       0                    0        1       2
Birth       ki1000109-EE               PAKISTAN                       0                    1        0       2
Birth       ki1101329-Keneba           GAMBIA                         1                    0      358    1252
Birth       ki1101329-Keneba           GAMBIA                         1                    1        5    1252
Birth       ki1101329-Keneba           GAMBIA                         0                    0      870    1252
Birth       ki1101329-Keneba           GAMBIA                         0                    1       19    1252
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0    10195   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1      960   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2424   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    1      367   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0      539     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    1       41     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0      131     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    1       16     727
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       60     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      172     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      192     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                    0        6     236
6 months    ki0047075b-MAL-ED          INDIA                          1                    1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          0                    0      221     236
6 months    ki0047075b-MAL-ED          INDIA                          0                    1        8     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       15     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      220     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        1     236
6 months    ki0047075b-MAL-ED          PERU                           1                    0       15     271
6 months    ki0047075b-MAL-ED          PERU                           1                    1        1     271
6 months    ki0047075b-MAL-ED          PERU                           0                    0      245     271
6 months    ki0047075b-MAL-ED          PERU                           0                    1       10     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      248     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        6     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      232     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       14     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        2       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       9
6 months    ki1000108-IRC              INDIA                          1                    0        0       4
6 months    ki1000108-IRC              INDIA                          1                    1        0       4
6 months    ki1000108-IRC              INDIA                          0                    0        4       4
6 months    ki1000108-IRC              INDIA                          0                    1        0       4
6 months    ki1000109-EE               PAKISTAN                       1                    0      157     367
6 months    ki1000109-EE               PAKISTAN                       1                    1       65     367
6 months    ki1000109-EE               PAKISTAN                       0                    0      119     367
6 months    ki1000109-EE               PAKISTAN                       0                    1       26     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       28     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      138     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      431     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       11     582
6 months    ki1101329-Keneba           GAMBIA                         1                    0      490    1790
6 months    ki1101329-Keneba           GAMBIA                         1                    1       17    1790
6 months    ki1101329-Keneba           GAMBIA                         0                    0     1242    1790
6 months    ki1101329-Keneba           GAMBIA                         0                    1       41    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      412     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       11     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       96     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1        7     526
6 months    ki1148112-LCNI-5           MALAWI                         1                    0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                    1        3     272
6 months    ki1148112-LCNI-5           MALAWI                         0                    0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                    1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    10163   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      522   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2406   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      284   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3098    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      145    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      838    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       90    4171
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       48     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       10     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      138     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       15     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      152     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                    0        4     227
24 months   ki0047075b-MAL-ED          INDIA                          1                    1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          0                    0      195     227
24 months   ki0047075b-MAL-ED          INDIA                          0                    1       26     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      207     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        7     228
24 months   ki0047075b-MAL-ED          PERU                           1                    0       12     200
24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     200
24 months   ki0047075b-MAL-ED          PERU                           0                    0      174     200
24 months   ki0047075b-MAL-ED          PERU                           0                    1       14     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      212     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       26     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      144     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       69     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        6       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        3       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       9
24 months   ki1000108-IRC              INDIA                          1                    0        0       4
24 months   ki1000108-IRC              INDIA                          1                    1        0       4
24 months   ki1000108-IRC              INDIA                          0                    0        3       4
24 months   ki1000108-IRC              INDIA                          0                    1        1       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      136     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       12     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      391     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       37     576
24 months   ki1101329-Keneba           GAMBIA                         1                    0      401    1394
24 months   ki1101329-Keneba           GAMBIA                         1                    1       23    1394
24 months   ki1101329-Keneba           GAMBIA                         0                    0      880    1394
24 months   ki1101329-Keneba           GAMBIA                         0                    1       90    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      335     456
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       34     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       72     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       15     456
24 months   ki1148112-LCNI-5           MALAWI                         1                    0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                    1        4     189
24 months   ki1148112-LCNI-5           MALAWI                         0                    0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                    1       20     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4518    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      765    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1162    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      248    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2869    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      271    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      768    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      115    4023


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
![](/tmp/91fdeae3-d15f-4751-b74d-88fc474594af/81d3692e-dc7b-48ea-9325-f7ca7fc66e8d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91fdeae3-d15f-4751-b74d-88fc474594af/81d3692e-dc7b-48ea-9325-f7ca7fc66e8d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91fdeae3-d15f-4751-b74d-88fc474594af/81d3692e-dc7b-48ea-9325-f7ca7fc66e8d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91fdeae3-d15f-4751-b74d-88fc474594af/81d3692e-dc7b-48ea-9325-f7ca7fc66e8d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0137741   0.0017794   0.0257688
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0213723   0.0118618   0.0308829
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0948680   0.0897875   0.0999485
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0959215   0.0907354   0.1011075
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0796321   0.0551546   0.1041096
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0784846   0.0528363   0.1041329
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2983563   0.2385889   0.3581237
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1717113   0.1088253   0.2345973
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0333235   0.0175577   0.0490893
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0318770   0.0222574   0.0414965
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0260047   0.0108239   0.0411856
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0679612   0.0193104   0.1166120
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0536868   0.0495283   0.0578453
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0842131   0.0733190   0.0951073
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0473611   0.0391080   0.0556143
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0834037   0.0650809   0.1017265
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1676679   0.0670774   0.2682583
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0944579   0.0474577   0.1414580
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0887508   0.0452460   0.1322556
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0876826   0.0610088   0.1143564
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0548252   0.0331230   0.0765274
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0915278   0.0732779   0.1097778
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0915528   0.0621424   0.1209633
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1660342   0.0868132   0.2452551
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1491797   0.1387416   0.1596178
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1571734   0.1363186   0.1780282
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0877980   0.0760283   0.0995677
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1232578   0.1001263   0.1463893


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0191693   0.0115710   0.0267677
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0951527   0.0900508   0.1002546
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0784044   0.0544827   0.1023261
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.2479564   0.2037162   0.2921966
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0324022   0.0241972   0.0406072
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0342205   0.0186698   0.0497713
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0602617   0.0561000   0.0644233
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0563414   0.0484727   0.0642101
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1184834   0.0747732   0.1621936
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0850694   0.0622663   0.1078726
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0810617   0.0667291   0.0953942
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1074561   0.0790002   0.1359121
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1513522   0.1415495   0.1611548
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0959483   0.0853397   0.1065568


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.5516310   0.5835550   4.1256764
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0111044   1.0039932   1.0182660
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9855903   0.8139987   1.1933537
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 0.5755241   0.3796586   0.8724365
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.9565906   0.5457357   1.6767559
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.6134157   1.0376345   6.5822227
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5686007   1.3592394   1.8102096
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7610150   1.3481782   2.3002700
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.5633629   0.2580430   1.2299415
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9879643   0.5544493   1.7604377
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.6694490   1.0718016   2.6003508
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.8135341   1.0194608   3.2261231
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0535846   0.9133849   1.2153043
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.4038796   1.1198688   1.7599185


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0053952   -0.0054758    0.0162663
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0002847    0.0001003    0.0004692
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0012277   -0.0042594    0.0018040
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0503999   -0.0854094   -0.0153905
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0009213   -0.0141743    0.0123317
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0082158   -0.0018650    0.0182966
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0065749    0.0041398    0.0090100
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0089803    0.0044740    0.0134865
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0491845   -0.1306936    0.0323247
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0036814   -0.0415685    0.0342058
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0262365    0.0064714    0.0460016
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0159033   -0.0006319    0.0324385
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0021725   -0.0026214    0.0069664
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0081503    0.0024675    0.0138331


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.2814509   -0.5585131    0.6687145
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0029923    0.0010670    0.0049139
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0156582   -0.0547708    0.0220041
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.2032613   -0.3531832   -0.0699495
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0284331   -0.5305472    0.3089565
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2400841   -0.0909814    0.4706855
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1091059    0.0693778    0.1471379
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1593901    0.0769546    0.2344634
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.4151168   -1.2738904    0.1193263
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0432747   -0.5996837    0.3196017
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.3236611    0.0386447    0.5241776
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1479982   -0.0156911    0.2853071
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0143539   -0.0177451    0.0454406
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0849450    0.0234891    0.1425332
