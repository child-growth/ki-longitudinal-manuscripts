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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        predexfd6    n_cell      n
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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 6      6
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      6
0-3 months     ki1000108-IRC              INDIA                          1                 0     14
0-3 months     ki1000108-IRC              INDIA                          0                14     14
0-3 months     ki1000109-EE               PAKISTAN                       1                33     37
0-3 months     ki1000109-EE               PAKISTAN                       0                 4     37
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               104    114
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                10    114
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               159    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               481    640
0-3 months     ki1101329-Keneba           GAMBIA                         1               391   1207
0-3 months     ki1101329-Keneba           GAMBIA                         0               816   1207
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
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                16     16
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0     16
3-6 months     ki1000108-IRC              INDIA                          1                 0     14
3-6 months     ki1000108-IRC              INDIA                          0                14     14
3-6 months     ki1000109-EE               PAKISTAN                       1                34     38
3-6 months     ki1000109-EE               PAKISTAN                       0                 4     38
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                90    100
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                10    100
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               139    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               459    598
3-6 months     ki1101329-Keneba           GAMBIA                         1               377   1331
3-6 months     ki1101329-Keneba           GAMBIA                         0               954   1331
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
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                18     18
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0     18
6-9 months     ki1000108-IRC              INDIA                          1                 0     14
6-9 months     ki1000108-IRC              INDIA                          0                14     14
6-9 months     ki1000109-EE               PAKISTAN                       1                40     45
6-9 months     ki1000109-EE               PAKISTAN                       0                 5     45
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                82     90
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                 8     90
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     32
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                32     32
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               126    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               439    565
6-9 months     ki1101329-Keneba           GAMBIA                         1               242    815
6-9 months     ki1101329-Keneba           GAMBIA                         0               573    815
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
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                17     17
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0     17
9-12 months    ki1000108-IRC              INDIA                          1                 0     14
9-12 months    ki1000108-IRC              INDIA                          0                14     14
9-12 months    ki1000109-EE               PAKISTAN                       1                39     44
9-12 months    ki1000109-EE               PAKISTAN                       0                 5     44
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                93     99
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                 6     99
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     36
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                36     36
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               131    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               435    566
9-12 months    ki1101329-Keneba           GAMBIA                         1               254    793
9-12 months    ki1101329-Keneba           GAMBIA                         0               539    793
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
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                17     17
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0     17
12-15 months   ki1000108-IRC              INDIA                          1                 0     14
12-15 months   ki1000108-IRC              INDIA                          0                14     14
12-15 months   ki1000109-EE               PAKISTAN                       1                32     37
12-15 months   ki1000109-EE               PAKISTAN                       0                 5     37
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                92     96
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                 4     96
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     35
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                35     35
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               126    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               406    532
12-15 months   ki1101329-Keneba           GAMBIA                         1               410   1236
12-15 months   ki1101329-Keneba           GAMBIA                         0               826   1236
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
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                14     14
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0     14
15-18 months   ki1000108-IRC              INDIA                          1                 0     14
15-18 months   ki1000108-IRC              INDIA                          0                14     14
15-18 months   ki1000109-EE               PAKISTAN                       1                28     33
15-18 months   ki1000109-EE               PAKISTAN                       0                 5     33
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                82     87
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                 5     87
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     32
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                32     32
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1               129    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               399    528
15-18 months   ki1101329-Keneba           GAMBIA                         1               431   1249
15-18 months   ki1101329-Keneba           GAMBIA                         0               818   1249
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
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                12     12
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0     12
18-21 months   ki1000108-IRC              INDIA                          1                 0     12
18-21 months   ki1000108-IRC              INDIA                          0                12     12
18-21 months   ki1000109-EE               PAKISTAN                       1                28     33
18-21 months   ki1000109-EE               PAKISTAN                       0                 5     33
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               126    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               415    541
18-21 months   ki1101329-Keneba           GAMBIA                         1               421   1233
18-21 months   ki1101329-Keneba           GAMBIA                         0               812   1233
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
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                15     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0     15
21-24 months   ki1000108-IRC              INDIA                          1                 0     12
21-24 months   ki1000108-IRC              INDIA                          0                12     12
21-24 months   ki1000109-EE               PAKISTAN                       1                16     18
21-24 months   ki1000109-EE               PAKISTAN                       0                 2     18
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               111    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               360    471
21-24 months   ki1101329-Keneba           GAMBIA                         1               373   1123
21-24 months   ki1101329-Keneba           GAMBIA                         0               750   1123
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
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/863abd5f-1b49-4d11-adce-29729223b121/30098917-5187-488d-bd4c-b664a947d749/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/863abd5f-1b49-4d11-adce-29729223b121/30098917-5187-488d-bd4c-b664a947d749/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/863abd5f-1b49-4d11-adce-29729223b121/30098917-5187-488d-bd4c-b664a947d749/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1131412   -0.1702073   -0.0560751
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1215017   -0.1657384   -0.0772650
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2823088    0.1137025    0.4509152
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.1243016    0.0638335    0.1847696
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.1519059   -0.3354979    0.0316861
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0618553   -0.1121399   -0.0115708
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1038581   -0.2050036   -0.0027127
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0680400    0.0188800    0.1172000
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.2320113   -0.2905818   -0.1734407
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                -0.2728250   -0.3139776   -0.2316725
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.1324142   -0.2082792   -0.0565492
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1447300   -0.4423443    0.1528842
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.1840111   -0.2158075   -0.1522146
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.1893721   -0.2099562   -0.1687879
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.2819944   -0.3245682   -0.2394206
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.2864323   -0.3168345   -0.2560300
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0266193   -0.0555083    0.0022697
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0468944   -0.1000574    0.0062686
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0519741    0.0424029    0.0615453
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0664319    0.0489169    0.0839469
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.2372989   -0.2925925   -0.1820053
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.2370355   -0.3426502   -0.1314208
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0146307   -0.0573361    0.0280748
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0296908   -0.0585814   -0.0008003
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0559017   -0.0431717    0.1549751
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0603742    0.0210929    0.0996556
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0390217   -0.1372314    0.0591880
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0403537   -0.0722876   -0.0084197
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0285846   -0.1253420    0.0681728
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0215975   -0.0501274    0.0069324
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0364983   -0.0194201    0.0924167
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                 0.0214196   -0.0163290    0.0591681
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0887063   -0.1385125   -0.0389001
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0024125   -0.2942387    0.2894138
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0004888   -0.0316178    0.0306403
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0349796   -0.0533629   -0.0165963
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0223713   -0.0559272    0.0111846
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.0154357   -0.0383759    0.0075046
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.1518837   -0.1733340   -0.1304334
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1882966   -0.2262022   -0.1503911
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0017662   -0.0113303    0.0077979
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0034055   -0.0198417    0.0130307
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0213284   -0.0537907    0.0111339
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0065021   -0.0748701    0.0618658
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0714598   -0.0998456   -0.0430739
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0657567   -0.0881554   -0.0433579
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0575199   -0.0748782    0.1899180
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0004203   -0.0333628    0.0342033
6-9 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0661166   -0.1267609   -0.0054723
6-9 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0690484   -0.0933208   -0.0447760
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0988613   -0.1726956   -0.0250271
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0332815   -0.0532520   -0.0133109
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0348312   -0.0769671    0.0073047
6-9 months     ki0047075b-MAL-ED         PERU         0                    NA                -0.0329008   -0.0622458   -0.0035558
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                -0.1102361   -0.1665884   -0.0538838
6-9 months     ki1000109-EE              PAKISTAN     0                    NA                -0.0939376   -0.1833491   -0.0045262
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0402525   -0.0523946   -0.0281105
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1325513   -0.3440954    0.0789927
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0759688   -0.0984780   -0.0534596
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0572525   -0.0695938   -0.0449112
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                 0.0167135   -0.0290548    0.0624819
6-9 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.0256767   -0.0529377    0.0015843
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0452730   -0.0632001   -0.0273460
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0456269   -0.0912016   -0.0000522
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                 0.0130077   -0.0680361    0.0940515
6-9 months     ki1148112-LCNI-5          MALAWI       0                    NA                 0.0089411   -0.0193006    0.0371829
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0484951   -0.0667509   -0.0302393
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0183475   -0.0565542    0.0198592
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1062843   -0.1319988   -0.0805698
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0801580   -0.1008659   -0.0594501
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0397607   -0.1173064    0.0377850
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0162645   -0.0171375    0.0496665
9-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.1077682   -0.1941035   -0.0214329
9-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.0898393   -0.1065674   -0.0731113
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1072671   -0.1496551   -0.0648791
9-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0610307   -0.0792184   -0.0428430
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0436835   -0.0783258   -0.0090413
9-12 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0409842   -0.0682180   -0.0137504
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                -0.1276355   -0.1664421   -0.0888290
9-12 months    ki1000109-EE              PAKISTAN     0                    NA                -0.1346832   -0.2415573   -0.0278091
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.1111409   -0.1554594   -0.0668225
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0775774   -0.1546060   -0.0005488
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0758814   -0.0984783   -0.0532844
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0591820   -0.0717081   -0.0466558
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1065497   -0.1362283   -0.0768711
9-12 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0972454   -0.1194881   -0.0750027
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0837879   -0.0980696   -0.0695061
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0664367   -0.1029354   -0.0299380
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0518243   -0.1272823    0.0236337
9-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                -0.1295742   -0.2051770   -0.0539714
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0622033   -0.0793719   -0.0450347
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0600076   -0.0893983   -0.0306170
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0649699   -0.0877868   -0.0421530
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0478548   -0.0691879   -0.0265216
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0115211   -0.0667269    0.0436846
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0015850   -0.0262725    0.0231025
12-15 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0536269   -0.1085062    0.0012524
12-15 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.0565942   -0.0729991   -0.0401893
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0323692   -0.1026640    0.0379256
12-15 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0594592   -0.0756374   -0.0432809
12-15 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0744950   -0.1016814   -0.0473085
12-15 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0605646   -0.0837515   -0.0373778
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0016762   -0.0345630    0.0312106
12-15 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0416377   -0.0932971    0.1765724
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0387550   -0.0565277   -0.0209822
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0415798   -0.0536015   -0.0295580
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0487094   -0.0675967   -0.0298222
12-15 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0519696   -0.0675174   -0.0364217
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0695947   -0.0802935   -0.0588959
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0712629   -0.0926345   -0.0498914
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0454056   -0.0594000   -0.0314112
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0362455   -0.0763720    0.0038811
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0477710   -0.0688450   -0.0266970
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0458440   -0.0638987   -0.0277893
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0279859   -0.0822351    0.0262634
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0189478   -0.0418226    0.0039271
15-18 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0417640   -0.0837963    0.0002683
15-18 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.0365443   -0.0501771   -0.0229116
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0274040   -0.0731258    0.0183177
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0556530   -0.0718037   -0.0395024
15-18 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0433737   -0.0676507   -0.0190967
15-18 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0320798   -0.0519894   -0.0121702
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0239930   -0.0525465    0.0045604
15-18 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0267957   -0.0572607    0.0036694
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0083343   -0.0592672    0.0425986
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0784348   -0.2330420    0.0761724
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0487774   -0.0669209   -0.0306340
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0340441   -0.0439931   -0.0240951
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0265629   -0.0486076   -0.0045181
15-18 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0320819   -0.0462659   -0.0178980
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0590986   -0.0736194   -0.0445779
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0890620   -0.1053446   -0.0727794
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0410779   -0.0549886   -0.0271672
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0402653   -0.0635534   -0.0169772
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0208080   -0.0390792   -0.0025367
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0094894   -0.0249317    0.0059529
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0617566   -0.1091788   -0.0143344
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0130706   -0.0405380    0.0143967
18-21 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0253515   -0.0756878    0.0249847
18-21 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0072190   -0.0046988    0.0191367
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0694926   -0.1109098   -0.0280753
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0283136   -0.0419708   -0.0146564
18-21 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0122435   -0.0390433    0.0145564
18-21 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0059243   -0.0244105    0.0125619
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0093635   -0.0349812    0.0162542
18-21 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0265882   -0.0706485    0.0174721
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0232495   -0.0403659   -0.0061330
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0072025   -0.0164519    0.0020469
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0190282   -0.0408678    0.0028115
18-21 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0242453   -0.0392498   -0.0092407
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0135341   -0.0015118    0.0285800
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0260886    0.0097671    0.0424101
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0578036   -0.1993216    0.0837143
18-21 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0007623   -0.0262457    0.0277704
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0245473    0.0027988    0.0462959
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0262428    0.0112899    0.0411958
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0201819   -0.0136609    0.0540246
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0158272   -0.0020340    0.0336885
21-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0379354    0.0017914    0.0740794
21-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0304661    0.0187109    0.0422213
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0386932   -0.0213782    0.0987645
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0042451   -0.0100986    0.0185888
21-24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0478931    0.0203517    0.0754344
21-24 months   ki0047075b-MAL-ED         PERU         0                    NA                 0.0616240    0.0433167    0.0799313
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0397270    0.0219505    0.0575034
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0482406    0.0383531    0.0581281
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0074332   -0.0138170    0.0286835
21-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0204036    0.0065104    0.0342967
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0452387    0.0284395    0.0620378
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0508222    0.0112917    0.0903527
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0119023   -0.0556287    0.0318242
21-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0115650   -0.0365774    0.0134475


