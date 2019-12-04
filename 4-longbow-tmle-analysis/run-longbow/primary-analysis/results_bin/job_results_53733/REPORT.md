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

**Intervention Variable:** predfeed36

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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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

agecat                        studyid                    country                        predfeed36    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       64     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       21     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      130     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       36     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       29     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      182     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1       13     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0       13     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        5     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      132     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       84     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0        8     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      181     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1       46     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       78     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        3     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      187     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1       18     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        6     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      225     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       45     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        6     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      211     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       33     250
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0        3       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1        1       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0        3       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1        2       9
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      180     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1      240     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0       47     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       57     524
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        5     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1       20     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     8064   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1729   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2248   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      527   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2645    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      889    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      723    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      302    4559
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       80     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        5     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      152     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       13     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       29     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      187     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        8     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0       15     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        3     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      180     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1       34     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0        8     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      209     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1       16     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       79     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        2     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      202     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        3     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        6     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      255     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       14     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        6     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      234     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       10     250
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0        3       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        1       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0        4       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        1       9
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      318     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       92     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0       75     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       25     510
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     9026   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      685   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2536   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      211   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3388    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       89    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      923    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       33    4433
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       63     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1       18     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      134     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1       25     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       25     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      176     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0       15     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        2     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      153     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1       62     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0        8     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      190     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1       36     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       69     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        2     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      183     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1       16     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        4     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      215     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       37     256
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        5     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      211     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       27     243
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0        4       9
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1        0       9
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0        4       9
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1        1       9
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     177
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      220     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1      202     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0       57     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       47     526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        5     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1       20     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     5673    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1134    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1669    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      344    8820
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2707    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      841    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      741    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      289    4578


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
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/e935f529-e2ee-4b9b-b742-627cb22ce8a0/dc5da608-c8b5-4639-aedc-2e92a9652dc8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e935f529-e2ee-4b9b-b742-627cb22ce8a0/dc5da608-c8b5-4639-aedc-2e92a9652dc8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e935f529-e2ee-4b9b-b742-627cb22ce8a0/dc5da608-c8b5-4639-aedc-2e92a9652dc8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e935f529-e2ee-4b9b-b742-627cb22ce8a0/dc5da608-c8b5-4639-aedc-2e92a9652dc8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2494600   0.1546340   0.3442859
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2159005   0.1530411   0.2787599
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                0.2777778   0.0704173   0.4851383
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    NA                0.3888889   0.3237374   0.4540403
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5726768   0.5252730   0.6200806
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5491110   0.4521879   0.6460342
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1772896   0.1689060   0.1856731
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1870101   0.1700848   0.2039355
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2544251   0.2371072   0.2717430
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2830889   0.2513352   0.3148426
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0588235   0.0087025   0.1089446
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0787879   0.0375984   0.1199773
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2262758   0.1856798   0.2668717
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2463054   0.1611449   0.3314659
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0704083   0.0646963   0.0761204
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0774887   0.0651544   0.0898230
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0251122   0.0189429   0.0312814
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0362590   0.0224518   0.0500662
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2270483   0.1346218   0.3194748
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1554878   0.0989098   0.2120657
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4788281   0.4311241   0.5265321
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4164131   0.3193356   0.5134906
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1664023   0.1567645   0.1760400
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1727745   0.1547495   0.1907995
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2401404   0.2232373   0.2570435
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2684704   0.2369489   0.2999919


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        NA                   NA                0.3803419   0.3180067   0.4426771
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5667939   0.5243264   0.6092614
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1795035   0.1720409   0.1869661
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2612415   0.2461119   0.2763711
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0720000   0.0398938   0.1041062
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2294118   0.1928853   0.2659383
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0719217   0.0666549   0.0771884
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0275209   0.0219532   0.0330885
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4733840   0.4306748   0.5160933
6-24 months                   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1675737   0.1590914   0.1760560
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2468327   0.2318250   0.2618404


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8654717   0.5394077   1.388637
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    1                 1.4000000   0.6514245   3.008790
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9588498   0.7890217   1.165231
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0548287   0.9517307   1.169095
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1126613   0.9769232   1.267259
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.3393939   0.4929054   3.639595
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0885188   0.7375488   1.606502
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1005612   0.9217946   1.313997
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.4438818   0.9065298   2.299753
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6848224   0.3987205   1.176217
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.8696506   0.6747180   1.120901
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0382941   0.9209938   1.170534
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1179725   0.9768319   1.279506


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0223683   -0.0981845   0.0534478
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                 0.1025641   -0.0981070   0.3032352
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0058829   -0.0271095   0.0153438
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0022139   -0.0019826   0.0064104
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0068164   -0.0015302   0.0151630
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0131765   -0.0296567   0.0560097
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0031360   -0.0154229   0.0216949
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0015133   -0.0014654   0.0044921
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0024087   -0.0007818   0.0055992
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0478816   -0.1203774   0.0246142
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0054441   -0.0268126   0.0159245
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0011714   -0.0035325   0.0058753
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0066923   -0.0013782   0.0147627


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0984991   -0.4875535   0.1888021
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                 0.2696629   -0.5036640   0.6452716
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0103792   -0.0485438   0.0263962
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0123337   -0.0113041   0.0354189
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0260925   -0.0064323   0.0575662
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1830065   -0.6820838   0.6031837
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0136697   -0.0706167   0.0913205
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0210411   -0.0210895   0.0614334
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0875225   -0.0358635   0.1962115
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2672463   -0.7397958   0.0769531
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0115003   -0.0576781   0.0326614
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0069904   -0.0214776   0.0346650
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0271125   -0.0061495   0.0592750
