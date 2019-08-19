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

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
* month
* brthmon
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

agecat                        studyid                    country                        predfeed6    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       89     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       36     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       92     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       21     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       35     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      164     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       15     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        4     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      130     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       81     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       26     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      165     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       41     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0      110     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        4     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      142     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       14     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      202     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      216     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       30     248
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0      129     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1       92     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0       83     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1       73     377
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      182     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      230     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       71     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       72     555
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      1        5     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      1       20     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    17236   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     3279   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     4416   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1201   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2753    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      931    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      705    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      303    4692
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      116     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      103     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       35     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      169     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0       18     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      177     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       33     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       29     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      189     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0      112     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        2     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      153     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        3     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      232     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       12     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      238     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        8     248
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0      187     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1       34     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0      114     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1       38     373
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     137
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      343     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1       56     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      112     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       24     535
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    19057   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1312   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     4984   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      568   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0     3548    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       92    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      929    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       34    4603
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       93     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       31     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       97     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       13     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       35     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      166     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0       14     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        4     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      154     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       59     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       26     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        3     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      173     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       32     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0      109     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        3     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      143     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       12     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      208     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       35     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      214     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     242
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0      148     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1       71     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0      103     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1       53     375
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     177
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      211     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      203     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       77     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       66     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      1        5     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      1       20     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    11450   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2129   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2875   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      690   17144
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2820    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      878    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      724    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      289    4711


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/f5e12156-6866-43ec-9c3c-3e00abdc8ee2/464913e5-5fa7-48f0-94fa-16f5f6c7961c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f5e12156-6866-43ec-9c3c-3e00abdc8ee2/464913e5-5fa7-48f0-94fa-16f5f6c7961c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f5e12156-6866-43ec-9c3c-3e00abdc8ee2/464913e5-5fa7-48f0-94fa-16f5f6c7961c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f5e12156-6866-43ec-9c3c-3e00abdc8ee2/464913e5-5fa7-48f0-94fa-16f5f6c7961c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2875576   0.2086296   0.3664856
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1840473   0.1124120   0.2556825
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.4250567   0.3595181   0.4905953
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.4538438   0.3743873   0.5333002
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5589905   0.5110245   0.6069566
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5014721   0.4187284   0.5842158
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1610528   0.1554755   0.1666301
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2115737   0.1994137   0.2237338
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2553611   0.2386475   0.2720746
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2859193   0.2539472   0.3178913
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0720000   0.0265900   0.1174100
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0803571   0.0299051   0.1308092
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.1573857   0.1099071   0.2048644
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.2434389   0.1740274   0.3128504
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1400371   0.1058810   0.1741932
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1672492   0.1025845   0.2319138
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0644984   0.0606349   0.0683620
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1035944   0.0948382   0.1123507
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0247858   0.0190698   0.0305017
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0375385   0.0235492   0.0515277
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2322910   0.1562809   0.3083010
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1122536   0.0509361   0.1735712
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.3285304   0.2649680   0.3920928
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.3366621   0.2606439   0.4126802
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4895028   0.4412446   0.5377609
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4593032   0.3767859   0.5418204
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1596916   0.1530815   0.1663016
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1836031   0.1695051   0.1977011
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2405006   0.2239095   0.2570916
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2693602   0.2385997   0.3001206


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2394958   0.1851615   0.2938300
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.4376658   0.3875214   0.4878102
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5441441   0.5026713   0.5856170
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1714373   0.1660817   0.1767929
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2630009   0.2480666   0.2779351
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0759494   0.0421505   0.1097482
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1495327   0.1192863   0.1797792
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0725281   0.0688266   0.0762296
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0273735   0.0221056   0.0326413
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1880342   0.1378627   0.2382057
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4829443   0.4414080   0.5244807
6-24 months                   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1644307   0.1582894   0.1705720
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2477181   0.2329462   0.2624900


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6400362   0.3992158   1.0261274
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.0677253   0.8467041   1.3464412
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.8971030   0.7448036   1.0805451
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.1269176
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3136918   1.2339601   1.3985754
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1196666   0.9846951   1.2731385
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.1160714   0.4583550   2.7175782
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 1.5467660   1.0219154   2.3411771
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1943204   0.7561056   1.8865104
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6061544   1.4559784   1.7718203
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5145169   0.9643233   2.3786231
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.4832457   0.2561577   0.9116511
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 1.0247517   0.7608727   1.3801469
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9383055   0.7643822   1.1518025
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.1365394
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1497356   1.0565144   1.2511821
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1199982   0.9818810   1.2775437


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0480618   -0.0991427   0.0030191
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0126091   -0.0297209   0.0549391
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0148464   -0.0394333   0.0097406
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0103845    0.0076940   0.0130750
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0076398   -0.0001157   0.0153952
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0039494   -0.0281326   0.0360314
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0356438    0.0013267   0.0699608
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0094956   -0.0090509   0.0280421
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0080296    0.0061008   0.0099584
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0025877   -0.0005276   0.0057030
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0442568   -0.0912156   0.0027020
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0021363   -0.0397831   0.0440557
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0065584   -0.0310377   0.0179208
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0047391    0.0015193   0.0079590
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0072176   -0.0005312   0.0149663


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2006791   -0.4333390   -0.0057846
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0288098   -0.0729404    0.1209108
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0272839   -0.0735523    0.0169903
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796    0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0605733    0.0449545    0.0759366
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0290485   -0.0009116    0.0581118
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0520000   -0.4793718    0.3925097
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.1846545   -0.0098956    0.3417257
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0635019   -0.0686701    0.1793269
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1107107    0.0841168    0.1365325
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0945329   -0.0253714    0.2004158
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2353656   -0.5045087   -0.0143697
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0064605   -0.1287615    0.1254833
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0135801   -0.0655679    0.0358712
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049    0.4540374
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0288216    0.0091333    0.0481187
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0291362   -0.0026803    0.0599430
