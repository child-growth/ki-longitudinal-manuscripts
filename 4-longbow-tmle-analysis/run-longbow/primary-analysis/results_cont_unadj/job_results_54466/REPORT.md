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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        predfeed36    n_cell      n
-------------  -------------------------  -----------------------------  -----------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 83    245
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                162    245
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 27    217
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                190    217
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 18    235
0-3 months     ki0047075b-MAL-ED          INDIA                          0                217    235
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                  9    230
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                221    230
0-3 months     ki0047075b-MAL-ED          PERU                           1                 77    280
0-3 months     ki0047075b-MAL-ED          PERU                           0                203    280
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  5    268
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                263    268
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    232
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                228    232
0-3 months     ki1000109-EE               PAKISTAN                       1                  3      7
0-3 months     ki1000109-EE               PAKISTAN                       0                  4      7
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                373    466
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    466
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1               3830   4900
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               1070   4900
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                499    582
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 83    582
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 78    232
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                154    232
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 25    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                183    208
3-6 months     ki0047075b-MAL-ED          INDIA                          1                 17    228
3-6 months     ki0047075b-MAL-ED          INDIA                          0                211    228
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                  8    232
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                224    232
3-6 months     ki0047075b-MAL-ED          PERU                           1                 70    267
3-6 months     ki0047075b-MAL-ED          PERU                           0                197    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    240
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                237    240
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    235
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                230    235
3-6 months     ki1000109-EE               PAKISTAN                       1                  3      7
3-6 months     ki1000109-EE               PAKISTAN                       0                  4      7
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                367    460
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    460
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1               2554   3293
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                739   3293
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                353    412
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 59    412
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                 73    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                151    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                 25    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                173    198
6-9 months     ki0047075b-MAL-ED          INDIA                          1                 17    228
6-9 months     ki0047075b-MAL-ED          INDIA                          0                211    228
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                  8    229
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                221    229
6-9 months     ki0047075b-MAL-ED          PERU                           1                 67    245
6-9 months     ki0047075b-MAL-ED          PERU                           0                178    245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    228
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                225    228
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    224
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                219    224
6-9 months     ki1000109-EE               PAKISTAN                       1                  4      9
6-9 months     ki1000109-EE               PAKISTAN                       0                  5      9
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     32
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                 32     32
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                377    467
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                 90    467
6-9 months     ki1148112-LCNI-5           MALAWI                         1                 23    144
6-9 months     ki1148112-LCNI-5           MALAWI                         0                121    144
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                555    695
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                140    695
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 75    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                150    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 23    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                171    194
9-12 months    ki0047075b-MAL-ED          INDIA                          1                 16    224
9-12 months    ki0047075b-MAL-ED          INDIA                          0                208    224
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                  7    228
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                221    228
9-12 months    ki0047075b-MAL-ED          PERU                           1                 65    235
9-12 months    ki0047075b-MAL-ED          PERU                           0                170    235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  4    230
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                226    230
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    223
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                219    223
9-12 months    ki1000109-EE               PAKISTAN                       1                  3      8
9-12 months    ki1000109-EE               PAKISTAN                       0                  5      8
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     34
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 34     34
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                345    421
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                 76    421
9-12 months    ki1148112-LCNI-5           MALAWI                         1                 10     31
9-12 months    ki1148112-LCNI-5           MALAWI                         0                 21     31
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                585    742
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                157    742
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                143    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                 22    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                162    184
12-15 months   ki0047075b-MAL-ED          INDIA                          1                 16    223
12-15 months   ki0047075b-MAL-ED          INDIA                          0                207    223
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                  7    229
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                222    229
12-15 months   ki0047075b-MAL-ED          PERU                           1                 60    224
12-15 months   ki0047075b-MAL-ED          PERU                           0                164    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    225
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                222    225
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    225
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                221    225
12-15 months   ki1000109-EE               PAKISTAN                       1                  3      8
12-15 months   ki1000109-EE               PAKISTAN                       0                  5      8
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     35
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 35     35
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                339    417
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                 78    417
12-15 months   ki1148112-LCNI-5           MALAWI                         1                  0      1
12-15 months   ki1148112-LCNI-5           MALAWI                         0                  1      1
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                581    729
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                148    729
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                 70    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                142    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                 22    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                153    175
15-18 months   ki0047075b-MAL-ED          INDIA                          1                 17    224
15-18 months   ki0047075b-MAL-ED          INDIA                          0                207    224
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                218    226
15-18 months   ki0047075b-MAL-ED          PERU                           1                 59    214
15-18 months   ki0047075b-MAL-ED          PERU                           0                155    214
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    224
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                221    224
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    219
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                215    219
15-18 months   ki1000109-EE               PAKISTAN                       1                  3      8
15-18 months   ki1000109-EE               PAKISTAN                       0                  5      8
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     32
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 32     32
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                351    437
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                 86    437
15-18 months   ki1148112-LCNI-5           MALAWI                         1                  0      4
15-18 months   ki1148112-LCNI-5           MALAWI                         0                  4      4
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                585    738
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                153    738
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                 68    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                141    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                147    167
18-21 months   ki0047075b-MAL-ED          INDIA                          1                 17    224
18-21 months   ki0047075b-MAL-ED          INDIA                          0                207    224
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                218    226
18-21 months   ki0047075b-MAL-ED          PERU                           1                 53    202
18-21 months   ki0047075b-MAL-ED          PERU                           0                149    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                229    232
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    207
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                203    207
18-21 months   ki1000109-EE               PAKISTAN                       1                  2      7
18-21 months   ki1000109-EE               PAKISTAN                       0                  5      7
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                334    412
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                 78    412
18-21 months   ki1148112-LCNI-5           MALAWI                         1                 28    166
18-21 months   ki1148112-LCNI-5           MALAWI                         0                138    166
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 67    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                140    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                145    165
21-24 months   ki0047075b-MAL-ED          INDIA                          1                 17    223
21-24 months   ki0047075b-MAL-ED          INDIA                          0                206    223
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                218    226
21-24 months   ki0047075b-MAL-ED          PERU                           1                 48    189
21-24 months   ki0047075b-MAL-ED          PERU                           0                141    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    233
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                230    233
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    205
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                201    205
21-24 months   ki1000109-EE               PAKISTAN                       1                  0      2
21-24 months   ki1000109-EE               PAKISTAN                       0                  2      2
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                260    316
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 56    316
21-24 months   ki1148112-LCNI-5           MALAWI                         1                 24    134
21-24 months   ki1148112-LCNI-5           MALAWI                         0                110    134


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/7a447970-9f08-458b-91fa-b8d0a08c5f3c/f64afcdf-ba5a-4b16-8345-167d46084552/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7a447970-9f08-458b-91fa-b8d0a08c5f3c/f64afcdf-ba5a-4b16-8345-167d46084552/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7a447970-9f08-458b-91fa-b8d0a08c5f3c/f64afcdf-ba5a-4b16-8345-167d46084552/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.8724265   0.8361384   0.9087146
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.8829371   0.8533189   0.9125552
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.1671966   1.0530674   1.2813257
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.0510637   1.0158120   1.0863154
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                0.7945237   0.7068002   0.8822472
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                0.7558884   0.7327516   0.7790251
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                0.8917231   0.7591937   1.0242525
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                0.9592919   0.9317769   0.9868068
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                1.0217284   0.9750000   1.0684568
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                0.9517079   0.9222637   0.9811521
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                1.1240287   0.9802729   1.2677845
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.9375440   0.9105230   0.9645650
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.8382463   0.8182606   0.8582321
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.7922569   0.7535676   0.8309462
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.8486665   0.8428065   0.8545266
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.8497215   0.8350706   0.8643724
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.7584403   0.7316266   0.7852541
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.6939408   0.6423650   0.7455165
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4666648   0.4409019   0.4924278
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4777996   0.4563047   0.4992944
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.5891702   0.5030439   0.6752964
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.5766986   0.5432173   0.6101798
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                0.4325358   0.3613177   0.5037540
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                0.4446272   0.4265872   0.4626672
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                0.4237838   0.3564157   0.4911520
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                0.5256796   0.5049974   0.5463618
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                0.5181709   0.4786977   0.5576441
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                0.4911491   0.4697135   0.5125847
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4474229   0.3122280   0.5826178
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4580815   0.4333589   0.4828041
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.4969046   0.4808220   0.5129873
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4972205   0.4696583   0.5247827
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.4427016   0.4364428   0.4489604
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.4356202   0.4112885   0.4599518
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.4363500   0.4086231   0.4640770
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.4620880   0.4277742   0.4964017
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.2274719   0.2005771   0.2543666
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2502922   0.2332439   0.2673405
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.3641680   0.2744438   0.4538922
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.3858929   0.3590524   0.4127334
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                0.1556137   0.0953893   0.2158381
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    NA                0.2366665   0.2215012   0.2518318
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2627961   0.2130192   0.3125730
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2702490   0.2553144   0.2851836
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                0.2465096   0.2201614   0.2728578
6-9 months     ki0047075b-MAL-ED     PERU                           0                    NA                0.2669956   0.2481854   0.2858058
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1651971   0.0343276   0.2960666
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2401833   0.2156461   0.2647204
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1818776   0.1699946   0.1937605
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2092282   0.1698447   0.2486117
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    NA                0.2433070   0.2027065   0.2839075
6-9 months     ki1148112-LCNI-5      MALAWI                         0                    NA                0.2904468   0.2618043   0.3190893
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.2288673   0.2164506   0.2412841
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.2396558   0.2201619   0.2591496
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1675652   0.1426341   0.1924963
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1757693   0.1595139   0.1920248
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.2947640   0.1964900   0.3930381
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.2832242   0.2496576   0.3167907
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1860532   0.1433620   0.2287444
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1781873   0.1632264   0.1931482
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2006778   0.1566946   0.2446609
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1852689   0.1704220   0.2001158
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                0.1593604   0.1304947   0.1882260
9-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                0.1982325   0.1804369   0.2160281
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1371820   0.1229539   0.1514101
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1505015   0.1187171   0.1822859
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    NA                0.2060735   0.0681565   0.3439905
9-12 months    ki1148112-LCNI-5      MALAWI                         0                    NA                0.1749155   0.0989861   0.2508448
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1374743   0.1274055   0.1475431
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.1530600   0.1382215   0.1678985
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1215142   0.0936669   0.1493615
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1420388   0.1229989   0.1610787
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1697495   0.0847163   0.2547827
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.2156871   0.1900816   0.2412926
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1280496   0.0543708   0.2017284
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1775143   0.1612446   0.1937841
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1058415   0.0151086   0.1965744
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1540679   0.1371426   0.1709932
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1265587   0.0971045   0.1560129
12-15 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1472928   0.1272665   0.1673190
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1736874   0.1587973   0.1885775
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1789079   0.1459512   0.2118645
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1193316   0.1073301   0.1313331
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.1408911   0.1164042   0.1653780
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1533882   0.1252305   0.1815459
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1375628   0.1189092   0.1562164
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1263663   0.0578156   0.1949170
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.2144990   0.1861082   0.2428899
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1875766   0.1265484   0.2486049
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1623125   0.1470422   0.1775828
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1408374   0.0930431   0.1886318
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1743689   0.1580959   0.1906420
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1163894   0.0769222   0.1558565
15-18 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1575319   0.1365349   0.1785290
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.2288321   0.2114355   0.2462287
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2303955   0.1943112   0.2664797
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1539289   0.1411820   0.1666759
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.1719831   0.1570001   0.1869662
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1224195   0.0908205   0.1540185
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1525024   0.1327858   0.1722190
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1163304   0.0770251   0.1556358
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1666789   0.1399472   0.1934106
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1522826   0.0839218   0.2206434
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1716277   0.1569843   0.1862712
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1974941   0.0998061   0.2951822
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1456590   0.1276760   0.1636421
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1606138   0.1245757   0.1966519
18-21 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1619037   0.1396084   0.1841989
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1497326   0.1313413   0.1681239
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1135151   0.0800961   0.1469340
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    NA                0.2199597   0.1493703   0.2905492
18-21 months   ki1148112-LCNI-5      MALAWI                         0                    NA                0.1979692   0.1661510   0.2297875
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1468999   0.1220922   0.1717077
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1546116   0.1356726   0.1735506
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1586861   0.0762225   0.2411497
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1413940   0.1174003   0.1653878
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1912636   0.1337264   0.2488008
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1536521   0.1402288   0.1670754
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1369113   0.0168014   0.2570213
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1708248   0.1506226   0.1910270
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1576257   0.1222132   0.1930383
21-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1895833   0.1661877   0.2129789
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1813558   0.1527326   0.2099789
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1650687   0.1164167   0.2137208
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                0.1423943   0.0658003   0.2189883
21-24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                0.1857376   0.1371245   0.2343506


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.8793764   0.8562449   0.9025078
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.0655134   1.0311555   1.0998713
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                0.7588477   0.7364127   0.7812826
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.9566479   0.9296524   0.9836434
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                0.9709635   0.9457785   0.9961485
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.9410232   0.9142620   0.9677844
0-3 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.8290682   0.8112267   0.8469097
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.8488969   0.8432073   0.8545865
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.7492419   0.7250540   0.7734299
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.4740560   0.4573508   0.4907612
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                0.4437256   0.4262017   0.4612496
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.5221660   0.5019198   0.5424121
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4578547   0.4335136   0.4821959
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.4969685   0.4829796   0.5109574
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.4411124   0.4337224   0.4485024
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.4400358   0.4158687   0.4642029
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2306231   0.2156296   0.2456166
6-9 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2699886   0.2554702   0.2845071
6-9 months     ki0047075b-MAL-ED     PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2385095   0.2143193   0.2626996
6-9 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1871486   0.1748771   0.1994201
6-9 months     ki1148112-LCNI-5      MALAWI                         NA                   NA                0.2829175   0.2578313   0.3080037
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.2310406   0.2199994   0.2420817
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1787492   0.1645237   0.1929747
9-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1857420   0.1712835   0.2002004
9-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1395865   0.1265823   0.1525906
9-12 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                0.1849664   0.1167599   0.2531730
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1407721   0.1318530   0.1496912
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1739653   0.1578765   0.1900541
12-15 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1525937   0.1359182   0.1692692
12-15 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1746639   0.1610783   0.1882495
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1237085   0.1128798   0.1345372
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1642299   0.1493519   0.1791079
15-18 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1731820   0.1573733   0.1889907
15-18 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.2291397   0.2134657   0.2448138
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1576719   0.1473147   0.1680291
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1701596   0.1556514   0.1846677
18-21 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1474939   0.1297619   0.1652260
18-21 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1428759   0.1266216   0.1591302
18-21 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                0.2016785   0.1726437   0.2307133
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1565193   0.1433011   0.1697376
21-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1696243   0.1496620   0.1895867
21-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1784694   0.1533807   0.2035582
21-24 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                0.1779746   0.1356818   0.2202674


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0105105   -0.0363303    0.0573513
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1161329   -0.2355822    0.0033165
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0386353   -0.1293587    0.0520880
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0675688   -0.0677867    0.2029243
0-3 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0700205   -0.1252519   -0.0147891
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1864847   -0.3327579   -0.0402114
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0459894   -0.0895359   -0.0024430
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0010550   -0.0145024    0.0166123
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0644996   -0.1239812   -0.0050179
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0111347   -0.0224176    0.0446870
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0124716   -0.1048768    0.0799336
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.0120914   -0.0613761    0.0855588
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1018958    0.0314244    0.1723672
3-6 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0270218   -0.0719398    0.0178961
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0106586   -0.1267782    0.1480954
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0003159   -0.0315953    0.0322271
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0070814   -0.0320043    0.0178415
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0257379   -0.0184686    0.0699444
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0228203   -0.0090226    0.0546632
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0217249   -0.0719279    0.1153777
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.0810527    0.0189483    0.1431572
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0074529   -0.0445161    0.0594219
6-9 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0204860   -0.0118877    0.0528596
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0749862   -0.0581638    0.2081361
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0273506   -0.0137865    0.0684877
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI                         0                    1                  0.0471398   -0.0025472    0.0968267
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0107885   -0.0112127    0.0327896
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0082041   -0.0215582    0.0379665
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0115399   -0.1153883    0.0923085
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0078659   -0.0531027    0.0373709
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0154089   -0.0618303    0.0310125
9-12 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU                           0                    1                  0.0388722    0.0049618    0.0727825
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0133195   -0.0215041    0.0481432
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI                         0                    1                 -0.0311580   -0.1885949    0.1262788
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0155857   -0.0011700    0.0323414
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0205246   -0.0132095    0.0542587
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0459376   -0.0428672    0.1347424
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0494647   -0.0259890    0.1249185
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0482264   -0.0440716    0.1405244
12-15 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0207341   -0.0148833    0.0563515
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0052205   -0.0309439    0.0413848
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0215596   -0.0056229    0.0487421
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0158254   -0.0496014    0.0179505
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0881327    0.0139354    0.1623301
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0252641   -0.0881738    0.0376456
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0335315   -0.0169572    0.0840203
15-18 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0411426   -0.0035623    0.0858475
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0015634   -0.0384955    0.0416223
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0180542   -0.0024233    0.0385317
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0300829   -0.0071628    0.0673286
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0503484    0.0028143    0.0978826
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0193451   -0.0505665    0.0892567
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0518351   -0.1511646    0.0474943
18-21 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0012899   -0.0410873    0.0436670
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0362176   -0.0743629    0.0019277
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI                         0                    1                 -0.0219905   -0.0994196    0.0554386
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0077117   -0.0234991    0.0389224
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0172920   -0.1031754    0.0685913
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0376115   -0.0966938    0.0214708
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0339135   -0.0878836    0.1557106
21-24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0319576   -0.0104853    0.0744005
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0162870   -0.0727344    0.0401604
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI                         0                    1                  0.0433432   -0.0473754    0.1340619


