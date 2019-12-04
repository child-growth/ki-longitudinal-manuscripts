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

agecat                        studyid                    country                        predfeed6    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       62     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       23     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0      116     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       32     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       29     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        1     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      168     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       10     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        1     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      126     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       79     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       10     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        2     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      169     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       44     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       87     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        5     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      163     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       16     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      193     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      201     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       33     235
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0       21      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1       22      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0        3      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1        2      48
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      176     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      241     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       66     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       77     560
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      1        5     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      1       20     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    10160   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2046   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2829   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      631   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2753    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      927    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      736    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      306    4722
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0       79     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        6     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      135     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1       12     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       29     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        1     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      173     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0       11     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        0     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      172     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       32     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       12     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      195     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       16     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       90     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        2     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      176     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        3     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      220     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       13     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      224     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       10     235
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0       36      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1        6      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0        4      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1        1      47
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     137
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      320     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1       86     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      105     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       33     544
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    11256   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      849   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     3160   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      268   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0     3530    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       92    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      937    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       34    4593
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       65     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       19     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0      124     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       22     230
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       30     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      171     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0       10     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        1     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      148     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       58     217
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       10     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        2     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      178     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       34     224
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       87     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        4     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      164     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       14     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      198     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       34     235
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      203     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       27     231
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0       25      47
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1       17      47
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0        4      47
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1        1      47
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     177
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      211     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      204     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       77     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       65     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      1        5     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      1       20     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     6581   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1302   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1927   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      392   10202
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2819    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      876    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      755    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      292    4742


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
![](/tmp/b0c375b8-20b5-42b7-b2c5-d50ab4ee0252/5d1b2363-5fa7-4364-a28e-e6273895eb24/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b0c375b8-20b5-42b7-b2c5-d50ab4ee0252/5d1b2363-5fa7-4364-a28e-e6273895eb24/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b0c375b8-20b5-42b7-b2c5-d50ab4ee0252/5d1b2363-5fa7-4364-a28e-e6273895eb24/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b0c375b8-20b5-42b7-b2c5-d50ab4ee0252/5d1b2363-5fa7-4364-a28e-e6273895eb24/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2641070   0.1671746   0.3610394
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2215266   0.1543051   0.2887480
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU         1                    NA                0.0543478   0.0079376   0.1007581
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU         0                    NA                0.0893855   0.0475133   0.1312576
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5798567   0.5325752   0.6271381
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5324904   0.4499295   0.6150513
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1684201   0.1612545   0.1755858
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1789298   0.1646990   0.1931606
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2553154   0.2384535   0.2721774
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2799836   0.2484519   0.3115153
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0816327   0.0372751   0.1259902
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2113080   0.1715178   0.2510982
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2396996   0.1678406   0.3115586
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0701240   0.0650031   0.0752448
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0785468   0.0686780   0.0884155
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0249350   0.0188544   0.0310156
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0366512   0.0229645   0.0503379
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2190746   0.1285605   0.3095886
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1541962   0.0957009   0.2126915
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4949083   0.4469907   0.5428258
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4622447   0.3807072   0.5437822
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1651298   0.1562580   0.1740016
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1687338   0.1520832   0.1853843
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2395995   0.2230519   0.2561471
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2670199   0.2360315   0.2980083


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2360515   0.1814079   0.2906951
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU         NA                   NA                0.0774908   0.0455992   0.1093824
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5678571   0.5267918   0.6089225
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1708796   0.1645476   0.1772116
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2611182   0.2462845   0.2759518
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0775862   0.0430879   0.1120845
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2187500   0.1839790   0.2535210
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0719114   0.0672720   0.0765508
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0274331   0.0219967   0.0328694
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1782609   0.1286901   0.2278316
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4829443   0.4414080   0.5244807
6-24 months                   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1660459   0.1583106   0.1737812
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2463096   0.2316309   0.2609882


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8387758   0.5235857   1.343705
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU         0                    1                 1.6446927   0.6209888   4.355979
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9183138   0.7712461   1.093426
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0624016   0.9698308   1.163808
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0966184   0.9639760   1.247512
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.1564626   0.4495261   2.975146
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1343612   0.7960462   1.616458
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1201129   0.9715190   1.291434
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.4698703   0.9295238   2.324329
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7038525   0.4030259   1.229222
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9340008   0.7644854   1.141104
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0218250   0.9120386   1.144827
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1144426   0.9754163   1.273284


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0280555   -0.1039285   0.0478174
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU         1                    NA                 0.0231429   -0.0181917   0.0644776
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0119995   -0.0360983   0.0120992
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0024595   -0.0010921   0.0060110
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0058027   -0.0021458   0.0137513
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0069980   -0.0375657   0.0515616
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0074420   -0.0133029   0.0281868
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017875   -0.0006276   0.0042025
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0024981   -0.0005945   0.0055907
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0408137   -0.1093142   0.0276868
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0119639   -0.0360932   0.0121654
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0009160   -0.0034253   0.0052574
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0067101   -0.0010073   0.0144274


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1188533   -0.4898855   0.1597792
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU         1                    NA                 0.2986542   -0.4737013   0.6662242
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0211313   -0.0645175   0.0204867
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0143930   -0.0066020   0.0349500
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0222226   -0.0087297   0.0522252
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0901961   -0.7082806   0.5154524
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0340205   -0.0655623   0.1242968
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0248563   -0.0092674   0.0578263
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0910604   -0.0292926   0.1973407
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2289549   -0.6739013   0.0977186
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0247729   -0.0760341   0.0240463
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0055168   -0.0209770   0.0313231
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0272425   -0.0046340   0.0581075
