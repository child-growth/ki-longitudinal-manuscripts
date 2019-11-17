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

agecat        studyid                    country                        exclfeed36    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       29     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      183     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       35     251
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       15     224
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     224
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      206     224
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     224
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        9     239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        1     239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      176     239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       53     239
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        5     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      209     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       22     236
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       10     286
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     286
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      265     286
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       11     286
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        4     276
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     276
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      250     276
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       22     276
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        5     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      222     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       23     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        1       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
0-24 months   ki1000108-IRC              INDIA                          1                   0        0       4
0-24 months   ki1000108-IRC              INDIA                          1                   1        0       4
0-24 months   ki1000108-IRC              INDIA                          0                   0        3       4
0-24 months   ki1000108-IRC              INDIA                          0                   1        1       4
0-24 months   ki1000109-EE               PAKISTAN                       1                   0        3       9
0-24 months   ki1000109-EE               PAKISTAN                       1                   1        1       9
0-24 months   ki1000109-EE               PAKISTAN                       0                   0        5       9
0-24 months   ki1000109-EE               PAKISTAN                       0                   1        0       9
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       73     184
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      144     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       18     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      406     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       71     639
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0      538    1983
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1       87    1983
0-24 months   ki1101329-Keneba           GAMBIA                         0                   0     1103    1983
0-24 months   ki1101329-Keneba           GAMBIA                         0                   1      255    1983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      286     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      137     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       64     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       41     528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9001   12748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      922   12748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2543   12748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      282   12748
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3010    4589
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      532    4589
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      834    4589
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      213    4589
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       32     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        1     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      210     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        8     251
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       15     224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      208     224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     224
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       10     239
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     239
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0      210     239
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       19     239
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        5     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      223     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        8     236
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       10     286
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     286
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      275     286
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        1     286
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        4     276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      268     276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     276
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        5     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      241     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        4     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        1       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
0-6 months    ki1000108-IRC              INDIA                          1                   0        0       4
0-6 months    ki1000108-IRC              INDIA                          1                   1        0       4
0-6 months    ki1000108-IRC              INDIA                          0                   0        3       4
0-6 months    ki1000108-IRC              INDIA                          0                   1        1       4
0-6 months    ki1000109-EE               PAKISTAN                       1                   0        3       9
0-6 months    ki1000109-EE               PAKISTAN                       1                   1        1       9
0-6 months    ki1000109-EE               PAKISTAN                       0                   0        5       9
0-6 months    ki1000109-EE               PAKISTAN                       0                   1        0       9
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       26     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      160     639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      450     639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       27     639
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0      612    1983
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       13    1983
0-6 months    ki1101329-Keneba           GAMBIA                         0                   0     1309    1983
0-6 months    ki1101329-Keneba           GAMBIA                         0                   1       49    1983
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      405     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       18     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       94     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       11     528
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9501   12721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      401   12721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2707   12721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      112   12721
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3447    4540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       78    4540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      971    4540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       44    4540
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       26     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      178     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       31     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       12     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      193     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        8     232
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        1     232
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      177     232
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       46     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        4     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      214     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       16     234
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0        6     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      253     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       11     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      234     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       20     256
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        4     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      218     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     243
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        1       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
6-24 months   ki1000108-IRC              INDIA                          1                   0        0       4
6-24 months   ki1000108-IRC              INDIA                          1                   1        0       4
6-24 months   ki1000108-IRC              INDIA                          0                   0        3       4
6-24 months   ki1000108-IRC              INDIA                          0                   1        1       4
6-24 months   ki1000109-EE               PAKISTAN                       1                   0        3       9
6-24 months   ki1000109-EE               PAKISTAN                       1                   1        1       9
6-24 months   ki1000109-EE               PAKISTAN                       0                   0        5       9
6-24 months   ki1000109-EE               PAKISTAN                       0                   1        0       9
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       65     176
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      135     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       17     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      403     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       58     613
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0      499    1904
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       80    1904
6-24 months   ki1101329-Keneba           GAMBIA                         0                   0     1089    1904
6-24 months   ki1101329-Keneba           GAMBIA                         0                   1      236    1904
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      289     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      133     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       67     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       37     526
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6195    8812
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      593    8812
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1837    8812
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      187    8812
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3052    4577
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      483    4577
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      848    4577
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      194    4577


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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7d063444-3959-410a-a604-1e1645200f4f/4d5d6b26-f506-4a0c-8d3c-e2ebfcb55d18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d063444-3959-410a-a604-1e1645200f4f/4d5d6b26-f506-4a0c-8d3c-e2ebfcb55d18/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d063444-3959-410a-a604-1e1645200f4f/4d5d6b26-f506-4a0c-8d3c-e2ebfcb55d18/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d063444-3959-410a-a604-1e1645200f4f/4d5d6b26-f506-4a0c-8d3c-e2ebfcb55d18/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1155510   0.0669121   0.1641899
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1494087   0.1174713   0.1813460
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1413550   0.1146237   0.1680864
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1860261   0.1656010   0.2064513
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3299125   0.2855479   0.3742771
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3832452   0.2919156   0.4745747
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0935010   0.0873639   0.0996382
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0974639   0.0868443   0.1080835
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1532957   0.1400645   0.1665269
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1869192   0.1635061   0.2103322
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0206312   0.0094968   0.0317656
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0360634   0.0261503   0.0459764
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0431872   0.0238264   0.0625480
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1073124   0.0497781   0.1648467
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0406146   0.0365109   0.0447183
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0390913   0.0325879   0.0455948
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0222737   0.0162303   0.0283171
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0430388   0.0299687   0.0561089
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1053749   0.0553126   0.1554373
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1244933   0.0941854   0.1548011
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1410845   0.1134321   0.1687370
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1768838   0.1565221   0.1972456
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3189746   0.2746410   0.3633081
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3373066   0.2442418   0.4303714
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0871367   0.0800940   0.0941793
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0937665   0.0805881   0.1069449
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1397321   0.1272413   0.1522228
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1739027   0.1509711   0.1968343


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1392801   0.1124135   0.1661468
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1724660   0.1558341   0.1890978
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3371212   0.2967611   0.3774814
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0944462   0.0888980   0.0999944
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1623447   0.1503363   0.1743531
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0312658   0.0236039   0.0389276
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0549242   0.0354725   0.0743760
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0403270   0.0366289   0.0440252
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0268722   0.0213332   0.0324113
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1223491   0.0963874   0.1483108
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1659664   0.1492505   0.1826823
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3231939   0.2831873   0.3632006
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0885157   0.0819350   0.0950963
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1479135   0.1367519   0.1590750


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.2930109   0.8063352   2.073427
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.3160205   1.0609311   1.632443
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1616570   0.8856402   1.523697
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0423834   0.9235103   1.176558
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2193369   1.0543796   1.410102
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.7480011   0.9534145   3.204805
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.4848168   1.2353151   4.998170
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9624954   0.8027243   1.154067
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.9322733   1.2926511   2.888390
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.1814314   0.6928706   2.014489
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2537436   1.0015576   1.569428
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0574718   0.7771712   1.438868
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0760853   0.9247077   1.252244
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2445439   1.0642504   1.455381


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0237291   -0.0198811   0.0673394
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0311109    0.0083716   0.0538503
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0072087   -0.0130058   0.0274232
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0009452   -0.0016493   0.0035396
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0090490    0.0028594   0.0152386
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0106346    0.0004117   0.0208575
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0117370   -0.0007606   0.0242346
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0002875   -0.0018691   0.0012940
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0045986    0.0014583   0.0077389
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0169742   -0.0271794   0.0611277
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0248818    0.0012835   0.0484802
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0042194   -0.0158777   0.0243164
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0013790   -0.0018428   0.0046008
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0081814    0.0020574   0.0143054


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1703700   -0.2072530   0.4298742
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1803887    0.0381343   0.3016045
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0213831   -0.0403964   0.0794942
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0100075   -0.0178570   0.0371092
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0557394    0.0168157   0.0931221
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.3401344   -0.0660907   0.5915708
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2136943   -0.0334627   0.4017427
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0071304   -0.0470884   0.0313028
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1711274    0.0441986   0.2812002
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1387355   -0.3090545   0.4333493
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1499210   -0.0041755   0.2803706
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0130552   -0.0511089   0.0733024
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0155792   -0.0214036   0.0512229
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0553122    0.0129624   0.0958449
