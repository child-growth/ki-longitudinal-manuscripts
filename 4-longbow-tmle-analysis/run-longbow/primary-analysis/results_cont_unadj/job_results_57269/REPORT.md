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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        predexfd6    n_cell      n
-------------  ---------------  -----------------------------  ----------  -------  -----
0-3 months     CMC-V-BCS-2002   INDIA                          1                 6      6
0-3 months     CMC-V-BCS-2002   INDIA                          0                 0      6
0-3 months     EE               PAKISTAN                       1                33     37
0-3 months     EE               PAKISTAN                       0                 4     37
0-3 months     GMS-Nepal        NEPAL                          1               368    501
0-3 months     GMS-Nepal        NEPAL                          0               133    501
0-3 months     IRC              INDIA                          1                 0     14
0-3 months     IRC              INDIA                          0                14     14
0-3 months     Keneba           GAMBIA                         1               391   1207
0-3 months     Keneba           GAMBIA                         0               816   1207
0-3 months     MAL-ED           BANGLADESH                     1                82    227
0-3 months     MAL-ED           BANGLADESH                     0               145    227
0-3 months     MAL-ED           BRAZIL                         1                21    163
0-3 months     MAL-ED           BRAZIL                         0               142    163
0-3 months     MAL-ED           INDIA                          1                 8    167
0-3 months     MAL-ED           INDIA                          0               159    167
0-3 months     MAL-ED           NEPAL                          1                11    145
0-3 months     MAL-ED           NEPAL                          0               134    145
0-3 months     MAL-ED           PERU                           1                85    254
0-3 months     MAL-ED           PERU                           0               169    254
0-3 months     MAL-ED           SOUTH AFRICA                   1                 2    186
0-3 months     MAL-ED           SOUTH AFRICA                   0               184    186
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    211
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               211    211
0-3 months     PROVIDE          BANGLADESH                     1               159    640
0-3 months     PROVIDE          BANGLADESH                     0               481    640
0-3 months     SAS-CompFeed     INDIA                          1               411    432
0-3 months     SAS-CompFeed     INDIA                          0                21    432
3-6 months     CMC-V-BCS-2002   INDIA                          1                16     16
3-6 months     CMC-V-BCS-2002   INDIA                          0                 0     16
3-6 months     EE               PAKISTAN                       1                34     38
3-6 months     EE               PAKISTAN                       0                 4     38
3-6 months     GMS-Nepal        NEPAL                          1               338    464
3-6 months     GMS-Nepal        NEPAL                          0               126    464
3-6 months     IRC              INDIA                          1                 0     14
3-6 months     IRC              INDIA                          0                14     14
3-6 months     Keneba           GAMBIA                         1               377   1331
3-6 months     Keneba           GAMBIA                         0               954   1331
3-6 months     MAL-ED           BANGLADESH                     1                80    222
3-6 months     MAL-ED           BANGLADESH                     0               142    222
3-6 months     MAL-ED           BRAZIL                         1                30    208
3-6 months     MAL-ED           BRAZIL                         0               178    208
3-6 months     MAL-ED           INDIA                          1                11    213
3-6 months     MAL-ED           INDIA                          0               202    213
3-6 months     MAL-ED           NEPAL                          1                11    222
3-6 months     MAL-ED           NEPAL                          0               211    222
3-6 months     MAL-ED           PERU                           1                90    266
3-6 months     MAL-ED           PERU                           0               176    266
3-6 months     MAL-ED           SOUTH AFRICA                   1                 3    222
3-6 months     MAL-ED           SOUTH AFRICA                   0               219    222
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1    225
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               224    225
3-6 months     PROVIDE          BANGLADESH                     1               139    598
3-6 months     PROVIDE          BANGLADESH                     0               459    598
3-6 months     SAS-CompFeed     INDIA                          1               361    379
3-6 months     SAS-CompFeed     INDIA                          0                18    379
6-9 months     CMC-V-BCS-2002   INDIA                          1                18     18
6-9 months     CMC-V-BCS-2002   INDIA                          0                 0     18
6-9 months     EE               PAKISTAN                       1                40     45
6-9 months     EE               PAKISTAN                       0                 5     45
6-9 months     GMS-Nepal        NEPAL                          1               354    474
6-9 months     GMS-Nepal        NEPAL                          0               120    474
6-9 months     IRC              INDIA                          1                 0     14
6-9 months     IRC              INDIA                          0                14     14
6-9 months     Keneba           GAMBIA                         1               242    815
6-9 months     Keneba           GAMBIA                         0               573    815
6-9 months     LCNI-5           MALAWI                         1                23    145
6-9 months     LCNI-5           MALAWI                         0               122    145
6-9 months     MAL-ED           BANGLADESH                     1                76    217
6-9 months     MAL-ED           BANGLADESH                     0               141    217
6-9 months     MAL-ED           BRAZIL                         1                29    198
6-9 months     MAL-ED           BRAZIL                         0               169    198
6-9 months     MAL-ED           INDIA                          1                11    213
6-9 months     MAL-ED           INDIA                          0               202    213
6-9 months     MAL-ED           NEPAL                          1                12    220
6-9 months     MAL-ED           NEPAL                          0               208    220
6-9 months     MAL-ED           PERU                           1                86    245
6-9 months     MAL-ED           PERU                           0               159    245
6-9 months     MAL-ED           SOUTH AFRICA                   1                 3    210
6-9 months     MAL-ED           SOUTH AFRICA                   0               207    210
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1    214
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               213    214
6-9 months     PROVIDE          BANGLADESH                     1               126    565
6-9 months     PROVIDE          BANGLADESH                     0               439    565
6-9 months     SAS-CompFeed     INDIA                          1               326    341
6-9 months     SAS-CompFeed     INDIA                          0                15    341
6-9 months     SAS-FoodSuppl    INDIA                          1                 0    142
6-9 months     SAS-FoodSuppl    INDIA                          0               142    142
9-12 months    CMC-V-BCS-2002   INDIA                          1                17     17
9-12 months    CMC-V-BCS-2002   INDIA                          0                 0     17
9-12 months    EE               PAKISTAN                       1                39     44
9-12 months    EE               PAKISTAN                       0                 5     44
9-12 months    GMS-Nepal        NEPAL                          1               341    450
9-12 months    GMS-Nepal        NEPAL                          0               109    450
9-12 months    IRC              INDIA                          1                 0     14
9-12 months    IRC              INDIA                          0                14     14
9-12 months    Keneba           GAMBIA                         1               254    793
9-12 months    Keneba           GAMBIA                         0               539    793
9-12 months    LCNI-5           MALAWI                         1                10     32
9-12 months    LCNI-5           MALAWI                         0                22     32
9-12 months    MAL-ED           BANGLADESH                     1                78    216
9-12 months    MAL-ED           BANGLADESH                     0               138    216
9-12 months    MAL-ED           BRAZIL                         1                28    194
9-12 months    MAL-ED           BRAZIL                         0               166    194
9-12 months    MAL-ED           INDIA                          1                11    210
9-12 months    MAL-ED           INDIA                          0               199    210
9-12 months    MAL-ED           NEPAL                          1                11    219
9-12 months    MAL-ED           NEPAL                          0               208    219
9-12 months    MAL-ED           PERU                           1                82    235
9-12 months    MAL-ED           PERU                           0               153    235
9-12 months    MAL-ED           SOUTH AFRICA                   1                 3    212
9-12 months    MAL-ED           SOUTH AFRICA                   0               209    212
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1    213
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               212    213
9-12 months    PROVIDE          BANGLADESH                     1               131    566
9-12 months    PROVIDE          BANGLADESH                     0               435    566
9-12 months    SAS-CompFeed     INDIA                          1               348    361
9-12 months    SAS-CompFeed     INDIA                          0                13    361
9-12 months    SAS-FoodSuppl    INDIA                          1                 0    144
9-12 months    SAS-FoodSuppl    INDIA                          0               144    144
12-15 months   CMC-V-BCS-2002   INDIA                          1                17     17
12-15 months   CMC-V-BCS-2002   INDIA                          0                 0     17
12-15 months   EE               PAKISTAN                       1                32     37
12-15 months   EE               PAKISTAN                       0                 5     37
12-15 months   GMS-Nepal        NEPAL                          1               341    452
12-15 months   GMS-Nepal        NEPAL                          0               111    452
12-15 months   IRC              INDIA                          1                 0     14
12-15 months   IRC              INDIA                          0                14     14
12-15 months   Keneba           GAMBIA                         1               410   1236
12-15 months   Keneba           GAMBIA                         0               826   1236
12-15 months   LCNI-5           MALAWI                         1                 0      1
12-15 months   LCNI-5           MALAWI                         0                 1      1
12-15 months   MAL-ED           BANGLADESH                     1                73    204
12-15 months   MAL-ED           BANGLADESH                     0               131    204
12-15 months   MAL-ED           BRAZIL                         1                27    184
12-15 months   MAL-ED           BRAZIL                         0               157    184
12-15 months   MAL-ED           INDIA                          1                11    209
12-15 months   MAL-ED           INDIA                          0               198    209
12-15 months   MAL-ED           NEPAL                          1                11    220
12-15 months   MAL-ED           NEPAL                          0               209    220
12-15 months   MAL-ED           PERU                           1                77    224
12-15 months   MAL-ED           PERU                           0               147    224
12-15 months   MAL-ED           SOUTH AFRICA                   1                 3    209
12-15 months   MAL-ED           SOUTH AFRICA                   0               206    209
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1    214
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               213    214
12-15 months   PROVIDE          BANGLADESH                     1               126    532
12-15 months   PROVIDE          BANGLADESH                     0               406    532
12-15 months   SAS-CompFeed     INDIA                          1               346    357
12-15 months   SAS-CompFeed     INDIA                          0                11    357
12-15 months   SAS-FoodSuppl    INDIA                          1                 0    137
12-15 months   SAS-FoodSuppl    INDIA                          0               137    137
15-18 months   CMC-V-BCS-2002   INDIA                          1                14     14
15-18 months   CMC-V-BCS-2002   INDIA                          0                 0     14
15-18 months   EE               PAKISTAN                       1                28     33
15-18 months   EE               PAKISTAN                       0                 5     33
15-18 months   GMS-Nepal        NEPAL                          1               347    461
15-18 months   GMS-Nepal        NEPAL                          0               114    461
15-18 months   IRC              INDIA                          1                 0     14
15-18 months   IRC              INDIA                          0                14     14
15-18 months   Keneba           GAMBIA                         1               431   1249
15-18 months   Keneba           GAMBIA                         0               818   1249
15-18 months   LCNI-5           MALAWI                         1                 0      4
15-18 months   LCNI-5           MALAWI                         0                 4      4
15-18 months   MAL-ED           BANGLADESH                     1                75    204
15-18 months   MAL-ED           BANGLADESH                     0               129    204
15-18 months   MAL-ED           BRAZIL                         1                27    175
15-18 months   MAL-ED           BRAZIL                         0               148    175
15-18 months   MAL-ED           INDIA                          1                11    209
15-18 months   MAL-ED           INDIA                          0               198    209
15-18 months   MAL-ED           NEPAL                          1                12    218
15-18 months   MAL-ED           NEPAL                          0               206    218
15-18 months   MAL-ED           PERU                           1                75    213
15-18 months   MAL-ED           PERU                           0               138    213
15-18 months   MAL-ED           SOUTH AFRICA                   1                 3    206
15-18 months   MAL-ED           SOUTH AFRICA                   0               203    206
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1    205
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               204    205
15-18 months   PROVIDE          BANGLADESH                     1               129    528
15-18 months   PROVIDE          BANGLADESH                     0               399    528
15-18 months   SAS-CompFeed     INDIA                          1               338    350
15-18 months   SAS-CompFeed     INDIA                          0                12    350
15-18 months   SAS-FoodSuppl    INDIA                          1                 0    129
15-18 months   SAS-FoodSuppl    INDIA                          0               129    129
18-21 months   CMC-V-BCS-2002   INDIA                          1                12     12
18-21 months   CMC-V-BCS-2002   INDIA                          0                 0     12
18-21 months   EE               PAKISTAN                       1                28     33
18-21 months   EE               PAKISTAN                       0                 5     33
18-21 months   GMS-Nepal        NEPAL                          1               325    426
18-21 months   GMS-Nepal        NEPAL                          0               101    426
18-21 months   IRC              INDIA                          1                 0     12
18-21 months   IRC              INDIA                          0                12     12
18-21 months   Keneba           GAMBIA                         1               421   1233
18-21 months   Keneba           GAMBIA                         0               812   1233
18-21 months   LCNI-5           MALAWI                         1                29    170
18-21 months   LCNI-5           MALAWI                         0               141    170
18-21 months   MAL-ED           BANGLADESH                     1                75    202
18-21 months   MAL-ED           BANGLADESH                     0               127    202
18-21 months   MAL-ED           BRAZIL                         1                25    167
18-21 months   MAL-ED           BRAZIL                         0               142    167
18-21 months   MAL-ED           INDIA                          1                10    209
18-21 months   MAL-ED           INDIA                          0               199    209
18-21 months   MAL-ED           NEPAL                          1                12    218
18-21 months   MAL-ED           NEPAL                          0               206    218
18-21 months   MAL-ED           PERU                           1                70    202
18-21 months   MAL-ED           PERU                           0               132    202
18-21 months   MAL-ED           SOUTH AFRICA                   1                 3    213
18-21 months   MAL-ED           SOUTH AFRICA                   0               210    213
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1    192
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               191    192
18-21 months   PROVIDE          BANGLADESH                     1               126    541
18-21 months   PROVIDE          BANGLADESH                     0               415    541
21-24 months   CMC-V-BCS-2002   INDIA                          1                15     15
21-24 months   CMC-V-BCS-2002   INDIA                          0                 0     15
21-24 months   EE               PAKISTAN                       1                16     18
21-24 months   EE               PAKISTAN                       0                 2     18
21-24 months   GMS-Nepal        NEPAL                          1               251    329
21-24 months   GMS-Nepal        NEPAL                          0                78    329
21-24 months   IRC              INDIA                          1                 0     12
21-24 months   IRC              INDIA                          0                12     12
21-24 months   Keneba           GAMBIA                         1               373   1123
21-24 months   Keneba           GAMBIA                         0               750   1123
21-24 months   LCNI-5           MALAWI                         1                25    141
21-24 months   LCNI-5           MALAWI                         0               116    141
21-24 months   MAL-ED           BANGLADESH                     1                73    200
21-24 months   MAL-ED           BANGLADESH                     0               127    200
21-24 months   MAL-ED           BRAZIL                         1                25    165
21-24 months   MAL-ED           BRAZIL                         0               140    165
21-24 months   MAL-ED           INDIA                          1                10    208
21-24 months   MAL-ED           INDIA                          0               198    208
21-24 months   MAL-ED           NEPAL                          1                12    218
21-24 months   MAL-ED           NEPAL                          0               206    218
21-24 months   MAL-ED           PERU                           1                64    189
21-24 months   MAL-ED           PERU                           0               125    189
21-24 months   MAL-ED           SOUTH AFRICA                   1                 3    214
21-24 months   MAL-ED           SOUTH AFRICA                   0               211    214
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1    192
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               191    192
21-24 months   PROVIDE          BANGLADESH                     1               111    471
21-24 months   PROVIDE          BANGLADESH                     0               360    471


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/9cf5d926-e19d-4b0e-99bc-67cebec14d20/77d6f45d-d6e4-445c-b4c9-fcf0a675f377/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9cf5d926-e19d-4b0e-99bc-67cebec14d20/77d6f45d-d6e4-445c-b4c9-fcf0a675f377/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9cf5d926-e19d-4b0e-99bc-67cebec14d20/77d6f45d-d6e4-445c-b4c9-fcf0a675f377/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                3.6064403   3.5477991   3.6650815
0-3 months     GMS-Nepal      NEPAL        0                    NA                3.5756322   3.4678493   3.6834151
0-3 months     Keneba         GAMBIA       1                    NA                3.1051027   3.0212438   3.1889616
0-3 months     Keneba         GAMBIA       0                    NA                3.1041545   3.0443502   3.1639588
0-3 months     MAL-ED         BANGLADESH   1                    NA                3.3440623   3.2340741   3.4540505
0-3 months     MAL-ED         BANGLADESH   0                    NA                3.3506179   3.2645710   3.4366648
0-3 months     MAL-ED         BRAZIL       1                    NA                4.0424700   3.7159947   4.3689454
0-3 months     MAL-ED         BRAZIL       0                    NA                3.7859938   3.6688214   3.9031661
0-3 months     MAL-ED         INDIA        1                    NA                3.1975488   2.8853961   3.5097015
0-3 months     MAL-ED         INDIA        0                    NA                3.3449364   3.2480037   3.4418691
0-3 months     MAL-ED         NEPAL        1                    NA                3.2830490   3.0630022   3.5030958
0-3 months     MAL-ED         NEPAL        0                    NA                3.6482868   3.5480591   3.7485146
0-3 months     MAL-ED         PERU         1                    NA                3.1128016   2.9994763   3.2261269
0-3 months     MAL-ED         PERU         0                    NA                3.0356176   2.9552623   3.1159730
0-3 months     PROVIDE        BANGLADESH   1                    NA                3.2564193   3.1899656   3.3228731
0-3 months     PROVIDE        BANGLADESH   0                    NA                3.2580981   3.2140352   3.3021610
0-3 months     SAS-CompFeed   INDIA        1                    NA                3.3690067   3.3102385   3.4277750
0-3 months     SAS-CompFeed   INDIA        0                    NA                3.0241617   2.8789993   3.1693241
3-6 months     GMS-Nepal      NEPAL        1                    NA                1.7290586   1.6831784   1.7749389
3-6 months     GMS-Nepal      NEPAL        0                    NA                1.6539447   1.5764764   1.7314129
3-6 months     Keneba         GAMBIA       1                    NA                1.9752466   1.9031953   2.0472978
3-6 months     Keneba         GAMBIA       0                    NA                2.0002572   1.9514258   2.0490886
3-6 months     MAL-ED         BANGLADESH   1                    NA                1.9428303   1.8513078   2.0343529
3-6 months     MAL-ED         BANGLADESH   0                    NA                1.9146387   1.8534672   1.9758102
3-6 months     MAL-ED         BRAZIL       1                    NA                2.1341399   1.9175663   2.3507135
3-6 months     MAL-ED         BRAZIL       0                    NA                2.1480942   2.0630343   2.2331541
3-6 months     MAL-ED         INDIA        1                    NA                1.8862283   1.6753246   2.0971320
3-6 months     MAL-ED         INDIA        0                    NA                1.8842258   1.8153495   1.9531021
3-6 months     MAL-ED         NEPAL        1                    NA                1.9254229   1.7115830   2.1392627
3-6 months     MAL-ED         NEPAL        0                    NA                1.9690406   1.9088507   2.0292305
3-6 months     MAL-ED         PERU         1                    NA                2.0353824   1.9176661   2.1530987
3-6 months     MAL-ED         PERU         0                    NA                2.0077550   1.9274824   2.0880277
3-6 months     PROVIDE        BANGLADESH   1                    NA                2.0110854   1.9450351   2.0771357
3-6 months     PROVIDE        BANGLADESH   0                    NA                1.9520154   1.9127545   1.9912763
3-6 months     SAS-CompFeed   INDIA        1                    NA                1.8960011   1.8158961   1.9761060
3-6 months     SAS-CompFeed   INDIA        0                    NA                2.0877888   1.7145949   2.4609828
6-9 months     EE             PAKISTAN     1                    NA                1.1144238   0.9844462   1.2444013
6-9 months     EE             PAKISTAN     0                    NA                1.2194058   1.0438676   1.3949439
6-9 months     GMS-Nepal      NEPAL        1                    NA                1.3151777   1.2738648   1.3564907
6-9 months     GMS-Nepal      NEPAL        0                    NA                1.3106437   1.2035353   1.4177521
6-9 months     Keneba         GAMBIA       1                    NA                1.4722797   1.3674533   1.5771062
6-9 months     Keneba         GAMBIA       0                    NA                1.3755786   1.3139647   1.4371925
6-9 months     LCNI-5         MALAWI       1                    NA                1.4504298   1.2732863   1.6275734
6-9 months     LCNI-5         MALAWI       0                    NA                1.4347776   1.3694403   1.5001149
6-9 months     MAL-ED         BANGLADESH   1                    NA                1.2475244   1.1806244   1.3144243
6-9 months     MAL-ED         BANGLADESH   0                    NA                1.2576894   1.2067011   1.3086776
6-9 months     MAL-ED         BRAZIL       1                    NA                1.6068102   1.2971026   1.9165178
6-9 months     MAL-ED         BRAZIL       0                    NA                1.4618903   1.3844882   1.5392924
6-9 months     MAL-ED         INDIA        1                    NA                1.2344065   1.1111390   1.3576739
6-9 months     MAL-ED         INDIA        0                    NA                1.2505808   1.1954935   1.3056681
6-9 months     MAL-ED         NEPAL        1                    NA                1.2079330   1.0374884   1.3783777
6-9 months     MAL-ED         NEPAL        0                    NA                1.3604163   1.3146598   1.4061728
6-9 months     MAL-ED         PERU         1                    NA                1.3185716   1.2227369   1.4144064
6-9 months     MAL-ED         PERU         0                    NA                1.3207672   1.2550189   1.3865155
6-9 months     PROVIDE        BANGLADESH   1                    NA                1.2482032   1.1956573   1.3007491
6-9 months     PROVIDE        BANGLADESH   0                    NA                1.2922388   1.2635399   1.3209378
6-9 months     SAS-CompFeed   INDIA        1                    NA                1.2102272   1.1275127   1.2929417
6-9 months     SAS-CompFeed   INDIA        0                    NA                1.2065455   0.8980285   1.5150624
9-12 months    EE             PAKISTAN     1                    NA                0.8435058   0.7523586   0.9346530
9-12 months    EE             PAKISTAN     0                    NA                0.8866775   0.6533943   1.1199607
9-12 months    GMS-Nepal      NEPAL        1                    NA                0.9897541   0.9551449   1.0243633
9-12 months    GMS-Nepal      NEPAL        0                    NA                1.0245910   0.9391313   1.1100507
9-12 months    Keneba         GAMBIA       1                    NA                0.9685836   0.8970157   1.0401515
9-12 months    Keneba         GAMBIA       0                    NA                0.9881405   0.9353338   1.0409472
9-12 months    LCNI-5         MALAWI       1                    NA                1.1282752   0.9389981   1.3175524
9-12 months    LCNI-5         MALAWI       0                    NA                0.8989795   0.7125644   1.0853947
9-12 months    MAL-ED         BANGLADESH   1                    NA                0.9474253   0.8838924   1.0109583
9-12 months    MAL-ED         BANGLADESH   0                    NA                1.0059443   0.9568698   1.0550188
9-12 months    MAL-ED         BRAZIL       1                    NA                1.1987036   1.0080952   1.3893119
9-12 months    MAL-ED         BRAZIL       0                    NA                1.3150479   1.2348123   1.3952835
9-12 months    MAL-ED         INDIA        1                    NA                0.9135079   0.7128614   1.1141544
9-12 months    MAL-ED         INDIA        0                    NA                0.9862272   0.9457766   1.0266777
9-12 months    MAL-ED         NEPAL        1                    NA                0.9673641   0.8683775   1.0663507
9-12 months    MAL-ED         NEPAL        0                    NA                1.0927203   1.0489002   1.1365405
9-12 months    MAL-ED         PERU         1                    NA                1.0977313   1.0161832   1.1792794
9-12 months    MAL-ED         PERU         0                    NA                1.0989310   1.0340785   1.1637836
9-12 months    PROVIDE        BANGLADESH   1                    NA                1.0168885   0.9610769   1.0727001
9-12 months    PROVIDE        BANGLADESH   0                    NA                1.0599390   1.0292074   1.0906705
9-12 months    SAS-CompFeed   INDIA        1                    NA                0.9737894   0.9007528   1.0468260
9-12 months    SAS-CompFeed   INDIA        0                    NA                1.2192187   0.9749390   1.4634984
12-15 months   EE             PAKISTAN     1                    NA                0.9994382   0.9109531   1.0879233
12-15 months   EE             PAKISTAN     0                    NA                1.1691763   0.8641761   1.4741764
12-15 months   GMS-Nepal      NEPAL        1                    NA                0.8743708   0.8459622   0.9027795
12-15 months   GMS-Nepal      NEPAL        0                    NA                0.8582272   0.8010066   0.9154478
12-15 months   Keneba         GAMBIA       1                    NA                0.9521170   0.9040366   1.0001973
12-15 months   Keneba         GAMBIA       0                    NA                0.9377072   0.8983273   0.9770870
12-15 months   MAL-ED         BANGLADESH   1                    NA                0.8901216   0.8311442   0.9490990
12-15 months   MAL-ED         BANGLADESH   0                    NA                0.9366361   0.8815411   0.9917312
12-15 months   MAL-ED         BRAZIL       1                    NA                1.1284891   0.9865705   1.2704077
12-15 months   MAL-ED         BRAZIL       0                    NA                1.1445314   1.0798018   1.2092611
12-15 months   MAL-ED         INDIA        1                    NA                0.8814052   0.7378861   1.0249244
12-15 months   MAL-ED         INDIA        0                    NA                0.9121027   0.8697655   0.9544399
12-15 months   MAL-ED         NEPAL        1                    NA                0.9913078   0.8167198   1.1658958
12-15 months   MAL-ED         NEPAL        0                    NA                0.9473465   0.9060699   0.9886231
12-15 months   MAL-ED         PERU         1                    NA                0.8733011   0.8016066   0.9449956
12-15 months   MAL-ED         PERU         0                    NA                0.9013801   0.8417290   0.9610312
12-15 months   PROVIDE        BANGLADESH   1                    NA                0.9660064   0.9201529   1.0118600
12-15 months   PROVIDE        BANGLADESH   0                    NA                0.9578084   0.9266254   0.9889915
12-15 months   SAS-CompFeed   INDIA        1                    NA                0.8468877   0.7712286   0.9225469
12-15 months   SAS-CompFeed   INDIA        0                    NA                0.6441206   0.3660282   0.9222130
15-18 months   EE             PAKISTAN     1                    NA                0.8264950   0.7398782   0.9131119
15-18 months   EE             PAKISTAN     0                    NA                0.9035877   0.8122406   0.9949348
15-18 months   GMS-Nepal      NEPAL        1                    NA                0.7828462   0.7429872   0.8227052
15-18 months   GMS-Nepal      NEPAL        0                    NA                0.6920497   0.6466460   0.7374534
15-18 months   Keneba         GAMBIA       1                    NA                0.8977561   0.8378726   0.9576395
15-18 months   Keneba         GAMBIA       0                    NA                0.8779993   0.8396186   0.9163800
15-18 months   MAL-ED         BANGLADESH   1                    NA                0.8185536   0.7595040   0.8776031
15-18 months   MAL-ED         BANGLADESH   0                    NA                0.8256373   0.7766874   0.8745872
15-18 months   MAL-ED         BRAZIL       1                    NA                0.9808882   0.8297541   1.1320224
15-18 months   MAL-ED         BRAZIL       0                    NA                1.0059832   0.9417751   1.0701912
15-18 months   MAL-ED         INDIA        1                    NA                0.7947960   0.6999361   0.8896559
15-18 months   MAL-ED         INDIA        0                    NA                0.8504785   0.8119625   0.8889946
15-18 months   MAL-ED         NEPAL        1                    NA                0.9062236   0.7738526   1.0385945
15-18 months   MAL-ED         NEPAL        0                    NA                0.8388886   0.7942958   0.8834814
15-18 months   MAL-ED         PERU         1                    NA                0.8381266   0.7695215   0.9067317
15-18 months   MAL-ED         PERU         0                    NA                0.8617482   0.8082227   0.9152737
15-18 months   PROVIDE        BANGLADESH   1                    NA                0.8246732   0.7726015   0.8767448
15-18 months   PROVIDE        BANGLADESH   0                    NA                0.8662603   0.8392724   0.8932482
15-18 months   SAS-CompFeed   INDIA        1                    NA                0.8872527   0.8309028   0.9436025
15-18 months   SAS-CompFeed   INDIA        0                    NA                0.9941699   0.4944769   1.4938630
18-21 months   EE             PAKISTAN     1                    NA                0.7829057   0.6977684   0.8680431
18-21 months   EE             PAKISTAN     0                    NA                0.8103374   0.7102740   0.9104008
18-21 months   GMS-Nepal      NEPAL        1                    NA                0.8988768   0.8555266   0.9422269
18-21 months   GMS-Nepal      NEPAL        0                    NA                0.9283742   0.8795475   0.9772008
18-21 months   Keneba         GAMBIA       1                    NA                0.8296998   0.7670179   0.8923817
18-21 months   Keneba         GAMBIA       0                    NA                0.8061696   0.7629262   0.8494131
18-21 months   LCNI-5         MALAWI       1                    NA                0.6988372   0.3078257   1.0898487
18-21 months   LCNI-5         MALAWI       0                    NA                0.8714175   0.7927107   0.9501243
18-21 months   MAL-ED         BANGLADESH   1                    NA                0.7960478   0.7413682   0.8507274
18-21 months   MAL-ED         BANGLADESH   0                    NA                0.8334866   0.7882832   0.8786899
18-21 months   MAL-ED         BRAZIL       1                    NA                0.7958577   0.6629892   0.9287262
18-21 months   MAL-ED         BRAZIL       0                    NA                0.9372410   0.8578282   1.0166539
18-21 months   MAL-ED         INDIA        1                    NA                0.7369521   0.5963741   0.8775302
18-21 months   MAL-ED         INDIA        0                    NA                0.8853866   0.8486486   0.9221246
18-21 months   MAL-ED         NEPAL        1                    NA                0.6856624   0.5612063   0.8101185
18-21 months   MAL-ED         NEPAL        0                    NA                0.8181457   0.7783624   0.8579291
18-21 months   MAL-ED         PERU         1                    NA                0.8312563   0.7536494   0.9088633
18-21 months   MAL-ED         PERU         0                    NA                0.8468464   0.7923276   0.9013652
18-21 months   PROVIDE        BANGLADESH   1                    NA                0.7983557   0.7483943   0.8483172
18-21 months   PROVIDE        BANGLADESH   0                    NA                0.8517804   0.8245460   0.8790148
21-24 months   GMS-Nepal      NEPAL        1                    NA                0.7857736   0.7367666   0.8347806
21-24 months   GMS-Nepal      NEPAL        0                    NA                0.8245095   0.7098501   0.9391690
21-24 months   Keneba         GAMBIA       1                    NA                0.6962539   0.6317129   0.7607949
21-24 months   Keneba         GAMBIA       0                    NA                0.7277588   0.6865183   0.7689993
21-24 months   LCNI-5         MALAWI       1                    NA                0.7347572   0.5989843   0.8705300
21-24 months   LCNI-5         MALAWI       0                    NA                0.7341491   0.6568139   0.8114842
21-24 months   MAL-ED         BANGLADESH   1                    NA                0.7764764   0.7161801   0.8367726
21-24 months   MAL-ED         BANGLADESH   0                    NA                0.7690055   0.7234882   0.8145228
21-24 months   MAL-ED         BRAZIL       1                    NA                0.7889591   0.7043409   0.8735773
21-24 months   MAL-ED         BRAZIL       0                    NA                0.7974363   0.7477737   0.8470990
21-24 months   MAL-ED         INDIA        1                    NA                0.8174624   0.6816572   0.9532675
21-24 months   MAL-ED         INDIA        0                    NA                0.8284167   0.7951098   0.8617235
21-24 months   MAL-ED         NEPAL        1                    NA                0.8874751   0.7046214   1.0703288
21-24 months   MAL-ED         NEPAL        0                    NA                0.7803294   0.7375657   0.8230932
21-24 months   MAL-ED         PERU         1                    NA                0.7269048   0.6431611   0.8106485
21-24 months   MAL-ED         PERU         0                    NA                0.7785332   0.7223153   0.8347511
21-24 months   PROVIDE        BANGLADESH   1                    NA                0.7403173   0.6898597   0.7907750
21-24 months   PROVIDE        BANGLADESH   0                    NA                0.7701757   0.7408583   0.7994932


