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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        safeh20    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     239
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             239     239
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1               0     142
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             142     142
0-3 months     ki0047075b-MAL-ED          INDIA                          1               0     232
0-3 months     ki0047075b-MAL-ED          INDIA                          0             232     232
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               1     227
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             226     227
0-3 months     ki0047075b-MAL-ED          PERU                           1              11     258
0-3 months     ki0047075b-MAL-ED          PERU                           0             247     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              38     251
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             213     251
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             158     232
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              74     232
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1             563     565
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     565
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              13      13
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               0      13
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             725     725
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     725
0-3 months     ki1114097-CONTENT          PERU                           1               5       6
0-3 months     ki1114097-CONTENT          PERU                           0               1       6
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           10001   10013
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              12   10013
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1             639     639
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0     639
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             233     233
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1               0     141
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             141     141
3-6 months     ki0047075b-MAL-ED          INDIA                          1               0     230
3-6 months     ki0047075b-MAL-ED          INDIA                          0             230     230
3-6 months     ki0047075b-MAL-ED          NEPAL                          1               1     230
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             229     230
3-6 months     ki0047075b-MAL-ED          PERU                           1              11     256
3-6 months     ki0047075b-MAL-ED          PERU                           0             245     256
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     240
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             204     240
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             163     238
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              75     238
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1             520     522
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     522
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              11      11
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               0      11
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             702     702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     702
3-6 months     ki1114097-CONTENT          PERU                           1              54      57
3-6 months     ki1114097-CONTENT          PERU                           0               3      57
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            6292    6295
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               3    6295
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1             430     430
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0     430
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0             224     224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1               0     133
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             133     133
6-9 months     ki0047075b-MAL-ED          INDIA                          1               0     230
6-9 months     ki0047075b-MAL-ED          INDIA                          0             230     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          1               1     228
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             227     228
6-9 months     ki0047075b-MAL-ED          PERU                           1              10     235
6-9 months     ki0047075b-MAL-ED          PERU                           0             225     235
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             194     230
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     224
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     224
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1              74      74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0               0      74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1             496     498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               6       6
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               0       6
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             693     693
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     693
6-9 months     ki1114097-CONTENT          PERU                           1              54      57
6-9 months     ki1114097-CONTENT          PERU                           0               3      57
6-9 months     ki1148112-LCNI-5           MALAWI                         1             461     556
6-9 months     ki1148112-LCNI-5           MALAWI                         0              95     556
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1             777     777
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0     777
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             225     225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1               0     129
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             129     129
9-12 months    ki0047075b-MAL-ED          INDIA                          1               0     227
9-12 months    ki0047075b-MAL-ED          INDIA                          0             227     227
9-12 months    ki0047075b-MAL-ED          NEPAL                          1               1     227
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             226     227
9-12 months    ki0047075b-MAL-ED          PERU                           1               9     226
9-12 months    ki0047075b-MAL-ED          PERU                           0             217     226
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     232
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             195     232
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             153     223
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              70     223
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              72      72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0      72
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1             479     481
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     481
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               6       6
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               0       6
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             683     683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     683
9-12 months    ki1114097-CONTENT          PERU                           1              54      57
9-12 months    ki1114097-CONTENT          PERU                           0               3      57
9-12 months    ki1148112-LCNI-5           MALAWI                         1             317     380
9-12 months    ki1148112-LCNI-5           MALAWI                         0              63     380
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1             870     870
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     870
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1               0     122
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             122     122
12-15 months   ki0047075b-MAL-ED          INDIA                          1               0     226
12-15 months   ki0047075b-MAL-ED          INDIA                          0             226     226
12-15 months   ki0047075b-MAL-ED          NEPAL                          1               1     228
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             227     228
12-15 months   ki0047075b-MAL-ED          PERU                           1               8     215
12-15 months   ki0047075b-MAL-ED          PERU                           0             207     215
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             191     227
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     225
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              70     225
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              74      74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0      74
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1             459     461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               8       8
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       8
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             666     666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     666
12-15 months   ki1114097-CONTENT          PERU                           1              51      54
12-15 months   ki1114097-CONTENT          PERU                           0               3      54
12-15 months   ki1148112-LCNI-5           MALAWI                         1             104     125
12-15 months   ki1148112-LCNI-5           MALAWI                         0              21     125
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1             871     871
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     871
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1               0     116
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             116     116
15-18 months   ki0047075b-MAL-ED          INDIA                          1               0     226
15-18 months   ki0047075b-MAL-ED          INDIA                          0             226     226
15-18 months   ki0047075b-MAL-ED          NEPAL                          1               1     225
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             224     225
15-18 months   ki0047075b-MAL-ED          PERU                           1               8     206
15-18 months   ki0047075b-MAL-ED          PERU                           0             198     206
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              35     224
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             189     224
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             150     219
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     219
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              72      72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0      72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1             447     449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              10      10
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      10
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             605     605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     605
15-18 months   ki1114097-CONTENT          PERU                           1              45      48
15-18 months   ki1114097-CONTENT          PERU                           0               3      48
15-18 months   ki1148112-LCNI-5           MALAWI                         1             102     118
15-18 months   ki1148112-LCNI-5           MALAWI                         0              16     118
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1             879     879
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     879
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0             209     209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1               0     111
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             111     111
18-21 months   ki0047075b-MAL-ED          INDIA                          1               0     226
18-21 months   ki0047075b-MAL-ED          INDIA                          0             226     226
18-21 months   ki0047075b-MAL-ED          NEPAL                          1               1     225
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             224     225
18-21 months   ki0047075b-MAL-ED          PERU                           1               8     196
18-21 months   ki0047075b-MAL-ED          PERU                           0             188     196
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              35     232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             197     232
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             140     207
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              67     207
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1             420     422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             547     547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     547
18-21 months   ki1114097-CONTENT          PERU                           1              46      49
18-21 months   ki1114097-CONTENT          PERU                           0               3      49
18-21 months   ki1148112-LCNI-5           MALAWI                         1             369     452
18-21 months   ki1148112-LCNI-5           MALAWI                         0              83     452
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             207     207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     110
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             110     110
21-24 months   ki0047075b-MAL-ED          INDIA                          1               0     226
21-24 months   ki0047075b-MAL-ED          INDIA                          0             226     226
21-24 months   ki0047075b-MAL-ED          NEPAL                          1               1     225
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             224     225
21-24 months   ki0047075b-MAL-ED          PERU                           1               7     182
21-24 months   ki0047075b-MAL-ED          PERU                           0             175     182
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     234
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             200     234
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             140     205
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              65     205
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1             409     411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               8       8
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       8
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             493     493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     493
21-24 months   ki1114097-CONTENT          PERU                           1               8       9
21-24 months   ki1114097-CONTENT          PERU                           0               1       9
21-24 months   ki1148112-LCNI-5           MALAWI                         1             322     382
21-24 months   ki1148112-LCNI-5           MALAWI                         0              60     382


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/5ae7aa91-5ebb-4c41-80d1-9dbcd1d8d82f/852d7d58-2215-404f-bc46-775d1cb21bc4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5ae7aa91-5ebb-4c41-80d1-9dbcd1d8d82f/852d7d58-2215-404f-bc46-775d1cb21bc4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5ae7aa91-5ebb-4c41-80d1-9dbcd1d8d82f/852d7d58-2215-404f-bc46-775d1cb21bc4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid             country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                0.9995029    0.8949353   1.1040704
0-3 months     ki0047075b-MAL-ED   PERU                           0                    NA                0.9737640    0.9463811   1.0011468
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.9730759    0.8917820   1.0543699
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.9359832    0.9064594   0.9655069
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8978711    0.8622170   0.9335253
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8609942    0.8030415   0.9189469
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.8507150    0.8465678   0.8548623
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.7805514    0.7758930   0.7852099
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                0.4745474    0.4020187   0.5470761
3-6 months     ki0047075b-MAL-ED   PERU                           0                    NA                0.4957646    0.4756878   0.5158415
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.4245386    0.3424607   0.5066166
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.4743563    0.4474706   0.5012421
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4733750    0.4431281   0.5036220
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4204066    0.3822989   0.4585144
6-9 months     ki0047075b-MAL-ED   PERU                           1                    NA                0.2023311    0.1644833   0.2401789
6-9 months     ki0047075b-MAL-ED   PERU                           0                    NA                0.2618651    0.2455768   0.2781534
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2230796    0.1749712   0.2711880
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.2663893    0.2430927   0.2896859
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2267437    0.1963333   0.2571541
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2625721    0.2246537   0.3004905
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    NA                0.2875378    0.2736065   0.3014691
6-9 months     ki1148112-LCNI-5    MALAWI                         0                    NA                0.2721459    0.2428671   0.3014247
9-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                0.1723232    0.1222520   0.2223945
9-12 months    ki0047075b-MAL-ED   PERU                           0                    NA                0.1879670    0.1717185   0.2042154
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1899344    0.1430001   0.2368687
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.2201304    0.1954045   0.2448564
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1682332    0.1438349   0.1926314
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1645224    0.1277985   0.2012463
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.2022314    0.1846684   0.2197945
9-12 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.2023840    0.1643817   0.2403863
12-15 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.2334736    0.1667517   0.3001954
12-15 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.1379933    0.1206783   0.1553083
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1969891    0.1460280   0.2479502
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1862936    0.1579363   0.2146510
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1508537    0.1206201   0.1810872
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1773863    0.1344043   0.2203683
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1539586    0.1160070   0.1919103
12-15 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.1415989    0.0714692   0.2117286
15-18 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.1874214    0.1072172   0.2676256
15-18 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.1415552    0.1218013   0.1613092
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1846306    0.1157233   0.2535378
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.2297641    0.1986652   0.2608630
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1358982    0.1105142   0.1612822
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1646301    0.1187226   0.2105377
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1711589    0.1359549   0.2063630
15-18 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.1911572    0.1307860   0.2515284
18-21 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.0653975   -0.0157629   0.1465580
18-21 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.1660201    0.1463857   0.1856545
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1959997    0.1486953   0.2433041
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1718820    0.1418615   0.2019025
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1466499    0.1171000   0.1761999
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1367818    0.0938323   0.1797313
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1773684    0.1549475   0.1997893
18-21 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.2017680    0.1558895   0.2476465
21-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.1869388    0.0820127   0.2918650
21-24 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.1795172    0.1591318   0.1999026
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1869026    0.1305843   0.2432209
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1880055    0.1617967   0.2142144
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1297935    0.0963833   0.1632038
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1626386    0.1134605   0.2118166
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1847513    0.1554463   0.2140562
21-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.1478276    0.0813334   0.2143218


