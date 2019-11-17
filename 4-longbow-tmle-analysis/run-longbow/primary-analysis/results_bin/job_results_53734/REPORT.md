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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        exclfeed36    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       27     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        6     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      167     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       51     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       16     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      195     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1       13     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0        5     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        5     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      140     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       84     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0        4     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      185     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1       46     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       10     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        0     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      255     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1       21     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        4     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      227     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       45     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        5     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      212     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       33     250
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       9
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       0        0       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       1        0       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       0        1       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       1        3       4
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0        3       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1        1       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0        3       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1        2       9
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      138     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       24     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      377     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       96     635
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       0      405    1974
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       1      218    1974
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       0      789    1974
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       1      562    1974
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      180     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1      240     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0       47     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       57     524
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        5     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1       20     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     8049   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1725   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2263   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      531   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2634    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      886    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      734    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      305    4559
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       32     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        1     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      200     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       17     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       16     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      200     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        8     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0        7     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        3     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      188     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1       34     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0        4     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      213     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1       16     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       10     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        0     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      271     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        5     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        4     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      257     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       14     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        5     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      235     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       10     250
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       0        0       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       1        0       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       0        3       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       1        1       4
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0        3       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        1       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0        4       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        1       9
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      157     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        5     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      439     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       30     631
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       0      558    1960
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       1       62    1960
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       0     1159    1960
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       1      181    1960
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      318     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       92     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0       75     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       25     510
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     9008   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      684   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2554   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      212   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3375    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       89    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      936    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       33    4433
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       24     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        6     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      173     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1       37     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       12     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      189     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0        7     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        2     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      161     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1       62     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0        4     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      194     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1       36     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0        6     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      246     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1       18     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        2     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      217     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       37     256
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        4     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      212     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       27     243
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       9
6-24 months                   ki1000108-IRC              INDIA                          1                       0        0       4
6-24 months                   ki1000108-IRC              INDIA                          1                       1        0       4
6-24 months                   ki1000108-IRC              INDIA                          0                       0        2       4
6-24 months                   ki1000108-IRC              INDIA                          0                       1        2       4
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0        4       9
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1        0       9
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0        4       9
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1        1       9
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       0      131     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       1       21     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       0      383     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       1       78     613
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       0      397    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       1      182    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       0      863    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       1      462    1904
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      220     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1      202     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0       57     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       47     526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        5     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1       20     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     5661    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1131    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1681    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      347    8820
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2697    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      838    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      751    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      292    4578


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/d3507672-07b3-49bc-bb37-452ea85b96b5/00dc3bfa-e9e6-45b5-9a4e-0d87b5a328ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d3507672-07b3-49bc-bb37-452ea85b96b5/00dc3bfa-e9e6-45b5-9a4e-0d87b5a328ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d3507672-07b3-49bc-bb37-452ea85b96b5/00dc3bfa-e9e6-45b5-9a4e-0d87b5a328ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d3507672-07b3-49bc-bb37-452ea85b96b5/00dc3bfa-e9e6-45b5-9a4e-0d87b5a328ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1818182   0.0499617   0.3136747
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2339450   0.1776365   0.2902534
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                0.5000000   0.1894382   0.8105618
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    NA                0.3750000   0.3114655   0.4385345
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1468707   0.0917141   0.2020272
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2032335   0.1669582   0.2395087
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.3525624   0.3149469   0.3901780
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.4180974   0.3919069   0.4442880
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5736177   0.5265597   0.6206756
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5432675   0.4456544   0.6408806
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1771303   0.1687157   0.1855450
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1875391   0.1705967   0.2044815
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2545598   0.2372542   0.2718655
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2844226   0.2528800   0.3159653
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0308642   0.0042107   0.0575177
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0639659   0.0418030   0.0861288
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0985572   0.0750044   0.1221099
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.1361535   0.1178440   0.1544631
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2236167   0.1831912   0.2640423
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2380546   0.1538388   0.3222705
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0703858   0.0646783   0.0760933
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0772755   0.0650100   0.0895409
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0254052   0.0192171   0.0315933
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0353226   0.0217801   0.0488651
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2000000   0.0565653   0.3434347
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1761905   0.1245548   0.2278261
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1365303   0.0810365   0.1920241
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1687284   0.1344426   0.2030141
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.3140892   0.2761321   0.3520462
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.3506108   0.3250430   0.3761786
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4806693   0.4332382   0.5281005
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4501101   0.3537229   0.5464973
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1663609   0.1567216   0.1760002
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1713489   0.1532521   0.1894457
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2399408   0.2230416   0.2568401
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2726918   0.2411353   0.3042482


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        NA                   NA                0.3803419   0.3180067   0.4426771
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1889764   0.1585028   0.2194500
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.3951368   0.3735650   0.4167086
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5667939   0.5243264   0.6092614
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1795035   0.1720409   0.1869661
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2612415   0.2461119   0.2763711
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0554675   0.0375942   0.0733408
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.1239796   0.1093860   0.1385732
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2294118   0.1928853   0.2659383
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0719217   0.0666549   0.0771884
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0275209   0.0219532   0.0330885
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1615008   0.1323459   0.1906557
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.3382353   0.3169789   0.3594917
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4733840   0.4306748   0.5160933
6-24 months                   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1675737   0.1590914   0.1760560
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2468327   0.2318250   0.2618404


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.2866972   0.5992775   2.762643
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    1                 0.7500000   0.3939629   1.427799
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.3837580   0.9134023   2.096323
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.1858819   1.0483893   1.341406
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9470899   0.7783259   1.152447
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0587631   0.9550850   1.173696
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1173115   0.9822395   1.270958
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   0                    1                 2.0724947   0.8173110   5.255324
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.3814678   1.0509196   1.815984
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0645654   0.7154104   1.584125
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0978845   0.9201610   1.309934
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3903694   0.8729907   2.214373
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8809524   0.4059626   1.911696
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.2358308   0.7842893   1.947340
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.1162778   0.9697156   1.284991
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9364236   0.7404855   1.184208
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0299830   0.9129162   1.162062
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1364958   0.9946888   1.298520


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0452735   -0.0792718   0.1698187
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1196581   -0.4231229   0.1838066
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0421057   -0.0071693   0.0913807
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0425743    0.0110969   0.0740517
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0068238   -0.0276262   0.0139787
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0023732   -0.0018709   0.0066172
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0066817   -0.0015314   0.0148947
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0246033   -0.0011861   0.0503927
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0254224    0.0050385   0.0458064
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0057950   -0.0128477   0.0244378
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0015359   -0.0014490   0.0045207
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0021157   -0.0010799   0.0053112
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0208333   -0.1542272   0.1125605
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0249705   -0.0242294   0.0741704
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0241461   -0.0077377   0.0560299
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0072853   -0.0282384   0.0136678
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0012128   -0.0034954   0.0059210
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0068918   -0.0011624   0.0149461


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1993620   -0.5862897   0.5958991
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                -0.3146067   -1.4139018   0.2840674
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2228094   -0.0852070   0.4434009
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.1077458    0.0243772   0.1839904
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0120392   -0.0494379   0.0240266
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0132207   -0.0106891   0.0365648
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0255766   -0.0064300   0.0565652
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.4435626   -0.2356792   0.7494313
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2050535    0.0239071   0.3525821
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0252604   -0.0594419   0.1031909
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0213545   -0.0208588   0.0618222
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0768749   -0.0465915   0.1857761
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1162791   -1.1742051   0.4268807
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1546154   -0.2113167   0.4100014
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0713885   -0.0278441   0.1610408
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0153898   -0.0606646   0.0279525
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0072375   -0.0212571   0.0349369
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0279211   -0.0052759   0.0600218
