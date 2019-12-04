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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        predfeed6    n_cell      n
-------------  -------------------------  -----------------------------  ----------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                82    227
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               145    227
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                21    163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               142    163
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 8    167
0-3 months     ki0047075b-MAL-ED          INDIA                          0               159    167
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                11    145
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               134    145
0-3 months     ki0047075b-MAL-ED          PERU                           1                85    254
0-3 months     ki0047075b-MAL-ED          PERU                           0               169    254
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    186
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               184    186
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    211
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               211    211
0-3 months     ki1000109-EE               PAKISTAN                       1                33     37
0-3 months     ki1000109-EE               PAKISTAN                       0                 4     37
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               368    501
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0               133    501
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              4607   5923
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              1316   5923
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               531    619
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                88    619
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                80    222
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               142    222
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                30    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               178    208
3-6 months     ki0047075b-MAL-ED          INDIA                          1                11    213
3-6 months     ki0047075b-MAL-ED          INDIA                          0               202    213
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                11    222
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               211    222
3-6 months     ki0047075b-MAL-ED          PERU                           1                90    266
3-6 months     ki0047075b-MAL-ED          PERU                           0               176    266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3    222
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               219    222
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1    225
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               224    225
3-6 months     ki1000109-EE               PAKISTAN                       1                34     38
3-6 months     ki1000109-EE               PAKISTAN                       0                 4     38
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               338    464
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               126    464
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              2864   3720
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               856   3720
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               358    419
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                61    419
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                76    217
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               141    217
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                29    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               169    198
6-9 months     ki0047075b-MAL-ED          INDIA                          1                11    213
6-9 months     ki0047075b-MAL-ED          INDIA                          0               202    213
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                12    220
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               208    220
6-9 months     ki0047075b-MAL-ED          PERU                           1                86    245
6-9 months     ki0047075b-MAL-ED          PERU                           0               159    245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3    210
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               207    210
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1    214
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213    214
6-9 months     ki1000109-EE               PAKISTAN                       1                40     45
6-9 months     ki1000109-EE               PAKISTAN                       0                 5     45
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     32
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                32     32
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               354    474
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0               120    474
6-9 months     ki1148112-LCNI-5           MALAWI                         1                23    145
6-9 months     ki1148112-LCNI-5           MALAWI                         0               122    145
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1               552    690
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               138    690
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                78    216
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               138    216
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                28    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               166    194
9-12 months    ki0047075b-MAL-ED          INDIA                          1                11    210
9-12 months    ki0047075b-MAL-ED          INDIA                          0               199    210
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                11    219
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               208    219
9-12 months    ki0047075b-MAL-ED          PERU                           1                82    235
9-12 months    ki0047075b-MAL-ED          PERU                           0               153    235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3    212
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               209    212
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1    213
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               212    213
9-12 months    ki1000109-EE               PAKISTAN                       1                39     44
9-12 months    ki1000109-EE               PAKISTAN                       0                 5     44
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     36
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                36     36
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               341    450
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0               109    450
9-12 months    ki1148112-LCNI-5           MALAWI                         1                10     32
9-12 months    ki1148112-LCNI-5           MALAWI                         0                22     32
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               604    759
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               155    759
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                73    204
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               131    204
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                27    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               157    184
12-15 months   ki0047075b-MAL-ED          INDIA                          1                11    209
12-15 months   ki0047075b-MAL-ED          INDIA                          0               198    209
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                11    220
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               209    220
12-15 months   ki0047075b-MAL-ED          PERU                           1                77    224
12-15 months   ki0047075b-MAL-ED          PERU                           0               147    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3    209
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206    209
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1    214
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213    214
12-15 months   ki1000109-EE               PAKISTAN                       1                32     37
12-15 months   ki1000109-EE               PAKISTAN                       0                 5     37
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     35
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                35     35
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               341    452
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0               111    452
12-15 months   ki1148112-LCNI-5           MALAWI                         1                 0      1
12-15 months   ki1148112-LCNI-5           MALAWI                         0                 1      1
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1               602    750
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               148    750
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                75    204
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               129    204
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                27    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               148    175
15-18 months   ki0047075b-MAL-ED          INDIA                          1                11    209
15-18 months   ki0047075b-MAL-ED          INDIA                          0               198    209
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                12    218
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               206    218
15-18 months   ki0047075b-MAL-ED          PERU                           1                75    213
15-18 months   ki0047075b-MAL-ED          PERU                           0               138    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3    206
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               203    206
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1    205
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204    205
15-18 months   ki1000109-EE               PAKISTAN                       1                28     33
15-18 months   ki1000109-EE               PAKISTAN                       0                 5     33
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     32
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                32     32
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               347    461
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0               114    461
15-18 months   ki1148112-LCNI-5           MALAWI                         1                 0      4
15-18 months   ki1148112-LCNI-5           MALAWI                         0                 4      4
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1               611    767
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               156    767
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                75    202
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               127    202
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                25    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               142    167
18-21 months   ki0047075b-MAL-ED          INDIA                          1                10    209
18-21 months   ki0047075b-MAL-ED          INDIA                          0               199    209
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                12    218
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               206    218
18-21 months   ki0047075b-MAL-ED          PERU                           1                70    202
18-21 months   ki0047075b-MAL-ED          PERU                           0               132    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3    213
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               210    213
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1    192
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               191    192
18-21 months   ki1000109-EE               PAKISTAN                       1                28     33
18-21 months   ki1000109-EE               PAKISTAN                       0                 5     33
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               325    426
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0               101    426
18-21 months   ki1148112-LCNI-5           MALAWI                         1                29    170
18-21 months   ki1148112-LCNI-5           MALAWI                         0               141    170
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                73    200
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               127    200
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                25    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               140    165
21-24 months   ki0047075b-MAL-ED          INDIA                          1                10    208
21-24 months   ki0047075b-MAL-ED          INDIA                          0               198    208
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                12    218
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               206    218
21-24 months   ki0047075b-MAL-ED          PERU                           1                64    189
21-24 months   ki0047075b-MAL-ED          PERU                           0               125    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3    214
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               211    214
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1    192
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               191    192
21-24 months   ki1000109-EE               PAKISTAN                       1                16     18
21-24 months   ki1000109-EE               PAKISTAN                       0                 2     18
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               251    329
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                78    329
21-24 months   ki1148112-LCNI-5           MALAWI                         1                25    141
21-24 months   ki1148112-LCNI-5           MALAWI                         0               116    141


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

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/83961fb8-64a4-43ba-9efc-9a6267027cce/eab5128d-8808-4461-b2aa-ee0d8a336da8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/83961fb8-64a4-43ba-9efc-9a6267027cce/eab5128d-8808-4461-b2aa-ee0d8a336da8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/83961fb8-64a4-43ba-9efc-9a6267027cce/eab5128d-8808-4461-b2aa-ee0d8a336da8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                3.3440623   3.2340741   3.4540505
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                3.3506179   3.2645710   3.4366648
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                4.0424700   3.7159947   4.3689454
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                3.7859938   3.6688214   3.9031661
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                3.1975488   2.8853961   3.5097015
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                3.3449364   3.2480037   3.4418691
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                3.2830490   3.0630022   3.5030958
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                3.6482868   3.5480591   3.7485146
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                3.1128016   2.9994763   3.2261269
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                3.0356176   2.9552623   3.1159730
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                3.6064403   3.5477991   3.6650815
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                3.5756322   3.4678493   3.6834151
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                3.6452824   3.6257613   3.6648035
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                3.6755162   3.6398321   3.7112002
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                3.0820033   2.9761878   3.1878188
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                3.0378335   2.8362785   3.2393884
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.9428303   1.8513078   2.0343529
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.9146387   1.8534672   1.9758102
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                2.1341399   1.9175663   2.3507135
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                2.1480942   2.0630343   2.2331541
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.8862283   1.6753246   2.0971320
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.8842258   1.8153495   1.9531021
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                1.9254229   1.7115830   2.1392627
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                1.9690406   1.9088507   2.0292305
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                2.0353824   1.9176661   2.1530987
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                2.0077550   1.9274824   2.0880277
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.7290586   1.6831784   1.7749389
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.6539447   1.5764764   1.7314129
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.9228869   1.9023826   1.9433913
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.9163016   1.8803370   1.9522662
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.8740349   1.8032312   1.9448386
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.8799585   1.7255113   2.0344058
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.2475244   1.1806244   1.3144243
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.2576894   1.2067011   1.3086776
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                1.6068102   1.2971026   1.9165178
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                1.4618903   1.3844882   1.5392924
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.2344065   1.1111390   1.3576739
6-9 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.2505808   1.1954935   1.3056681
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    NA                1.2079330   1.0374884   1.3783777
6-9 months     ki0047075b-MAL-ED     NEPAL        0                    NA                1.3604163   1.3146598   1.4061728
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                1.3185716   1.2227369   1.4144064
6-9 months     ki0047075b-MAL-ED     PERU         0                    NA                1.3207672   1.2550189   1.3865155
6-9 months     ki1000109-EE          PAKISTAN     1                    NA                1.1144238   0.9844462   1.2444013
6-9 months     ki1000109-EE          PAKISTAN     0                    NA                1.2194058   1.0438676   1.3949439
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.3151777   1.2738648   1.3564907
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.3106437   1.2035353   1.4177521
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                1.4504298   1.2732863   1.6275734
6-9 months     ki1148112-LCNI-5      MALAWI       0                    NA                1.4347776   1.3694403   1.5001149
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.2816948   1.2394079   1.3239817
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.3389499   1.2497243   1.4281755
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.9474253   0.8838924   1.0109583
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.0059443   0.9568698   1.0550188
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                1.1987036   1.0080952   1.3893119
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                1.3150479   1.2348123   1.3952835
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.9135079   0.7128614   1.1141544
9-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.9862272   0.9457766   1.0266777
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                0.9673641   0.8683775   1.0663507
9-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                1.0927203   1.0489002   1.1365405
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                1.0977313   1.0161832   1.1792794
9-12 months    ki0047075b-MAL-ED     PERU         0                    NA                1.0989310   1.0340785   1.1637836
9-12 months    ki1000109-EE          PAKISTAN     1                    NA                0.8435058   0.7523586   0.9346530
9-12 months    ki1000109-EE          PAKISTAN     0                    NA                0.8866775   0.6533943   1.1199607
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.9897541   0.9551449   1.0243633
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                1.0245910   0.9391313   1.1100507
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                1.1282752   0.9389981   1.3175524
9-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.8989795   0.7125644   1.0853947
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.0477451   1.0060381   1.0894521
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.0439814   0.9720568   1.1159060
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8901216   0.8311442   0.9490990
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.9366361   0.8815411   0.9917312
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                1.1284891   0.9865705   1.2704077
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                1.1445314   1.0798018   1.2092611
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.8814052   0.7378861   1.0249244
12-15 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.9121027   0.8697655   0.9544399
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.9913078   0.8167198   1.1658958
12-15 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.9473465   0.9060699   0.9886231
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8733011   0.8016066   0.9449956
12-15 months   ki0047075b-MAL-ED     PERU         0                    NA                0.9013801   0.8417290   0.9610312
12-15 months   ki1000109-EE          PAKISTAN     1                    NA                0.9994382   0.9109531   1.0879233
12-15 months   ki1000109-EE          PAKISTAN     0                    NA                1.1691763   0.8641761   1.4741764
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8743708   0.8459622   0.9027795
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8582272   0.8010066   0.9154478
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.9398852   0.9024827   0.9772878
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.9579514   0.8581598   1.0577430
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8185536   0.7595040   0.8776031
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8256373   0.7766874   0.8745872
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.9808882   0.8297541   1.1320224
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                1.0059832   0.9417751   1.0701912
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.7947960   0.6999361   0.8896559
15-18 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8504785   0.8119625   0.8889946
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.9062236   0.7738526   1.0385945
15-18 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8388886   0.7942958   0.8834814
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8381266   0.7695215   0.9067317
15-18 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8617482   0.8082227   0.9152737
15-18 months   ki1000109-EE          PAKISTAN     1                    NA                0.8264950   0.7398782   0.9131119
15-18 months   ki1000109-EE          PAKISTAN     0                    NA                0.9035877   0.8122406   0.9949348
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.7828462   0.7429872   0.8227052
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6920497   0.6466460   0.7374534
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.8372317   0.7990293   0.8754341
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.8352965   0.7704198   0.9001732
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.7960478   0.7413682   0.8507274
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8334866   0.7882832   0.8786899
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.7958577   0.6629892   0.9287262
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.9372410   0.8578282   1.0166539
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.7369521   0.5963741   0.8775302
18-21 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8853866   0.8486486   0.9221246
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.6856624   0.5612063   0.8101185
18-21 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8181457   0.7783624   0.8579291
18-21 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8312563   0.7536494   0.9088633
18-21 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8468464   0.7923276   0.9013652
18-21 months   ki1000109-EE          PAKISTAN     1                    NA                0.7829057   0.6977684   0.8680431
18-21 months   ki1000109-EE          PAKISTAN     0                    NA                0.8103374   0.7102740   0.9104008
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8988768   0.8555266   0.9422269
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.9283742   0.8795475   0.9772008
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.6988372   0.3078257   1.0898487
18-21 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.8714175   0.7927107   0.9501243
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.7764764   0.7161801   0.8367726
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7690055   0.7234882   0.8145228
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.7889591   0.7043409   0.8735773
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.7974363   0.7477737   0.8470990
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.8174624   0.6816572   0.9532675
21-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8284167   0.7951098   0.8617235
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.8874751   0.7046214   1.0703288
21-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.7803294   0.7375657   0.8230932
21-24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.7269048   0.6431611   0.8106485
21-24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.7785332   0.7223153   0.8347511
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.7857736   0.7367666   0.8347806
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8245095   0.7098501   0.9391690
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.7347572   0.5989843   0.8705300
21-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.7341491   0.6568139   0.8114842


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                3.3482498   3.2804281   3.4160715
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                3.3378760   3.2442606   3.4314913
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                3.6205791   3.5251464   3.7160118
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                3.0614469   2.9957442   3.1271496
0-3 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                3.5982617   3.5465367   3.6499867
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                3.6519999   3.6336534   3.6703464
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                3.0757239   2.9804831   3.1709647
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.9247979   1.8735932   1.9760025
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                1.8843292   1.8181080   1.9505504
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                1.9668794   1.9086855   2.0250732
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                2.0171026   1.9506965   2.0835088
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.7086613   1.6690533   1.7482692
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                1.9213716   1.9032221   1.9395211
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.8748973   1.8100892   1.9397053
6-9 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.2541293   1.2135456   1.2947130
6-9 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED     INDIA        NA                   NA                1.2497455   1.1971145   1.3023766
6-9 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                1.3520991   1.3076136   1.3965845
6-9 months     ki0047075b-MAL-ED     PERU         NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki1000109-EE          PAKISTAN     NA                   NA                1.1260884   1.0085133   1.2436636
6-9 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.3140299   1.2729534   1.3551064
6-9 months     ki1148112-LCNI-5      MALAWI       NA                   NA                1.4372604   1.3755150   1.4990057
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.2931458   1.2543643   1.3319273
9-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.9848124   0.9457805   1.0238444
9-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.9824181   0.9426109   1.0222252
9-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                1.0864239   1.0443515   1.1284963
9-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki1000109-EE          PAKISTAN     NA                   NA                0.8484117   0.7632855   0.9335379
9-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.9981924   0.9647527   1.0316321
9-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.9706344   0.8246089   1.1166600
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.0469765   1.0106939   1.0832591
12-15 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.9199912   0.8786810   0.9613015
12-15 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.9104871   0.8696624   0.9513117
12-15 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.9495446   0.9093518   0.9897373
12-15 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki1000109-EE          PAKISTAN     NA                   NA                1.0223758   0.9334119   1.1113396
12-15 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.8704063   0.8447703   0.8960424
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.9434503   0.9068555   0.9800451
15-18 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8230330   0.7852223   0.8608436
15-18 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8475479   0.8106803   0.8844155
15-18 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.8425951   0.7997829   0.8854074
15-18 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki1000109-EE          PAKISTAN     NA                   NA                0.8381757   0.7627800   0.9135715
15-18 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.7603933   0.7281594   0.7926271
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.8368381   0.8030259   0.8706503
18-21 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8195860   0.7845702   0.8546019
18-21 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8782845   0.8424042   0.9141648
18-21 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.8108531   0.7724296   0.8492765
18-21 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki1000109-EE          PAKISTAN     NA                   NA                0.7870620   0.7131718   0.8609522
18-21 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.9058703   0.8708102   0.9409303
18-21 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.8419773   0.7481346   0.9358201
21-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.7717324   0.7354003   0.8080644
21-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8278900   0.7955176   0.8602624
21-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.7862274   0.7444562   0.8279985
21-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.7949572   0.7486969   0.8412176
21-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.7342569   0.6662316   0.8022822


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0065556   -0.1330920    0.1462033
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.2564763   -0.6033415    0.0903890
0-3 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.1473877   -0.1794690    0.4742443
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.3652378    0.1234400    0.6070357
0-3 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0771840   -0.2161070    0.0617390
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0308081   -0.1535108    0.0918945
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0302337   -0.0072424    0.0677098
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0441699   -0.2719806    0.1836408
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0281916   -0.1382749    0.0818916
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0139543   -0.2187243    0.2466329
3-6 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        0                    1                 -0.0020025   -0.2238680    0.2198631
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.0436177   -0.1785316    0.2657670
3-6 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0276274   -0.1701084    0.1148536
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0751140   -0.1651491    0.0149212
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0065853   -0.0471611    0.0339905
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0059237   -0.1630855    0.1749328
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0101650   -0.0739504    0.0942804
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1449199   -0.4641532    0.1743134
6-9 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.0161743   -0.1188422    0.1511909
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.1524833   -0.0239963    0.3289629
6-9 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU         0                    1                  0.0021956   -0.1140246    0.1184158
6-9 months     ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE          PAKISTAN     0                    1                  0.1049820   -0.1134392    0.3234031
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0045341   -0.1193337    0.1102656
6-9 months     ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI       0                    1                 -0.0156522   -0.2044611    0.1731567
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0572551   -0.0405188    0.1550289
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0585190   -0.0217602    0.1387981
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    1                  0.1163443   -0.0904630    0.3231517
9-12 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.0727192   -0.1319641    0.2774026
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.1253563    0.0171040    0.2336085
9-12 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU         0                    1                  0.0011997   -0.1029921    0.1053916
9-12 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE          PAKISTAN     0                    1                  0.0431716   -0.2072856    0.2936289
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0348369   -0.0573648    0.1270386
9-12 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI       0                    1                 -0.2292957   -0.4949580    0.0363666
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0037637   -0.0869130    0.0793857
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0465145   -0.0341936    0.1272226
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0160423   -0.1399411    0.1720257
12-15 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0306975   -0.1189360    0.1803310
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0439613   -0.2233623    0.1354398
12-15 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0280790   -0.0651859    0.1213440
12-15 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE          PAKISTAN     0                    1                  0.1697381   -0.1478382    0.4873144
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0161437   -0.0800283    0.0477410
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0180662   -0.0870937    0.1232261
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0070837   -0.0696166    0.0837841
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0250950   -0.1391128    0.1893028
15-18 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0556825   -0.0466985    0.1580636
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0673349   -0.2070152    0.0723454
15-18 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0236216   -0.0633936    0.1106367
15-18 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE          PAKISTAN     0                    1                  0.0770926   -0.0487913    0.2029766
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0907965   -0.1512138   -0.0303793
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0019352   -0.0754590    0.0715887
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0374387   -0.0335064    0.1083838
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.1413833   -0.0134083    0.2961750
18-21 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.1484345    0.0031352    0.2937337
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.1324833    0.0018234    0.2631433
18-21 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0155901   -0.0792526    0.1104328
18-21 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE          PAKISTAN     0                    1                  0.0274317   -0.1039496    0.1588129
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0294974   -0.0357963    0.0947912
18-21 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.1725803   -0.2262740    0.5714346
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0074709   -0.0830186    0.0680768
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0084772   -0.0896382    0.1065926
21-24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0109543   -0.1288755    0.1507841
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.1071456   -0.2949333    0.0806420
21-24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0516284   -0.0492352    0.1524920
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0387359   -0.0859577    0.1634294
21-24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI       0                    1                 -0.0006081   -0.1568611    0.1556449


