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

agecat                        studyid                    country                        predfeed6    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       80     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        5     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      141     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1        7     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       29     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      177     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        3     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0       11     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        0     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      193     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       12     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       12     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      210     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        3     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       90     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        2     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      177     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        2     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      223     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       11     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      226     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        8     235
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0       38      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1        5      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0        4      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1        1      48
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      159     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       14     173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      330     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1       87     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0      104     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       39     560
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       47     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        0     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11773   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      433   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3337   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      123   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3533    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      147    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      991    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       51    4722
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       82     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        3     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      143     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        4     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       29     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        1     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      178     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        2     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0       11     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        0     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      198     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        6     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       12     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      210     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       91     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        1     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      179     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        0     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      230     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        3     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      231     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        3     235
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0       42      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        0      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0        4      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        1      47
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      386     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       20     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0      128     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       10     544
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11904   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      201   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3369   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1       59   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3608    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       14    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      964    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        7    4593
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       82     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        2     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      143     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        3     230
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       30     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      176     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0       11     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        0     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      200     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        6     217
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       12     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      210     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        2     224
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       90     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        1     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      176     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        2     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      223     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        9     235
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      225     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        5     231
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0       37      47
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1        5      47
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0        5      47
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1        0      47
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      156     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       21     177
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      341     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1       74     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0      108     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       34     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       45     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        0     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7632   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      251   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2250   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1       69   10202
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3551    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      144    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      998    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       49    4742


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
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/a3d86b50-884d-4f8e-8032-1decc00ccf71/c2dba305-04f2-4d68-bd50-41982a183448/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a3d86b50-884d-4f8e-8032-1decc00ccf71/c2dba305-04f2-4d68-bd50-41982a183448/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a3d86b50-884d-4f8e-8032-1decc00ccf71/c2dba305-04f2-4d68-bd50-41982a183448/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a3d86b50-884d-4f8e-8032-1decc00ccf71/c2dba305-04f2-4d68-bd50-41982a183448/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0588235    0.0086951   0.1089519
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0472973    0.0130246   0.0815700
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2101738    0.1709420   0.2494057
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2706480    0.1961659   0.3451301
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0354813    0.0318435   0.0391191
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0357976    0.0284179   0.0431773
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0408526    0.0337853   0.0479200
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0452918    0.0312401   0.0593435
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0487256    0.0275327   0.0699185
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0662487    0.0217196   0.1107779
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0165877    0.0139680   0.0192074
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0170916    0.0115830   0.0226002
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0038653    0.0005928   0.0071378
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0072091   -0.0003364   0.0147545
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1795242    0.1424704   0.2165780
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2361903    0.1647907   0.3075899
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0318493    0.0273631   0.0363356
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0295949    0.0219517   0.0372381
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0397975    0.0330150   0.0465801
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0425596    0.0294220   0.0556972


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0515021   0.0230618   0.0799425
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2250000   0.1903834   0.2596166
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0354909   0.0322227   0.0387591
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0419314   0.0358274   0.0480353
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0551471   0.0359475   0.0743466
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0167386   0.0143298   0.0191473
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045722   0.0015532   0.0075911
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1938959   0.1610341   0.2267576
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0313664   0.0274269   0.0353059
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0407001   0.0348212   0.0465791


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8040541   0.2627110   2.460890
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2877341   0.9228007   1.796985
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0089152   0.8012484   1.270405
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1086629   0.7742349   1.587546
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3596292   0.6101003   3.029979
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0303780   0.7226299   1.469188
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.8650875   0.4808975   7.233457
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3156457   0.9118696   1.898214
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9292153   0.6956423   1.241214
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0694029   0.7493495   1.526154


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0073214   -0.0458998   0.0312570
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0148262   -0.0066478   0.0363001
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0000096   -0.0018107   0.0018299
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0010787   -0.0023788   0.0045362
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0064215   -0.0059049   0.0187478
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001509   -0.0011834   0.0014851
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007069   -0.0010429   0.0024567
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0143717   -0.0061177   0.0348611
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0004829   -0.0024638   0.0014979
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0009026   -0.0023540   0.0041592


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1421569   -1.1936993   0.4053322
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0658941   -0.0342792   0.1563653
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0002702   -0.0523560   0.0502647
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0257262   -0.0604834   0.1049276
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1164425   -0.1347331   0.3120198
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0090133   -0.0738436   0.0854770
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1546107   -0.3285313   0.4620503
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0741205   -0.0373291   0.1735960
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0153969   -0.0804961   0.0457800
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0221766   -0.0613482   0.0991282