### Parameter: E(Y)


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.1184816   -0.1534627   -0.0835006
0-3 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.1446583    0.0870976    0.2022191
0-3 months     ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0661691   -0.1149338   -0.0174045
0-3 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.0549995    0.0083296    0.1016694
0-3 months     ki0047075b-MAL-ED         PERU         NA                   NA                -0.2591669   -0.2929238   -0.2254100
0-3 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.1334945   -0.2172486   -0.0497405
0-3 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1101329-Keneba          GAMBIA       NA                   NA                -0.2849946   -0.3097468   -0.2602425
0-3 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0320017   -0.0574984   -0.0065051
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                 0.0551864    0.0461861    0.0641867
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.2372614   -0.2869744   -0.1875485
3-6 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0242637   -0.0483310   -0.0001965
3-6 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0402849   -0.0709914   -0.0095783
3-6 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0219437   -0.0494813    0.0055938
3-6 months     ki0047075b-MAL-ED         PERU         NA                   NA                 0.0265214   -0.0048238    0.0578666
3-6 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0800769   -0.0985661   -0.0615877
3-6 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1101329-Keneba          GAMBIA       NA                   NA                -0.0174002   -0.0363928    0.0015925
3-6 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.1617717   -0.1805409   -0.1430025
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.0021434   -0.0106005    0.0063136
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0191699   -0.0487030    0.0103631
6-9 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0677541   -0.0853832   -0.0501249
6-9 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0688970   -0.0921281   -0.0456658
6-9 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0368585   -0.0562650   -0.0174521
6-9 months     ki0047075b-MAL-ED         PERU         NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki1000109-EE              PAKISTAN     NA                   NA                -0.1084252   -0.1595142   -0.0573361
6-9 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0484569   -0.0689491   -0.0279646
6-9 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1101329-Keneba          GAMBIA       NA                   NA                -0.0130897   -0.0366228    0.0104435
6-9 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0453626   -0.0630368   -0.0276885
6-9 months     ki1148112-LCNI-5          MALAWI       NA                   NA                 0.0095862   -0.0174314    0.0366037
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0424656   -0.0591584   -0.0257728
9-12 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0895925   -0.1058429   -0.0733421
9-12 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0907785   -0.1072717   -0.0742853
9-12 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0633531   -0.0808095   -0.0458966
9-12 months    ki0047075b-MAL-ED         PERU         NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki1000109-EE              PAKISTAN     NA                   NA                -0.1284364   -0.1649203   -0.0919525
9-12 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.1091068   -0.1533842   -0.0648294
9-12 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.1002256   -0.1180868   -0.0823644
9-12 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0795850   -0.0935763   -0.0655937
9-12 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -0.1052774   -0.1637460   -0.0468087
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0617549   -0.0766124   -0.0468973
12-15 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0539793   -0.0699671   -0.0379916
12-15 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0564380   -0.0722459   -0.0406302
12-15 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0581047   -0.0738902   -0.0423192
12-15 months   ki0047075b-MAL-ED         PERU         NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki1000109-EE              PAKISTAN     NA                   NA                 0.0041770   -0.0299533    0.0383073
12-15 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.0508881   -0.0630216   -0.0387547
12-15 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0700044   -0.0796323   -0.0603764
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0435980   -0.0575648   -0.0296311
15-18 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0465524   -0.0603507   -0.0327542
15-18 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0368191   -0.0499234   -0.0237147
15-18 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0540981   -0.0695896   -0.0386065
15-18 months   ki0047075b-MAL-ED         PERU         NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki1000109-EE              PAKISTAN     NA                   NA                -0.0244177   -0.0490831    0.0002477
15-18 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0123631   -0.0561195    0.0313934
15-18 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.0301774   -0.0421851   -0.0181698
15-18 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0665082   -0.0782160   -0.0548005
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0409126   -0.0532632   -0.0285621
18-21 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0136918   -0.0255600   -0.0018237
18-21 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED         INDIA        NA                   NA                 0.0056606   -0.0059781    0.0172993
18-21 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0305803   -0.0437450   -0.0174157
18-21 months   ki0047075b-MAL-ED         PERU         NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki1000109-EE              PAKISTAN     NA                   NA                -0.0119733   -0.0348121    0.0108655
18-21 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.0224639   -0.0348440   -0.0100838
18-21 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                 0.0165107    0.0043866    0.0286347
18-21 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0092283   -0.0423286    0.0238719
21-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                 0.0256240    0.0132472    0.0380008
21-24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                 0.0308252    0.0194990    0.0421515
21-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.0061413   -0.0078495    0.0201321
21-24 months   ki0047075b-MAL-ED         PERU         NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                 0.0160955    0.0044320    0.0277591
21-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                 0.0465624    0.0306829    0.0624420
21-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0116248   -0.0336145    0.0103649


