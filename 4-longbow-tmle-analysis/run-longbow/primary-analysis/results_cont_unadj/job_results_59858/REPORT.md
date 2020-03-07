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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        exclfeed6    n_cell       n
-------------  ---------------  -----------------------------  ----------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          1                 6       6
0-3 months     CMC-V-BCS-2002   INDIA                          0                 0       6
0-3 months     EE               PAKISTAN                       1                33      37
0-3 months     EE               PAKISTAN                       0                 4      37
0-3 months     GMS-Nepal        NEPAL                          1               368     501
0-3 months     GMS-Nepal        NEPAL                          0               133     501
0-3 months     IRC              INDIA                          1                 0      14
0-3 months     IRC              INDIA                          0                14      14
0-3 months     JiVitA-3         BANGLADESH                     1              9246   11961
0-3 months     JiVitA-3         BANGLADESH                     0              2715   11961
0-3 months     JiVitA-4         BANGLADESH                     1              1509    1805
0-3 months     JiVitA-4         BANGLADESH                     0               296    1805
0-3 months     Keneba           GAMBIA                         1               391    1207
0-3 months     Keneba           GAMBIA                         0               816    1207
0-3 months     MAL-ED           BANGLADESH                     1                33     227
0-3 months     MAL-ED           BANGLADESH                     0               194     227
0-3 months     MAL-ED           BRAZIL                         1                 7     163
0-3 months     MAL-ED           BRAZIL                         0               156     163
0-3 months     MAL-ED           INDIA                          1                 1     167
0-3 months     MAL-ED           INDIA                          0               166     167
0-3 months     MAL-ED           NEPAL                          1                 4     145
0-3 months     MAL-ED           NEPAL                          0               141     145
0-3 months     MAL-ED           PERU                           1                 3     254
0-3 months     MAL-ED           PERU                           0               251     254
0-3 months     MAL-ED           SOUTH AFRICA                   1                 0     186
0-3 months     MAL-ED           SOUTH AFRICA                   0               186     186
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     211
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               211     211
0-3 months     PROVIDE          BANGLADESH                     1               159     640
0-3 months     PROVIDE          BANGLADESH                     0               481     640
0-3 months     SAS-CompFeed     INDIA                          1               411     432
0-3 months     SAS-CompFeed     INDIA                          0                21     432
3-6 months     CMC-V-BCS-2002   INDIA                          1                16      16
3-6 months     CMC-V-BCS-2002   INDIA                          0                 0      16
3-6 months     EE               PAKISTAN                       1                34      38
3-6 months     EE               PAKISTAN                       0                 4      38
3-6 months     GMS-Nepal        NEPAL                          1               338     464
3-6 months     GMS-Nepal        NEPAL                          0               126     464
3-6 months     IRC              INDIA                          1                 0      14
3-6 months     IRC              INDIA                          0                14      14
3-6 months     JiVitA-3         BANGLADESH                     1              5741    7502
3-6 months     JiVitA-3         BANGLADESH                     0              1761    7502
3-6 months     JiVitA-4         BANGLADESH                     1              1514    1797
3-6 months     JiVitA-4         BANGLADESH                     0               283    1797
3-6 months     Keneba           GAMBIA                         1               377    1331
3-6 months     Keneba           GAMBIA                         0               954    1331
3-6 months     MAL-ED           BANGLADESH                     1                33     222
3-6 months     MAL-ED           BANGLADESH                     0               189     222
3-6 months     MAL-ED           BRAZIL                         1                12     208
3-6 months     MAL-ED           BRAZIL                         0               196     208
3-6 months     MAL-ED           INDIA                          1                 2     213
3-6 months     MAL-ED           INDIA                          0               211     213
3-6 months     MAL-ED           NEPAL                          1                 4     222
3-6 months     MAL-ED           NEPAL                          0               218     222
3-6 months     MAL-ED           PERU                           1                 5     266
3-6 months     MAL-ED           PERU                           0               261     266
3-6 months     MAL-ED           SOUTH AFRICA                   1                 0     222
3-6 months     MAL-ED           SOUTH AFRICA                   0               222     222
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     225
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               225     225
3-6 months     PROVIDE          BANGLADESH                     1               139     598
3-6 months     PROVIDE          BANGLADESH                     0               459     598
3-6 months     SAS-CompFeed     INDIA                          1               361     379
3-6 months     SAS-CompFeed     INDIA                          0                18     379
6-9 months     CMC-V-BCS-2002   INDIA                          1                18      18
6-9 months     CMC-V-BCS-2002   INDIA                          0                 0      18
6-9 months     EE               PAKISTAN                       1                40      45
6-9 months     EE               PAKISTAN                       0                 5      45
6-9 months     GMS-Nepal        NEPAL                          1               354     474
6-9 months     GMS-Nepal        NEPAL                          0               120     474
6-9 months     IRC              INDIA                          1                 0      14
6-9 months     IRC              INDIA                          0                14      14
6-9 months     JiVitA-4         BANGLADESH                     1              2191    2769
6-9 months     JiVitA-4         BANGLADESH                     0               578    2769
6-9 months     Keneba           GAMBIA                         1               242     815
6-9 months     Keneba           GAMBIA                         0               573     815
6-9 months     LCNI-5           MALAWI                         1                23     145
6-9 months     LCNI-5           MALAWI                         0               122     145
6-9 months     MAL-ED           BANGLADESH                     1                32     217
6-9 months     MAL-ED           BANGLADESH                     0               185     217
6-9 months     MAL-ED           BRAZIL                         1                12     198
6-9 months     MAL-ED           BRAZIL                         0               186     198
6-9 months     MAL-ED           INDIA                          1                 2     213
6-9 months     MAL-ED           INDIA                          0               211     213
6-9 months     MAL-ED           NEPAL                          1                 5     220
6-9 months     MAL-ED           NEPAL                          0               215     220
6-9 months     MAL-ED           PERU                           1                 5     245
6-9 months     MAL-ED           PERU                           0               240     245
6-9 months     MAL-ED           SOUTH AFRICA                   1                 0     210
6-9 months     MAL-ED           SOUTH AFRICA                   0               210     210
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     214
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               214     214
6-9 months     PROVIDE          BANGLADESH                     1               126     565
6-9 months     PROVIDE          BANGLADESH                     0               439     565
6-9 months     SAS-CompFeed     INDIA                          1               326     341
6-9 months     SAS-CompFeed     INDIA                          0                15     341
6-9 months     SAS-FoodSuppl    INDIA                          1                 0     142
6-9 months     SAS-FoodSuppl    INDIA                          0               142     142
9-12 months    CMC-V-BCS-2002   INDIA                          1                17      17
9-12 months    CMC-V-BCS-2002   INDIA                          0                 0      17
9-12 months    EE               PAKISTAN                       1                39      44
9-12 months    EE               PAKISTAN                       0                 5      44
9-12 months    GMS-Nepal        NEPAL                          1               341     450
9-12 months    GMS-Nepal        NEPAL                          0               109     450
9-12 months    IRC              INDIA                          1                 0      14
9-12 months    IRC              INDIA                          0                14      14
9-12 months    JiVitA-4         BANGLADESH                     1              2443    3134
9-12 months    JiVitA-4         BANGLADESH                     0               691    3134
9-12 months    Keneba           GAMBIA                         1               254     793
9-12 months    Keneba           GAMBIA                         0               539     793
9-12 months    LCNI-5           MALAWI                         1                10      32
9-12 months    LCNI-5           MALAWI                         0                22      32
9-12 months    MAL-ED           BANGLADESH                     1                30     216
9-12 months    MAL-ED           BANGLADESH                     0               186     216
9-12 months    MAL-ED           BRAZIL                         1                12     194
9-12 months    MAL-ED           BRAZIL                         0               182     194
9-12 months    MAL-ED           INDIA                          1                 2     210
9-12 months    MAL-ED           INDIA                          0               208     210
9-12 months    MAL-ED           NEPAL                          1                 4     219
9-12 months    MAL-ED           NEPAL                          0               215     219
9-12 months    MAL-ED           PERU                           1                 5     235
9-12 months    MAL-ED           PERU                           0               230     235
9-12 months    MAL-ED           SOUTH AFRICA                   1                 0     212
9-12 months    MAL-ED           SOUTH AFRICA                   0               212     212
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     213
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               213     213
9-12 months    PROVIDE          BANGLADESH                     1               131     566
9-12 months    PROVIDE          BANGLADESH                     0               435     566
9-12 months    SAS-CompFeed     INDIA                          1               348     361
9-12 months    SAS-CompFeed     INDIA                          0                13     361
9-12 months    SAS-FoodSuppl    INDIA                          1                 0     144
9-12 months    SAS-FoodSuppl    INDIA                          0               144     144
12-15 months   CMC-V-BCS-2002   INDIA                          1                17      17
12-15 months   CMC-V-BCS-2002   INDIA                          0                 0      17
12-15 months   EE               PAKISTAN                       1                32      37
12-15 months   EE               PAKISTAN                       0                 5      37
12-15 months   GMS-Nepal        NEPAL                          1               341     452
12-15 months   GMS-Nepal        NEPAL                          0               111     452
12-15 months   IRC              INDIA                          1                 0      14
12-15 months   IRC              INDIA                          0                14      14
12-15 months   JiVitA-4         BANGLADESH                     1              2450    3148
12-15 months   JiVitA-4         BANGLADESH                     0               698    3148
12-15 months   Keneba           GAMBIA                         1               410    1236
12-15 months   Keneba           GAMBIA                         0               826    1236
12-15 months   LCNI-5           MALAWI                         1                 0       1
12-15 months   LCNI-5           MALAWI                         0                 1       1
12-15 months   MAL-ED           BANGLADESH                     1                28     204
12-15 months   MAL-ED           BANGLADESH                     0               176     204
12-15 months   MAL-ED           BRAZIL                         1                12     184
12-15 months   MAL-ED           BRAZIL                         0               172     184
12-15 months   MAL-ED           INDIA                          1                 2     209
12-15 months   MAL-ED           INDIA                          0               207     209
12-15 months   MAL-ED           NEPAL                          1                 4     220
12-15 months   MAL-ED           NEPAL                          0               216     220
12-15 months   MAL-ED           PERU                           1                 4     224
12-15 months   MAL-ED           PERU                           0               220     224
12-15 months   MAL-ED           SOUTH AFRICA                   1                 0     209
12-15 months   MAL-ED           SOUTH AFRICA                   0               209     209
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     214
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               214     214
12-15 months   PROVIDE          BANGLADESH                     1               126     532
12-15 months   PROVIDE          BANGLADESH                     0               406     532
12-15 months   SAS-CompFeed     INDIA                          1               346     357
12-15 months   SAS-CompFeed     INDIA                          0                11     357
12-15 months   SAS-FoodSuppl    INDIA                          1                 0     137
12-15 months   SAS-FoodSuppl    INDIA                          0               137     137
15-18 months   CMC-V-BCS-2002   INDIA                          1                14      14
15-18 months   CMC-V-BCS-2002   INDIA                          0                 0      14
15-18 months   EE               PAKISTAN                       1                28      33
15-18 months   EE               PAKISTAN                       0                 5      33
15-18 months   GMS-Nepal        NEPAL                          1               347     461
15-18 months   GMS-Nepal        NEPAL                          0               114     461
15-18 months   IRC              INDIA                          1                 0      14
15-18 months   IRC              INDIA                          0                14      14
15-18 months   JiVitA-4         BANGLADESH                     1              2458    3148
15-18 months   JiVitA-4         BANGLADESH                     0               690    3148
15-18 months   Keneba           GAMBIA                         1               431    1249
15-18 months   Keneba           GAMBIA                         0               818    1249
15-18 months   LCNI-5           MALAWI                         1                 0       4
15-18 months   LCNI-5           MALAWI                         0                 4       4
15-18 months   MAL-ED           BANGLADESH                     1                30     204
15-18 months   MAL-ED           BANGLADESH                     0               174     204
15-18 months   MAL-ED           BRAZIL                         1                12     175
15-18 months   MAL-ED           BRAZIL                         0               163     175
15-18 months   MAL-ED           INDIA                          1                 2     209
15-18 months   MAL-ED           INDIA                          0               207     209
15-18 months   MAL-ED           NEPAL                          1                 5     218
15-18 months   MAL-ED           NEPAL                          0               213     218
15-18 months   MAL-ED           PERU                           1                 4     213
15-18 months   MAL-ED           PERU                           0               209     213
15-18 months   MAL-ED           SOUTH AFRICA                   1                 0     206
15-18 months   MAL-ED           SOUTH AFRICA                   0               206     206
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     205
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               205     205
15-18 months   PROVIDE          BANGLADESH                     1               129     528
15-18 months   PROVIDE          BANGLADESH                     0               399     528
15-18 months   SAS-CompFeed     INDIA                          1               338     350
15-18 months   SAS-CompFeed     INDIA                          0                12     350
15-18 months   SAS-FoodSuppl    INDIA                          1                 0     129
15-18 months   SAS-FoodSuppl    INDIA                          0               129     129
18-21 months   CMC-V-BCS-2002   INDIA                          1                12      12
18-21 months   CMC-V-BCS-2002   INDIA                          0                 0      12
18-21 months   EE               PAKISTAN                       1                28      33
18-21 months   EE               PAKISTAN                       0                 5      33
18-21 months   GMS-Nepal        NEPAL                          1               325     426
18-21 months   GMS-Nepal        NEPAL                          0               101     426
18-21 months   IRC              INDIA                          1                 0      12
18-21 months   IRC              INDIA                          0                12      12
18-21 months   Keneba           GAMBIA                         1               421    1233
18-21 months   Keneba           GAMBIA                         0               812    1233
18-21 months   LCNI-5           MALAWI                         1                29     170
18-21 months   LCNI-5           MALAWI                         0               141     170
18-21 months   MAL-ED           BANGLADESH                     1                29     202
18-21 months   MAL-ED           BANGLADESH                     0               173     202
18-21 months   MAL-ED           BRAZIL                         1                11     167
18-21 months   MAL-ED           BRAZIL                         0               156     167
18-21 months   MAL-ED           INDIA                          1                 2     209
18-21 months   MAL-ED           INDIA                          0               207     209
18-21 months   MAL-ED           NEPAL                          1                 5     218
18-21 months   MAL-ED           NEPAL                          0               213     218
18-21 months   MAL-ED           PERU                           1                 3     202
18-21 months   MAL-ED           PERU                           0               199     202
18-21 months   MAL-ED           SOUTH AFRICA                   1                 0     213
18-21 months   MAL-ED           SOUTH AFRICA                   0               213     213
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     192
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               192     192
18-21 months   PROVIDE          BANGLADESH                     1               126     541
18-21 months   PROVIDE          BANGLADESH                     0               415     541
21-24 months   CMC-V-BCS-2002   INDIA                          1                15      15
21-24 months   CMC-V-BCS-2002   INDIA                          0                 0      15
21-24 months   EE               PAKISTAN                       1                16      18
21-24 months   EE               PAKISTAN                       0                 2      18
21-24 months   GMS-Nepal        NEPAL                          1               251     329
21-24 months   GMS-Nepal        NEPAL                          0                78     329
21-24 months   IRC              INDIA                          1                 0      12
21-24 months   IRC              INDIA                          0                12      12
21-24 months   Keneba           GAMBIA                         1               373    1123
21-24 months   Keneba           GAMBIA                         0               750    1123
21-24 months   LCNI-5           MALAWI                         1                25     141
21-24 months   LCNI-5           MALAWI                         0               116     141
21-24 months   MAL-ED           BANGLADESH                     1                29     200
21-24 months   MAL-ED           BANGLADESH                     0               171     200
21-24 months   MAL-ED           BRAZIL                         1                11     165
21-24 months   MAL-ED           BRAZIL                         0               154     165
21-24 months   MAL-ED           INDIA                          1                 2     208
21-24 months   MAL-ED           INDIA                          0               206     208
21-24 months   MAL-ED           NEPAL                          1                 5     218
21-24 months   MAL-ED           NEPAL                          0               213     218
21-24 months   MAL-ED           PERU                           1                 2     189
21-24 months   MAL-ED           PERU                           0               187     189
21-24 months   MAL-ED           SOUTH AFRICA                   1                 0     214
21-24 months   MAL-ED           SOUTH AFRICA                   0               214     214
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     192
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               192     192
21-24 months   PROVIDE          BANGLADESH                     1               111     471
21-24 months   PROVIDE          BANGLADESH                     0               360     471


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
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
![](/tmp/39429f78-0410-4dea-926b-8ae1c9517489/99649b70-665c-43f0-981d-7d429ef88292/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/39429f78-0410-4dea-926b-8ae1c9517489/99649b70-665c-43f0-981d-7d429ef88292/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/39429f78-0410-4dea-926b-8ae1c9517489/99649b70-665c-43f0-981d-7d429ef88292/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                3.6064403   3.5477991   3.6650815
0-3 months     GMS-Nepal      NEPAL        0                    NA                3.5756322   3.4678493   3.6834151
0-3 months     JiVitA-3       BANGLADESH   1                    NA                3.7215640   3.7077510   3.7353770
0-3 months     JiVitA-3       BANGLADESH   0                    NA                3.7371748   3.7125331   3.7618165
0-3 months     JiVitA-4       BANGLADESH   1                    NA                3.6622672   3.6290525   3.6954818
0-3 months     JiVitA-4       BANGLADESH   0                    NA                3.5184595   3.4342439   3.6026751
0-3 months     Keneba         GAMBIA       1                    NA                3.1051027   3.0212438   3.1889616
0-3 months     Keneba         GAMBIA       0                    NA                3.1041545   3.0443502   3.1639588
0-3 months     MAL-ED         BANGLADESH   1                    NA                3.3863758   3.2373349   3.5354167
0-3 months     MAL-ED         BANGLADESH   0                    NA                3.3417644   3.2666029   3.4169260
0-3 months     MAL-ED         BRAZIL       1                    NA                4.1001464   3.4832446   4.7170481
0-3 months     MAL-ED         BRAZIL       0                    NA                3.8064228   3.6939940   3.9188516
0-3 months     PROVIDE        BANGLADESH   1                    NA                3.2564193   3.1899656   3.3228731
0-3 months     PROVIDE        BANGLADESH   0                    NA                3.2580981   3.2140352   3.3021610
0-3 months     SAS-CompFeed   INDIA        1                    NA                3.3690067   3.3102385   3.4277750
0-3 months     SAS-CompFeed   INDIA        0                    NA                3.0241617   2.8789993   3.1693241
3-6 months     GMS-Nepal      NEPAL        1                    NA                1.7290586   1.6831784   1.7749389
3-6 months     GMS-Nepal      NEPAL        0                    NA                1.6539447   1.5764764   1.7314129
3-6 months     JiVitA-3       BANGLADESH   1                    NA                1.9195730   1.9042371   1.9349090
3-6 months     JiVitA-3       BANGLADESH   0                    NA                1.9173584   1.8925727   1.9421441
3-6 months     JiVitA-4       BANGLADESH   1                    NA                1.8817415   1.8488447   1.9146383
3-6 months     JiVitA-4       BANGLADESH   0                    NA                1.9640888   1.8882717   2.0399058
3-6 months     Keneba         GAMBIA       1                    NA                1.9752466   1.9031953   2.0472978
3-6 months     Keneba         GAMBIA       0                    NA                2.0002572   1.9514258   2.0490886
3-6 months     MAL-ED         BANGLADESH   1                    NA                1.9562077   1.7902339   2.1221816
3-6 months     MAL-ED         BANGLADESH   0                    NA                1.9193136   1.8666496   1.9719775
3-6 months     MAL-ED         BRAZIL       1                    NA                2.3495395   2.0413118   2.6577672
3-6 months     MAL-ED         BRAZIL       0                    NA                2.1336249   2.0520310   2.2152189
3-6 months     MAL-ED         PERU         1                    NA                2.3622909   2.0228505   2.7017313
3-6 months     MAL-ED         PERU         0                    NA                2.0104898   1.9431975   2.0777821
3-6 months     PROVIDE        BANGLADESH   1                    NA                2.0110854   1.9450351   2.0771357
3-6 months     PROVIDE        BANGLADESH   0                    NA                1.9520154   1.9127545   1.9912763
3-6 months     SAS-CompFeed   INDIA        1                    NA                1.8960011   1.8158961   1.9761060
3-6 months     SAS-CompFeed   INDIA        0                    NA                2.0877888   1.7145949   2.4609828
6-9 months     EE             PAKISTAN     1                    NA                1.1144238   0.9844462   1.2444013
6-9 months     EE             PAKISTAN     0                    NA                1.2194058   1.0438676   1.3949439
6-9 months     GMS-Nepal      NEPAL        1                    NA                1.3151777   1.2738648   1.3564907
6-9 months     GMS-Nepal      NEPAL        0                    NA                1.3106437   1.2035353   1.4177521
6-9 months     JiVitA-4       BANGLADESH   1                    NA                1.3226352   1.2990520   1.3462184
6-9 months     JiVitA-4       BANGLADESH   0                    NA                1.3345937   1.2881655   1.3810219
6-9 months     Keneba         GAMBIA       1                    NA                1.4722797   1.3674533   1.5771062
6-9 months     Keneba         GAMBIA       0                    NA                1.3755786   1.3139647   1.4371925
6-9 months     LCNI-5         MALAWI       1                    NA                1.4504298   1.2732863   1.6275734
6-9 months     LCNI-5         MALAWI       0                    NA                1.4347776   1.3694403   1.5001149
6-9 months     MAL-ED         BANGLADESH   1                    NA                1.2528786   1.1610654   1.3446918
6-9 months     MAL-ED         BANGLADESH   0                    NA                1.2543456   1.2094693   1.2992219
6-9 months     MAL-ED         BRAZIL       1                    NA                1.4215571   1.1971664   1.6459478
6-9 months     MAL-ED         BRAZIL       0                    NA                1.4870875   1.4027031   1.5714719
6-9 months     MAL-ED         NEPAL        1                    NA                1.2396783   1.0117486   1.4676080
6-9 months     MAL-ED         NEPAL        0                    NA                1.3547135   1.3095232   1.3999037
6-9 months     MAL-ED         PERU         1                    NA                1.2198364   1.1255361   1.3141367
6-9 months     MAL-ED         PERU         0                    NA                1.3220832   1.2664382   1.3777282
6-9 months     PROVIDE        BANGLADESH   1                    NA                1.2482032   1.1956573   1.3007491
6-9 months     PROVIDE        BANGLADESH   0                    NA                1.2922388   1.2635399   1.3209378
6-9 months     SAS-CompFeed   INDIA        1                    NA                1.2102272   1.1275127   1.2929417
6-9 months     SAS-CompFeed   INDIA        0                    NA                1.2065455   0.8980285   1.5150624
9-12 months    EE             PAKISTAN     1                    NA                0.8435058   0.7523586   0.9346530
9-12 months    EE             PAKISTAN     0                    NA                0.8866775   0.6533943   1.1199607
9-12 months    GMS-Nepal      NEPAL        1                    NA                0.9897541   0.9551449   1.0243633
9-12 months    GMS-Nepal      NEPAL        0                    NA                1.0245910   0.9391313   1.1100507
9-12 months    JiVitA-4       BANGLADESH   1                    NA                1.0699404   1.0478210   1.0920597
9-12 months    JiVitA-4       BANGLADESH   0                    NA                1.0686896   1.0292727   1.1081065
9-12 months    Keneba         GAMBIA       1                    NA                0.9685836   0.8970157   1.0401515
9-12 months    Keneba         GAMBIA       0                    NA                0.9881405   0.9353338   1.0409472
9-12 months    LCNI-5         MALAWI       1                    NA                1.1282752   0.9389981   1.3175524
9-12 months    LCNI-5         MALAWI       0                    NA                0.8989795   0.7125644   1.0853947
9-12 months    MAL-ED         BANGLADESH   1                    NA                0.9177812   0.8277894   1.0077731
9-12 months    MAL-ED         BANGLADESH   0                    NA                0.9956239   0.9528872   1.0383607
9-12 months    MAL-ED         BRAZIL       1                    NA                1.1695747   0.9449822   1.3941672
9-12 months    MAL-ED         BRAZIL       0                    NA                1.3067404   1.2292204   1.3842604
9-12 months    MAL-ED         PERU         1                    NA                1.0867030   0.9036721   1.2697339
9-12 months    MAL-ED         PERU         0                    NA                1.0987691   1.0467589   1.1507794
9-12 months    PROVIDE        BANGLADESH   1                    NA                1.0168885   0.9610769   1.0727001
9-12 months    PROVIDE        BANGLADESH   0                    NA                1.0599390   1.0292074   1.0906705
9-12 months    SAS-CompFeed   INDIA        1                    NA                0.9737894   0.9007528   1.0468260
9-12 months    SAS-CompFeed   INDIA        0                    NA                1.2192187   0.9749390   1.4634984
12-15 months   EE             PAKISTAN     1                    NA                0.9994382   0.9109531   1.0879233
12-15 months   EE             PAKISTAN     0                    NA                1.1691763   0.8641761   1.4741764
12-15 months   GMS-Nepal      NEPAL        1                    NA                0.8743708   0.8459622   0.9027795
12-15 months   GMS-Nepal      NEPAL        0                    NA                0.8582272   0.8010066   0.9154478
12-15 months   JiVitA-4       BANGLADESH   1                    NA                0.9289982   0.9099665   0.9480298
12-15 months   JiVitA-4       BANGLADESH   0                    NA                0.9755134   0.9361120   1.0149147
12-15 months   Keneba         GAMBIA       1                    NA                0.9521170   0.9040366   1.0001973
12-15 months   Keneba         GAMBIA       0                    NA                0.9377072   0.8983273   0.9770870
12-15 months   MAL-ED         BANGLADESH   1                    NA                0.9114788   0.8271723   0.9957853
12-15 months   MAL-ED         BANGLADESH   0                    NA                0.9213455   0.8753832   0.9673077
12-15 months   MAL-ED         BRAZIL       1                    NA                1.2836112   1.0563963   1.5108261
12-15 months   MAL-ED         BRAZIL       0                    NA                1.1323099   1.0714555   1.1931643
12-15 months   PROVIDE        BANGLADESH   1                    NA                0.9660064   0.9201529   1.0118600
12-15 months   PROVIDE        BANGLADESH   0                    NA                0.9578084   0.9266254   0.9889915
12-15 months   SAS-CompFeed   INDIA        1                    NA                0.8468877   0.7712286   0.9225469
12-15 months   SAS-CompFeed   INDIA        0                    NA                0.6441206   0.3660282   0.9222130
15-18 months   EE             PAKISTAN     1                    NA                0.8264950   0.7398782   0.9131119
15-18 months   EE             PAKISTAN     0                    NA                0.9035877   0.8122406   0.9949348
15-18 months   GMS-Nepal      NEPAL        1                    NA                0.7828462   0.7429872   0.8227052
15-18 months   GMS-Nepal      NEPAL        0                    NA                0.6920497   0.6466460   0.7374534
15-18 months   JiVitA-4       BANGLADESH   1                    NA                0.8613341   0.8414264   0.8812418
15-18 months   JiVitA-4       BANGLADESH   0                    NA                0.8610625   0.8247995   0.8973255
15-18 months   Keneba         GAMBIA       1                    NA                0.8977561   0.8378726   0.9576395
15-18 months   Keneba         GAMBIA       0                    NA                0.8779993   0.8396186   0.9163800
15-18 months   MAL-ED         BANGLADESH   1                    NA                0.9112508   0.8263811   0.9961205
15-18 months   MAL-ED         BANGLADESH   0                    NA                0.8078230   0.7663971   0.8492489
15-18 months   MAL-ED         BRAZIL       1                    NA                1.0711077   0.8242713   1.3179441
15-18 months   MAL-ED         BRAZIL       0                    NA                0.9970319   0.9362990   1.0577648
15-18 months   MAL-ED         NEPAL        1                    NA                0.8276007   0.7021974   0.9530041
15-18 months   MAL-ED         NEPAL        0                    NA                0.8429471   0.7991561   0.8867381
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
18-21 months   MAL-ED         BANGLADESH   1                    NA                0.7538724   0.6489187   0.8588262
18-21 months   MAL-ED         BANGLADESH   0                    NA                0.8306016   0.7939514   0.8672519
18-21 months   MAL-ED         BRAZIL       1                    NA                0.7953238   0.6640449   0.9266027
18-21 months   MAL-ED         BRAZIL       0                    NA                0.9245904   0.8495358   0.9996450
18-21 months   MAL-ED         NEPAL        1                    NA                0.6943747   0.5519923   0.8367570
18-21 months   MAL-ED         NEPAL        0                    NA                0.8135873   0.7744237   0.8527509
18-21 months   PROVIDE        BANGLADESH   1                    NA                0.7983557   0.7483943   0.8483172
18-21 months   PROVIDE        BANGLADESH   0                    NA                0.8517804   0.8245460   0.8790148
21-24 months   GMS-Nepal      NEPAL        1                    NA                0.7857736   0.7367666   0.8347806
21-24 months   GMS-Nepal      NEPAL        0                    NA                0.8245095   0.7098501   0.9391690
21-24 months   Keneba         GAMBIA       1                    NA                0.6962539   0.6317129   0.7607949
21-24 months   Keneba         GAMBIA       0                    NA                0.7277588   0.6865183   0.7689993
21-24 months   LCNI-5         MALAWI       1                    NA                0.7347572   0.5989843   0.8705300
21-24 months   LCNI-5         MALAWI       0                    NA                0.7341491   0.6568139   0.8114842
21-24 months   MAL-ED         BANGLADESH   1                    NA                0.7834467   0.6881239   0.8787695
21-24 months   MAL-ED         BANGLADESH   0                    NA                0.7697457   0.7304550   0.8090364
21-24 months   MAL-ED         BRAZIL       1                    NA                0.7628601   0.6538478   0.8718724
21-24 months   MAL-ED         BRAZIL       0                    NA                0.7985299   0.7520055   0.8450543
21-24 months   MAL-ED         NEPAL        1                    NA                1.0103156   0.7162814   1.3043497
21-24 months   MAL-ED         NEPAL        0                    NA                0.7809671   0.7390545   0.8228797
21-24 months   PROVIDE        BANGLADESH   1                    NA                0.7403173   0.6898597   0.7907750
21-24 months   PROVIDE        BANGLADESH   0                    NA                0.7701757   0.7408583   0.7994932


### Parameter: E(Y)


agecat         studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL        NA                   NA                3.5982617   3.5465367   3.6499867
0-3 months     JiVitA-3       BANGLADESH   NA                   NA                3.7251075   3.7124931   3.7377219
0-3 months     JiVitA-4       BANGLADESH   NA                   NA                3.6386843   3.6074983   3.6698703
0-3 months     Keneba         GAMBIA       NA                   NA                3.1044617   3.0557519   3.1531714
0-3 months     MAL-ED         BANGLADESH   NA                   NA                3.3482498   3.2804281   3.4160715
0-3 months     MAL-ED         BRAZIL       NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     PROVIDE        BANGLADESH   NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed   INDIA        NA                   NA                3.3522434   3.2847848   3.4197021
3-6 months     GMS-Nepal      NEPAL        NA                   NA                1.7086613   1.6690533   1.7482692
3-6 months     JiVitA-3       BANGLADESH   NA                   NA                1.9190532   1.9057476   1.9323587
3-6 months     JiVitA-4       BANGLADESH   NA                   NA                1.8947099   1.8645495   1.9248703
3-6 months     Keneba         GAMBIA       NA                   NA                1.9931730   1.9526530   2.0336930
3-6 months     MAL-ED         BANGLADESH   NA                   NA                1.9247979   1.8735932   1.9760025
3-6 months     MAL-ED         BRAZIL       NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED         PERU         NA                   NA                2.0171026   1.9506965   2.0835088
3-6 months     PROVIDE        BANGLADESH   NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed   INDIA        NA                   NA                1.9051097   1.8384221   1.9717974
6-9 months     EE             PAKISTAN     NA                   NA                1.1260884   1.0085133   1.2436636
6-9 months     GMS-Nepal      NEPAL        NA                   NA                1.3140299   1.2729534   1.3551064
6-9 months     JiVitA-4       BANGLADESH   NA                   NA                1.3251314   1.3038170   1.3464459
6-9 months     Keneba         GAMBIA       NA                   NA                1.4042923   1.3508641   1.4577205
6-9 months     LCNI-5         MALAWI       NA                   NA                1.4372604   1.3755150   1.4990057
6-9 months     MAL-ED         BANGLADESH   NA                   NA                1.2541293   1.2135456   1.2947130
6-9 months     MAL-ED         BRAZIL       NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED         NEPAL        NA                   NA                1.3520991   1.3076136   1.3965845
6-9 months     MAL-ED         PERU         NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     PROVIDE        BANGLADESH   NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed   INDIA        NA                   NA                1.2100652   1.1296030   1.2905275
9-12 months    EE             PAKISTAN     NA                   NA                0.8484117   0.7632855   0.9335379
9-12 months    GMS-Nepal      NEPAL        NA                   NA                0.9981924   0.9647527   1.0316321
9-12 months    JiVitA-4       BANGLADESH   NA                   NA                1.0696646   1.0503114   1.0890177
9-12 months    Keneba         GAMBIA       NA                   NA                0.9818764   0.9392834   1.0244694
9-12 months    LCNI-5         MALAWI       NA                   NA                0.9706344   0.8246089   1.1166600
9-12 months    MAL-ED         BANGLADESH   NA                   NA                0.9848124   0.9457805   1.0238444
9-12 months    MAL-ED         BRAZIL       NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED         PERU         NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    PROVIDE        BANGLADESH   NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed   INDIA        NA                   NA                0.9826276   0.9088962   1.0563590
12-15 months   EE             PAKISTAN     NA                   NA                1.0223758   0.9334119   1.1113396
12-15 months   GMS-Nepal      NEPAL        NA                   NA                0.8704063   0.8447703   0.8960424
12-15 months   JiVitA-4       BANGLADESH   NA                   NA                0.9393119   0.9219119   0.9567119
12-15 months   Keneba         GAMBIA       NA                   NA                0.9424871   0.9117122   0.9732620
12-15 months   MAL-ED         BANGLADESH   NA                   NA                0.9199912   0.8786810   0.9613015
12-15 months   MAL-ED         BRAZIL       NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   PROVIDE        BANGLADESH   NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed   INDIA        NA                   NA                0.8406400   0.7684485   0.9128315
15-18 months   EE             PAKISTAN     NA                   NA                0.8381757   0.7627800   0.9135715
15-18 months   GMS-Nepal      NEPAL        NA                   NA                0.7603933   0.7281594   0.7926271
15-18 months   JiVitA-4       BANGLADESH   NA                   NA                0.8612746   0.8433730   0.8791761
15-18 months   Keneba         GAMBIA       NA                   NA                0.8848169   0.8522726   0.9173611
15-18 months   MAL-ED         BANGLADESH   NA                   NA                0.8230330   0.7852223   0.8608436
15-18 months   MAL-ED         BRAZIL       NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED         NEPAL        NA                   NA                0.8425951   0.7997829   0.8854074
15-18 months   PROVIDE        BANGLADESH   NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed   INDIA        NA                   NA                0.8909184   0.8304593   0.9513775
18-21 months   EE             PAKISTAN     NA                   NA                0.7870620   0.7131718   0.8609522
18-21 months   GMS-Nepal      NEPAL        NA                   NA                0.9058703   0.8708102   0.9409303
18-21 months   Keneba         GAMBIA       NA                   NA                0.8142039   0.7785744   0.8498334
18-21 months   LCNI-5         MALAWI       NA                   NA                0.8419773   0.7481346   0.9358201
18-21 months   MAL-ED         BANGLADESH   NA                   NA                0.8195860   0.7845702   0.8546019
18-21 months   MAL-ED         BRAZIL       NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED         NEPAL        NA                   NA                0.8108531   0.7724296   0.8492765
18-21 months   PROVIDE        BANGLADESH   NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   GMS-Nepal      NEPAL        NA                   NA                0.7949572   0.7486969   0.8412176
21-24 months   Keneba         GAMBIA       NA                   NA                0.7172946   0.6823819   0.7522072
21-24 months   LCNI-5         MALAWI       NA                   NA                0.7342569   0.6662316   0.8022822
21-24 months   MAL-ED         BANGLADESH   NA                   NA                0.7717324   0.7354003   0.8080644
21-24 months   MAL-ED         BRAZIL       NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED         NEPAL        NA                   NA                0.7862274   0.7444562   0.8279985
21-24 months   PROVIDE        BANGLADESH   NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL        0                    1                 -0.0308081   -0.1535108    0.0918945
0-3 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH   0                    1                  0.0156108   -0.0112197    0.0424412
0-3 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH   0                    1                 -0.1438076   -0.2343008   -0.0533144
0-3 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA       0                    1                 -0.0009482   -0.1039476    0.1020511
0-3 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH   0                    1                 -0.0446113   -0.2115319    0.1223092
0-3 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL       0                    1                 -0.2937235   -0.9207865    0.3333394
0-3 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH   0                    1                  0.0016788   -0.0780561    0.0814136
0-3 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA        0                    1                 -0.3448451   -0.4888470   -0.2008431
3-6 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL        0                    1                 -0.0751140   -0.1651491    0.0149212
3-6 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH   0                    1                 -0.0022147   -0.0308330    0.0264037
3-6 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4       BANGLADESH   0                    1                  0.0823473   -0.0005159    0.1652105
3-6 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA       0                    1                  0.0250106   -0.0620290    0.1120502
3-6 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH   0                    1                 -0.0368942   -0.2110229    0.1372346
3-6 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL       0                    1                 -0.2159146   -0.5347592    0.1029300
3-6 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU         0                    1                 -0.3518011   -0.6978474   -0.0057548
3-6 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH   0                    1                 -0.0590700   -0.1359078    0.0177679
3-6 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA        0                    1                  0.1917877   -0.2223652    0.6059407
6-9 months     EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN     0                    1                  0.1049820   -0.1134392    0.3234031
6-9 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL        0                    1                 -0.0045341   -0.1193337    0.1102656
6-9 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4       BANGLADESH   0                    1                  0.0119585   -0.0394310    0.0633481
6-9 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA       0                    1                 -0.0967011   -0.2182941    0.0248919
6-9 months     LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5         MALAWI       0                    1                 -0.0156522   -0.2044611    0.1731567
6-9 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH   0                    1                  0.0014670   -0.1007267    0.1036606
6-9 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL       0                    1                  0.0655304   -0.1742027    0.3052634
6-9 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL        0                    1                  0.1150352   -0.1173312    0.3474015
6-9 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU         0                    1                  0.1022468   -0.0072471    0.2117407
6-9 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH   0                    1                  0.0440356   -0.0158368    0.1039079
6-9 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA        0                    1                 -0.0036818   -0.3214634    0.3140999
9-12 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN     0                    1                  0.0431716   -0.2072856    0.2936289
9-12 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL        0                    1                  0.0348369   -0.0573648    0.1270386
9-12 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH   0                    1                 -0.0012508   -0.0463362    0.0438346
9-12 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA       0                    1                  0.0195569   -0.0693842    0.1084980
9-12 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5         MALAWI       0                    1                 -0.2292957   -0.4949580    0.0363666
9-12 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH   0                    1                  0.0778427   -0.0217814    0.1774668
9-12 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL       0                    1                  0.1371657   -0.1004288    0.3747602
9-12 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU         0                    1                  0.0120661   -0.1782110    0.2023432
9-12 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH   0                    1                  0.0430505   -0.0206627    0.1067636
9-12 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA        0                    1                  0.2454293    0.0355874    0.4552712
12-15 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN     0                    1                  0.1697381   -0.1478382    0.4873144
12-15 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL        0                    1                 -0.0161437   -0.0800283    0.0477410
12-15 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH   0                    1                  0.0465152    0.0029896    0.0900408
12-15 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA       0                    1                 -0.0144098   -0.0765588    0.0477392
12-15 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH   0                    1                  0.0098667   -0.0861547    0.1058881
12-15 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL       0                    1                 -0.1513013   -0.3865243    0.0839217
12-15 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH   0                    1                 -0.0081980   -0.0636501    0.0472541
12-15 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA        0                    1                 -0.2027671   -0.5054467    0.0999125
15-18 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN     0                    1                  0.0770926   -0.0487913    0.2029766
15-18 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL        0                    1                 -0.0907965   -0.1512138   -0.0303793
15-18 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH   0                    1                 -0.0002716   -0.0405186    0.0399754
15-18 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA       0                    1                 -0.0197568   -0.0908842    0.0513706
15-18 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH   0                    1                 -0.1034278   -0.1978681   -0.0089875
15-18 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL       0                    1                 -0.0740758   -0.3282739    0.1801223
15-18 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL        0                    1                  0.0153464   -0.1174830    0.1481758
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
18-21 months   MAL-ED         BANGLADESH   0                    1                  0.0767292   -0.0344397    0.1878981
18-21 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL       0                    1                  0.1292666   -0.0219529    0.2804861
18-21 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL        0                    1                  0.1192127   -0.0284576    0.2668829
18-21 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH   0                    1                  0.0534247   -0.0034776    0.1103269
21-24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL        0                    1                  0.0387359   -0.0859577    0.1634294
21-24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA       0                    1                  0.0315049   -0.0450870    0.1080968
21-24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5         MALAWI       0                    1                 -0.0006081   -0.1568611    0.1556449
21-24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH   0                    1                 -0.0137009   -0.1168038    0.0894019
21-24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL       0                    1                  0.0356697   -0.0828553    0.1541948
21-24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL        0                    1                 -0.2293485   -0.5263548    0.0676578
21-24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH   0                    1                  0.0298584   -0.0284981    0.0882149


### Parameter: PAR


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0081786   -0.0407742    0.0244170
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0035434   -0.0025522    0.0096391
0-3 months     JiVitA-4       BANGLADESH   1                    NA                -0.0235829   -0.0387366   -0.0084291
0-3 months     Keneba         GAMBIA       1                    NA                -0.0006410   -0.0702744    0.0689923
0-3 months     MAL-ED         BANGLADESH   1                    NA                -0.0381260   -0.1807953    0.1045433
0-3 months     MAL-ED         BRAZIL       1                    NA                -0.2811096   -0.8813136    0.3190943
0-3 months     PROVIDE        BANGLADESH   1                    NA                 0.0012617   -0.0586641    0.0611874
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.0167633   -0.0274939   -0.0060327
3-6 months     GMS-Nepal      NEPAL        1                    NA                -0.0203973   -0.0450352    0.0042405
3-6 months     JiVitA-3       BANGLADESH   1                    NA                -0.0005199   -0.0072361    0.0061964
3-6 months     JiVitA-4       BANGLADESH   1                    NA                 0.0129684   -0.0002245    0.0261613
3-6 months     Keneba         GAMBIA       1                    NA                 0.0179265   -0.0444625    0.0803154
3-6 months     MAL-ED         BANGLADESH   1                    NA                -0.0314099   -0.1796647    0.1168449
3-6 months     MAL-ED         BRAZIL       1                    NA                -0.2034580   -0.5039860    0.0970700
3-6 months     MAL-ED         PERU         1                    NA                -0.3451883   -0.6826324   -0.0077441
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0453397   -0.1043512    0.0136719
3-6 months     SAS-CompFeed   INDIA        1                    NA                 0.0091087   -0.0137757    0.0319930
6-9 months     EE             PAKISTAN     1                    NA                 0.0116647   -0.0144891    0.0378184
6-9 months     GMS-Nepal      NEPAL        1                    NA                -0.0011479   -0.0302116    0.0279159
6-9 months     JiVitA-4       BANGLADESH   1                    NA                 0.0024962   -0.0082325    0.0132249
6-9 months     Keneba         GAMBIA       1                    NA                -0.0679874   -0.1535294    0.0175545
6-9 months     LCNI-5         MALAWI       1                    NA                -0.0131694   -0.1720321    0.1456932
6-9 months     MAL-ED         BANGLADESH   1                    NA                 0.0012506   -0.0858730    0.0883743
6-9 months     MAL-ED         BRAZIL       1                    NA                 0.0615588   -0.1636555    0.2867732
6-9 months     MAL-ED         NEPAL        1                    NA                 0.1124208   -0.1141478    0.3389893
6-9 months     MAL-ED         PERU         1                    NA                 0.1001601   -0.0066119    0.2069321
6-9 months     PROVIDE        BANGLADESH   1                    NA                 0.0342153   -0.0123296    0.0807601
6-9 months     SAS-CompFeed   INDIA        1                    NA                -0.0001620   -0.0141436    0.0138197
9-12 months    EE             PAKISTAN     1                    NA                 0.0049059   -0.0238483    0.0336600
9-12 months    GMS-Nepal      NEPAL        1                    NA                 0.0084383   -0.0139377    0.0308142
9-12 months    JiVitA-4       BANGLADESH   1                    NA                -0.0002758   -0.0102164    0.0096649
9-12 months    Keneba         GAMBIA       1                    NA                 0.0132928   -0.0471636    0.0737491
9-12 months    LCNI-5         MALAWI       1                    NA                -0.1576408   -0.3440762    0.0287946
9-12 months    MAL-ED         BANGLADESH   1                    NA                 0.0670312   -0.0188317    0.1528941
9-12 months    MAL-ED         BRAZIL       1                    NA                 0.1286812   -0.0942655    0.3516279
9-12 months    MAL-ED         PERU         1                    NA                 0.0118094   -0.1737109    0.1973297
9-12 months    PROVIDE        BANGLADESH   1                    NA                 0.0330865   -0.0159032    0.0820762
9-12 months    SAS-CompFeed   INDIA        1                    NA                 0.0088382    0.0007584    0.0169180
12-15 months   EE             PAKISTAN     1                    NA                 0.0229376   -0.0239780    0.0698531
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0039645   -0.0196661    0.0117371
12-15 months   JiVitA-4       BANGLADESH   1                    NA                 0.0103137    0.0005637    0.0200637
12-15 months   Keneba         GAMBIA       1                    NA                -0.0096299   -0.0511648    0.0319051
12-15 months   MAL-ED         BANGLADESH   1                    NA                 0.0085124   -0.0743309    0.0913557
12-15 months   MAL-ED         BRAZIL       1                    NA                -0.1414338   -0.3613828    0.0785151
12-15 months   PROVIDE        BANGLADESH   1                    NA                -0.0062564   -0.0485761    0.0360633
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0062477   -0.0163716    0.0038761
15-18 months   EE             PAKISTAN     1                    NA                 0.0116807   -0.0096621    0.0330235
15-18 months   GMS-Nepal      NEPAL        1                    NA                -0.0224529   -0.0378163   -0.0070896
15-18 months   JiVitA-4       BANGLADESH   1                    NA                -0.0000595   -0.0088812    0.0087621
15-18 months   Keneba         GAMBIA       1                    NA                -0.0129392   -0.0595252    0.0336468
15-18 months   MAL-ED         BANGLADESH   1                    NA                -0.0882178   -0.1689273   -0.0075083
15-18 months   MAL-ED         BRAZIL       1                    NA                -0.0689963   -0.3057801    0.1677874
15-18 months   MAL-ED         NEPAL        1                    NA                 0.0149944   -0.1145146    0.1445034
15-18 months   PROVIDE        BANGLADESH   1                    NA                 0.0314267   -0.0129202    0.0757735
15-18 months   SAS-CompFeed   INDIA        1                    NA                 0.0036657   -0.0131608    0.0204923
18-21 months   EE             PAKISTAN     1                    NA                 0.0041563   -0.0160395    0.0243522
18-21 months   GMS-Nepal      NEPAL        1                    NA                 0.0069935   -0.0085328    0.0225198
18-21 months   Keneba         GAMBIA       1                    NA                -0.0154959   -0.0656497    0.0346579
18-21 months   LCNI-5         MALAWI       1                    NA                 0.1431401   -0.1878191    0.4740993
18-21 months   MAL-ED         BANGLADESH   1                    NA                 0.0657136   -0.0295680    0.1609953
18-21 months   MAL-ED         BRAZIL       1                    NA                 0.1207520   -0.0205911    0.2620952
18-21 months   MAL-ED         NEPAL        1                    NA                 0.1164784   -0.0275197    0.2604765
18-21 months   PROVIDE        BANGLADESH   1                    NA                 0.0409820   -0.0027092    0.0846731
21-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0091836   -0.0204327    0.0387999
21-24 months   Keneba         GAMBIA       1                    NA                 0.0210407   -0.0301189    0.0722002
21-24 months   LCNI-5         MALAWI       1                    NA                -0.0005003   -0.1290488    0.1280483
21-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0117143   -0.0998698    0.0764412
21-24 months   MAL-ED         BRAZIL       1                    NA                 0.0332918   -0.0773400    0.1439236
21-24 months   MAL-ED         NEPAL        1                    NA                -0.2240882   -0.5137054    0.0655290
21-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0228217   -0.0217967    0.0674401