### Parameter: E(Y)


agecat         studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           NA                   NA                0.9748614   0.9482620   1.0014607
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.9415988   0.9136365   0.9695612
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8861087   0.8555112   0.9167061
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.8506310   0.8465842   0.8546777
3-6 months     ki0047075b-MAL-ED   PERU                           NA                   NA                0.4948529   0.4753805   0.5143254
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.4668837   0.4408277   0.4929397
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4566833   0.4325348   0.4808318
6-9 months     ki0047075b-MAL-ED   PERU                           NA                   NA                0.2593318   0.2435782   0.2750853
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.2596104   0.2384684   0.2807524
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2377801   0.2136152   0.2619451
6-9 months     ki1148112-LCNI-5    MALAWI                         NA                   NA                0.2849079   0.2723110   0.2975048
9-12 months    ki0047075b-MAL-ED   PERU                           NA                   NA                0.1873440   0.1716106   0.2030773
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.2153147   0.1931793   0.2374501
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1670684   0.1467422   0.1873945
9-12 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.2022567   0.1863082   0.2182053
12-15 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.1415461   0.1245184   0.1585737
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1879898   0.1627929   0.2131868
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1591083   0.1343053   0.1839113
12-15 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1518822   0.1181702   0.1855942
15-18 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.1433364   0.1240576   0.1626152
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.2227120   0.1942678   0.2511562
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1449507   0.1222652   0.1676362
15-18 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1738706   0.1423337   0.2054074
18-21 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.1619131   0.1425878   0.1812383
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1755205   0.1490254   0.2020155
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1434559   0.1191029   0.1678089
18-21 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1818489   0.1616805   0.2020172
21-24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.1798026   0.1597891   0.1998162
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1878453   0.1639966   0.2116939
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402078   0.1124924   0.1679233
21-24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1789517   0.1520986   0.2058049


