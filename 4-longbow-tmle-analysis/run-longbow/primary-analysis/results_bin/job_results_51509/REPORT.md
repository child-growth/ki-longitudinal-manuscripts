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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        exclfeed36    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       51     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       13     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      161     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       26     251
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       18     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      205     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     225
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        7     243
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     243
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      182     243
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       54     243
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       14     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      203     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       20     238
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       16     287
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      260     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       11     287
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      260     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       21     281
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      232     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       23     256
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        1       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
0-24 months   ki1000108-IRC              INDIA                          1                   0        0       4
0-24 months   ki1000108-IRC              INDIA                          1                   1        0       4
0-24 months   ki1000108-IRC              INDIA                          0                   0        3       4
0-24 months   ki1000108-IRC              INDIA                          0                   1        1       4
0-24 months   ki1000109-EE               PAKISTAN                       1                   0      140     373
0-24 months   ki1000109-EE               PAKISTAN                       1                   1       86     373
0-24 months   ki1000109-EE               PAKISTAN                       0                   0       89     373
0-24 months   ki1000109-EE               PAKISTAN                       0                   1       58     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       73     184
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      152     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       19     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      398     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       70     639
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0      537    1983
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1       88    1983
0-24 months   ki1101329-Keneba           GAMBIA                         0                   0     1104    1983
0-24 months   ki1101329-Keneba           GAMBIA                         0                   1      254    1983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      292     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      133     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       64     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       39     528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    14138   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1202   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3448   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      597   19385
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3010    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      532    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      805    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      211    4558
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       62     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      180     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        7     251
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       18     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      207     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     225
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        7     243
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     243
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0      218     243
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       18     243
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       15     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      216     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        7     238
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       16     287
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      269     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        2     287
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      277     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     281
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      251     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        4     256
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        1       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
0-6 months    ki1000108-IRC              INDIA                          1                   0        0       4
0-6 months    ki1000108-IRC              INDIA                          1                   1        0       4
0-6 months    ki1000108-IRC              INDIA                          0                   0        3       4
0-6 months    ki1000108-IRC              INDIA                          0                   1        1       4
0-6 months    ki1000109-EE               PAKISTAN                       1                   0      199     373
0-6 months    ki1000109-EE               PAKISTAN                       1                   1       27     373
0-6 months    ki1000109-EE               PAKISTAN                       0                   0      121     373
0-6 months    ki1000109-EE               PAKISTAN                       0                   1       26     373
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       26     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      169     639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      441     639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       27     639
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0      611    1983
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       14    1983
0-6 months    ki1101329-Keneba           GAMBIA                         0                   0     1310    1983
0-6 months    ki1101329-Keneba           GAMBIA                         0                   1       48    1983
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      413     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       12     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       94     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        9     528
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    14909   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      425   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3730   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      306   19370
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3461    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       78    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      963    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       43    4545
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       51     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       12     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      152     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       23     238
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       17     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      188     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        7     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      181     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       47     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       14     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      205     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       15     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       16     269
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      243     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      240     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       19     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      223     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        1       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
6-24 months   ki1000108-IRC              INDIA                          1                   0        0       4
6-24 months   ki1000108-IRC              INDIA                          1                   1        0       4
6-24 months   ki1000108-IRC              INDIA                          0                   0        3       4
6-24 months   ki1000108-IRC              INDIA                          0                   1        1       4
6-24 months   ki1000109-EE               PAKISTAN                       1                   0      142     368
6-24 months   ki1000109-EE               PAKISTAN                       1                   1       80     368
6-24 months   ki1000109-EE               PAKISTAN                       0                   0       94     368
6-24 months   ki1000109-EE               PAKISTAN                       0                   1       52     368
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       65     176
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      142     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       18     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      396     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       57     613
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0      499    1904
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       80    1904
6-24 months   ki1101329-Keneba           GAMBIA                         0                   0     1089    1904
6-24 months   ki1101329-Keneba           GAMBIA                         0                   1      236    1904
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      292     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      132     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       65     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       37     526
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    10109   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      853   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2408   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      357   13727
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3053    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      483    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      818    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      193    4547


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
![](/tmp/052a42de-307a-4b64-9364-dcffc9530dda/e87b2c0f-ebdd-4803-9a2a-8a07eb7dff4f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/052a42de-307a-4b64-9364-dcffc9530dda/e87b2c0f-ebdd-4803-9a2a-8a07eb7dff4f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/052a42de-307a-4b64-9364-dcffc9530dda/e87b2c0f-ebdd-4803-9a2a-8a07eb7dff4f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/052a42de-307a-4b64-9364-dcffc9530dda/e87b2c0f-ebdd-4803-9a2a-8a07eb7dff4f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1916961   0.0943188   0.2890735
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1422858   0.0924620   0.1921095
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3861798   0.3229264   0.4494331
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3836732   0.3052424   0.4621040
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1049821   0.0577296   0.1522345
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1499360   0.1175907   0.1822814
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1476860   0.1208081   0.1745639
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1834506   0.1630706   0.2038305
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3161683   0.2720582   0.3602785
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3984516   0.3101534   0.4867498
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0830429   0.0782988   0.0877871
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1272130   0.1168074   0.1376186
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1537706   0.1404214   0.1671198
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1871362   0.1633539   0.2109184
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1178572   0.0753132   0.1604013
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1667469   0.1045518   0.2289421
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0222262   0.0106813   0.0337711
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0351404   0.0253445   0.0449362
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0282353   0.0124722   0.0439984
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0873786   0.0327917   0.1419656
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0309152   0.0281329   0.0336975
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0594308   0.0523665   0.0664950
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0221490   0.0161792   0.0281189
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0445531   0.0309842   0.0581221
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1935031   0.0957117   0.2912946
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1309656   0.0807381   0.1811930
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3631571   0.2998754   0.4264388
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3429073   0.2651588   0.4206557
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1131653   0.0643160   0.1620145
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1268733   0.0963030   0.1574437
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1441167   0.1163408   0.1718927
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1745848   0.1542594   0.1949102
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3125297   0.2684828   0.3565766
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3567330   0.2612622   0.4522037
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0811067   0.0756364   0.0865770
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1147740   0.1022787   0.1272693
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1395015   0.1269638   0.1520393
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1758256   0.1524274   0.1992239


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1553785   0.1104725   0.2002845
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3860590   0.3365861   0.4355318
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1392801   0.1124135   0.1661468
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1724660   0.1558341   0.1890978
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3257576   0.2857449   0.3657703
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0928037   0.0883057   0.0973017
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1630101   0.1508647   0.1751555
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1420912   0.1066114   0.1775709
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0312658   0.0236039   0.0389276
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0397727   0.0230879   0.0564576
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0377388   0.0349183   0.0405593
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0266227   0.0211044   0.0321409
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1470588   0.1019690   0.1921487
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3586957   0.3096263   0.4077650
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1223491   0.0963874   0.1483108
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1659664   0.1492505   0.1826823
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3212928   0.2813480   0.3612376
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0881474   0.0829797   0.0933152
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1486695   0.1373410   0.1599979


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7422463   0.4031108   1.366695
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9935094   0.7673342   1.286351
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.4282063   0.8677018   2.350777
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2421660   1.0069672   1.532301
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2602515   0.9702584   1.636918
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5318943   1.3909653   1.687102
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2169823   1.0503620   1.410034
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.4148212   0.8420960   2.377067
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.5810348   0.8765761   2.851630
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 3.0946602   1.3389106   7.152771
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.9223809   1.6713420   2.211126
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0115152   1.3515277   2.993793
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6768139   0.3585076   1.277733
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9442395   0.7107984   1.254347
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.1211333   0.6849819   1.834997
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2114123   0.9702532   1.512512
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1414368   0.8441411   1.543436
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4150996   1.2492258   1.602998
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2603852   1.0782559   1.473278


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0363177   -0.1173211   0.0446858
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0001208   -0.0394476   0.0392060
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0342981   -0.0076978   0.0762940
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0247799    0.0020306   0.0475293
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0095892   -0.0113007   0.0304792
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0097608    0.0072272   0.0122944
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0092394    0.0031469   0.0153320
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0242339   -0.0055681   0.0540359
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0090396   -0.0013459   0.0194250
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0115374    0.0002746   0.0228003
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0068236    0.0051670   0.0084802
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0044736    0.0013586   0.0075887
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0464443   -0.1276914   0.0348028
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0044614   -0.0439689   0.0350460
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0091838   -0.0333188   0.0516865
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0218496   -0.0017755   0.0454747
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0087630   -0.0112036   0.0287296
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0070408    0.0042117   0.0098699
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0091679    0.0031886   0.0151473


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2337367   -0.8763685   0.1888020
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0003128   -0.1075477   0.0965393
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2462524   -0.1221357   0.4937017
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1436801    0.0017566   0.2654259
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0294368   -0.0367534   0.0914011
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1051766    0.0779241   0.1316236
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0566802    0.0184973   0.0933777
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1705518   -0.0649037   0.3539469
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.2891210   -0.1226421   0.5498574
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2900840   -0.0201657   0.5059815
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1808110    0.1380943   0.2214107
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1680380    0.0417043   0.2777169
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3158212   -0.9965973   0.1328319
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0124380   -0.1287914   0.0919220
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0750626   -0.3460988   0.3644529
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1316510   -0.0224499   0.2625263
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0272743   -0.0368743   0.0874542
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0798751    0.0476564   0.1110037
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0616666    0.0205358   0.1010701
