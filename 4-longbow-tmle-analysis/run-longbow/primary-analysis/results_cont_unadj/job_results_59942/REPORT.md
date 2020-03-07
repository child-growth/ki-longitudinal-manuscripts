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
0-3 months     CMC-V-BCS-2002   INDIA                          1                16      16
0-3 months     CMC-V-BCS-2002   INDIA                          0                 0      16
0-3 months     EE               PAKISTAN                       1                35      39
0-3 months     EE               PAKISTAN                       0                 4      39
0-3 months     GMS-Nepal        NEPAL                          1               368     501
0-3 months     GMS-Nepal        NEPAL                          0               133     501
0-3 months     IRC              INDIA                          1                 0      14
0-3 months     IRC              INDIA                          0                14      14
0-3 months     JiVitA-3         BANGLADESH                     1              9425   12206
0-3 months     JiVitA-3         BANGLADESH                     0              2781   12206
0-3 months     JiVitA-4         BANGLADESH                     1              1503    1793
0-3 months     JiVitA-4         BANGLADESH                     0               290    1793
0-3 months     Keneba           GAMBIA                         1               474    1491
0-3 months     Keneba           GAMBIA                         0              1017    1491
0-3 months     MAL-ED           BANGLADESH                     1                33     230
0-3 months     MAL-ED           BANGLADESH                     0               197     230
0-3 months     MAL-ED           BRAZIL                         1                12     210
0-3 months     MAL-ED           BRAZIL                         0               198     210
0-3 months     MAL-ED           INDIA                          1                 2     216
0-3 months     MAL-ED           INDIA                          0               214     216
0-3 months     MAL-ED           NEPAL                          1                 4     219
0-3 months     MAL-ED           NEPAL                          0               215     219
0-3 months     MAL-ED           PERU                           1                 5     270
0-3 months     MAL-ED           PERU                           0               265     270
0-3 months     MAL-ED           SOUTH AFRICA                   1                 0     234
0-3 months     MAL-ED           SOUTH AFRICA                   0               234     234
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     219
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               219     219
0-3 months     PROVIDE          BANGLADESH                     1               159     640
0-3 months     PROVIDE          BANGLADESH                     0               481     640
0-3 months     SAS-CompFeed     INDIA                          1               413     435
0-3 months     SAS-CompFeed     INDIA                          0                22     435
3-6 months     CMC-V-BCS-2002   INDIA                          1                16      16
3-6 months     CMC-V-BCS-2002   INDIA                          0                 0      16
3-6 months     EE               PAKISTAN                       1                33      37
3-6 months     EE               PAKISTAN                       0                 4      37
3-6 months     GMS-Nepal        NEPAL                          1               339     464
3-6 months     GMS-Nepal        NEPAL                          0               125     464
3-6 months     IRC              INDIA                          1                 0      14
3-6 months     IRC              INDIA                          0                14      14
3-6 months     JiVitA-3         BANGLADESH                     1              5801    7576
3-6 months     JiVitA-3         BANGLADESH                     0              1775    7576
3-6 months     JiVitA-4         BANGLADESH                     1              1502    1775
3-6 months     JiVitA-4         BANGLADESH                     0               273    1775
3-6 months     Keneba           GAMBIA                         1               377    1333
3-6 months     Keneba           GAMBIA                         0               956    1333
3-6 months     MAL-ED           BANGLADESH                     1                33     224
3-6 months     MAL-ED           BANGLADESH                     0               191     224
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
3-6 months     PROVIDE          BANGLADESH                     1               140     601
3-6 months     PROVIDE          BANGLADESH                     0               461     601
3-6 months     SAS-CompFeed     INDIA                          1               358     376
3-6 months     SAS-CompFeed     INDIA                          0                18     376
6-9 months     CMC-V-BCS-2002   INDIA                          1                18      18
6-9 months     CMC-V-BCS-2002   INDIA                          0                 0      18
6-9 months     EE               PAKISTAN                       1                40      45
6-9 months     EE               PAKISTAN                       0                 5      45
6-9 months     GMS-Nepal        NEPAL                          1               353     470
6-9 months     GMS-Nepal        NEPAL                          0               117     470
6-9 months     IRC              INDIA                          1                 0      14
6-9 months     IRC              INDIA                          0                14      14
6-9 months     JiVitA-4         BANGLADESH                     1              2205    2786
6-9 months     JiVitA-4         BANGLADESH                     0               581    2786
6-9 months     Keneba           GAMBIA                         1               242     815
6-9 months     Keneba           GAMBIA                         0               573     815
6-9 months     LCNI-5           MALAWI                         1                23     144
6-9 months     LCNI-5           MALAWI                         0               121     144
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
6-9 months     PROVIDE          BANGLADESH                     1               129     576
6-9 months     PROVIDE          BANGLADESH                     0               447     576
6-9 months     SAS-CompFeed     INDIA                          1               321     336
6-9 months     SAS-CompFeed     INDIA                          0                15     336
6-9 months     SAS-FoodSuppl    INDIA                          1                 0     139
6-9 months     SAS-FoodSuppl    INDIA                          0               139     139
9-12 months    CMC-V-BCS-2002   INDIA                          1                17      17
9-12 months    CMC-V-BCS-2002   INDIA                          0                 0      17
9-12 months    EE               PAKISTAN                       1                39      44
9-12 months    EE               PAKISTAN                       0                 5      44
9-12 months    GMS-Nepal        NEPAL                          1               333     436
9-12 months    GMS-Nepal        NEPAL                          0               103     436
9-12 months    IRC              INDIA                          1                 0      14
9-12 months    IRC              INDIA                          0                14      14
9-12 months    JiVitA-4         BANGLADESH                     1              2452    3148
9-12 months    JiVitA-4         BANGLADESH                     0               696    3148
9-12 months    Keneba           GAMBIA                         1               255     794
9-12 months    Keneba           GAMBIA                         0               539     794
9-12 months    LCNI-5           MALAWI                         1                10      31
9-12 months    LCNI-5           MALAWI                         0                21      31
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
9-12 months    PROVIDE          BANGLADESH                     1               131     569
9-12 months    PROVIDE          BANGLADESH                     0               438     569
9-12 months    SAS-CompFeed     INDIA                          1               344     357
9-12 months    SAS-CompFeed     INDIA                          0                13     357
9-12 months    SAS-FoodSuppl    INDIA                          1                 0     138
9-12 months    SAS-FoodSuppl    INDIA                          0               138     138
12-15 months   CMC-V-BCS-2002   INDIA                          1                18      18
12-15 months   CMC-V-BCS-2002   INDIA                          0                 0      18
12-15 months   EE               PAKISTAN                       1                32      37
12-15 months   EE               PAKISTAN                       0                 5      37
12-15 months   GMS-Nepal        NEPAL                          1               333     436
12-15 months   GMS-Nepal        NEPAL                          0               103     436
12-15 months   IRC              INDIA                          1                 0      14
12-15 months   IRC              INDIA                          0                14      14
12-15 months   JiVitA-4         BANGLADESH                     1              2450    3151
12-15 months   JiVitA-4         BANGLADESH                     0               701    3151
12-15 months   Keneba           GAMBIA                         1               411    1237
12-15 months   Keneba           GAMBIA                         0               826    1237
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
12-15 months   PROVIDE          BANGLADESH                     1               126     537
12-15 months   PROVIDE          BANGLADESH                     0               411     537
12-15 months   SAS-CompFeed     INDIA                          1               345     356
12-15 months   SAS-CompFeed     INDIA                          0                11     356
12-15 months   SAS-FoodSuppl    INDIA                          1                 0     137
12-15 months   SAS-FoodSuppl    INDIA                          0               137     137
15-18 months   CMC-V-BCS-2002   INDIA                          1                15      15
15-18 months   CMC-V-BCS-2002   INDIA                          0                 0      15
15-18 months   EE               PAKISTAN                       1                28      33
15-18 months   EE               PAKISTAN                       0                 5      33
15-18 months   GMS-Nepal        NEPAL                          1               345     458
15-18 months   GMS-Nepal        NEPAL                          0               113     458
15-18 months   IRC              INDIA                          1                 0      14
15-18 months   IRC              INDIA                          0                14      14
15-18 months   JiVitA-4         BANGLADESH                     1              2434    3114
15-18 months   JiVitA-4         BANGLADESH                     0               680    3114
15-18 months   Keneba           GAMBIA                         1               431    1251
15-18 months   Keneba           GAMBIA                         0               820    1251
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
15-18 months   MAL-ED           PERU                           1                 4     214
15-18 months   MAL-ED           PERU                           0               210     214
15-18 months   MAL-ED           SOUTH AFRICA                   1                 0     206
15-18 months   MAL-ED           SOUTH AFRICA                   0               206     206
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     208
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               208     208
15-18 months   PROVIDE          BANGLADESH                     1               129     533
15-18 months   PROVIDE          BANGLADESH                     0               404     533
15-18 months   SAS-CompFeed     INDIA                          1               337     350
15-18 months   SAS-CompFeed     INDIA                          0                13     350
15-18 months   SAS-FoodSuppl    INDIA                          1                 0     129
15-18 months   SAS-FoodSuppl    INDIA                          0               129     129
18-21 months   CMC-V-BCS-2002   INDIA                          1                13      13
18-21 months   CMC-V-BCS-2002   INDIA                          0                 0      13
18-21 months   EE               PAKISTAN                       1                29      34
18-21 months   EE               PAKISTAN                       0                 5      34
18-21 months   GMS-Nepal        NEPAL                          1               326     428
18-21 months   GMS-Nepal        NEPAL                          0               102     428
18-21 months   IRC              INDIA                          1                 0      12
18-21 months   IRC              INDIA                          0                12      12
18-21 months   Keneba           GAMBIA                         1               421    1234
18-21 months   Keneba           GAMBIA                         0               813    1234
18-21 months   LCNI-5           MALAWI                         1                28     166
18-21 months   LCNI-5           MALAWI                         0               138     166
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     196
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               196     196
18-21 months   PROVIDE          BANGLADESH                     1               126     542
18-21 months   PROVIDE          BANGLADESH                     0               416     542
21-24 months   CMC-V-BCS-2002   INDIA                          1                15      15
21-24 months   CMC-V-BCS-2002   INDIA                          0                 0      15
21-24 months   EE               PAKISTAN                       1                16      18
21-24 months   EE               PAKISTAN                       0                 2      18
21-24 months   GMS-Nepal        NEPAL                          1               252     330
21-24 months   GMS-Nepal        NEPAL                          0                78     330
21-24 months   IRC              INDIA                          1                 0      12
21-24 months   IRC              INDIA                          0                12      12
21-24 months   Keneba           GAMBIA                         1               373    1126
21-24 months   Keneba           GAMBIA                         0               753    1126
21-24 months   LCNI-5           MALAWI                         1                24     134
21-24 months   LCNI-5           MALAWI                         0               110     134
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     194
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               194     194
21-24 months   PROVIDE          BANGLADESH                     1               114     485
21-24 months   PROVIDE          BANGLADESH                     0               371     485


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/adb5ce51-6de6-4a9a-be7a-edc6d7b6c582/31000f81-a44a-4b46-8698-1354cf9403ad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/adb5ce51-6de6-4a9a-be7a-edc6d7b6c582/31000f81-a44a-4b46-8698-1354cf9403ad/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/adb5ce51-6de6-4a9a-be7a-edc6d7b6c582/31000f81-a44a-4b46-8698-1354cf9403ad/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                0.8380598    0.8184064   0.8577132
0-3 months     GMS-Nepal      NEPAL        0                    NA                0.7935141    0.7595044   0.8275237
0-3 months     JiVitA-3       BANGLADESH   1                    NA                0.8697984    0.8656501   0.8739466
0-3 months     JiVitA-3       BANGLADESH   0                    NA                0.8711265    0.8635781   0.8786749
0-3 months     JiVitA-4       BANGLADESH   1                    NA                0.9003225    0.8891876   0.9114573
0-3 months     JiVitA-4       BANGLADESH   0                    NA                0.8350887    0.8082125   0.8619649
0-3 months     Keneba         GAMBIA       1                    NA                0.9542465    0.9353131   0.9731799
0-3 months     Keneba         GAMBIA       0                    NA                0.9132900    0.8991870   0.9273931
0-3 months     MAL-ED         BANGLADESH   1                    NA                0.8871706    0.8250921   0.9492490
0-3 months     MAL-ED         BANGLADESH   0                    NA                0.8805689    0.8542928   0.9068450
0-3 months     MAL-ED         BRAZIL       1                    NA                1.1797681    1.0344944   1.3250419
0-3 months     MAL-ED         BRAZIL       0                    NA                1.0636516    1.0280347   1.0992685
0-3 months     MAL-ED         PERU         1                    NA                1.0676347    0.9782686   1.1570008
0-3 months     MAL-ED         PERU         0                    NA                0.9704594    0.9440671   0.9968518
0-3 months     PROVIDE        BANGLADESH   1                    NA                0.9333255    0.9065324   0.9601186
0-3 months     PROVIDE        BANGLADESH   0                    NA                0.8911755    0.8737543   0.9085968
0-3 months     SAS-CompFeed   INDIA        1                    NA                0.7911385    0.7734666   0.8088105
0-3 months     SAS-CompFeed   INDIA        0                    NA                0.6753966    0.5336166   0.8171765
3-6 months     GMS-Nepal      NEPAL        1                    NA                0.4938217    0.4779042   0.5097393
3-6 months     GMS-Nepal      NEPAL        0                    NA                0.5053164    0.4771995   0.5334333
3-6 months     JiVitA-3       BANGLADESH   1                    NA                0.4405043    0.4362989   0.4447097
3-6 months     JiVitA-3       BANGLADESH   0                    NA                0.4388243    0.4305572   0.4470914
3-6 months     JiVitA-4       BANGLADESH   1                    NA                0.4381979    0.4284749   0.4479208
3-6 months     JiVitA-4       BANGLADESH   0                    NA                0.4435733    0.4224856   0.4646611
3-6 months     Keneba         GAMBIA       1                    NA                0.4582618    0.4407930   0.4757305
3-6 months     Keneba         GAMBIA       0                    NA                0.4421820    0.4307660   0.4535980
3-6 months     MAL-ED         BANGLADESH   1                    NA                0.4798288    0.4473611   0.5122966
3-6 months     MAL-ED         BANGLADESH   0                    NA                0.4744939    0.4552694   0.4937184
3-6 months     MAL-ED         BRAZIL       1                    NA                0.6385770    0.4908179   0.7863362
3-6 months     MAL-ED         BRAZIL       0                    NA                0.5745009    0.5426930   0.6063088
3-6 months     MAL-ED         PERU         1                    NA                0.4036505    0.3414661   0.4658349
3-6 months     MAL-ED         PERU         0                    NA                0.5004995    0.4811397   0.5198593
3-6 months     PROVIDE        BANGLADESH   1                    NA                0.4997594    0.4747305   0.5247883
3-6 months     PROVIDE        BANGLADESH   0                    NA                0.4858122    0.4705964   0.5010280
3-6 months     SAS-CompFeed   INDIA        1                    NA                0.4483035    0.4256147   0.4709922
3-6 months     SAS-CompFeed   INDIA        0                    NA                0.5642760    0.4827298   0.6458221
6-9 months     EE             PAKISTAN     1                    NA                0.2499821    0.2062696   0.2936946
6-9 months     EE             PAKISTAN     0                    NA                0.2914358    0.1551041   0.4277675
6-9 months     GMS-Nepal      NEPAL        1                    NA                0.1818146    0.1696047   0.1940246
6-9 months     GMS-Nepal      NEPAL        0                    NA                0.2037147    0.1716079   0.2358214
6-9 months     JiVitA-4       BANGLADESH   1                    NA                0.2361923    0.2300467   0.2423378
6-9 months     JiVitA-4       BANGLADESH   0                    NA                0.2482713    0.2373161   0.2592266
6-9 months     Keneba         GAMBIA       1                    NA                0.2212827    0.1957081   0.2468573
6-9 months     Keneba         GAMBIA       0                    NA                0.1937790    0.1793668   0.2081912
6-9 months     LCNI-5         MALAWI       1                    NA                0.2433070    0.2027065   0.2839075
6-9 months     LCNI-5         MALAWI       0                    NA                0.2904468    0.2618043   0.3190893
6-9 months     MAL-ED         BANGLADESH   1                    NA                0.2158106    0.1815857   0.2500354
6-9 months     MAL-ED         BANGLADESH   0                    NA                0.2460366    0.2297888   0.2622843
6-9 months     MAL-ED         BRAZIL       1                    NA                0.4042402    0.2486872   0.5597932
6-9 months     MAL-ED         BRAZIL       0                    NA                0.3817892    0.3559345   0.4076439
6-9 months     MAL-ED         NEPAL        1                    NA                0.2779470    0.2305935   0.3253005
6-9 months     MAL-ED         NEPAL        0                    NA                0.2699824    0.2547934   0.2851714
6-9 months     MAL-ED         PERU         1                    NA                0.1956337    0.1367830   0.2544845
6-9 months     MAL-ED         PERU         0                    NA                0.2627633    0.2469933   0.2785333
6-9 months     PROVIDE        BANGLADESH   1                    NA                0.2381635    0.2165485   0.2597785
6-9 months     PROVIDE        BANGLADESH   0                    NA                0.2523404    0.2381319   0.2665488
6-9 months     SAS-CompFeed   INDIA        1                    NA                0.2006996    0.1755287   0.2258705
6-9 months     SAS-CompFeed   INDIA        0                    NA                0.2267377    0.1110149   0.3424606
9-12 months    EE             PAKISTAN     1                    NA                0.2651476    0.2138835   0.3164117
9-12 months    EE             PAKISTAN     0                    NA                0.2178900    0.1257959   0.3099842
9-12 months    GMS-Nepal      NEPAL        1                    NA                0.1369060    0.1221576   0.1516544
9-12 months    GMS-Nepal      NEPAL        0                    NA                0.1582219    0.1322069   0.1842368
9-12 months    JiVitA-4       BANGLADESH   1                    NA                0.1521805    0.1472268   0.1571342
9-12 months    JiVitA-4       BANGLADESH   0                    NA                0.1631372    0.1540953   0.1721792
9-12 months    Keneba         GAMBIA       1                    NA                0.1234073    0.1013476   0.1454670
9-12 months    Keneba         GAMBIA       0                    NA                0.1740902    0.1591253   0.1890550
9-12 months    LCNI-5         MALAWI       1                    NA                0.2060735    0.0681565   0.3439905
9-12 months    LCNI-5         MALAWI       0                    NA                0.1749155    0.0989861   0.2508448
9-12 months    MAL-ED         BANGLADESH   1                    NA                0.1529759    0.1204741   0.1854778
9-12 months    MAL-ED         BANGLADESH   0                    NA                0.1780065    0.1626532   0.1933598
9-12 months    MAL-ED         BRAZIL       1                    NA                0.2730629    0.1191267   0.4269992
9-12 months    MAL-ED         BRAZIL       0                    NA                0.2853525    0.2530110   0.3176939
9-12 months    MAL-ED         PERU         1                    NA                0.2302548    0.1747401   0.2857696
9-12 months    MAL-ED         PERU         0                    NA                0.1865508    0.1709336   0.2021680
9-12 months    PROVIDE        BANGLADESH   1                    NA                0.1822532    0.1629035   0.2016028
9-12 months    PROVIDE        BANGLADESH   0                    NA                0.1761194    0.1654662   0.1867726
9-12 months    SAS-CompFeed   INDIA        1                    NA                0.1947730    0.1798794   0.2096665
9-12 months    SAS-CompFeed   INDIA        0                    NA                0.1736606    0.1049552   0.2423659
12-15 months   EE             PAKISTAN     1                    NA                0.1465777    0.0958703   0.1972852
12-15 months   EE             PAKISTAN     0                    NA                0.2076400    0.1078220   0.3074581
12-15 months   GMS-Nepal      NEPAL        1                    NA                0.1735599    0.1584579   0.1886619
12-15 months   GMS-Nepal      NEPAL        0                    NA                0.1678181    0.1385200   0.1971162
12-15 months   JiVitA-4       BANGLADESH   1                    NA                0.1268685    0.1219090   0.1318280
12-15 months   JiVitA-4       BANGLADESH   0                    NA                0.1414161    0.1319711   0.1508612
12-15 months   Keneba         GAMBIA       1                    NA                0.1849098    0.1665376   0.2032820
12-15 months   Keneba         GAMBIA       0                    NA                0.1889611    0.1768127   0.2011095
12-15 months   MAL-ED         BANGLADESH   1                    NA                0.1331630    0.0845291   0.1817969
12-15 months   MAL-ED         BANGLADESH   0                    NA                0.1364986    0.1193548   0.1536425
12-15 months   MAL-ED         BRAZIL       1                    NA                0.1811098    0.0485443   0.3136754
12-15 months   MAL-ED         BRAZIL       0                    NA                0.2122237    0.1873582   0.2370893
12-15 months   PROVIDE        BANGLADESH   1                    NA                0.1601786    0.1354635   0.1848937
12-15 months   PROVIDE        BANGLADESH   0                    NA                0.1861189    0.1728899   0.1993479
12-15 months   SAS-CompFeed   INDIA        1                    NA                0.1858303    0.1747564   0.1969043
12-15 months   SAS-CompFeed   INDIA        0                    NA                0.1757277    0.0410006   0.3104548
15-18 months   EE             PAKISTAN     1                    NA                0.0737086    0.0281881   0.1192290
15-18 months   EE             PAKISTAN     0                    NA                0.1356273    0.0829507   0.1883039
15-18 months   GMS-Nepal      NEPAL        1                    NA                0.2268790    0.2093738   0.2443841
15-18 months   GMS-Nepal      NEPAL        0                    NA                0.2478835    0.2145379   0.2812292
15-18 months   JiVitA-4       BANGLADESH   1                    NA                0.1567661    0.1512111   0.1623211
15-18 months   JiVitA-4       BANGLADESH   0                    NA                0.1699453    0.1583474   0.1815431
15-18 months   Keneba         GAMBIA       1                    NA                0.1567234    0.1396921   0.1737547
15-18 months   Keneba         GAMBIA       0                    NA                0.1591513    0.1462932   0.1720094
15-18 months   MAL-ED         BANGLADESH   1                    NA                0.1745380    0.1262030   0.2228730
15-18 months   MAL-ED         BANGLADESH   0                    NA                0.1367150    0.1200027   0.1534274
15-18 months   MAL-ED         BRAZIL       1                    NA                0.0834089   -0.0146269   0.1814447
15-18 months   MAL-ED         BRAZIL       0                    NA                0.2122546    0.1850805   0.2394287
15-18 months   MAL-ED         NEPAL        1                    NA                0.1187558    0.0759289   0.1615827
15-18 months   MAL-ED         NEPAL        0                    NA                0.1738132    0.1573104   0.1903160
15-18 months   PROVIDE        BANGLADESH   1                    NA                0.1477742    0.1246309   0.1709175
15-18 months   PROVIDE        BANGLADESH   0                    NA                0.1590902    0.1454453   0.1727352
15-18 months   SAS-CompFeed   INDIA        1                    NA                0.1709873    0.1464860   0.1954886
15-18 months   SAS-CompFeed   INDIA        0                    NA                0.2554951    0.0436116   0.4673786
18-21 months   EE             PAKISTAN     1                    NA                0.1090737    0.0599290   0.1582184
18-21 months   EE             PAKISTAN     0                    NA                0.0920099   -0.0098532   0.1938729
18-21 months   GMS-Nepal      NEPAL        1                    NA                0.1542504    0.1355754   0.1729254
18-21 months   GMS-Nepal      NEPAL        0                    NA                0.1147923    0.0859859   0.1435987
18-21 months   Keneba         GAMBIA       1                    NA                0.1709071    0.1510622   0.1907521
18-21 months   Keneba         GAMBIA       0                    NA                0.1435792    0.1304727   0.1566858
18-21 months   LCNI-5         MALAWI       1                    NA                0.2199597    0.1493703   0.2905492
18-21 months   LCNI-5         MALAWI       0                    NA                0.1979692    0.1661510   0.2297875
18-21 months   MAL-ED         BANGLADESH   1                    NA                0.1065162    0.0596271   0.1534052
18-21 months   MAL-ED         BANGLADESH   0                    NA                0.1498730    0.1313503   0.1683956
18-21 months   MAL-ED         BRAZIL       1                    NA                0.0801487    0.0315465   0.1287509
18-21 months   MAL-ED         BRAZIL       0                    NA                0.1663254    0.1409655   0.1916854
18-21 months   MAL-ED         NEPAL        1                    NA                0.1752236    0.1042320   0.2462153
18-21 months   MAL-ED         NEPAL        0                    NA                0.1455279    0.1271284   0.1639274
18-21 months   PROVIDE        BANGLADESH   1                    NA                0.1170748    0.0940125   0.1401370
18-21 months   PROVIDE        BANGLADESH   0                    NA                0.1371567    0.1240163   0.1502970
21-24 months   GMS-Nepal      NEPAL        1                    NA                0.1833480    0.1540139   0.2126820
21-24 months   GMS-Nepal      NEPAL        0                    NA                0.1528927    0.1109506   0.1948347
21-24 months   Keneba         GAMBIA       1                    NA                0.1438222    0.1257059   0.1619384
21-24 months   Keneba         GAMBIA       0                    NA                0.1762284    0.1630473   0.1894096
21-24 months   LCNI-5         MALAWI       1                    NA                0.1423943    0.0658003   0.2189883
21-24 months   LCNI-5         MALAWI       0                    NA                0.1857376    0.1371245   0.2343506
21-24 months   MAL-ED         BANGLADESH   1                    NA                0.1649698    0.1256286   0.2043111
21-24 months   MAL-ED         BANGLADESH   0                    NA                0.1519335    0.1352102   0.1686568
21-24 months   MAL-ED         BRAZIL       1                    NA                0.1319433    0.0473228   0.2165637
21-24 months   MAL-ED         BRAZIL       0                    NA                0.1443148    0.1200427   0.1685869
21-24 months   MAL-ED         NEPAL        1                    NA                0.2306449    0.1845145   0.2767753
21-24 months   MAL-ED         NEPAL        0                    NA                0.1725284    0.1518121   0.1932447
21-24 months   PROVIDE        BANGLADESH   1                    NA                0.1517806    0.1272363   0.1763248
21-24 months   PROVIDE        BANGLADESH   0                    NA                0.1389560    0.1260618   0.1518503