### Parameter: PAR


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0069498   -0.0240287    0.0379284
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1016831   -0.2063950    0.0030287
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0356760   -0.1194607    0.0481086
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0649248   -0.0651452    0.1949949
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0507649   -0.0909753   -0.0105544
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1830055   -0.3256540   -0.0403569
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0091782   -0.0180279   -0.0003284
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0002304   -0.0031623    0.0036230
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0091984   -0.0179942   -0.0004026
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0073912   -0.0148909    0.0296733
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0109726   -0.0922733    0.0703281
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0111898   -0.0568010    0.0791807
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0983821    0.0302985    0.1664657
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0199374   -0.0531099    0.0132350
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0104319   -0.1235692    0.1444329
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0000639   -0.0063878    0.0065155
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0015892   -0.0071494    0.0039710
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0036858   -0.0027850    0.0101565
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0153833   -0.0061281    0.0368947
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0189819   -0.0628523    0.1008160
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0750093    0.0174688    0.1325499
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0071925   -0.0429613    0.0573464
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0148837   -0.0086646    0.0384320
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0733124   -0.0565170    0.2031417
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0052710   -0.0027172    0.0132592
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0396105   -0.0022362    0.0814572
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0021732   -0.0022603    0.0066068
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0054694   -0.0143786    0.0253175
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0101718   -0.1017098    0.0813663
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0073040   -0.0493105    0.0347024
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0149358   -0.0599333    0.0300617
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0281203    0.0034885    0.0527521
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0024045   -0.0039010    0.0087100
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0211070   -0.1278851    0.0856710
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0032978   -0.0002511    0.0068467
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0138444   -0.0089472    0.0366360
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0404451   -0.0377716    0.1186617
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0459157   -0.0241445    0.1159759
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0467522   -0.0427309    0.1362354
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0151803   -0.0109245    0.0412852
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0009765   -0.0057909    0.0077439
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0043770   -0.0013525    0.0101064
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0106001   -0.0332458    0.0120457
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0770532    0.0120384    0.1420680
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0233467   -0.0814887    0.0347952
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0323446   -0.0163637    0.0810528
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0297995   -0.0026742    0.0622732
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0003077   -0.0075760    0.0081913
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0037429   -0.0005987    0.0080846
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0202952   -0.0049052    0.0454955
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0443187    0.0024034    0.0862339
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0178770   -0.0467324    0.0824863
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0500002   -0.1458218    0.0458213
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0009514   -0.0303071    0.0322099
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0068567   -0.0142075    0.0004941
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0182813   -0.0826623    0.0460998
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0052156   -0.0158988    0.0263301
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0151960   -0.0906742    0.0602821
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0347443   -0.0893383    0.0198498
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0327130   -0.0847755    0.1502015
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0238414   -0.0078848    0.0555675
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0028863   -0.0129132    0.0071406
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0355803   -0.0389438    0.1101043