### Parameter: E(Y)


agecat         studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL        NA                   NA                3.5982617   3.5465367   3.6499867
0-3 months     Keneba         GAMBIA       NA                   NA                3.1044617   3.0557519   3.1531714
0-3 months     MAL-ED         BANGLADESH   NA                   NA                3.3482498   3.2804281   3.4160715
0-3 months     MAL-ED         BRAZIL       NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     MAL-ED         INDIA        NA                   NA                3.3378760   3.2442606   3.4314913
0-3 months     MAL-ED         NEPAL        NA                   NA                3.6205791   3.5251464   3.7160118
0-3 months     MAL-ED         PERU         NA                   NA                3.0614469   2.9957442   3.1271496
0-3 months     PROVIDE        BANGLADESH   NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed   INDIA        NA                   NA                3.3522434   3.2847848   3.4197021
3-6 months     GMS-Nepal      NEPAL        NA                   NA                1.7086613   1.6690533   1.7482692
3-6 months     Keneba         GAMBIA       NA                   NA                1.9931730   1.9526530   2.0336930
3-6 months     MAL-ED         BANGLADESH   NA                   NA                1.9247979   1.8735932   1.9760025
3-6 months     MAL-ED         BRAZIL       NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED         INDIA        NA                   NA                1.8843292   1.8181080   1.9505504
3-6 months     MAL-ED         NEPAL        NA                   NA                1.9668794   1.9086855   2.0250732
3-6 months     MAL-ED         PERU         NA                   NA                2.0171026   1.9506965   2.0835088
3-6 months     PROVIDE        BANGLADESH   NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed   INDIA        NA                   NA                1.9051097   1.8384221   1.9717974
6-9 months     EE             PAKISTAN     NA                   NA                1.1260884   1.0085133   1.2436636
6-9 months     GMS-Nepal      NEPAL        NA                   NA                1.3140299   1.2729534   1.3551064
6-9 months     Keneba         GAMBIA       NA                   NA                1.4042923   1.3508641   1.4577205
6-9 months     LCNI-5         MALAWI       NA                   NA                1.4372604   1.3755150   1.4990057
6-9 months     MAL-ED         BANGLADESH   NA                   NA                1.2541293   1.2135456   1.2947130
6-9 months     MAL-ED         BRAZIL       NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED         INDIA        NA                   NA                1.2497455   1.1971145   1.3023766
6-9 months     MAL-ED         NEPAL        NA                   NA                1.3520991   1.3076136   1.3965845
6-9 months     MAL-ED         PERU         NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     PROVIDE        BANGLADESH   NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed   INDIA        NA                   NA                1.2100652   1.1296030   1.2905275
9-12 months    EE             PAKISTAN     NA                   NA                0.8484117   0.7632855   0.9335379
9-12 months    GMS-Nepal      NEPAL        NA                   NA                0.9981924   0.9647527   1.0316321
9-12 months    Keneba         GAMBIA       NA                   NA                0.9818764   0.9392834   1.0244694
9-12 months    LCNI-5         MALAWI       NA                   NA                0.9706344   0.8246089   1.1166600
9-12 months    MAL-ED         BANGLADESH   NA                   NA                0.9848124   0.9457805   1.0238444
9-12 months    MAL-ED         BRAZIL       NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED         INDIA        NA                   NA                0.9824181   0.9426109   1.0222252
9-12 months    MAL-ED         NEPAL        NA                   NA                1.0864239   1.0443515   1.1284963
9-12 months    MAL-ED         PERU         NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    PROVIDE        BANGLADESH   NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed   INDIA        NA                   NA                0.9826276   0.9088962   1.0563590
12-15 months   EE             PAKISTAN     NA                   NA                1.0223758   0.9334119   1.1113396
12-15 months   GMS-Nepal      NEPAL        NA                   NA                0.8704063   0.8447703   0.8960424
12-15 months   Keneba         GAMBIA       NA                   NA                0.9424871   0.9117122   0.9732620
12-15 months   MAL-ED         BANGLADESH   NA                   NA                0.9199912   0.8786810   0.9613015
12-15 months   MAL-ED         BRAZIL       NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED         INDIA        NA                   NA                0.9104871   0.8696624   0.9513117
12-15 months   MAL-ED         NEPAL        NA                   NA                0.9495446   0.9093518   0.9897373
12-15 months   MAL-ED         PERU         NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   PROVIDE        BANGLADESH   NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed   INDIA        NA                   NA                0.8406400   0.7684485   0.9128315
15-18 months   EE             PAKISTAN     NA                   NA                0.8381757   0.7627800   0.9135715
15-18 months   GMS-Nepal      NEPAL        NA                   NA                0.7603933   0.7281594   0.7926271
15-18 months   Keneba         GAMBIA       NA                   NA                0.8848169   0.8522726   0.9173611
15-18 months   MAL-ED         BANGLADESH   NA                   NA                0.8230330   0.7852223   0.8608436
15-18 months   MAL-ED         BRAZIL       NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED         INDIA        NA                   NA                0.8475479   0.8106803   0.8844155
15-18 months   MAL-ED         NEPAL        NA                   NA                0.8425951   0.7997829   0.8854074
15-18 months   MAL-ED         PERU         NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   PROVIDE        BANGLADESH   NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed   INDIA        NA                   NA                0.8909184   0.8304593   0.9513775
18-21 months   EE             PAKISTAN     NA                   NA                0.7870620   0.7131718   0.8609522
18-21 months   GMS-Nepal      NEPAL        NA                   NA                0.9058703   0.8708102   0.9409303
18-21 months   Keneba         GAMBIA       NA                   NA                0.8142039   0.7785744   0.8498334
18-21 months   LCNI-5         MALAWI       NA                   NA                0.8419773   0.7481346   0.9358201
18-21 months   MAL-ED         BANGLADESH   NA                   NA                0.8195860   0.7845702   0.8546019
18-21 months   MAL-ED         BRAZIL       NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED         INDIA        NA                   NA                0.8782845   0.8424042   0.9141648
18-21 months   MAL-ED         NEPAL        NA                   NA                0.8108531   0.7724296   0.8492765
18-21 months   MAL-ED         PERU         NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   PROVIDE        BANGLADESH   NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   GMS-Nepal      NEPAL        NA                   NA                0.7949572   0.7486969   0.8412176
21-24 months   Keneba         GAMBIA       NA                   NA                0.7172946   0.6823819   0.7522072
21-24 months   LCNI-5         MALAWI       NA                   NA                0.7342569   0.6662316   0.8022822
21-24 months   MAL-ED         BANGLADESH   NA                   NA                0.7717324   0.7354003   0.8080644
21-24 months   MAL-ED         BRAZIL       NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED         INDIA        NA                   NA                0.8278900   0.7955176   0.8602624
21-24 months   MAL-ED         NEPAL        NA                   NA                0.7862274   0.7444562   0.8279985
21-24 months   MAL-ED         PERU         NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   PROVIDE        BANGLADESH   NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL        0                    1                 -0.0308081   -0.1535108    0.0918945
0-3 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA       0                    1                 -0.0009482   -0.1039476    0.1020511
0-3 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH   0                    1                  0.0065556   -0.1330920    0.1462033
0-3 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL       0                    1                 -0.2564763   -0.6033415    0.0903890
0-3 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA        0                    1                  0.1473877   -0.1794690    0.4742443
0-3 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL        0                    1                  0.3652378    0.1234400    0.6070357
0-3 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU         0                    1                 -0.0771840   -0.2161070    0.0617390
0-3 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH   0                    1                  0.0016788   -0.0780561    0.0814136
0-3 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA        0                    1                 -0.3448451   -0.4888470   -0.2008431
3-6 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL        0                    1                 -0.0751140   -0.1651491    0.0149212
3-6 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA       0                    1                  0.0250106   -0.0620290    0.1120502
3-6 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH   0                    1                 -0.0281916   -0.1382749    0.0818916
3-6 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL       0                    1                  0.0139543   -0.2187243    0.2466329
3-6 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA        0                    1                 -0.0020025   -0.2238680    0.2198631
3-6 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL        0                    1                  0.0436177   -0.1785316    0.2657670
3-6 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU         0                    1                 -0.0276274   -0.1701084    0.1148536
3-6 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH   0                    1                 -0.0590700   -0.1359078    0.0177679
3-6 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA        0                    1                  0.1917877   -0.2223652    0.6059407
6-9 months     EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN     0                    1                  0.1049820   -0.1134392    0.3234031
6-9 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL        0                    1                 -0.0045341   -0.1193337    0.1102656
6-9 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA       0                    1                 -0.0967011   -0.2182941    0.0248919
6-9 months     LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5         MALAWI       0                    1                 -0.0156522   -0.2044611    0.1731567
6-9 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH   0                    1                  0.0101650   -0.0739504    0.0942804
6-9 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL       0                    1                 -0.1449199   -0.4641532    0.1743134
6-9 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA        0                    1                  0.0161743   -0.1188422    0.1511909
6-9 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL        0                    1                  0.1524833   -0.0239963    0.3289629
6-9 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU         0                    1                  0.0021956   -0.1140246    0.1184158
6-9 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH   0                    1                  0.0440356   -0.0158368    0.1039079
6-9 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA        0                    1                 -0.0036818   -0.3214634    0.3140999
9-12 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN     0                    1                  0.0431716   -0.2072856    0.2936289
9-12 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL        0                    1                  0.0348369   -0.0573648    0.1270386
9-12 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA       0                    1                  0.0195569   -0.0693842    0.1084980
9-12 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5         MALAWI       0                    1                 -0.2292957   -0.4949580    0.0363666
9-12 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH   0                    1                  0.0585190   -0.0217602    0.1387981
9-12 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL       0                    1                  0.1163443   -0.0904630    0.3231517
9-12 months    MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA        0                    1                  0.0727192   -0.1319641    0.2774026
9-12 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL        0                    1                  0.1253563    0.0171040    0.2336085
9-12 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU         0                    1                  0.0011997   -0.1029921    0.1053916
9-12 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH   0                    1                  0.0430505   -0.0206627    0.1067636
9-12 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA        0                    1                  0.2454293    0.0355874    0.4552712
12-15 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN     0                    1                  0.1697381   -0.1478382    0.4873144
12-15 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL        0                    1                 -0.0161437   -0.0800283    0.0477410
12-15 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA       0                    1                 -0.0144098   -0.0765588    0.0477392
12-15 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH   0                    1                  0.0465145   -0.0341936    0.1272226
12-15 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL       0                    1                  0.0160423   -0.1399411    0.1720257
12-15 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA        0                    1                  0.0306975   -0.1189360    0.1803310
12-15 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL        0                    1                 -0.0439613   -0.2233623    0.1354398
12-15 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU         0                    1                  0.0280790   -0.0651859    0.1213440
12-15 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH   0                    1                 -0.0081980   -0.0636501    0.0472541
12-15 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA        0                    1                 -0.2027671   -0.5054467    0.0999125
15-18 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN     0                    1                  0.0770926   -0.0487913    0.2029766
15-18 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL        0                    1                 -0.0907965   -0.1512138   -0.0303793
15-18 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA       0                    1                 -0.0197568   -0.0908842    0.0513706
15-18 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH   0                    1                  0.0070837   -0.0696166    0.0837841
15-18 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL       0                    1                  0.0250950   -0.1391128    0.1893028
15-18 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA        0                    1                  0.0556825   -0.0466985    0.1580636
15-18 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL        0                    1                 -0.0673349   -0.2070152    0.0723454
15-18 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU         0                    1                  0.0236216   -0.0633936    0.1106367
15-18 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH   0                    1                  0.0415872   -0.0170627    0.1002370
15-18 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA        0                    1                  0.1069173   -0.3834438    0.5972783
18-21 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN     0                    1                  0.0274317   -0.1039496    0.1588129
18-21 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL        0                    1                  0.0294974   -0.0357963    0.0947912
18-21 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA       0                    1                 -0.0235301   -0.0996814    0.0526212
18-21 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5         MALAWI       0                    1                  0.1725803   -0.2262740    0.5714346
18-21 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH   0                    1                  0.0374387   -0.0335064    0.1083838
18-21 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL       0                    1                  0.1413833   -0.0134083    0.2961750
18-21 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA        0                    1                  0.1484345    0.0031352    0.2937337
18-21 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL        0                    1                  0.1324833    0.0018234    0.2631433
18-21 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU         0                    1                  0.0155901   -0.0792526    0.1104328
18-21 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH   0                    1                  0.0534247   -0.0034776    0.1103269
21-24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL        0                    1                  0.0387359   -0.0859577    0.1634294
21-24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA       0                    1                  0.0315049   -0.0450870    0.1080968
21-24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5         MALAWI       0                    1                 -0.0006081   -0.1568611    0.1556449
21-24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH   0                    1                 -0.0074709   -0.0830186    0.0680768
21-24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL       0                    1                  0.0084772   -0.0896382    0.1065926
21-24 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA        0                    1                  0.0109543   -0.1288755    0.1507841
21-24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL        0                    1                 -0.1071456   -0.2949333    0.0806420
21-24 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU         0                    1                  0.0516284   -0.0492352    0.1524920
21-24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH   0                    1                  0.0298584   -0.0284981    0.0882149