### Parameter: E(Y)


agecat         studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL        NA                   NA                0.8262343   0.8091204   0.8433482
0-3 months     JiVitA-3       BANGLADESH   NA                   NA                0.8701010   0.8664010   0.8738010
0-3 months     JiVitA-4       BANGLADESH   NA                   NA                0.8897715   0.8792902   0.9002529
0-3 months     Keneba         GAMBIA       NA                   NA                0.9263104   0.9149216   0.9376991
0-3 months     MAL-ED         BANGLADESH   NA                   NA                0.8815161   0.8573098   0.9057224
0-3 months     MAL-ED         BRAZIL       NA                   NA                1.0702868   1.0355019   1.1050717
0-3 months     MAL-ED         PERU         NA                   NA                0.9722590   0.9463823   0.9981357
0-3 months     PROVIDE        BANGLADESH   NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     SAS-CompFeed   INDIA        NA                   NA                0.7852849   0.7678149   0.8027549
3-6 months     GMS-Nepal      NEPAL        NA                   NA                0.4969184   0.4830319   0.5108048
3-6 months     JiVitA-3       BANGLADESH   NA                   NA                0.4401107   0.4363074   0.4439140
3-6 months     JiVitA-4       BANGLADESH   NA                   NA                0.4390246   0.4301757   0.4478736
3-6 months     Keneba         GAMBIA       NA                   NA                0.4467297   0.4371593   0.4563000
3-6 months     MAL-ED         BANGLADESH   NA                   NA                0.4752798   0.4582021   0.4923576
3-6 months     MAL-ED         BRAZIL       NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED         PERU         NA                   NA                0.4986791   0.4796733   0.5176848
3-6 months     PROVIDE        BANGLADESH   NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     SAS-CompFeed   INDIA        NA                   NA                0.4538554   0.4355388   0.4721719
6-9 months     EE             PAKISTAN     NA                   NA                0.2545881   0.2127069   0.2964693
6-9 months     GMS-Nepal      NEPAL        NA                   NA                0.1872663   0.1750716   0.1994611
6-9 months     JiVitA-4       BANGLADESH   NA                   NA                0.2387113   0.2332818   0.2441408
6-9 months     Keneba         GAMBIA       NA                   NA                0.2019457   0.1892538   0.2146377
6-9 months     LCNI-5         MALAWI       NA                   NA                0.2829175   0.2578313   0.3080037
6-9 months     MAL-ED         BANGLADESH   NA                   NA                0.2415793   0.2267676   0.2563910
6-9 months     MAL-ED         BRAZIL       NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     MAL-ED         NEPAL        NA                   NA                0.2701634   0.2553060   0.2850207
6-9 months     MAL-ED         PERU         NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     PROVIDE        BANGLADESH   NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed   INDIA        NA                   NA                0.2018620   0.1756088   0.2281152
9-12 months    EE             PAKISTAN     NA                   NA                0.2597774   0.2129342   0.3066206
9-12 months    GMS-Nepal      NEPAL        NA                   NA                0.1419417   0.1290817   0.1548016
9-12 months    JiVitA-4       BANGLADESH   NA                   NA                0.1546030   0.1501980   0.1590079
9-12 months    Keneba         GAMBIA       NA                   NA                0.1578129   0.1453187   0.1703072
9-12 months    LCNI-5         MALAWI       NA                   NA                0.1849664   0.1167599   0.2531730
9-12 months    MAL-ED         BANGLADESH   NA                   NA                0.1745300   0.1605119   0.1885482
9-12 months    MAL-ED         BRAZIL       NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    MAL-ED         PERU         NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    PROVIDE        BANGLADESH   NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed   INDIA        NA                   NA                0.1940042   0.1780308   0.2099775
12-15 months   EE             PAKISTAN     NA                   NA                0.1548294   0.1084427   0.2012160
12-15 months   GMS-Nepal      NEPAL        NA                   NA                0.1722034   0.1587499   0.1856570
12-15 months   JiVitA-4       BANGLADESH   NA                   NA                0.1301049   0.1256802   0.1345296
12-15 months   Keneba         GAMBIA       NA                   NA                0.1876150   0.1774623   0.1977678
12-15 months   MAL-ED         BANGLADESH   NA                   NA                0.1360408   0.1198127   0.1522689
12-15 months   MAL-ED         BRAZIL       NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   PROVIDE        BANGLADESH   NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed   INDIA        NA                   NA                0.1855182   0.1710991   0.1999372
15-18 months   EE             PAKISTAN     NA                   NA                0.0830902   0.0429076   0.1232727
15-18 months   GMS-Nepal      NEPAL        NA                   NA                0.2320613   0.2164969   0.2476258
15-18 months   JiVitA-4       BANGLADESH   NA                   NA                0.1596440   0.1546004   0.1646877
15-18 months   Keneba         GAMBIA       NA                   NA                0.1583148   0.1480451   0.1685846
15-18 months   MAL-ED         BANGLADESH   NA                   NA                0.1422772   0.1262424   0.1583121
15-18 months   MAL-ED         BRAZIL       NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED         NEPAL        NA                   NA                0.1725504   0.1563874   0.1887134
15-18 months   PROVIDE        BANGLADESH   NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed   INDIA        NA                   NA                0.1741261   0.1450974   0.2031549
18-21 months   EE             PAKISTAN     NA                   NA                0.1065643   0.0620028   0.1511258
18-21 months   GMS-Nepal      NEPAL        NA                   NA                0.1448468   0.1289722   0.1607215
18-21 months   Keneba         GAMBIA       NA                   NA                0.1529026   0.1419060   0.1638992
18-21 months   LCNI-5         MALAWI       NA                   NA                0.2016785   0.1726437   0.2307133
18-21 months   MAL-ED         BANGLADESH   NA                   NA                0.1436485   0.1262881   0.1610088
18-21 months   MAL-ED         BRAZIL       NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED         NEPAL        NA                   NA                0.1462090   0.1281722   0.1642458
18-21 months   PROVIDE        BANGLADESH   NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   GMS-Nepal      NEPAL        NA                   NA                0.1761495   0.1516134   0.2006855
21-24 months   Keneba         GAMBIA       NA                   NA                0.1654935   0.1547926   0.1761944
21-24 months   LCNI-5         MALAWI       NA                   NA                0.1779746   0.1356818   0.2202674
21-24 months   MAL-ED         BANGLADESH   NA                   NA                0.1538238   0.1384163   0.1692313
21-24 months   MAL-ED         BRAZIL       NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED         NEPAL        NA                   NA                0.1738613   0.1535969   0.1941258
21-24 months   PROVIDE        BANGLADESH   NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL        0                    1                 -0.0445457   -0.0838257   -0.0052658
0-3 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH   0                    1                  0.0013281   -0.0071285    0.0097847
0-3 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH   0                    1                 -0.0652338   -0.0942974   -0.0361702
0-3 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA       0                    1                 -0.0409565   -0.0645652   -0.0173478
0-3 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH   0                    1                 -0.0066017   -0.0740121    0.0608087
0-3 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL       0                    1                 -0.1161166   -0.2656927    0.0334596
0-3 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU         0                    1                 -0.0971753   -0.1903571   -0.0039934
0-3 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH   0                    1                 -0.0421500   -0.0741089   -0.0101911
0-3 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA        0                    1                 -0.1157419   -0.2637432    0.0322594
3-6 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL        0                    1                  0.0114946   -0.0208152    0.0438045
3-6 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH   0                    1                 -0.0016800   -0.0108489    0.0074889
3-6 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4       BANGLADESH   0                    1                  0.0053755   -0.0178194    0.0285704
3-6 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA       0                    1                 -0.0160798   -0.0369480    0.0047884
3-6 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH   0                    1                 -0.0053349   -0.0430674    0.0323975
3-6 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL       0                    1                 -0.0640762   -0.2152202    0.0870679
3-6 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU         0                    1                  0.0968490    0.0317207    0.1619774
3-6 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH   0                    1                 -0.0139472   -0.0432382    0.0153439
3-6 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA        0                    1                  0.1159725    0.0253273    0.2066177
6-9 months     EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN     0                    1                  0.0414537   -0.1017144    0.1846219
6-9 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL        0                    1                  0.0219000   -0.0124500    0.0562501
6-9 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4       BANGLADESH   0                    1                  0.0120790   -0.0003736    0.0245317
6-9 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA       0                    1                 -0.0275037   -0.0568596    0.0018523
6-9 months     LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5         MALAWI       0                    1                  0.0471398   -0.0025472    0.0968267
6-9 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH   0                    1                  0.0302260   -0.0076598    0.0681117
6-9 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL       0                    1                 -0.0224510   -0.1801381    0.1352360
6-9 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL        0                    1                 -0.0079647   -0.0576945    0.0417652
6-9 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU         0                    1                  0.0671295    0.0062025    0.1280565
6-9 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH   0                    1                  0.0141769   -0.0116899    0.0400437
6-9 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA        0                    1                  0.0260381   -0.0812158    0.1332921
9-12 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN     0                    1                 -0.0472576   -0.1526584    0.0581433
9-12 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL        0                    1                  0.0213158   -0.0085890    0.0512206
9-12 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH   0                    1                  0.0109567    0.0007796    0.0211338
9-12 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA       0                    1                  0.0506829    0.0240262    0.0773395
9-12 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5         MALAWI       0                    1                 -0.0311580   -0.1885949    0.1262788
9-12 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH   0                    1                  0.0250306   -0.0109151    0.0609763
9-12 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL       0                    1                  0.0122896   -0.1450074    0.1695865
9-12 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU         0                    1                 -0.0437041   -0.1013737    0.0139656
9-12 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH   0                    1                 -0.0061337   -0.0282222    0.0159547
9-12 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA        0                    1                 -0.0211124   -0.0819742    0.0397493
12-15 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN     0                    1                  0.0610623   -0.0508970    0.1730217
12-15 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL        0                    1                 -0.0057418   -0.0387031    0.0272195
12-15 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH   0                    1                  0.0145476    0.0039245    0.0251708
12-15 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA       0                    1                  0.0040513   -0.0179742    0.0260768
12-15 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH   0                    1                  0.0033356   -0.0482315    0.0549027
12-15 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL       0                    1                  0.0311139   -0.1037635    0.1659914
12-15 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH   0                    1                  0.0259403   -0.0020926    0.0539732
12-15 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA        0                    1                 -0.0101026   -0.1355951    0.1153899
15-18 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN     0                    1                  0.0619187   -0.0077012    0.1315387
15-18 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL        0                    1                  0.0210046   -0.0166566    0.0586658
15-18 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH   0                    1                  0.0131792    0.0003151    0.0260433
15-18 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA       0                    1                  0.0024279   -0.0189121    0.0237679
15-18 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH   0                    1                 -0.0378230   -0.0889657    0.0133197
15-18 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL       0                    1                  0.1288457    0.0271135    0.2305780
15-18 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL        0                    1                  0.0550574    0.0091610    0.1009539
15-18 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH   0                    1                  0.0113160   -0.0155503    0.0381823
15-18 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA        0                    1                  0.0845078   -0.1119510    0.2809666
18-21 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN     0                    1                 -0.0170638   -0.1301624    0.0960347
18-21 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL        0                    1                 -0.0394581   -0.0737884   -0.0051279
18-21 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA       0                    1                 -0.0273279   -0.0511103   -0.0035455
18-21 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5         MALAWI       0                    1                 -0.0219905   -0.0994196    0.0554386
18-21 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH   0                    1                  0.0433568   -0.0070582    0.0937718
18-21 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL       0                    1                  0.0861767    0.0313561    0.1409973
18-21 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL        0                    1                 -0.0296957   -0.1030330    0.0436416
18-21 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH   0                    1                  0.0200819   -0.0064612    0.0466250
21-24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL        0                    1                 -0.0304553   -0.0816376    0.0207269
21-24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA       0                    1                  0.0324063    0.0100023    0.0548103
21-24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5         MALAWI       0                    1                  0.0433432   -0.0473754    0.1340619
21-24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH   0                    1                 -0.0130363   -0.0557844    0.0297118
21-24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL       0                    1                  0.0123715   -0.0756612    0.1004042
21-24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL        0                    1                 -0.0581165   -0.1086851   -0.0075479
21-24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH   0                    1                 -0.0128245   -0.0405496    0.0149006