### Parameter: ATE


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0083605   -0.0805645    0.0638436
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1580073   -0.3371287    0.0211141
0-3 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        0                    1                  0.0900506   -0.1003032    0.2804044
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.1718981    0.0594388    0.2843575
0-3 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.0408138   -0.1123962    0.0307687
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0123158   -0.2878387    0.2632071
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0053610   -0.0432388    0.0325167
0-3 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0044379   -0.0567525    0.0478768
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0202751   -0.0807803    0.0402301
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0144578   -0.0039212    0.0328367
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0002634   -0.1190837    0.1196105
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0150602   -0.0666200    0.0364997
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0044725   -0.1021040    0.1110491
3-6 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        0                    1                 -0.0013320   -0.1046030    0.1019391
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.0069871   -0.0938888    0.1078630
3-6 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.0150788   -0.0825460    0.0523884
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.0862938   -0.2508984    0.4234861
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0344908   -0.0706428    0.0016611
3-6 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       0                    1                  0.0069357   -0.0337122    0.0475835
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0364130   -0.0799669    0.0071410
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0016392   -0.0202015    0.0169230
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0148263   -0.0605003    0.0901528
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0057031   -0.0304557    0.0418619
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0570996   -0.1937398    0.0795406
6-9 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA        0                    1                 -0.0029317   -0.0682531    0.0623896
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.0655798   -0.0109075    0.1420672
6-9 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU         0                    1                  0.0019304   -0.0494171    0.0532779
6-9 months     ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN     0                    1                  0.0162985   -0.0893897    0.1219867
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0922988   -0.3023453    0.1177478
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0187163   -0.0069541    0.0443868
6-9 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0423902   -0.0956623    0.0108818
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0003539   -0.0493277    0.0486199
6-9 months     ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5          MALAWI       0                    1                 -0.0040666   -0.0898902    0.0817570
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0301476   -0.0118721    0.0721672
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0261264   -0.0068896    0.0591423
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0560252   -0.0284083    0.1404587
9-12 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA        0                    1                  0.0179289   -0.0700121    0.1058698
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.0462364    0.0001112    0.0923616
9-12 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU         0                    1                  0.0026994   -0.0413661    0.0467648
9-12 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN     0                    1                 -0.0070477   -0.1207491    0.1066537
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.0335635   -0.0115991    0.0787262
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0166994   -0.0091371    0.0425359
9-12 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA       0                    1                  0.0093042   -0.0277842    0.0463927
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0173512   -0.0218422    0.0565446
9-12 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.0777499   -0.1845661    0.0290663
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0021956   -0.0320319    0.0364232
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0171152   -0.0141213    0.0483516
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0099361   -0.0505382    0.0704105
12-15 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA        0                    1                 -0.0029673   -0.0602461    0.0543114
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0270900   -0.0992224    0.0450425
12-15 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0139303   -0.0218011    0.0496617
12-15 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN     0                    1                  0.0433139   -0.0955707    0.1821984
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0028248   -0.0242816    0.0186320
12-15 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0032601   -0.0277237    0.0212034
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0016682   -0.0255682    0.0222317
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0091601   -0.0329202    0.0512404
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0019270   -0.0258234    0.0296774
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0090381   -0.0498367    0.0679129
15-18 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.0052197   -0.0389682    0.0494075
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0282490   -0.0767395    0.0202414
15-18 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0112939   -0.0201030    0.0426909
15-18 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN     0                    1                 -0.0028026   -0.0445569    0.0389516
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0701005   -0.2675871    0.1273861
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0147333   -0.0059589    0.0354255
15-18 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0055191   -0.0317328    0.0206946
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0299634   -0.0517802   -0.0081465
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0008126   -0.0254615    0.0270868
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0113186   -0.0126043    0.0352414
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0486859   -0.0061166    0.1034885
18-21 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.0325705   -0.0191574    0.0842983
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.0411790   -0.0024319    0.0847898
18-21 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0063192   -0.0262381    0.0388764
18-21 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN     0                    1                 -0.0172247   -0.0681912    0.0337417
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0160469   -0.0034088    0.0355026
18-21 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0052171   -0.0317144    0.0212802
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0125545   -0.0096440    0.0347529
18-21 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0585660   -0.0855061    0.2026380
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0016955   -0.0246975    0.0280885
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0043546   -0.0426215    0.0339123
21-24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 -0.0074693   -0.0454768    0.0305382
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0344481   -0.0962081    0.0273120
21-24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0137309   -0.0193399    0.0468018
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0085136   -0.0118276    0.0288548
21-24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0129703   -0.0124185    0.0383592
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0055835   -0.0373685    0.0485355
21-24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0003373   -0.0500376    0.0507121


