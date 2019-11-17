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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        exclfeed36    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       31     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        1        2     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        0      208     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        1       10     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        0       16     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        0      204     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        1        4     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        0        9     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        1        1     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        0      212     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        1       12     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        0        4     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        0      228     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        0       10     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        1        0     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        0      272     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        1        4     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        4     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      260     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       12     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        5     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      237     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        8     250
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        9       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       9
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                        0        0       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                        1        0       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                        0        3       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                        1        1       4
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        0        4       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        1        0       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        0        4       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        1        1       9
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      159     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       14     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                        0      159     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                        1        3     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                        0      459     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                        1       14     635
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                        0      544    1974
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                        1       79    1974
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                        0     1115    1974
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                        1      236    1974
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        0      330     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        1       90     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        0       74     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        1       30     524
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        0       47     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        1        0     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9404   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      370   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2698   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1       96   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3378    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1      142    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      989    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       50    4559
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       32     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        1        1     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      211     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        1        6     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        0       16     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        0      205     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        1        3     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        0        9     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        0      216     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        1        6     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        0        4     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        0      228     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        0       10     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        1        0     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        0      275     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        1        1     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        4     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      268     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        3     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        5     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      242     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        3     250
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        8       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       8
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                        0        0       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                        1        0       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                        0        4       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                        1        0       4
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        0        4       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        1        0       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        0        4       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        1        1       9
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                        0      162     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                        1        0     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                        0      465     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                        1        4     631
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                        0      600    1960
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                        1       20    1960
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                        0     1276    1960
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                        1       64    1960
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        0      389     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        1       21     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        0       92     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        1        8     510
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9535   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1      157   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2726   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1       40   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3450    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1       14    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      963    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1        6    4433
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        0       29     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        0      206     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        1        4     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        0       12     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        0      194     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        0        9     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        1        0     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        0      217     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        1        6     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        0        4     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        1        0     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        0      228     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        1        2     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        0        6     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        0      261     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        1        3     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        2     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      244     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       10     256
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        4     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      234     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        5     243
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        9       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       9
6-24 months                   ki1000108-IRC              INDIA                          1                        0        0       4
6-24 months                   ki1000108-IRC              INDIA                          1                        1        0       4
6-24 months                   ki1000108-IRC              INDIA                          0                        0        3       4
6-24 months                   ki1000108-IRC              INDIA                          0                        1        1       4
6-24 months                   ki1000109-EE               PAKISTAN                       1                        0        4       9
6-24 months                   ki1000109-EE               PAKISTAN                       1                        1        0       9
6-24 months                   ki1000109-EE               PAKISTAN                       0                        0        5       9
6-24 months                   ki1000109-EE               PAKISTAN                       0                        1        0       9
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      156     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       21     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                        0      149     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                        1        3     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                        0      451     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                        1       10     613
6-24 months                   ki1101329-Keneba           GAMBIA                         1                        0      517    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         1                        1       62    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                        0     1148    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                        1      177    1904
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        0      347     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        1       75     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        0       78     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        1       26     526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        0       45     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        1        0     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     6564    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      228    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1968    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        1       60    8820
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3397    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        1      138    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      994    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       49    4578


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/b9518aff-3796-429e-a786-bd4be94c0d03/d410fdd8-d78d-4e11-b7f5-2f8a68849697/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b9518aff-3796-429e-a786-bd4be94c0d03/d410fdd8-d78d-4e11-b7f5-2f8a68849697/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b9518aff-3796-429e-a786-bd4be94c0d03/d410fdd8-d78d-4e11-b7f5-2f8a68849697/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b9518aff-3796-429e-a786-bd4be94c0d03/d410fdd8-d78d-4e11-b7f5-2f8a68849697/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1244156    0.0981336   0.1506977
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1771365    0.1568428   0.1974301
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2152632    0.1759496   0.2545767
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2780867    0.1890794   0.3670940
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0378071    0.0334433   0.0421709
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0345232    0.0271387   0.0419077
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0416687    0.0346132   0.0487242
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0464391    0.0324533   0.0604249
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0327976    0.0188050   0.0467901
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0476450    0.0362301   0.0590599
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0512195    0.0298604   0.0725786
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0800000    0.0267753   0.1332247
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0161858    0.0130934   0.0192782
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0144401    0.0099216   0.0189586
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0040416    0.0006666   0.0074166
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0061920   -0.0013383   0.0137222
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1061654    0.0808565   0.1314743
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1337859    0.1154743   0.1520975
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1780692    0.1415832   0.2145552
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2583048    0.1740638   0.3425459
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0334940    0.0286361   0.0383519
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0299258    0.0209434   0.0389081
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0401616    0.0334513   0.0468719
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0435905    0.0302648   0.0569163


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.1595745   0.1434154   0.1757335
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2290076   0.1929956   0.2650196
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0370783   0.0333023   0.0408543
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0421145   0.0360504   0.0481786
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.0428571   0.0338884   0.0518259
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0568627   0.0367445   0.0769810
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0158131   0.0132056   0.0184207
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045116   0.0014181   0.0076051
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.1255252   0.1106396   0.1404109
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1920152   0.1583224   0.2257081
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0326531   0.0283158   0.0369903
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0408475   0.0350297   0.0466653


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.4237479   1.1198212   1.810162
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2918454   0.8924777   1.869923
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9131408   0.7163601   1.163976
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1144846   0.7858881   1.580474
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.4526998   0.8904237   2.370037
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.5619048   0.7122754   3.425004
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8921460   0.6186239   1.286605
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5320655   0.3473637   6.757254
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.2601641   0.9573170   1.658817
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4505867   0.9861207   2.133818
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8934666   0.6430670   1.241368
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0853784   0.7638453   1.542258


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0351588    0.0123775   0.0579402
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0137445   -0.0056292   0.0331182
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0007288   -0.0026301   0.0011725
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0004458   -0.0031535   0.0040450
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0100596   -0.0023190   0.0224382
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0056432   -0.0056457   0.0169322
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003726   -0.0015852   0.0008399
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0004700   -0.0013438   0.0022839
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0193598   -0.0024002   0.0411197
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0139460   -0.0042246   0.0321165
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008409   -0.0031559   0.0014740
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0006859   -0.0026735   0.0040453


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.2203288    0.0648212   0.3499776
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0600175   -0.0281428   0.1406184
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0196563   -0.0721144   0.0302351
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0105853   -0.0786947   0.0924758
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2347238   -0.1100169   0.4723976
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0992431   -0.1193952   0.2751773
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0235658   -0.1024401   0.0496654
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1041859   -0.3985239   0.4261929
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.1542302   -0.0374582   0.3105008
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0726296   -0.0264004   0.1621050
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0257537   -0.0993498   0.0429155
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0167922   -0.0690180   0.0957144