### Parameter: PAR


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0118255   -0.0223947   -0.0012563
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0003026   -0.0016247    0.0022298
0-3 months     JiVitA-4       BANGLADESH   1                    NA                -0.0105509   -0.0156574   -0.0054444
0-3 months     Keneba         GAMBIA       1                    NA                -0.0279361   -0.0440685   -0.0118037
0-3 months     MAL-ED         BANGLADESH   1                    NA                -0.0056545   -0.0633938    0.0520848
0-3 months     MAL-ED         BRAZIL       1                    NA                -0.1094813   -0.2505576    0.0315949
0-3 months     MAL-ED         PERU         1                    NA                -0.0953757   -0.1862415   -0.0045099
0-3 months     PROVIDE        BANGLADESH   1                    NA                -0.0316784   -0.0557389   -0.0076178
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.0058536   -0.0123722    0.0006650
3-6 months     GMS-Nepal      NEPAL        1                    NA                 0.0030966   -0.0056199    0.0118132
3-6 months     JiVitA-3       BANGLADESH   1                    NA                -0.0003936   -0.0025423    0.0017551
3-6 months     JiVitA-4       BANGLADESH   1                    NA                 0.0008268   -0.0027418    0.0043954
3-6 months     Keneba         GAMBIA       1                    NA                -0.0115321   -0.0265034    0.0034392
3-6 months     MAL-ED         BANGLADESH   1                    NA                -0.0045490   -0.0367236    0.0276256
3-6 months     MAL-ED         BRAZIL       1                    NA                -0.0603795   -0.2028182    0.0820592
3-6 months     MAL-ED         PERU         1                    NA                 0.0950285    0.0315087    0.1585484
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0106982   -0.0331711    0.0117746
3-6 months     SAS-CompFeed   INDIA        1                    NA                 0.0055519   -0.0001633    0.0112671
6-9 months     EE             PAKISTAN     1                    NA                 0.0046060   -0.0117607    0.0209727
6-9 months     GMS-Nepal      NEPAL        1                    NA                 0.0054517   -0.0031421    0.0140455
6-9 months     JiVitA-4       BANGLADESH   1                    NA                 0.0025190   -0.0000850    0.0051230
6-9 months     Keneba         GAMBIA       1                    NA                -0.0193370   -0.0399942    0.0013203
6-9 months     LCNI-5         MALAWI       1                    NA                 0.0396105   -0.0022362    0.0814572
6-9 months     MAL-ED         BANGLADESH   1                    NA                 0.0257687   -0.0065618    0.0580992
6-9 months     MAL-ED         BRAZIL       1                    NA                -0.0210904   -0.1692225    0.1270418
6-9 months     MAL-ED         NEPAL        1                    NA                -0.0077837   -0.0562705    0.0407032
6-9 months     MAL-ED         PERU         1                    NA                 0.0657596    0.0063438    0.1251753
6-9 months     PROVIDE        BANGLADESH   1                    NA                 0.0110019   -0.0090776    0.0310814
6-9 months     SAS-CompFeed   INDIA        1                    NA                 0.0011624   -0.0034360    0.0057609
9-12 months    EE             PAKISTAN     1                    NA                -0.0053702   -0.0181590    0.0074186
9-12 months    GMS-Nepal      NEPAL        1                    NA                 0.0050356   -0.0020801    0.0121513
9-12 months    JiVitA-4       BANGLADESH   1                    NA                 0.0024224    0.0001699    0.0046750
9-12 months    Keneba         GAMBIA       1                    NA                 0.0344056    0.0162352    0.0525761
9-12 months    LCNI-5         MALAWI       1                    NA                -0.0211070   -0.1278851    0.0856710
9-12 months    MAL-ED         BANGLADESH   1                    NA                 0.0215541   -0.0094208    0.0525290
9-12 months    MAL-ED         BRAZIL       1                    NA                 0.0115294   -0.1360385    0.1590972
9-12 months    MAL-ED         PERU         1                    NA                -0.0427742   -0.0990079    0.0134595
9-12 months    PROVIDE        BANGLADESH   1                    NA                -0.0047216   -0.0217259    0.0122828
9-12 months    SAS-CompFeed   INDIA        1                    NA                -0.0007688   -0.0031005    0.0015629
12-15 months   EE             PAKISTAN     1                    NA                 0.0082517   -0.0083437    0.0248470
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0013564   -0.0091465    0.0064337
12-15 months   JiVitA-4       BANGLADESH   1                    NA                 0.0032364    0.0008484    0.0056244
12-15 months   Keneba         GAMBIA       1                    NA                 0.0027052   -0.0120026    0.0174130
12-15 months   MAL-ED         BANGLADESH   1                    NA                 0.0028778   -0.0416118    0.0473673
12-15 months   MAL-ED         BRAZIL       1                    NA                 0.0290847   -0.0970012    0.1551707
12-15 months   PROVIDE        BANGLADESH   1                    NA                 0.0198538   -0.0016217    0.0413293
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0003122   -0.0041194    0.0034950
15-18 months   EE             PAKISTAN     1                    NA                 0.0093816   -0.0036736    0.0224368
15-18 months   GMS-Nepal      NEPAL        1                    NA                 0.0051823   -0.0041466    0.0145113
15-18 months   JiVitA-4       BANGLADESH   1                    NA                 0.0028779    0.0000321    0.0057238
15-18 months   Keneba         GAMBIA       1                    NA                 0.0015914   -0.0123966    0.0155794
15-18 months   MAL-ED         BANGLADESH   1                    NA                -0.0322608   -0.0759214    0.0113998
15-18 months   MAL-ED         BRAZIL       1                    NA                 0.1200106    0.0251308    0.2148904
15-18 months   MAL-ED         NEPAL        1                    NA                 0.0537946    0.0090322    0.0985571
15-18 months   PROVIDE        BANGLADESH   1                    NA                 0.0085772   -0.0117909    0.0289453
15-18 months   SAS-CompFeed   INDIA        1                    NA                 0.0031389   -0.0042884    0.0105661
18-21 months   EE             PAKISTAN     1                    NA                -0.0025094   -0.0192689    0.0142501
18-21 months   GMS-Nepal      NEPAL        1                    NA                -0.0094036   -0.0177390   -0.0010681
18-21 months   Keneba         GAMBIA       1                    NA                -0.0180045   -0.0336898   -0.0023192
18-21 months   LCNI-5         MALAWI       1                    NA                -0.0182813   -0.0826623    0.0460998
18-21 months   MAL-ED         BANGLADESH   1                    NA                 0.0371323   -0.0060960    0.0803606
18-21 months   MAL-ED         BRAZIL       1                    NA                 0.0805004    0.0291876    0.1318132
18-21 months   MAL-ED         NEPAL        1                    NA                -0.0290146   -0.1005209    0.0424917
18-21 months   PROVIDE        BANGLADESH   1                    NA                 0.0154134   -0.0049717    0.0357985
21-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0071985   -0.0193767    0.0049796
21-24 months   Keneba         GAMBIA       1                    NA                 0.0216713    0.0066624    0.0366803
21-24 months   LCNI-5         MALAWI       1                    NA                 0.0355803   -0.0389438    0.1101043
21-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0111460   -0.0477012    0.0254092
21-24 months   MAL-ED         BRAZIL       1                    NA                 0.0115468   -0.0706185    0.0937120
21-24 months   MAL-ED         NEPAL        1                    NA                -0.0567835   -0.1061015   -0.0074656
21-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0098101   -0.0310239    0.0114037