### Parameter: ATE


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   PERU                           0                    1                 -0.0257389   -0.1338324    0.0823545
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0370928   -0.1235818    0.0493963
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0368770   -0.1049191    0.0311652
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.0701636   -0.0763985   -0.0639288
3-6 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   PERU                           0                    1                  0.0212172   -0.0540390    0.0964734
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0498177   -0.0365514    0.1361868
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0529684   -0.1016210   -0.0043158
6-9 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   PERU                           0                    1                  0.0595340    0.0183300    0.1007380
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0433097   -0.0101426    0.0967620
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0358284   -0.0127781    0.0844350
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0153920   -0.0478161    0.0170322
9-12 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   PERU                           0                    1                  0.0156437   -0.0369979    0.0682854
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0301961   -0.0228530    0.0832451
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0037108   -0.0478007    0.0403791
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5    MALAWI                         0                    1                  0.0001526   -0.0417119    0.0420171
12-15 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   PERU                           0                    1                 -0.0954802   -0.1644122   -0.0265483
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0106955   -0.0690150    0.0476241
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0265326   -0.0260175    0.0790828
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0123597   -0.0920999    0.0673805
15-18 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   PERU                           0                    1                 -0.0458662   -0.1284672    0.0367349
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0451336   -0.0304664    0.1207335
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0287319   -0.0237262    0.0811900
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5    MALAWI                         0                    1                  0.0199982   -0.0498875    0.0898840
18-21 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.1006226    0.0171209    0.1841242
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0241177   -0.0801439    0.0319086
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0098681   -0.0620012    0.0422650
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5    MALAWI                         0                    1                  0.0243996   -0.0266645    0.0754636
21-24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   PERU                           0                    1                 -0.0074216   -0.1143097    0.0994665
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0011029   -0.0610151    0.0632210
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0328451   -0.0266085    0.0922986
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0369237   -0.1095891    0.0357417


