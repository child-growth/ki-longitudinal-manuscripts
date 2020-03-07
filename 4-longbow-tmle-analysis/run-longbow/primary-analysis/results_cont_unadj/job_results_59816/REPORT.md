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
![](/tmp/da1d6c04-c65a-42b3-ab2c-78a8ef0914d8/dab24d7f-f591-47f0-88ae-b7642d072bc0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/da1d6c04-c65a-42b3-ab2c-78a8ef0914d8/dab24d7f-f591-47f0-88ae-b7642d072bc0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/da1d6c04-c65a-42b3-ab2c-78a8ef0914d8/dab24d7f-f591-47f0-88ae-b7642d072bc0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0266193   -0.0555083    0.0022697
0-3 months     GMS-Nepal      NEPAL        0                    NA                -0.0468944   -0.1000574    0.0062686
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0733017    0.0666063    0.0799970
0-3 months     JiVitA-3       BANGLADESH   0                    NA                 0.0800704    0.0682483    0.0918925
0-3 months     JiVitA-4       BANGLADESH   1                    NA                 0.0785831    0.0627697    0.0943965
0-3 months     JiVitA-4       BANGLADESH   0                    NA                 0.0108158   -0.0301937    0.0518252
0-3 months     Keneba         GAMBIA       1                    NA                -0.2819944   -0.3245682   -0.2394206
0-3 months     Keneba         GAMBIA       0                    NA                -0.2864323   -0.3168345   -0.2560300
0-3 months     MAL-ED         BANGLADESH   1                    NA                -0.0921192   -0.1739756   -0.0102628
0-3 months     MAL-ED         BANGLADESH   0                    NA                -0.1229660   -0.1614205   -0.0845114
0-3 months     MAL-ED         BRAZIL       1                    NA                 0.2966143   -0.0211040    0.6143325
0-3 months     MAL-ED         BRAZIL       0                    NA                 0.1378398    0.0796403    0.1960393
0-3 months     PROVIDE        BANGLADESH   1                    NA                -0.1840111   -0.2158075   -0.1522146
0-3 months     PROVIDE        BANGLADESH   0                    NA                -0.1893721   -0.2099562   -0.1687879
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.1260877   -0.1533780   -0.0987974
0-3 months     SAS-CompFeed   INDIA        0                    NA                -0.3044853   -0.3731562   -0.2358145
3-6 months     GMS-Nepal      NEPAL        1                    NA                -0.1518837   -0.1733340   -0.1304334
3-6 months     GMS-Nepal      NEPAL        0                    NA                -0.1882966   -0.2262022   -0.1503911
3-6 months     JiVitA-3       BANGLADESH   1                    NA                -0.0036438   -0.0106826    0.0033951
3-6 months     JiVitA-3       BANGLADESH   0                    NA                -0.0038799   -0.0154830    0.0077232
3-6 months     JiVitA-4       BANGLADESH   1                    NA                -0.0172507   -0.0324192   -0.0020822
3-6 months     JiVitA-4       BANGLADESH   0                    NA                 0.0246030   -0.0099760    0.0591820
3-6 months     Keneba         GAMBIA       1                    NA                -0.0223713   -0.0559272    0.0111846
3-6 months     Keneba         GAMBIA       0                    NA                -0.0154357   -0.0383759    0.0075046
3-6 months     MAL-ED         BANGLADESH   1                    NA                -0.0063091   -0.0849758    0.0723575
3-6 months     MAL-ED         BANGLADESH   0                    NA                -0.0273987   -0.0520797   -0.0027177
3-6 months     MAL-ED         BRAZIL       1                    NA                 0.1504700    0.0089826    0.2919574
3-6 months     MAL-ED         BRAZIL       0                    NA                 0.0541736    0.0165298    0.0918174
3-6 months     MAL-ED         PERU         1                    NA                 0.1763089    0.0068862    0.3457315
3-6 months     MAL-ED         PERU         0                    NA                 0.0236519   -0.0080991    0.0554029
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0004888   -0.0316178    0.0306403
3-6 months     PROVIDE        BANGLADESH   0                    NA                -0.0349796   -0.0533629   -0.0165963
3-6 months     SAS-CompFeed   INDIA        1                    NA                -0.0399400   -0.0754314   -0.0044486
3-6 months     SAS-CompFeed   INDIA        0                    NA                 0.0473330   -0.1273699    0.2220360
6-9 months     EE             PAKISTAN     1                    NA                -0.1102361   -0.1665884   -0.0538838
6-9 months     EE             PAKISTAN     0                    NA                -0.0939376   -0.1833491   -0.0045262
6-9 months     GMS-Nepal      NEPAL        1                    NA                -0.0452730   -0.0632001   -0.0273460
6-9 months     GMS-Nepal      NEPAL        0                    NA                -0.0456269   -0.0912016   -0.0000522
6-9 months     JiVitA-4       BANGLADESH   1                    NA                -0.0301087   -0.0403094   -0.0199080
6-9 months     JiVitA-4       BANGLADESH   0                    NA                -0.0228751   -0.0435512   -0.0021990
6-9 months     Keneba         GAMBIA       1                    NA                 0.0167135   -0.0290548    0.0624819
6-9 months     Keneba         GAMBIA       0                    NA                -0.0256767   -0.0529377    0.0015843
6-9 months     LCNI-5         MALAWI       1                    NA                 0.0130077   -0.0680361    0.0940515
6-9 months     LCNI-5         MALAWI       0                    NA                 0.0089411   -0.0193006    0.0371829
6-9 months     MAL-ED         BANGLADESH   1                    NA                -0.0675104   -0.1066253   -0.0283955
6-9 months     MAL-ED         BANGLADESH   0                    NA                -0.0677962   -0.0873365   -0.0482559
6-9 months     MAL-ED         BRAZIL       1                    NA                -0.0206433   -0.1188694    0.0775829
6-9 months     MAL-ED         BRAZIL       0                    NA                 0.0106819   -0.0258686    0.0472324
6-9 months     MAL-ED         NEPAL        1                    NA                -0.0901638   -0.1918341    0.0115066
6-9 months     MAL-ED         NEPAL        0                    NA                -0.0356189   -0.0553206   -0.0159172
6-9 months     MAL-ED         PERU         1                    NA                -0.0737873   -0.1136321   -0.0339426
6-9 months     MAL-ED         PERU         0                    NA                -0.0327407   -0.0574401   -0.0080413
6-9 months     PROVIDE        BANGLADESH   1                    NA                -0.0759688   -0.0984780   -0.0534596
6-9 months     PROVIDE        BANGLADESH   0                    NA                -0.0572525   -0.0695938   -0.0449112
6-9 months     SAS-CompFeed   INDIA        1                    NA                -0.0842031   -0.1218251   -0.0465811
6-9 months     SAS-CompFeed   INDIA        0                    NA                -0.0844663   -0.2198000    0.0508674
9-12 months    EE             PAKISTAN     1                    NA                -0.1276355   -0.1664421   -0.0888290
9-12 months    EE             PAKISTAN     0                    NA                -0.1346832   -0.2415573   -0.0278091
9-12 months    GMS-Nepal      NEPAL        1                    NA                -0.0837879   -0.0980696   -0.0695061
9-12 months    GMS-Nepal      NEPAL        0                    NA                -0.0664367   -0.1029354   -0.0299380
9-12 months    JiVitA-4       BANGLADESH   1                    NA                -0.0538587   -0.0630160   -0.0447013
9-12 months    JiVitA-4       BANGLADESH   0                    NA                -0.0495525   -0.0663415   -0.0327636
9-12 months    Keneba         GAMBIA       1                    NA                -0.1065497   -0.1362283   -0.0768711
9-12 months    Keneba         GAMBIA       0                    NA                -0.0972454   -0.1194881   -0.0750027
9-12 months    LCNI-5         MALAWI       1                    NA                -0.0518243   -0.1272823    0.0236337
9-12 months    LCNI-5         MALAWI       0                    NA                -0.1295742   -0.2051770   -0.0539714
9-12 months    MAL-ED         BANGLADESH   1                    NA                -0.1165100   -0.1521542   -0.0808658
9-12 months    MAL-ED         BANGLADESH   0                    NA                -0.0852510   -0.1031468   -0.0673551
9-12 months    MAL-ED         BRAZIL       1                    NA                -0.0452688   -0.1338903    0.0433527
9-12 months    MAL-ED         BRAZIL       0                    NA                 0.0117024   -0.0205597    0.0439645
9-12 months    MAL-ED         PERU         1                    NA                -0.0353182   -0.1171395    0.0465032
9-12 months    MAL-ED         PERU         0                    NA                -0.0420697   -0.0639794   -0.0201600
9-12 months    PROVIDE        BANGLADESH   1                    NA                -0.0758814   -0.0984783   -0.0532844
9-12 months    PROVIDE        BANGLADESH   0                    NA                -0.0591820   -0.0717081   -0.0466558
9-12 months    SAS-CompFeed   INDIA        1                    NA                -0.0911488   -0.1205098   -0.0617878
9-12 months    SAS-CompFeed   INDIA        0                    NA                 0.0125890   -0.0886478    0.1138258
12-15 months   EE             PAKISTAN     1                    NA                -0.0016762   -0.0345630    0.0312106
12-15 months   EE             PAKISTAN     0                    NA                 0.0416377   -0.0932971    0.1765724
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0695947   -0.0802935   -0.0588959
12-15 months   GMS-Nepal      NEPAL        0                    NA                -0.0712629   -0.0926345   -0.0498914
12-15 months   JiVitA-4       BANGLADESH   1                    NA                -0.0506018   -0.0577922   -0.0434115
12-15 months   JiVitA-4       BANGLADESH   0                    NA                -0.0289132   -0.0446389   -0.0131875
12-15 months   Keneba         GAMBIA       1                    NA                -0.0487094   -0.0675967   -0.0298222
12-15 months   Keneba         GAMBIA       0                    NA                -0.0519696   -0.0675174   -0.0364217
12-15 months   MAL-ED         BANGLADESH   1                    NA                -0.0543902   -0.0889479   -0.0198325
12-15 months   MAL-ED         BANGLADESH   0                    NA                -0.0539140   -0.0716108   -0.0362171
12-15 months   MAL-ED         BRAZIL       1                    NA                 0.0550189   -0.0363884    0.1464262
12-15 months   MAL-ED         BRAZIL       0                    NA                -0.0070938   -0.0302645    0.0160768
12-15 months   PROVIDE        BANGLADESH   1                    NA                -0.0387550   -0.0565277   -0.0209822
12-15 months   PROVIDE        BANGLADESH   0                    NA                -0.0415798   -0.0536015   -0.0295580
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0776938   -0.1069707   -0.0484168
12-15 months   SAS-CompFeed   INDIA        0                    NA                -0.1581388   -0.2642983   -0.0519793
15-18 months   EE             PAKISTAN     1                    NA                -0.0239930   -0.0525465    0.0045604
15-18 months   EE             PAKISTAN     0                    NA                -0.0267957   -0.0572607    0.0036694
15-18 months   GMS-Nepal      NEPAL        1                    NA                -0.0590986   -0.0736194   -0.0445779
15-18 months   GMS-Nepal      NEPAL        0                    NA                -0.0890620   -0.1053446   -0.0727794
15-18 months   JiVitA-4       BANGLADESH   1                    NA                -0.0329807   -0.0402869   -0.0256744
15-18 months   JiVitA-4       BANGLADESH   0                    NA                -0.0294498   -0.0425951   -0.0163046
15-18 months   Keneba         GAMBIA       1                    NA                -0.0265629   -0.0486076   -0.0045181
15-18 months   Keneba         GAMBIA       0                    NA                -0.0320819   -0.0462659   -0.0178980
15-18 months   MAL-ED         BANGLADESH   1                    NA                -0.0130624   -0.0432994    0.0171746
15-18 months   MAL-ED         BANGLADESH   0                    NA                -0.0523266   -0.0674757   -0.0371775
15-18 months   MAL-ED         BRAZIL       1                    NA                 0.0046678   -0.0786295    0.0879651
15-18 months   MAL-ED         BRAZIL       0                    NA                -0.0221835   -0.0439465   -0.0004205
15-18 months   MAL-ED         NEPAL        1                    NA                -0.0623720   -0.1122360   -0.0125080
15-18 months   MAL-ED         NEPAL        0                    NA                -0.0539038   -0.0697401   -0.0380676
15-18 months   PROVIDE        BANGLADESH   1                    NA                -0.0487774   -0.0669209   -0.0306340
15-18 months   PROVIDE        BANGLADESH   0                    NA                -0.0340441   -0.0439931   -0.0240951
15-18 months   SAS-CompFeed   INDIA        1                    NA                -0.0170525   -0.0374220    0.0033170
15-18 months   SAS-CompFeed   INDIA        0                    NA                 0.0155812   -0.1614923    0.1926548
18-21 months   EE             PAKISTAN     1                    NA                -0.0093635   -0.0349812    0.0162542
18-21 months   EE             PAKISTAN     0                    NA                -0.0265882   -0.0706485    0.0174721
18-21 months   GMS-Nepal      NEPAL        1                    NA                 0.0135341   -0.0015118    0.0285800
18-21 months   GMS-Nepal      NEPAL        0                    NA                 0.0260886    0.0097671    0.0424101
18-21 months   Keneba         GAMBIA       1                    NA                -0.0190282   -0.0408678    0.0028115
18-21 months   Keneba         GAMBIA       0                    NA                -0.0242453   -0.0392498   -0.0092407
18-21 months   LCNI-5         MALAWI       1                    NA                -0.0578036   -0.1993216    0.0837143
18-21 months   LCNI-5         MALAWI       0                    NA                 0.0007623   -0.0262457    0.0277704
18-21 months   MAL-ED         BANGLADESH   1                    NA                -0.0360625   -0.0698690   -0.0022561
18-21 months   MAL-ED         BANGLADESH   0                    NA                -0.0099418   -0.0225010    0.0026173
18-21 months   MAL-ED         BRAZIL       1                    NA                -0.0581941   -0.1062140   -0.0101742
18-21 months   MAL-ED         BRAZIL       0                    NA                -0.0176911   -0.0437052    0.0083230
18-21 months   MAL-ED         NEPAL        1                    NA                -0.0729293   -0.1201994   -0.0256593
18-21 months   MAL-ED         NEPAL        0                    NA                -0.0295862   -0.0430048   -0.0161677
18-21 months   PROVIDE        BANGLADESH   1                    NA                -0.0232495   -0.0403659   -0.0061330
18-21 months   PROVIDE        BANGLADESH   0                    NA                -0.0072025   -0.0164519    0.0020469
21-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0452387    0.0284395    0.0620378
21-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0508222    0.0112917    0.0903527
21-24 months   Keneba         GAMBIA       1                    NA                 0.0074332   -0.0138170    0.0286835
21-24 months   Keneba         GAMBIA       0                    NA                 0.0204036    0.0065104    0.0342967
21-24 months   LCNI-5         MALAWI       1                    NA                -0.0119023   -0.0556287    0.0318242
21-24 months   LCNI-5         MALAWI       0                    NA                -0.0115650   -0.0365774    0.0134475
21-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0258696   -0.0049601    0.0566993
21-24 months   MAL-ED         BANGLADESH   0                    NA                 0.0255823    0.0120837    0.0390810
21-24 months   MAL-ED         BRAZIL       1                    NA                 0.0045893   -0.0399095    0.0490881
21-24 months   MAL-ED         BRAZIL       0                    NA                 0.0173369    0.0004985    0.0341752
21-24 months   MAL-ED         NEPAL        1                    NA                 0.0818375   -0.0062005    0.1698756
21-24 months   MAL-ED         NEPAL        0                    NA                 0.0043644   -0.0097178    0.0184466
21-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0397270    0.0219505    0.0575034
21-24 months   PROVIDE        BANGLADESH   0                    NA                 0.0482406    0.0383531    0.0581281


### Parameter: E(Y)


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        NA                   NA                -0.0320017   -0.0574984   -0.0065051
0-3 months     JiVitA-3       BANGLADESH   NA                   NA                 0.0748381    0.0686962    0.0809800
0-3 months     JiVitA-4       BANGLADESH   NA                   NA                 0.0674700    0.0524969    0.0824432
0-3 months     Keneba         GAMBIA       NA                   NA                -0.2849946   -0.3097468   -0.2602425
0-3 months     MAL-ED         BANGLADESH   NA                   NA                -0.1184816   -0.1534627   -0.0835006
0-3 months     MAL-ED         BRAZIL       NA                   NA                 0.1446583    0.0870976    0.2022191
0-3 months     PROVIDE        BANGLADESH   NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     SAS-CompFeed   INDIA        NA                   NA                -0.1347598   -0.1669848   -0.1025348
3-6 months     GMS-Nepal      NEPAL        NA                   NA                -0.1617717   -0.1805409   -0.1430025
3-6 months     JiVitA-3       BANGLADESH   NA                   NA                -0.0036992   -0.0098266    0.0024282
3-6 months     JiVitA-4       BANGLADESH   NA                   NA                -0.0106594   -0.0245209    0.0032020
3-6 months     Keneba         GAMBIA       NA                   NA                -0.0174002   -0.0363928    0.0015925
3-6 months     MAL-ED         BANGLADESH   NA                   NA                -0.0242637   -0.0483310   -0.0001965
3-6 months     MAL-ED         BRAZIL       NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED         PERU         NA                   NA                 0.0265214   -0.0048238    0.0578666
3-6 months     PROVIDE        BANGLADESH   NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     SAS-CompFeed   INDIA        NA                   NA                -0.0357951   -0.0659472   -0.0056430
6-9 months     EE             PAKISTAN     NA                   NA                -0.1084252   -0.1595142   -0.0573361
6-9 months     GMS-Nepal      NEPAL        NA                   NA                -0.0453626   -0.0630368   -0.0276885
6-9 months     JiVitA-4       BANGLADESH   NA                   NA                -0.0285987   -0.0378556   -0.0193419
6-9 months     Keneba         GAMBIA       NA                   NA                -0.0130897   -0.0366228    0.0104435
6-9 months     LCNI-5         MALAWI       NA                   NA                 0.0095862   -0.0174314    0.0366037
6-9 months     MAL-ED         BANGLADESH   NA                   NA                -0.0677541   -0.0853832   -0.0501249
6-9 months     MAL-ED         BRAZIL       NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED         NEPAL        NA                   NA                -0.0368585   -0.0562650   -0.0174521
6-9 months     MAL-ED         PERU         NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     PROVIDE        BANGLADESH   NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed   INDIA        NA                   NA                -0.0842147   -0.1210357   -0.0473936
9-12 months    EE             PAKISTAN     NA                   NA                -0.1284364   -0.1649203   -0.0919525
9-12 months    GMS-Nepal      NEPAL        NA                   NA                -0.0795850   -0.0935763   -0.0655937
9-12 months    JiVitA-4       BANGLADESH   NA                   NA                -0.0529092   -0.0609759   -0.0448426
9-12 months    Keneba         GAMBIA       NA                   NA                -0.1002256   -0.1180868   -0.0823644
9-12 months    LCNI-5         MALAWI       NA                   NA                -0.1052774   -0.1637460   -0.0468087
9-12 months    MAL-ED         BANGLADESH   NA                   NA                -0.0895925   -0.1058429   -0.0733421
9-12 months    MAL-ED         BRAZIL       NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED         PERU         NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    PROVIDE        BANGLADESH   NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed   INDIA        NA                   NA                -0.0874131   -0.1167860   -0.0580402
12-15 months   EE             PAKISTAN     NA                   NA                 0.0041770   -0.0299533    0.0383073
12-15 months   GMS-Nepal      NEPAL        NA                   NA                -0.0700044   -0.0796323   -0.0603764
12-15 months   JiVitA-4       BANGLADESH   NA                   NA                -0.0457929   -0.0524470   -0.0391387
12-15 months   Keneba         GAMBIA       NA                   NA                -0.0508881   -0.0630216   -0.0387547
12-15 months   MAL-ED         BANGLADESH   NA                   NA                -0.0539793   -0.0699671   -0.0379916
12-15 months   MAL-ED         BRAZIL       NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   PROVIDE        BANGLADESH   NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed   INDIA        NA                   NA                -0.0801725   -0.1084262   -0.0519187
15-18 months   EE             PAKISTAN     NA                   NA                -0.0244177   -0.0490831    0.0002477
15-18 months   GMS-Nepal      NEPAL        NA                   NA                -0.0665082   -0.0782160   -0.0548005
15-18 months   JiVitA-4       BANGLADESH   NA                   NA                -0.0322067   -0.0387357   -0.0256778
15-18 months   Keneba         GAMBIA       NA                   NA                -0.0301774   -0.0421851   -0.0181698
15-18 months   MAL-ED         BANGLADESH   NA                   NA                -0.0465524   -0.0603507   -0.0327542
15-18 months   MAL-ED         BRAZIL       NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED         NEPAL        NA                   NA                -0.0540981   -0.0695896   -0.0386065
15-18 months   PROVIDE        BANGLADESH   NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed   INDIA        NA                   NA                -0.0159336   -0.0379140    0.0060468
18-21 months   EE             PAKISTAN     NA                   NA                -0.0119733   -0.0348121    0.0108655
18-21 months   GMS-Nepal      NEPAL        NA                   NA                 0.0165107    0.0043866    0.0286347
18-21 months   Keneba         GAMBIA       NA                   NA                -0.0224639   -0.0348440   -0.0100838
18-21 months   LCNI-5         MALAWI       NA                   NA                -0.0092283   -0.0423286    0.0238719
18-21 months   MAL-ED         BANGLADESH   NA                   NA                -0.0136918   -0.0255600   -0.0018237
18-21 months   MAL-ED         BRAZIL       NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED         NEPAL        NA                   NA                -0.0305803   -0.0437450   -0.0174157
18-21 months   PROVIDE        BANGLADESH   NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   GMS-Nepal      NEPAL        NA                   NA                 0.0465624    0.0306829    0.0624420
21-24 months   Keneba         GAMBIA       NA                   NA                 0.0160955    0.0044320    0.0277591
21-24 months   LCNI-5         MALAWI       NA                   NA                -0.0116248   -0.0336145    0.0103649
21-24 months   MAL-ED         BANGLADESH   NA                   NA                 0.0256240    0.0132472    0.0380008
21-24 months   MAL-ED         BRAZIL       NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED         NEPAL        NA                   NA                 0.0061413   -0.0078495    0.0201321
21-24 months   PROVIDE        BANGLADESH   NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL        0                    1                 -0.0202751   -0.0807803    0.0402301
0-3 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH   0                    1                  0.0067687   -0.0060122    0.0195496
0-3 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH   0                    1                 -0.0677673   -0.1116529   -0.0238817
0-3 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA       0                    1                 -0.0044379   -0.0567525    0.0478768
0-3 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH   0                    1                 -0.0308467   -0.1212858    0.0595923
0-3 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL       0                    1                 -0.1587745   -0.4817792    0.1642303
0-3 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH   0                    1                 -0.0053610   -0.0432388    0.0325167
0-3 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA        0                    1                 -0.1783977   -0.2419263   -0.1148690
3-6 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL        0                    1                 -0.0364130   -0.0799669    0.0071410
3-6 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH   0                    1                 -0.0002361   -0.0135771    0.0131048
3-6 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4       BANGLADESH   0                    1                  0.0418537    0.0039242    0.0797832
3-6 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA       0                    1                  0.0069357   -0.0337122    0.0475835
3-6 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH   0                    1                 -0.0210895   -0.1035371    0.0613580
3-6 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL       0                    1                 -0.0962964   -0.2427059    0.0501131
3-6 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU         0                    1                 -0.1526569   -0.3250291    0.0197152
3-6 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH   0                    1                 -0.0344908   -0.0706428    0.0016611
3-6 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA        0                    1                  0.0872730   -0.1031787    0.2777247
6-9 months     EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN     0                    1                  0.0162985   -0.0893897    0.1219867
6-9 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL        0                    1                 -0.0003539   -0.0493277    0.0486199
6-9 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4       BANGLADESH   0                    1                  0.0072336   -0.0155831    0.0300502
6-9 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA       0                    1                 -0.0423902   -0.0956623    0.0108818
6-9 months     LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5         MALAWI       0                    1                 -0.0040666   -0.0898902    0.0817570
6-9 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH   0                    1                 -0.0002858   -0.0440099    0.0434384
6-9 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL       0                    1                  0.0313251   -0.0734810    0.1361312
6-9 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL        0                    1                  0.0545449   -0.0490168    0.1581066
6-9 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU         0                    1                  0.0410466   -0.0058327    0.0879259
6-9 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH   0                    1                  0.0187163   -0.0069541    0.0443868
6-9 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA        0                    1                 -0.0002633   -0.1384287    0.1379021
9-12 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN     0                    1                 -0.0070477   -0.1207491    0.1066537
9-12 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL        0                    1                  0.0173512   -0.0218422    0.0565446
9-12 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH   0                    1                  0.0043061   -0.0147647    0.0233770
9-12 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA       0                    1                  0.0093042   -0.0277842    0.0463927
9-12 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5         MALAWI       0                    1                 -0.0777499   -0.1845661    0.0290663
9-12 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH   0                    1                  0.0312590   -0.0086255    0.0711435
9-12 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL       0                    1                  0.0569712   -0.0373400    0.1512824
9-12 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU         0                    1                 -0.0067516   -0.0914555    0.0779524
9-12 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH   0                    1                  0.0166994   -0.0091371    0.0425359
9-12 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA        0                    1                  0.1037378    0.0117553    0.1957204
12-15 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN     0                    1                  0.0433139   -0.0955707    0.1821984
12-15 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL        0                    1                 -0.0016682   -0.0255682    0.0222317
12-15 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH   0                    1                  0.0216886    0.0044210    0.0389563
12-15 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA       0                    1                 -0.0032601   -0.0277237    0.0212034
12-15 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH   0                    1                  0.0004763   -0.0383492    0.0393017
12-15 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL       0                    1                 -0.0621127   -0.1564111    0.0321856
12-15 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH   0                    1                 -0.0028248   -0.0242816    0.0186320
12-15 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA        0                    1                 -0.0804450   -0.1925206    0.0316306
15-18 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN     0                    1                 -0.0028026   -0.0445569    0.0389516
15-18 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL        0                    1                 -0.0299634   -0.0517802   -0.0081465
15-18 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH   0                    1                  0.0035308   -0.0111507    0.0182124
15-18 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA       0                    1                 -0.0055191   -0.0317328    0.0206946
15-18 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH   0                    1                 -0.0392642   -0.0730839   -0.0054445
15-18 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL       0                    1                 -0.0268512   -0.1129446    0.0592421
15-18 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL        0                    1                  0.0084682   -0.0438501    0.0607865
15-18 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH   0                    1                  0.0147333   -0.0059589    0.0354255
15-18 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA        0                    1                  0.0326337   -0.1407281    0.2059955
18-21 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN     0                    1                 -0.0172247   -0.0681912    0.0337417
18-21 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL        0                    1                  0.0125545   -0.0096440    0.0347529
18-21 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA       0                    1                 -0.0052171   -0.0317144    0.0212802
18-21 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5         MALAWI       0                    1                  0.0585660   -0.0855061    0.2026380
18-21 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH   0                    1                  0.0261207   -0.0099433    0.0621846
18-21 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL       0                    1                  0.0405030   -0.0141106    0.0951166
18-21 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL        0                    1                  0.0433431   -0.0057946    0.0924808
18-21 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH   0                    1                  0.0160469   -0.0034088    0.0355026
21-24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL        0                    1                  0.0055835   -0.0373685    0.0485355
21-24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA       0                    1                  0.0129703   -0.0124185    0.0383592
21-24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5         MALAWI       0                    1                  0.0003373   -0.0500376    0.0507121
21-24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH   0                    1                 -0.0002873   -0.0339427    0.0333681
21-24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL       0                    1                  0.0127475   -0.0348306    0.0603256
21-24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL        0                    1                 -0.0774731   -0.1666304    0.0116841
21-24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH   0                    1                  0.0085136   -0.0118276    0.0288548


### Parameter: PAR


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0053824   -0.0214638    0.0106990
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0015364   -0.0013667    0.0044395
0-3 months     JiVitA-4       BANGLADESH   1                    NA                -0.0111131   -0.0185036   -0.0037225
0-3 months     Keneba         GAMBIA       1                    NA                -0.0030003   -0.0383681    0.0323676
0-3 months     MAL-ED         BANGLADESH   1                    NA                -0.0263624   -0.1036669    0.0509421
0-3 months     MAL-ED         BRAZIL       1                    NA                -0.1519559   -0.4611291    0.1572172
0-3 months     PROVIDE        BANGLADESH   1                    NA                -0.0040291   -0.0324972    0.0244389
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.0086721   -0.0142935   -0.0030507
3-6 months     GMS-Nepal      NEPAL        1                    NA                -0.0098880   -0.0218068    0.0020308
3-6 months     JiVitA-3       BANGLADESH   1                    NA                -0.0000554   -0.0031869    0.0030760
3-6 months     JiVitA-4       BANGLADESH   1                    NA                 0.0065913    0.0005480    0.0126347
3-6 months     Keneba         GAMBIA       1                    NA                 0.0049712   -0.0241639    0.0341062
3-6 months     MAL-ED         BANGLADESH   1                    NA                -0.0179546   -0.0881534    0.0522442
3-6 months     MAL-ED         BRAZIL       1                    NA                -0.0907409   -0.2287376    0.0472558
3-6 months     MAL-ED         PERU         1                    NA                -0.1497875   -0.3178688    0.0182939
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0264737   -0.0542470    0.0012996
3-6 months     SAS-CompFeed   INDIA        1                    NA                 0.0041449   -0.0063430    0.0146328
6-9 months     EE             PAKISTAN     1                    NA                 0.0018109   -0.0100293    0.0136512
6-9 months     GMS-Nepal      NEPAL        1                    NA                -0.0000896   -0.0124880    0.0123088
6-9 months     JiVitA-4       BANGLADESH   1                    NA                 0.0015099   -0.0032528    0.0062726
6-9 months     Keneba         GAMBIA       1                    NA                -0.0298032   -0.0672806    0.0076742
6-9 months     LCNI-5         MALAWI       1                    NA                -0.0034215   -0.0756321    0.0687891
6-9 months     MAL-ED         BANGLADESH   1                    NA                -0.0002436   -0.0375200    0.0370327
6-9 months     MAL-ED         BRAZIL       1                    NA                 0.0294266   -0.0690331    0.1278864
6-9 months     MAL-ED         NEPAL        1                    NA                 0.0533052   -0.0476732    0.1542836
6-9 months     MAL-ED         PERU         1                    NA                 0.0402089   -0.0055042    0.0859220
6-9 months     PROVIDE        BANGLADESH   1                    NA                 0.0145424   -0.0054137    0.0344985
6-9 months     SAS-CompFeed   INDIA        1                    NA                -0.0000116   -0.0060891    0.0060660
9-12 months    EE             PAKISTAN     1                    NA                -0.0008009   -0.0137388    0.0121370
9-12 months    GMS-Nepal      NEPAL        1                    NA                 0.0042029   -0.0053155    0.0137212
9-12 months    JiVitA-4       BANGLADESH   1                    NA                 0.0009494   -0.0032549    0.0051538
9-12 months    Keneba         GAMBIA       1                    NA                 0.0063241   -0.0188867    0.0315348
9-12 months    LCNI-5         MALAWI       1                    NA                -0.0534531   -0.1279769    0.0210708
9-12 months    MAL-ED         BANGLADESH   1                    NA                 0.0269175   -0.0074579    0.0612928
9-12 months    MAL-ED         BRAZIL       1                    NA                 0.0534472   -0.0350515    0.1419459
9-12 months    MAL-ED         PERU         1                    NA                -0.0066079   -0.0891944    0.0759785
9-12 months    PROVIDE        BANGLADESH   1                    NA                 0.0128343   -0.0070308    0.0326995
9-12 months    SAS-CompFeed   INDIA        1                    NA                 0.0037357    0.0000533    0.0074181
12-15 months   EE             PAKISTAN     1                    NA                 0.0058532   -0.0135283    0.0252347
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0004097   -0.0062793    0.0054599
12-15 months   JiVitA-4       BANGLADESH   1                    NA                 0.0048090    0.0009320    0.0086860
12-15 months   Keneba         GAMBIA       1                    NA                -0.0021787   -0.0185275    0.0141701
12-15 months   MAL-ED         BANGLADESH   1                    NA                 0.0004109   -0.0330856    0.0339074
12-15 months   MAL-ED         BRAZIL       1                    NA                -0.0580619   -0.1462384    0.0301145
12-15 months   PROVIDE        BANGLADESH   1                    NA                -0.0021558   -0.0185310    0.0142195
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0024787   -0.0061109    0.0011535
15-18 months   EE             PAKISTAN     1                    NA                -0.0004246   -0.0067606    0.0059113
15-18 months   GMS-Nepal      NEPAL        1                    NA                -0.0074096   -0.0129325   -0.0018867
15-18 months   JiVitA-4       BANGLADESH   1                    NA                 0.0007739   -0.0024428    0.0039906
15-18 months   Keneba         GAMBIA       1                    NA                -0.0036146   -0.0207832    0.0135540
15-18 months   MAL-ED         BANGLADESH   1                    NA                -0.0334901   -0.0623996   -0.0045805
15-18 months   MAL-ED         BRAZIL       1                    NA                -0.0250100   -0.1052062    0.0551861
15-18 months   MAL-ED         NEPAL        1                    NA                 0.0082739   -0.0427367    0.0592846
15-18 months   PROVIDE        BANGLADESH   1                    NA                 0.0111337   -0.0045124    0.0267798
15-18 months   SAS-CompFeed   INDIA        1                    NA                 0.0011189   -0.0048408    0.0070785
18-21 months   EE             PAKISTAN     1                    NA                -0.0026098   -0.0106230    0.0054034
18-21 months   GMS-Nepal      NEPAL        1                    NA                 0.0029765   -0.0023109    0.0082640
18-21 months   Keneba         GAMBIA       1                    NA                -0.0034358   -0.0208863    0.0140147
18-21 months   LCNI-5         MALAWI       1                    NA                 0.0485753   -0.0709659    0.1681165
18-21 months   MAL-ED         BANGLADESH   1                    NA                 0.0223707   -0.0085417    0.0532831
18-21 months   MAL-ED         BRAZIL       1                    NA                 0.0378351   -0.0132040    0.0888743
18-21 months   MAL-ED         NEPAL        1                    NA                 0.0423490   -0.0055680    0.0902660
18-21 months   PROVIDE        BANGLADESH   1                    NA                 0.0123096   -0.0026258    0.0272449
21-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0013237   -0.0088626    0.0115101
21-24 months   Keneba         GAMBIA       1                    NA                 0.0086623   -0.0082975    0.0256221
21-24 months   LCNI-5         MALAWI       1                    NA                 0.0002775   -0.0411657    0.0417206
21-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0002456   -0.0290210    0.0285297
21-24 months   MAL-ED         BRAZIL       1                    NA                 0.0118977   -0.0325112    0.0563066
21-24 months   MAL-ED         NEPAL        1                    NA                -0.0756962   -0.1626382    0.0112457
21-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0065072   -0.0090436    0.0220581