### Parameter: PAR


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0041875   -0.0850157    0.0933907
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.2234333   -0.5259000    0.0790334
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.1403272   -0.1709085    0.4515629
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.3375301    0.1135181    0.5615422
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0513547   -0.1438966    0.0411872
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0081786   -0.0407742    0.0244170
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0067175   -0.0015930    0.0150280
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0062794   -0.0384312    0.0258724
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0180325   -0.0884687    0.0524037
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0119416   -0.1871786    0.2110619
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0018990   -0.2123068    0.2085087
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0414565   -0.1696891    0.2526021
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0182798   -0.1125660    0.0760065
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0203973   -0.0450352    0.0042405
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0015153   -0.0108429    0.0078122
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008624   -0.0237049    0.0254297
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0066049   -0.0480546    0.0612643
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1236943   -0.3962651    0.1488766
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.0153390   -0.1127057    0.1433838
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1441660   -0.0227504    0.3110825
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0014249   -0.0739998    0.0768495
6-9 months     ki1000109-EE          PAKISTAN     1                    NA                 0.0116647   -0.0144891    0.0378184
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0011479   -0.0302116    0.0279159
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                -0.0131694   -0.1720321    0.1456932
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0114510   -0.0084200    0.0313221
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0373871   -0.0140398    0.0888140
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0995524   -0.0775005    0.2766052
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0689101   -0.1250641    0.2628844
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1190598    0.0161807    0.2219390
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0007811   -0.0670545    0.0686167
9-12 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0049059   -0.0238483    0.0336600
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0084383   -0.0139377    0.0308142
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.1576408   -0.3440762    0.0287946
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0007686   -0.0177665    0.0162293
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0298696   -0.0220484    0.0817875
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0136883   -0.1194088    0.1467853
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0290819   -0.1126792    0.1708430
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0417632   -0.2121990    0.1286725
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0184269   -0.0428033    0.0796570
12-15 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0229376   -0.0239780    0.0698531
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0039645   -0.0196661    0.0117371
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0035651   -0.0172783    0.0244084
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0044794   -0.0440246    0.0529834
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0212232   -0.1176563    0.1601026
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0527519   -0.0442554    0.1497592
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0636284   -0.1956357    0.0683789
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0153041   -0.0410924    0.0717006
15-18 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0116807   -0.0096621    0.0330235
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0224529   -0.0378163   -0.0070896
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0003936   -0.0153616    0.0145744
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0235382   -0.0211359    0.0682123
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1202182   -0.0116246    0.2520609
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.1413323    0.0029182    0.2797465
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1251907    0.0016576    0.2487238
18-21 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0101876   -0.0517973    0.0721725
18-21 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0041563   -0.0160395    0.0243522
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0069935   -0.0085328    0.0225198
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.1431401   -0.1878191    0.4740993
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0047440   -0.0527194    0.0432314
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0071928   -0.0760579    0.0904435
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0104277   -0.1226799    0.1435353
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1012477   -0.2787282    0.0762328
21-24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0341458   -0.0326543    0.1009459
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0091836   -0.0204327    0.0387999
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0005003   -0.1290488    0.1280483