### Parameter: PAR


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0053404   -0.0514649    0.0407841
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.1376505   -0.2939077    0.0186067
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                 0.0857368   -0.0955219    0.2669954
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1588576    0.0546641    0.2630511
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0271556   -0.0748424    0.0205311
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0010803   -0.0255707    0.0234100
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0040291   -0.0324972    0.0244389
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0030003   -0.0383681    0.0323676
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0053824   -0.0214638    0.0106990
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0032123   -0.0008644    0.0072890
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0000374   -0.0169312    0.0170061
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0096331   -0.0426266    0.0233604
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0038274   -0.0873777    0.0950326
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0012632   -0.0992010    0.0966747
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0066409   -0.0892369    0.1025187
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0099769   -0.0546251    0.0346713
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0086294   -0.0278325    0.0450912
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0264737   -0.0542470    0.0012996
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                 0.0049712   -0.0241639    0.0341062
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0098880   -0.0218068    0.0020308
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0003772   -0.0046460    0.0038916
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0021585   -0.0087261    0.0130431
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0037057   -0.0197920    0.0272034
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0487365   -0.1653979    0.0679248
6-9 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0027803   -0.0647284    0.0591677
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0620028   -0.0103395    0.1343450
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0012528   -0.0320709    0.0345765
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                 0.0018109   -0.0100293    0.0136512
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0082043   -0.0263761    0.0099674
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0145424   -0.0054137    0.0344985
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0298032   -0.0672806    0.0076742
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0000896   -0.0124880    0.0123088
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                -0.0034215   -0.0756321    0.0687891
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0060295   -0.0025537    0.0146127
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0166918   -0.0044683    0.0378520
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0479391   -0.0243615    0.1202397
9-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.0169897   -0.0663466    0.1003260
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0439140    0.0000851    0.0877430
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.0017575   -0.0269325    0.0304474
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                -0.0008009   -0.0137388    0.0121370
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0020342   -0.0009772    0.0050455
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0128343   -0.0070308    0.0326995
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0063241   -0.0188867    0.0315348
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0042029   -0.0053155    0.0137212
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0534531   -0.1279769    0.0210708
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0004484   -0.0065319    0.0074287
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0109906   -0.0090998    0.0310810
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0084781   -0.0431248    0.0600810
12-15 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0028111   -0.0570753    0.0514530
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0257355   -0.0942658    0.0427948
12-15 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0091418   -0.0143230    0.0326066
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0058532   -0.0135283    0.0252347
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0021558   -0.0185310    0.0142195
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0021787   -0.0185275    0.0141701
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0004097   -0.0062793    0.0054599
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0018076   -0.0065420    0.0101572
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0012185   -0.0163300    0.0187671
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0076436   -0.0421500    0.0574373
15-18 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0049449   -0.0369175    0.0468074
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0266940   -0.0725233    0.0191352
15-18 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0073172   -0.0130374    0.0276718
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0004246   -0.0067606    0.0059113
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0040288   -0.0156034    0.0075458
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0111337   -0.0045124    0.0267798
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0036146   -0.0207832    0.0135540
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0074096   -0.0129325   -0.0018867
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0001653   -0.0051720    0.0055025
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0071161   -0.0079435    0.0221757
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0413976   -0.0052758    0.0880711
18-21 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0310121   -0.0182498    0.0802740
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0389122   -0.0023170    0.0801414
18-21 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0041293   -0.0171497    0.0254084
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0026098   -0.0106230    0.0054034
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0123096   -0.0026258    0.0272449
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0034358   -0.0208863    0.0140147
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0029765   -0.0023109    0.0082640
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0485753   -0.0709659    0.1681165
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0010766   -0.0156833    0.0178366
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0036948   -0.0361646    0.0287749
21-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0071102   -0.0432911    0.0290707
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0325519   -0.0909216    0.0258179
21-24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0090813   -0.0128107    0.0309733
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0065072   -0.0090436    0.0220581
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0086623   -0.0082975    0.0256221
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0013237   -0.0088626    0.0115101
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0002775   -0.0411657    0.0417206
