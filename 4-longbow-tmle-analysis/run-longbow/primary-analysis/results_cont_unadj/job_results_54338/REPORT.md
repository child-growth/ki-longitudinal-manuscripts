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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid               country                        predfeed3    n_cell      n
-------------  --------------------  -----------------------------  ----------  -------  -----
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1               193    237
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                44    237
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                73    147
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                74    147
0-3 months     ki0047075b-MAL-ED     INDIA                          1               113    164
0-3 months     ki0047075b-MAL-ED     INDIA                          0                51    164
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                81    153
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                72    153
0-3 months     ki0047075b-MAL-ED     PERU                           1               168    262
0-3 months     ki0047075b-MAL-ED     PERU                           0                94    262
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                58    203
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               145    203
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                57    197
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               140    197
0-3 months     ki1000109-EE          PAKISTAN                       1                31     31
0-3 months     ki1000109-EE          PAKISTAN                       0                 0     31
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1               378    456
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                78    456
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1              5313   5872
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0               559   5872
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                37     39
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 2     39
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1               184    225
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                41    225
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                93    186
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                93    186
3-6 months     ki0047075b-MAL-ED     INDIA                          1               146    206
3-6 months     ki0047075b-MAL-ED     INDIA                          0                60    206
3-6 months     ki0047075b-MAL-ED     NEPAL                          1               112    226
3-6 months     ki0047075b-MAL-ED     NEPAL                          0               114    226
3-6 months     ki0047075b-MAL-ED     PERU                           1               174    264
3-6 months     ki0047075b-MAL-ED     PERU                           0                90    264
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                63    234
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               171    234
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                63    208
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               145    208
3-6 months     ki1000109-EE          PAKISTAN                       1                31     31
3-6 months     ki1000109-EE          PAKISTAN                       0                 0     31
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1               350    420
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                70    420
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1              3214   3534
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0               320   3534
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                 6      6
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 0      6
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1               177    217
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                40    217
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                90    177
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                87    177
6-9 months     ki0047075b-MAL-ED     INDIA                          1               143    205
6-9 months     ki0047075b-MAL-ED     INDIA                          0                62    205
6-9 months     ki0047075b-MAL-ED     NEPAL                          1               110    222
6-9 months     ki0047075b-MAL-ED     NEPAL                          0               112    222
6-9 months     ki0047075b-MAL-ED     PERU                           1               160    242
6-9 months     ki0047075b-MAL-ED     PERU                           0                82    242
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                62    222
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               160    222
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                59    193
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               134    193
6-9 months     ki1000109-EE          PAKISTAN                       1                36     36
6-9 months     ki1000109-EE          PAKISTAN                       0                 0     36
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1               314    378
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                64    378
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                 5      5
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 0      5
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1               179    218
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                39    218
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                89    175
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                86    175
9-12 months    ki0047075b-MAL-ED     INDIA                          1               139    201
9-12 months    ki0047075b-MAL-ED     INDIA                          0                62    201
9-12 months    ki0047075b-MAL-ED     NEPAL                          1               109    221
9-12 months    ki0047075b-MAL-ED     NEPAL                          0               112    221
9-12 months    ki0047075b-MAL-ED     PERU                           1               155    233
9-12 months    ki0047075b-MAL-ED     PERU                           0                78    233
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                63    223
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               160    223
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                56    192
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               136    192
9-12 months    ki1000109-EE          PAKISTAN                       1                36     36
9-12 months    ki1000109-EE          PAKISTAN                       0                 0     36
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1               302    362
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                60    362
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                20     21
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 1     21
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1               168    206
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                38    206
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                86    165
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                79    165
12-15 months   ki0047075b-MAL-ED     INDIA                          1               138    200
12-15 months   ki0047075b-MAL-ED     INDIA                          0                62    200
12-15 months   ki0047075b-MAL-ED     NEPAL                          1               110    222
12-15 months   ki0047075b-MAL-ED     NEPAL                          0               112    222
12-15 months   ki0047075b-MAL-ED     PERU                           1               148    222
12-15 months   ki0047075b-MAL-ED     PERU                           0                74    222
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60    219
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               159    219
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                57    195
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               138    195
12-15 months   ki1000109-EE          PAKISTAN                       1                29     29
12-15 months   ki1000109-EE          PAKISTAN                       0                 0     29
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1               313    371
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                58    371
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                19     20
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                 1     20
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1               168    206
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                38    206
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                82    157
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                75    157
15-18 months   ki0047075b-MAL-ED     INDIA                          1               138    201
15-18 months   ki0047075b-MAL-ED     INDIA                          0                63    201
15-18 months   ki0047075b-MAL-ED     NEPAL                          1               108    219
15-18 months   ki0047075b-MAL-ED     NEPAL                          0               111    219
15-18 months   ki0047075b-MAL-ED     PERU                           1               141    210
15-18 months   ki0047075b-MAL-ED     PERU                           0                69    210
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60    218
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               158    218
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                55    188
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               133    188
15-18 months   ki1000109-EE          PAKISTAN                       1                25     25
15-18 months   ki1000109-EE          PAKISTAN                       0                 0     25
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1               319    379
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                60    379
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                21     22
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                 1     22
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1               166    203
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                37    203
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                79    150
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                71    150
18-21 months   ki0047075b-MAL-ED     INDIA                          1               138    201
18-21 months   ki0047075b-MAL-ED     INDIA                          0                63    201
18-21 months   ki0047075b-MAL-ED     NEPAL                          1               108    219
18-21 months   ki0047075b-MAL-ED     NEPAL                          0               111    219
18-21 months   ki0047075b-MAL-ED     PERU                           1               133    199
18-21 months   ki0047075b-MAL-ED     PERU                           0                66    199
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60    225
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               165    225
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                52    176
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               124    176
18-21 months   ki1000109-EE          PAKISTAN                       1                26     26
18-21 months   ki1000109-EE          PAKISTAN                       0                 0     26
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1               295    347
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                52    347
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1               164    201
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                37    201
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                77    149
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                72    149
21-24 months   ki0047075b-MAL-ED     INDIA                          1               138    201
21-24 months   ki0047075b-MAL-ED     INDIA                          0                63    201
21-24 months   ki0047075b-MAL-ED     NEPAL                          1               109    219
21-24 months   ki0047075b-MAL-ED     NEPAL                          0               110    219
21-24 months   ki0047075b-MAL-ED     PERU                           1               125    187
21-24 months   ki0047075b-MAL-ED     PERU                           0                62    187
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                59    226
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               167    226
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                53    175
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               122    175
21-24 months   ki1000109-EE          PAKISTAN                       1                16     16
21-24 months   ki1000109-EE          PAKISTAN                       0                 0     16
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1               237    279
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                42    279


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
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b33eaa66-2a0d-4da0-9345-e39eed7e7b91/c637593b-dd3d-450c-b3d8-5e20dbefdb1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b33eaa66-2a0d-4da0-9345-e39eed7e7b91/c637593b-dd3d-450c-b3d8-5e20dbefdb1b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b33eaa66-2a0d-4da0-9345-e39eed7e7b91/c637593b-dd3d-450c-b3d8-5e20dbefdb1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1034583   -0.1407715   -0.0661451
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.2314857   -0.3092073   -0.1537641
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1871340    0.1064969    0.2677711
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1110327    0.0223857    0.1996796
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0420605   -0.1093913    0.0252703
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0822840   -0.1756977    0.0111297
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0046456   -0.0524836    0.0617748
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.1031700    0.0347665    0.1715735
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.2405936   -0.2809755   -0.2002117
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                -0.3033808   -0.3659252   -0.2408365
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.2165711   -0.2938990   -0.1392431
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.1516254   -0.2141712   -0.0890795
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0339702   -0.1099379    0.0419974
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1945800   -0.2428667   -0.1462934
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0382441   -0.0672603   -0.0092279
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0422248   -0.1079290    0.0234793
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0525060    0.0430252    0.0619869
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0781814    0.0525015    0.1038614
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0248034   -0.0510502    0.0014434
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0093743   -0.0417290    0.0604776
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0040664   -0.0488691    0.0570020
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1261010    0.0715837    0.1806183
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0388541   -0.0766477   -0.0010604
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0545824   -0.1120658    0.0029010
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0612430   -0.0961905   -0.0262956
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0096131   -0.0299980    0.0492242
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0149272   -0.0229791    0.0528335
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                 0.0452558   -0.0106229    0.1011344
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0169531   -0.0888087    0.0549025
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0027830   -0.0489554    0.0433894
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1071478   -0.1711648   -0.0431309
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0493339   -0.0883505   -0.0103172
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.1549462   -0.1763734   -0.1335190
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.1736086   -0.2224229   -0.1247944
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0027125   -0.0119162    0.0064911
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0089136   -0.0389288    0.0211015
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0711704   -0.0904946   -0.0518461
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0756321   -0.1187213   -0.0325428
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0176446   -0.0380351    0.0733243
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0038273   -0.0530751    0.0454205
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0762841   -0.1048158   -0.0477523
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0655949   -0.1081212   -0.0230687
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0432214   -0.0699210   -0.0165219
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0237786   -0.0523376    0.0047805
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0361229   -0.0651675   -0.0070783
6-9 months     ki0047075b-MAL-ED     PERU                           0                    NA                -0.0313235   -0.0752225    0.0125756
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0237618   -0.0791718    0.0316483
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0098496   -0.0439356    0.0242363
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0588981   -0.1314443    0.0136482
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1105672   -0.1457660   -0.0753683
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0448293   -0.0685664   -0.0210922
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0482527   -0.0861337   -0.0103718
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0865598   -0.1051192   -0.0680003
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0798728   -0.1129991   -0.0467465
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0041605   -0.0391067    0.0474277
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0024520   -0.0485935    0.0534976
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1149484   -0.1345139   -0.0953830
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0577879   -0.0843375   -0.0312383
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0654999   -0.0906858   -0.0403140
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0614256   -0.0853130   -0.0375382
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0295895   -0.0566173   -0.0025616
9-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                -0.0650554   -0.1003071   -0.0298037
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0999111   -0.1580287   -0.0417934
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0889915   -0.1188983   -0.0590848
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2036229   -0.2779434   -0.1293024
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1340974   -0.1734737   -0.0947212
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0867703   -0.1055260   -0.0680145
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0420503   -0.0711751   -0.0129254
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0630617   -0.0794269   -0.0466965
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0146941   -0.0585614    0.0291732
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0007746   -0.0306750    0.0291258
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0000413   -0.0354088    0.0353262
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0603755   -0.0811932   -0.0395577
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0570695   -0.0831192   -0.0310197
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0555213   -0.0776120   -0.0334305
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0592453   -0.0818458   -0.0366449
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0691667   -0.0899364   -0.0483970
12-15 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0602072   -0.0939223   -0.0264922
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0753389   -0.1227913   -0.0278865
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0527625   -0.0798154   -0.0257096
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0865147   -0.1311131   -0.0419163
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0600888   -0.0930272   -0.0271504
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0688251   -0.0801560   -0.0574942
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0754722   -0.1060288   -0.0449156
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0418324   -0.0572688   -0.0263961
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0633506   -0.0919801   -0.0347211
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0361555   -0.0677815   -0.0045294
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0175681   -0.0481261    0.0129899
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0415057   -0.0573427   -0.0256688
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0198621   -0.0449333    0.0052091
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0615833   -0.0840308   -0.0391358
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0502512   -0.0717790   -0.0287233
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0396049   -0.0567084   -0.0225014
15-18 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0305428   -0.0622424    0.0011567
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0410046   -0.0800630   -0.0019462
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0262714   -0.0481429   -0.0043998
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0813904   -0.1264941   -0.0362866
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0915402   -0.1198682   -0.0632122
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0575387   -0.0728351   -0.0422423
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0880604   -0.1085425   -0.0675783
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0193291   -0.0328057   -0.0058525
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0006259   -0.0227590    0.0240108
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0206528   -0.0545978    0.0132922
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0135818   -0.0505352    0.0233717
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0031096   -0.0175437    0.0113245
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0180025   -0.0042517    0.0402568
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0372590   -0.0570314   -0.0174867
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0184218   -0.0365005   -0.0003432
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0005090   -0.0200148    0.0189969
18-21 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0217913   -0.0455334    0.0019508
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0085178   -0.0357368    0.0527723
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0466134   -0.0674973   -0.0257296
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0182964   -0.0645076    0.0279148
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0321471   -0.0613719   -0.0029222
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0171909    0.0009869    0.0333948
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0311919    0.0080972    0.0542867
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0235939    0.0093135    0.0378742
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0281246    0.0062529    0.0499963
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0141482   -0.0072748    0.0355711
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0142330   -0.0113597    0.0398256
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0359136    0.0220002    0.0498270
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0224277    0.0013544    0.0435011
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0131927   -0.0050932    0.0314785
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0015508   -0.0196931    0.0227947
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0547969    0.0363741    0.0732197
21-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.0632023    0.0351058    0.0912989
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0189587   -0.0095849    0.0475023
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0548175    0.0339075    0.0757275
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0282235   -0.0085390    0.0649860
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0030409   -0.0273022    0.0333840
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0531317    0.0332011    0.0730623
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0044994   -0.0311055    0.0401042


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.1272271   -0.1614593   -0.0929949
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.1488245    0.0885499    0.2090991
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0545690   -0.1093806    0.0002426
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.0510100    0.0061541    0.0958660
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                -0.2631203   -0.2975785   -0.2286621
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.1701813   -0.2201854   -0.1201772
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1481092   -0.1901169   -0.1061015
0-3 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0389250   -0.0654744   -0.0123756
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                 0.0549503    0.0458523    0.0640482
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0185754   -0.0420362    0.0048853
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0650837    0.0260851    0.1040822
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0434351   -0.0750382   -0.0118321
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0255014   -0.0523456    0.0013427
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                 0.0252665   -0.0061992    0.0567322
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0065980   -0.0455003    0.0323043
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0668448   -0.1004432   -0.0332465
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.1580566   -0.1776900   -0.1384232
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.0032740   -0.0120416    0.0054936
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0719928   -0.0896446   -0.0543410
6-9 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0070906   -0.0301925    0.0443736
6-9 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0730513   -0.0967576   -0.0493449
6-9 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0334124   -0.0530149   -0.0138099
6-9 months     ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0344967   -0.0587887   -0.0102046
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0137350   -0.0427808    0.0153108
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0947719   -0.1279445   -0.0615994
6-9 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0454089   -0.0661443   -0.0246735
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0853635   -0.1017180   -0.0690090
9-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0033209   -0.0300480    0.0366898
9-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0973168   -0.1135502   -0.0810834
9-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0634351   -0.0807824   -0.0460878
9-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0414622   -0.0630765   -0.0198479
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0920764   -0.1191029   -0.0650499
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1543757   -0.1899833   -0.1187681
9-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0793581   -0.0958225   -0.0628937
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0541395   -0.0699573   -0.0383217
12-15 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0004235   -0.0234370    0.0225900
12-15 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0593506   -0.0758306   -0.0428707
12-15 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0574001   -0.0732076   -0.0415925
12-15 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0661802   -0.0840222   -0.0483383
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0589478   -0.0825397   -0.0353559
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0678133   -0.0945748   -0.0410518
12-15 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0698643   -0.0805537   -0.0591748
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0458018   -0.0595013   -0.0321023
15-18 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0272762   -0.0493683   -0.0051840
15-18 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0347219   -0.0482094   -0.0212344
15-18 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0558396   -0.0714014   -0.0402779
15-18 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0366273   -0.0521417   -0.0211130
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0303264   -0.0494996   -0.0111532
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0885708   -0.1125745   -0.0645671
15-18 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0623706   -0.0756949   -0.0490463
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0156920   -0.0275555   -0.0038285
18-21 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0173059   -0.0423234    0.0077117
18-21 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                 0.0035076   -0.0086867    0.0157020
18-21 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0277114   -0.0411503   -0.0142726
18-21 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0075674   -0.0228614    0.0077265
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0319118   -0.0515078   -0.0123157
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0280548   -0.0527783   -0.0033314
18-21 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                 0.0192890    0.0050754    0.0335026
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                 0.0244279    0.0120979    0.0367579
21-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0141891   -0.0024092    0.0307875
21-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                 0.0316867    0.0200407    0.0433327
21-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.0073452   -0.0067007    0.0213911
21-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                 0.0575837    0.0421321    0.0730353
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                 0.0454561    0.0281790    0.0627333
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0106677   -0.0132987    0.0346340
21-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                 0.0458107    0.0279350    0.0636865


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.1280274   -0.2142418   -0.0418130
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0761013   -0.1959371    0.0437345
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0402235   -0.1553736    0.0749267
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0985244    0.0094021    0.1876466
0-3 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0627872   -0.1372352    0.0116607
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0649457   -0.0345108    0.1644022
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1606098   -0.2506247   -0.0705949
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0039808   -0.0758067    0.0678452
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0256754   -0.0010498    0.0524006
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0341777   -0.0232718    0.0916272
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.1220346    0.0460457    0.1980235
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0157283   -0.0845230    0.0530663
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0708562    0.0180323    0.1236800
3-6 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0303285   -0.0371941    0.0978512
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0141701   -0.0712414    0.0995816
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0578140   -0.0171558    0.1327837
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0186624   -0.0719724    0.0346476
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0062011   -0.0376847    0.0252825
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0044617   -0.0516858    0.0427624
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0214719   -0.0958061    0.0528623
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.0106891   -0.0405217    0.0618999
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0194429   -0.0196530    0.0585387
6-9 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0047995   -0.0478382    0.0574371
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0139121   -0.0511426    0.0789669
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0516691   -0.1323036    0.0289654
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0034234   -0.0481271    0.0412802
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0066870   -0.0312841    0.0446581
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0017085   -0.0686241    0.0652071
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.0571605    0.0241804    0.0901406
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0040743   -0.0306379    0.0387865
9-12 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.0354659   -0.0798865    0.0089546
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0109195   -0.0544416    0.0762806
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0695255   -0.0145817    0.1536327
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0447200    0.0100785    0.0793615
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0483676    0.0015471    0.0951880
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0007333   -0.0455797    0.0470462
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0033060   -0.0300402    0.0366522
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0037241   -0.0353276    0.0278794
12-15 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0089595   -0.0306396    0.0485586
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0225764   -0.0320459    0.0771986
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0264259   -0.0290174    0.0818692
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0066471   -0.0392369    0.0259427
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0215182   -0.0540440    0.0110077
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0185873   -0.0253899    0.0625646
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0216437   -0.0080106    0.0512979
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0113321   -0.0197699    0.0424342
15-18 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0090620   -0.0269573    0.0450814
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0147332   -0.0300320    0.0594984
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0101498   -0.0634117    0.0431120
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0305217   -0.0560853   -0.0049581
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0199550   -0.0070352    0.0469453
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0070711   -0.0431068    0.0572490
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0211121   -0.0054132    0.0476375
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0188372   -0.0079543    0.0456287
18-21 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.0212823   -0.0520096    0.0094450
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0551312   -0.1040659   -0.0061966
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0138507   -0.0685276    0.0408263
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0140011   -0.0142113    0.0422134
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0045308   -0.0215901    0.0306516
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0000848   -0.0332907    0.0334603
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0134859   -0.0387379    0.0117662
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0116418   -0.0396718    0.0163881
21-24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0084054   -0.0251924    0.0420033
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0358588    0.0004757    0.0712419
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0251826   -0.0728500    0.0224849
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0486324   -0.0894359   -0.0078288