### Parameter: PAR


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0081786   -0.0407742    0.0244170
0-3 months     Keneba         GAMBIA       1                    NA                -0.0006410   -0.0702744    0.0689923
0-3 months     MAL-ED         BANGLADESH   1                    NA                 0.0041875   -0.0850157    0.0933907
0-3 months     MAL-ED         BRAZIL       1                    NA                -0.2234333   -0.5259000    0.0790334
0-3 months     MAL-ED         INDIA        1                    NA                 0.1403272   -0.1709085    0.4515629
0-3 months     MAL-ED         NEPAL        1                    NA                 0.3375301    0.1135181    0.5615422
0-3 months     MAL-ED         PERU         1                    NA                -0.0513547   -0.1438966    0.0411872
0-3 months     PROVIDE        BANGLADESH   1                    NA                 0.0012617   -0.0586641    0.0611874
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.0167633   -0.0274939   -0.0060327
3-6 months     GMS-Nepal      NEPAL        1                    NA                -0.0203973   -0.0450352    0.0042405
3-6 months     Keneba         GAMBIA       1                    NA                 0.0179265   -0.0444625    0.0803154
3-6 months     MAL-ED         BANGLADESH   1                    NA                -0.0180325   -0.0884687    0.0524037
3-6 months     MAL-ED         BRAZIL       1                    NA                 0.0119416   -0.1871786    0.2110619
3-6 months     MAL-ED         INDIA        1                    NA                -0.0018990   -0.2123068    0.2085087
3-6 months     MAL-ED         NEPAL        1                    NA                 0.0414565   -0.1696891    0.2526021
3-6 months     MAL-ED         PERU         1                    NA                -0.0182798   -0.1125660    0.0760065
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0453397   -0.1043512    0.0136719
3-6 months     SAS-CompFeed   INDIA        1                    NA                 0.0091087   -0.0137757    0.0319930
6-9 months     EE             PAKISTAN     1                    NA                 0.0116647   -0.0144891    0.0378184
6-9 months     GMS-Nepal      NEPAL        1                    NA                -0.0011479   -0.0302116    0.0279159
6-9 months     Keneba         GAMBIA       1                    NA                -0.0679874   -0.1535294    0.0175545
6-9 months     LCNI-5         MALAWI       1                    NA                -0.0131694   -0.1720321    0.1456932
6-9 months     MAL-ED         BANGLADESH   1                    NA                 0.0066049   -0.0480546    0.0612643
6-9 months     MAL-ED         BRAZIL       1                    NA                -0.1236943   -0.3962651    0.1488766
6-9 months     MAL-ED         INDIA        1                    NA                 0.0153390   -0.1127057    0.1433838
6-9 months     MAL-ED         NEPAL        1                    NA                 0.1441660   -0.0227504    0.3110825
6-9 months     MAL-ED         PERU         1                    NA                 0.0014249   -0.0739998    0.0768495
6-9 months     PROVIDE        BANGLADESH   1                    NA                 0.0342153   -0.0123296    0.0807601
6-9 months     SAS-CompFeed   INDIA        1                    NA                -0.0001620   -0.0141436    0.0138197
9-12 months    EE             PAKISTAN     1                    NA                 0.0049059   -0.0238483    0.0336600
9-12 months    GMS-Nepal      NEPAL        1                    NA                 0.0084383   -0.0139377    0.0308142
9-12 months    Keneba         GAMBIA       1                    NA                 0.0132928   -0.0471636    0.0737491
9-12 months    LCNI-5         MALAWI       1                    NA                -0.1576408   -0.3440762    0.0287946
9-12 months    MAL-ED         BANGLADESH   1                    NA                 0.0373871   -0.0140398    0.0888140
9-12 months    MAL-ED         BRAZIL       1                    NA                 0.0995524   -0.0775005    0.2766052
9-12 months    MAL-ED         INDIA        1                    NA                 0.0689101   -0.1250641    0.2628844
9-12 months    MAL-ED         NEPAL        1                    NA                 0.1190598    0.0161807    0.2219390
9-12 months    MAL-ED         PERU         1                    NA                 0.0007811   -0.0670545    0.0686167
9-12 months    PROVIDE        BANGLADESH   1                    NA                 0.0330865   -0.0159032    0.0820762
9-12 months    SAS-CompFeed   INDIA        1                    NA                 0.0088382    0.0007584    0.0169180
12-15 months   EE             PAKISTAN     1                    NA                 0.0229376   -0.0239780    0.0698531
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0039645   -0.0196661    0.0117371
12-15 months   Keneba         GAMBIA       1                    NA                -0.0096299   -0.0511648    0.0319051
12-15 months   MAL-ED         BANGLADESH   1                    NA                 0.0298696   -0.0220484    0.0817875
12-15 months   MAL-ED         BRAZIL       1                    NA                 0.0136883   -0.1194088    0.1467853
12-15 months   MAL-ED         INDIA        1                    NA                 0.0290819   -0.1126792    0.1708430
12-15 months   MAL-ED         NEPAL        1                    NA                -0.0417632   -0.2121990    0.1286725
12-15 months   MAL-ED         PERU         1                    NA                 0.0184269   -0.0428033    0.0796570
12-15 months   PROVIDE        BANGLADESH   1                    NA                -0.0062564   -0.0485761    0.0360633
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0062477   -0.0163716    0.0038761
15-18 months   EE             PAKISTAN     1                    NA                 0.0116807   -0.0096621    0.0330235
15-18 months   GMS-Nepal      NEPAL        1                    NA                -0.0224529   -0.0378163   -0.0070896
15-18 months   Keneba         GAMBIA       1                    NA                -0.0129392   -0.0595252    0.0336468
15-18 months   MAL-ED         BANGLADESH   1                    NA                 0.0044794   -0.0440246    0.0529834
15-18 months   MAL-ED         BRAZIL       1                    NA                 0.0212232   -0.1176563    0.1601026
15-18 months   MAL-ED         INDIA        1                    NA                 0.0527519   -0.0442554    0.1497592
15-18 months   MAL-ED         NEPAL        1                    NA                -0.0636284   -0.1956357    0.0683789
15-18 months   MAL-ED         PERU         1                    NA                 0.0153041   -0.0410924    0.0717006
15-18 months   PROVIDE        BANGLADESH   1                    NA                 0.0314267   -0.0129202    0.0757735
15-18 months   SAS-CompFeed   INDIA        1                    NA                 0.0036657   -0.0131608    0.0204923
18-21 months   EE             PAKISTAN     1                    NA                 0.0041563   -0.0160395    0.0243522
18-21 months   GMS-Nepal      NEPAL        1                    NA                 0.0069935   -0.0085328    0.0225198
18-21 months   Keneba         GAMBIA       1                    NA                -0.0154959   -0.0656497    0.0346579
18-21 months   LCNI-5         MALAWI       1                    NA                 0.1431401   -0.1878191    0.4740993
18-21 months   MAL-ED         BANGLADESH   1                    NA                 0.0235382   -0.0211359    0.0682123
18-21 months   MAL-ED         BRAZIL       1                    NA                 0.1202182   -0.0116246    0.2520609
18-21 months   MAL-ED         INDIA        1                    NA                 0.1413323    0.0029182    0.2797465
18-21 months   MAL-ED         NEPAL        1                    NA                 0.1251907    0.0016576    0.2487238
18-21 months   MAL-ED         PERU         1                    NA                 0.0101876   -0.0517973    0.0721725
18-21 months   PROVIDE        BANGLADESH   1                    NA                 0.0409820   -0.0027092    0.0846731
21-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0091836   -0.0204327    0.0387999
21-24 months   Keneba         GAMBIA       1                    NA                 0.0210407   -0.0301189    0.0722002
21-24 months   LCNI-5         MALAWI       1                    NA                -0.0005003   -0.1290488    0.1280483
21-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0047440   -0.0527194    0.0432314
21-24 months   MAL-ED         BRAZIL       1                    NA                 0.0071928   -0.0760579    0.0904435
21-24 months   MAL-ED         INDIA        1                    NA                 0.0104277   -0.1226799    0.1435353
21-24 months   MAL-ED         NEPAL        1                    NA                -0.1012477   -0.2787282    0.0762328
21-24 months   MAL-ED         PERU         1                    NA                 0.0341458   -0.0326543    0.1009459
21-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0228217   -0.0217967    0.0674401