### Parameter: PAR


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                -0.0246415   -0.1281283    0.0788452
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0314771   -0.1048907    0.0419364
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0117625   -0.0335785    0.0100535
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0000841   -0.0002585    0.0000903
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.0203056   -0.0517189    0.0923300
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0423450   -0.0311033    0.1157934
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0166917   -0.0323402   -0.0010432
6-9 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.0570006    0.0175200    0.0964813
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0365308   -0.0086011    0.0816627
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0110364   -0.0040927    0.0261656
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0026299   -0.0081910    0.0029311
9-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                 0.0150207   -0.0355261    0.0655676
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0253803   -0.0192311    0.0699917
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0011648   -0.0150065    0.0126769
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0000253   -0.0069154    0.0069660
12-15 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0919275   -0.1583387   -0.0255163
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0089993   -0.0580725    0.0400740
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0082546   -0.0081733    0.0246825
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0020764   -0.0154975    0.0113446
15-18 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0440850   -0.1234875    0.0353175
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0380814   -0.0257423    0.1019052
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0090525   -0.0075701    0.0256751
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0027116   -0.0068453    0.0122685
18-21 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0965155    0.0163734    0.1766577
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0204792   -0.0680663    0.0271078
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0031940   -0.0200798    0.0136917
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0044805   -0.0049368    0.0138977
21-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0071362   -0.1099134    0.0956410
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0009427   -0.0521497    0.0540350
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0104143   -0.0085532    0.0293817
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0057995   -0.0172924    0.0056933