### Parameter: PAR


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0237688   -0.0409889   -0.0065487
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0383095   -0.0989499    0.0223309
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0125085   -0.0484313    0.0234143
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0463644    0.0037021    0.0890267
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0225267   -0.0494858    0.0044323
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0463898   -0.0247657    0.1175453
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1141389   -0.1789164   -0.0493615
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0006809   -0.0129677    0.0116059
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0024442   -0.0000886    0.0049771
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0062279   -0.0043823    0.0168381
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0610173    0.0220187    0.1000158
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0045811   -0.0246422    0.0154801
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0357416    0.0086969    0.0627863
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0103393   -0.0127453    0.0334238
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0103551   -0.0520662    0.0727764
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0403030   -0.0120847    0.0926907
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0031104   -0.0120203    0.0057995
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0005615   -0.0034054    0.0022824
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0008224   -0.0095304    0.0078855
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0105540   -0.0471255    0.0260176
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0032328   -0.0122700    0.0187356
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0098090   -0.0099566    0.0295746
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0016263   -0.0162119    0.0194645
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0100268   -0.0368668    0.0569203
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0358739   -0.0919596    0.0202118
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0005796   -0.0081496    0.0069903
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0011963   -0.0056053    0.0079978
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0008396   -0.0337241    0.0320449
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0176316    0.0068207    0.0284425
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0020648   -0.0155289    0.0196586
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0118727   -0.0268982    0.0031528
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0078346   -0.0390657    0.0547350
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0492472   -0.0104971    0.1089915
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0074122    0.0014197    0.0134046
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0089222   -0.0000883    0.0179327
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0003511   -0.0218231    0.0225252
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0010249   -0.0093146    0.0113644
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0018788   -0.0178248    0.0140672
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0029865   -0.0102249    0.0161979
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0163911   -0.0232887    0.0560708
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0187014   -0.0205718    0.0579746
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0010392   -0.0061400    0.0040617
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0039694   -0.0100771    0.0021383
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0088793   -0.0121794    0.0299380
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0067838   -0.0026144    0.0161820
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0057437   -0.0100383    0.0215257
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0029775   -0.0088715    0.0148265
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0106782   -0.0217781    0.0431345
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0071805   -0.0448662    0.0305053
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0048319   -0.0090319   -0.0006320
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0036371   -0.0013957    0.0086699
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0033470   -0.0204107    0.0271046
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0066172   -0.0018067    0.0150412
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0095476   -0.0040890    0.0231843
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0070585   -0.0173445    0.0032276
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0404296   -0.0764567   -0.0044024
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0097584   -0.0482922    0.0287754
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0020981   -0.0021623    0.0063586
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0008340   -0.0039804    0.0056485
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0000410   -0.0160868    0.0161688
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0042269   -0.0121891    0.0037353
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0058475   -0.0199476    0.0082526
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0027868   -0.0083671    0.0139407
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0264975    0.0002707    0.0527242
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0175559   -0.0508313    0.0157196
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0073210   -0.0137947   -0.0008473
