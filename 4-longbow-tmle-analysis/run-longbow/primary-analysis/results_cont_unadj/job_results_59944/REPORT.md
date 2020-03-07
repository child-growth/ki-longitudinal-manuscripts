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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        predexfd6    n_cell       n
-------------  ---------------  -----------------------------  ----------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          1                16      16
0-3 months     CMC-V-BCS-2002   INDIA                          0                 0      16
0-3 months     EE               PAKISTAN                       1                35      39
0-3 months     EE               PAKISTAN                       0                 4      39
0-3 months     GMS-Nepal        NEPAL                          1               368     501
0-3 months     GMS-Nepal        NEPAL                          0               133     501
0-3 months     IRC              INDIA                          1                 0      14
0-3 months     IRC              INDIA                          0                14      14
0-3 months     JiVitA-3         BANGLADESH                     1              9439   12206
0-3 months     JiVitA-3         BANGLADESH                     0              2767   12206
0-3 months     JiVitA-4         BANGLADESH                     1              1506    1793
0-3 months     JiVitA-4         BANGLADESH                     0               287    1793
0-3 months     Keneba           GAMBIA                         1               474    1491
0-3 months     Keneba           GAMBIA                         0              1017    1491
0-3 months     MAL-ED           BANGLADESH                     1                84     230
0-3 months     MAL-ED           BANGLADESH                     0               146     230
0-3 months     MAL-ED           BRAZIL                         1                30     210
0-3 months     MAL-ED           BRAZIL                         0               180     210
0-3 months     MAL-ED           INDIA                          1                11     216
0-3 months     MAL-ED           INDIA                          0               205     216
0-3 months     MAL-ED           NEPAL                          1                11     219
0-3 months     MAL-ED           NEPAL                          0               208     219
0-3 months     MAL-ED           PERU                           1                92     270
0-3 months     MAL-ED           PERU                           0               178     270
0-3 months     MAL-ED           SOUTH AFRICA                   1                 3     234
0-3 months     MAL-ED           SOUTH AFRICA                   0               231     234
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     219
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               218     219
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
3-6 months     JiVitA-3         BANGLADESH                     1              5812    7576
3-6 months     JiVitA-3         BANGLADESH                     0              1764    7576
3-6 months     JiVitA-4         BANGLADESH                     1              1504    1775
3-6 months     JiVitA-4         BANGLADESH                     0               271    1775
3-6 months     Keneba           GAMBIA                         1               377    1333
3-6 months     Keneba           GAMBIA                         0               956    1333
3-6 months     MAL-ED           BANGLADESH                     1                81     224
3-6 months     MAL-ED           BANGLADESH                     0               143     224
3-6 months     MAL-ED           BRAZIL                         1                30     208
3-6 months     MAL-ED           BRAZIL                         0               178     208
3-6 months     MAL-ED           INDIA                          1                11     213
3-6 months     MAL-ED           INDIA                          0               202     213
3-6 months     MAL-ED           NEPAL                          1                11     222
3-6 months     MAL-ED           NEPAL                          0               211     222
3-6 months     MAL-ED           PERU                           1                90     266
3-6 months     MAL-ED           PERU                           0               176     266
3-6 months     MAL-ED           SOUTH AFRICA                   1                 3     222
3-6 months     MAL-ED           SOUTH AFRICA                   0               219     222
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     225
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               224     225
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
6-9 months     JiVitA-4         BANGLADESH                     1              2212    2786
6-9 months     JiVitA-4         BANGLADESH                     0               574    2786
6-9 months     Keneba           GAMBIA                         1               242     815
6-9 months     Keneba           GAMBIA                         0               573     815
6-9 months     LCNI-5           MALAWI                         1                23     144
6-9 months     LCNI-5           MALAWI                         0               121     144
6-9 months     MAL-ED           BANGLADESH                     1                76     217
6-9 months     MAL-ED           BANGLADESH                     0               141     217
6-9 months     MAL-ED           BRAZIL                         1                29     198
6-9 months     MAL-ED           BRAZIL                         0               169     198
6-9 months     MAL-ED           INDIA                          1                11     213
6-9 months     MAL-ED           INDIA                          0               202     213
6-9 months     MAL-ED           NEPAL                          1                12     220
6-9 months     MAL-ED           NEPAL                          0               208     220
6-9 months     MAL-ED           PERU                           1                86     245
6-9 months     MAL-ED           PERU                           0               159     245
6-9 months     MAL-ED           SOUTH AFRICA                   1                 3     210
6-9 months     MAL-ED           SOUTH AFRICA                   0               207     210
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     214
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               213     214
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
9-12 months    JiVitA-4         BANGLADESH                     1              2462    3148
9-12 months    JiVitA-4         BANGLADESH                     0               686    3148
9-12 months    Keneba           GAMBIA                         1               255     794
9-12 months    Keneba           GAMBIA                         0               539     794
9-12 months    LCNI-5           MALAWI                         1                10      31
9-12 months    LCNI-5           MALAWI                         0                21      31
9-12 months    MAL-ED           BANGLADESH                     1                78     216
9-12 months    MAL-ED           BANGLADESH                     0               138     216
9-12 months    MAL-ED           BRAZIL                         1                28     194
9-12 months    MAL-ED           BRAZIL                         0               166     194
9-12 months    MAL-ED           INDIA                          1                11     210
9-12 months    MAL-ED           INDIA                          0               199     210
9-12 months    MAL-ED           NEPAL                          1                11     219
9-12 months    MAL-ED           NEPAL                          0               208     219
9-12 months    MAL-ED           PERU                           1                82     235
9-12 months    MAL-ED           PERU                           0               153     235
9-12 months    MAL-ED           SOUTH AFRICA                   1                 3     212
9-12 months    MAL-ED           SOUTH AFRICA                   0               209     212
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     213
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               212     213
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
12-15 months   JiVitA-4         BANGLADESH                     1              2460    3151
12-15 months   JiVitA-4         BANGLADESH                     0               691    3151
12-15 months   Keneba           GAMBIA                         1               411    1237
12-15 months   Keneba           GAMBIA                         0               826    1237
12-15 months   LCNI-5           MALAWI                         1                 0       1
12-15 months   LCNI-5           MALAWI                         0                 1       1
12-15 months   MAL-ED           BANGLADESH                     1                73     204
12-15 months   MAL-ED           BANGLADESH                     0               131     204
12-15 months   MAL-ED           BRAZIL                         1                27     184
12-15 months   MAL-ED           BRAZIL                         0               157     184
12-15 months   MAL-ED           INDIA                          1                11     209
12-15 months   MAL-ED           INDIA                          0               198     209
12-15 months   MAL-ED           NEPAL                          1                11     220
12-15 months   MAL-ED           NEPAL                          0               209     220
12-15 months   MAL-ED           PERU                           1                77     224
12-15 months   MAL-ED           PERU                           0               147     224
12-15 months   MAL-ED           SOUTH AFRICA                   1                 3     209
12-15 months   MAL-ED           SOUTH AFRICA                   0               206     209
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     214
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               213     214
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
15-18 months   JiVitA-4         BANGLADESH                     1              2443    3114
15-18 months   JiVitA-4         BANGLADESH                     0               671    3114
15-18 months   Keneba           GAMBIA                         1               431    1251
15-18 months   Keneba           GAMBIA                         0               820    1251
15-18 months   LCNI-5           MALAWI                         1                 0       4
15-18 months   LCNI-5           MALAWI                         0                 4       4
15-18 months   MAL-ED           BANGLADESH                     1                75     204
15-18 months   MAL-ED           BANGLADESH                     0               129     204
15-18 months   MAL-ED           BRAZIL                         1                27     175
15-18 months   MAL-ED           BRAZIL                         0               148     175
15-18 months   MAL-ED           INDIA                          1                11     209
15-18 months   MAL-ED           INDIA                          0               198     209
15-18 months   MAL-ED           NEPAL                          1                12     218
15-18 months   MAL-ED           NEPAL                          0               206     218
15-18 months   MAL-ED           PERU                           1                75     214
15-18 months   MAL-ED           PERU                           0               139     214
15-18 months   MAL-ED           SOUTH AFRICA                   1                 3     206
15-18 months   MAL-ED           SOUTH AFRICA                   0               203     206
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     208
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               207     208
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
18-21 months   MAL-ED           BANGLADESH                     1                75     202
18-21 months   MAL-ED           BANGLADESH                     0               127     202
18-21 months   MAL-ED           BRAZIL                         1                25     167
18-21 months   MAL-ED           BRAZIL                         0               142     167
18-21 months   MAL-ED           INDIA                          1                10     209
18-21 months   MAL-ED           INDIA                          0               199     209
18-21 months   MAL-ED           NEPAL                          1                12     218
18-21 months   MAL-ED           NEPAL                          0               206     218
18-21 months   MAL-ED           PERU                           1                70     202
18-21 months   MAL-ED           PERU                           0               132     202
18-21 months   MAL-ED           SOUTH AFRICA                   1                 3     213
18-21 months   MAL-ED           SOUTH AFRICA                   0               210     213
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     196
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               195     196
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
21-24 months   MAL-ED           BANGLADESH                     1                73     200
21-24 months   MAL-ED           BANGLADESH                     0               127     200
21-24 months   MAL-ED           BRAZIL                         1                25     165
21-24 months   MAL-ED           BRAZIL                         0               140     165
21-24 months   MAL-ED           INDIA                          1                10     208
21-24 months   MAL-ED           INDIA                          0               198     208
21-24 months   MAL-ED           NEPAL                          1                12     218
21-24 months   MAL-ED           NEPAL                          0               206     218
21-24 months   MAL-ED           PERU                           1                64     189
21-24 months   MAL-ED           PERU                           0               125     189
21-24 months   MAL-ED           SOUTH AFRICA                   1                 3     214
21-24 months   MAL-ED           SOUTH AFRICA                   0               211     214
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     194
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               193     194
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/6182bb83-e96a-444f-8304-1168a7fb694f/0e4846b2-3be1-4a09-a20b-574641a944c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6182bb83-e96a-444f-8304-1168a7fb694f/0e4846b2-3be1-4a09-a20b-574641a944c7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6182bb83-e96a-444f-8304-1168a7fb694f/0e4846b2-3be1-4a09-a20b-574641a944c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                0.8380598    0.8184064   0.8577132
0-3 months     GMS-Nepal      NEPAL        0                    NA                0.7935141    0.7595044   0.8275237
0-3 months     JiVitA-3       BANGLADESH   1                    NA                0.8697792    0.8656341   0.8739244
0-3 months     JiVitA-3       BANGLADESH   0                    NA                0.8711985    0.8636326   0.8787644
0-3 months     JiVitA-4       BANGLADESH   1                    NA                0.9005636    0.8894245   0.9117027
0-3 months     JiVitA-4       BANGLADESH   0                    NA                0.8331414    0.8062009   0.8600820
0-3 months     Keneba         GAMBIA       1                    NA                0.9542465    0.9353131   0.9731799
0-3 months     Keneba         GAMBIA       0                    NA                0.9132900    0.8991870   0.9273931
0-3 months     MAL-ED         BANGLADESH   1                    NA                0.8785628    0.8416938   0.9154318
0-3 months     MAL-ED         BANGLADESH   0                    NA                0.8832152    0.8515297   0.9149007
0-3 months     MAL-ED         BRAZIL       1                    NA                1.1558074    1.0486772   1.2629375
0-3 months     MAL-ED         BRAZIL       0                    NA                1.0560334    1.0200107   1.0920561
0-3 months     MAL-ED         INDIA        1                    NA                0.8084220    0.7032785   0.9135655
0-3 months     MAL-ED         INDIA        0                    NA                0.7590105    0.7352261   0.7827950
0-3 months     MAL-ED         NEPAL        1                    NA                0.9156871    0.7869751   1.0443990
0-3 months     MAL-ED         NEPAL        0                    NA                0.9592764    0.9310824   0.9874703
0-3 months     MAL-ED         PERU         1                    NA                1.0127375    0.9713286   1.0541465
0-3 months     MAL-ED         PERU         0                    NA                0.9513375    0.9188603   0.9838147
0-3 months     PROVIDE        BANGLADESH   1                    NA                0.9333255    0.9065324   0.9601186
0-3 months     PROVIDE        BANGLADESH   0                    NA                0.8911755    0.8737543   0.9085968
0-3 months     SAS-CompFeed   INDIA        1                    NA                0.7911385    0.7734666   0.8088105
0-3 months     SAS-CompFeed   INDIA        0                    NA                0.6753966    0.5336166   0.8171765
3-6 months     GMS-Nepal      NEPAL        1                    NA                0.4938217    0.4779042   0.5097393
3-6 months     GMS-Nepal      NEPAL        0                    NA                0.5053164    0.4771995   0.5334333
3-6 months     JiVitA-3       BANGLADESH   1                    NA                0.4404515    0.4362568   0.4446462
3-6 months     JiVitA-3       BANGLADESH   0                    NA                0.4389878    0.4306770   0.4472985
3-6 months     JiVitA-4       BANGLADESH   1                    NA                0.4383765    0.4286656   0.4480874
3-6 months     JiVitA-4       BANGLADESH   0                    NA                0.4426217    0.4215010   0.4637424
3-6 months     Keneba         GAMBIA       1                    NA                0.4582618    0.4407930   0.4757305
3-6 months     Keneba         GAMBIA       0                    NA                0.4421820    0.4307660   0.4535980
3-6 months     MAL-ED         BANGLADESH   1                    NA                0.4750852    0.4505769   0.4995936
3-6 months     MAL-ED         BANGLADESH   0                    NA                0.4753901    0.4525230   0.4982572
3-6 months     MAL-ED         BRAZIL       1                    NA                0.5961292    0.5179612   0.6742971
3-6 months     MAL-ED         BRAZIL       0                    NA                0.5751754    0.5411657   0.6091850
3-6 months     MAL-ED         INDIA        1                    NA                0.4144199    0.3458150   0.4830248
3-6 months     MAL-ED         INDIA        0                    NA                0.4436972    0.4251801   0.4622143
3-6 months     MAL-ED         NEPAL        1                    NA                0.4244115    0.3419385   0.5068846
3-6 months     MAL-ED         NEPAL        0                    NA                0.5262982    0.5051556   0.5474409
3-6 months     MAL-ED         PERU         1                    NA                0.4984367    0.4667109   0.5301626
3-6 months     MAL-ED         PERU         0                    NA                0.4988030    0.4750985   0.5225075
3-6 months     PROVIDE        BANGLADESH   1                    NA                0.4997594    0.4747305   0.5247883
3-6 months     PROVIDE        BANGLADESH   0                    NA                0.4858122    0.4705964   0.5010280
3-6 months     SAS-CompFeed   INDIA        1                    NA                0.4483035    0.4256147   0.4709922
3-6 months     SAS-CompFeed   INDIA        0                    NA                0.5642760    0.4827298   0.6458221
6-9 months     EE             PAKISTAN     1                    NA                0.2499821    0.2062696   0.2936946
6-9 months     EE             PAKISTAN     0                    NA                0.2914358    0.1551041   0.4277675
6-9 months     GMS-Nepal      NEPAL        1                    NA                0.1818146    0.1696047   0.1940246
6-9 months     GMS-Nepal      NEPAL        0                    NA                0.2037147    0.1716079   0.2358214
6-9 months     JiVitA-4       BANGLADESH   1                    NA                0.2359889    0.2298510   0.2421269
6-9 months     JiVitA-4       BANGLADESH   0                    NA                0.2492022    0.2382865   0.2601180
6-9 months     Keneba         GAMBIA       1                    NA                0.2212827    0.1957081   0.2468573
6-9 months     Keneba         GAMBIA       0                    NA                0.1937790    0.1793668   0.2081912
6-9 months     LCNI-5         MALAWI       1                    NA                0.2433070    0.2027065   0.2839075
6-9 months     LCNI-5         MALAWI       0                    NA                0.2904468    0.2618043   0.3190893
6-9 months     MAL-ED         BANGLADESH   1                    NA                0.2272068    0.2004343   0.2539793
6-9 months     MAL-ED         BANGLADESH   0                    NA                0.2493262    0.2318135   0.2668388
6-9 months     MAL-ED         BRAZIL       1                    NA                0.3817032    0.2978784   0.4655281
6-9 months     MAL-ED         BRAZIL       0                    NA                0.3833981    0.3564618   0.4103344
6-9 months     MAL-ED         INDIA        1                    NA                0.2162025    0.1678701   0.2645349
6-9 months     MAL-ED         INDIA        0                    NA                0.2385319    0.2231268   0.2539369
6-9 months     MAL-ED         NEPAL        1                    NA                0.2791789    0.2394464   0.3189114
6-9 months     MAL-ED         NEPAL        0                    NA                0.2696433    0.2540998   0.2851867
6-9 months     MAL-ED         PERU         1                    NA                0.2502270    0.2304647   0.2699894
6-9 months     MAL-ED         PERU         0                    NA                0.2674329    0.2461480   0.2887178
6-9 months     PROVIDE        BANGLADESH   1                    NA                0.2381635    0.2165485   0.2597785
6-9 months     PROVIDE        BANGLADESH   0                    NA                0.2523404    0.2381319   0.2665488
6-9 months     SAS-CompFeed   INDIA        1                    NA                0.2006996    0.1755287   0.2258705
6-9 months     SAS-CompFeed   INDIA        0                    NA                0.2267377    0.1110149   0.3424606
9-12 months    EE             PAKISTAN     1                    NA                0.2651476    0.2138835   0.3164117
9-12 months    EE             PAKISTAN     0                    NA                0.2178900    0.1257959   0.3099842
9-12 months    GMS-Nepal      NEPAL        1                    NA                0.1369060    0.1221576   0.1516544
9-12 months    GMS-Nepal      NEPAL        0                    NA                0.1582219    0.1322069   0.1842368
9-12 months    JiVitA-4       BANGLADESH   1                    NA                0.1522022    0.1472663   0.1571380
9-12 months    JiVitA-4       BANGLADESH   0                    NA                0.1632193    0.1540493   0.1723892
9-12 months    Keneba         GAMBIA       1                    NA                0.1234073    0.1013476   0.1454670
9-12 months    Keneba         GAMBIA       0                    NA                0.1740902    0.1591253   0.1890550
9-12 months    LCNI-5         MALAWI       1                    NA                0.2060735    0.0681565   0.3439905
9-12 months    LCNI-5         MALAWI       0                    NA                0.1749155    0.0989861   0.2508448
9-12 months    MAL-ED         BANGLADESH   1                    NA                0.1584270    0.1350870   0.1817670
9-12 months    MAL-ED         BANGLADESH   0                    NA                0.1836317    0.1662830   0.2009805
9-12 months    MAL-ED         BRAZIL       1                    NA                0.2691819    0.1863093   0.3520545
9-12 months    MAL-ED         BRAZIL       0                    NA                0.2871916    0.2527692   0.3216140
9-12 months    MAL-ED         INDIA        1                    NA                0.1876887    0.1288330   0.2465444
9-12 months    MAL-ED         INDIA        0                    NA                0.1769679    0.1614495   0.1924862
9-12 months    MAL-ED         NEPAL        1                    NA                0.1263869    0.0476774   0.2050964
9-12 months    MAL-ED         NEPAL        0                    NA                0.1867166    0.1716593   0.2017739
9-12 months    MAL-ED         PERU         1                    NA                0.1664480    0.1420784   0.1908176
9-12 months    MAL-ED         PERU         0                    NA                0.1987531    0.1794322   0.2180739
9-12 months    PROVIDE        BANGLADESH   1                    NA                0.1822532    0.1629035   0.2016028
9-12 months    PROVIDE        BANGLADESH   0                    NA                0.1761194    0.1654662   0.1867726
9-12 months    SAS-CompFeed   INDIA        1                    NA                0.1947730    0.1798794   0.2096665
9-12 months    SAS-CompFeed   INDIA        0                    NA                0.1736606    0.1049552   0.2423659
12-15 months   EE             PAKISTAN     1                    NA                0.1465777    0.0958703   0.1972852
12-15 months   EE             PAKISTAN     0                    NA                0.2076400    0.1078220   0.3074581
12-15 months   GMS-Nepal      NEPAL        1                    NA                0.1735599    0.1584579   0.1886619
12-15 months   GMS-Nepal      NEPAL        0                    NA                0.1678181    0.1385200   0.1971162
12-15 months   JiVitA-4       BANGLADESH   1                    NA                0.1271934    0.1222401   0.1321468
12-15 months   JiVitA-4       BANGLADESH   0                    NA                0.1404699    0.1309295   0.1500104
12-15 months   Keneba         GAMBIA       1                    NA                0.1849098    0.1665376   0.2032820
12-15 months   Keneba         GAMBIA       0                    NA                0.1889611    0.1768127   0.2011095
12-15 months   MAL-ED         BANGLADESH   1                    NA                0.1161313    0.0875255   0.1447372
12-15 months   MAL-ED         BANGLADESH   0                    NA                0.1471354    0.1277861   0.1664846
12-15 months   MAL-ED         BRAZIL       1                    NA                0.1887698    0.1175271   0.2600125
12-15 months   MAL-ED         BRAZIL       0                    NA                0.2138791    0.1875340   0.2402242
12-15 months   MAL-ED         INDIA        1                    NA                0.1036258   -0.0015921   0.2088437
12-15 months   MAL-ED         INDIA        0                    NA                0.1808414    0.1641732   0.1975096
12-15 months   MAL-ED         NEPAL        1                    NA                0.1479917    0.0617466   0.2342368
12-15 months   MAL-ED         NEPAL        0                    NA                0.1492294    0.1317764   0.1666823
12-15 months   MAL-ED         PERU         1                    NA                0.1368406    0.1126302   0.1610511
12-15 months   MAL-ED         PERU         0                    NA                0.1443048    0.1222651   0.1663445
12-15 months   PROVIDE        BANGLADESH   1                    NA                0.1601786    0.1354635   0.1848937
12-15 months   PROVIDE        BANGLADESH   0                    NA                0.1861189    0.1728899   0.1993479
12-15 months   SAS-CompFeed   INDIA        1                    NA                0.1858303    0.1747564   0.1969043
12-15 months   SAS-CompFeed   INDIA        0                    NA                0.1757277    0.0410006   0.3104548
15-18 months   EE             PAKISTAN     1                    NA                0.0737086    0.0281881   0.1192290
15-18 months   EE             PAKISTAN     0                    NA                0.1356273    0.0829507   0.1883039
15-18 months   GMS-Nepal      NEPAL        1                    NA                0.2268790    0.2093738   0.2443841
15-18 months   GMS-Nepal      NEPAL        0                    NA                0.2478835    0.2145379   0.2812292
15-18 months   JiVitA-4       BANGLADESH   1                    NA                0.1567439    0.1512063   0.1622815
15-18 months   JiVitA-4       BANGLADESH   0                    NA                0.1702029    0.1584580   0.1819479
15-18 months   Keneba         GAMBIA       1                    NA                0.1567234    0.1396921   0.1737547
15-18 months   Keneba         GAMBIA       0                    NA                0.1591513    0.1462932   0.1720094
15-18 months   MAL-ED         BANGLADESH   1                    NA                0.1615698    0.1350828   0.1880568
15-18 months   MAL-ED         BANGLADESH   0                    NA                0.1310606    0.1111706   0.1509507
15-18 months   MAL-ED         BRAZIL       1                    NA                0.1273713    0.0708273   0.1839153
15-18 months   MAL-ED         BRAZIL       0                    NA                0.2172932    0.1880932   0.2464931
15-18 months   MAL-ED         INDIA        1                    NA                0.2151134    0.1295397   0.3006871
15-18 months   MAL-ED         INDIA        0                    NA                0.1624474    0.1466980   0.1781968
15-18 months   MAL-ED         NEPAL        1                    NA                0.1392615    0.1085515   0.1699715
15-18 months   MAL-ED         NEPAL        0                    NA                0.1744896    0.1575165   0.1914627
15-18 months   MAL-ED         PERU         1                    NA                0.1201520    0.0879894   0.1523146
15-18 months   MAL-ED         PERU         0                    NA                0.1602376    0.1372919   0.1831832
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
18-21 months   MAL-ED         BANGLADESH   1                    NA                0.1254903    0.0955442   0.1554365
18-21 months   MAL-ED         BANGLADESH   0                    NA                0.1543718    0.1333888   0.1753548
18-21 months   MAL-ED         BRAZIL       1                    NA                0.0961459    0.0500277   0.1422641
18-21 months   MAL-ED         BRAZIL       0                    NA                0.1720053    0.1452542   0.1987564
18-21 months   MAL-ED         INDIA        1                    NA                0.1241168    0.0318086   0.2164250
18-21 months   MAL-ED         INDIA        0                    NA                0.1718141    0.1566211   0.1870070
18-21 months   MAL-ED         NEPAL        1                    NA                0.1644626    0.1090266   0.2198986
18-21 months   MAL-ED         NEPAL        0                    NA                0.1451457    0.1263436   0.1639478
18-21 months   MAL-ED         PERU         1                    NA                0.1685866    0.1382575   0.1989157
18-21 months   MAL-ED         PERU         0                    NA                0.1578418    0.1336985   0.1819851
18-21 months   PROVIDE        BANGLADESH   1                    NA                0.1170748    0.0940125   0.1401370
18-21 months   PROVIDE        BANGLADESH   0                    NA                0.1371567    0.1240163   0.1502970
21-24 months   GMS-Nepal      NEPAL        1                    NA                0.1833480    0.1540139   0.2126820
21-24 months   GMS-Nepal      NEPAL        0                    NA                0.1528927    0.1109506   0.1948347
21-24 months   Keneba         GAMBIA       1                    NA                0.1438222    0.1257059   0.1619384
21-24 months   Keneba         GAMBIA       0                    NA                0.1762284    0.1630473   0.1894096
21-24 months   LCNI-5         MALAWI       1                    NA                0.1423943    0.0658003   0.2189883
21-24 months   LCNI-5         MALAWI       0                    NA                0.1857376    0.1371245   0.2343506
21-24 months   MAL-ED         BANGLADESH   1                    NA                0.1530342    0.1295386   0.1765297
21-24 months   MAL-ED         BANGLADESH   0                    NA                0.1542777    0.1341202   0.1744351
21-24 months   MAL-ED         BRAZIL       1                    NA                0.1315639    0.0540804   0.2090474
21-24 months   MAL-ED         BRAZIL       0                    NA                0.1456197    0.1218479   0.1693915
21-24 months   MAL-ED         INDIA        1                    NA                0.1668435    0.1014247   0.2322622
21-24 months   MAL-ED         INDIA        0                    NA                0.1531643    0.1394445   0.1668841
21-24 months   MAL-ED         NEPAL        1                    NA                0.2060989    0.1513996   0.2607982
21-24 months   MAL-ED         NEPAL        0                    NA                0.1719834    0.1508049   0.1931619
21-24 months   MAL-ED         PERU         1                    NA                0.1713273    0.1419245   0.2007301
21-24 months   MAL-ED         PERU         0                    NA                0.1866587    0.1609427   0.2123747
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
0-3 months     MAL-ED         INDIA        NA                   NA                0.7615268   0.7382819   0.7847718
0-3 months     MAL-ED         NEPAL        NA                   NA                0.9570869   0.9295107   0.9846631
0-3 months     MAL-ED         PERU         NA                   NA                0.9722590   0.9463823   0.9981357
0-3 months     PROVIDE        BANGLADESH   NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     SAS-CompFeed   INDIA        NA                   NA                0.7852849   0.7678149   0.8027549
3-6 months     GMS-Nepal      NEPAL        NA                   NA                0.4969184   0.4830319   0.5108048
3-6 months     JiVitA-3       BANGLADESH   NA                   NA                0.4401107   0.4363074   0.4439140
3-6 months     JiVitA-4       BANGLADESH   NA                   NA                0.4390246   0.4301757   0.4478736
3-6 months     Keneba         GAMBIA       NA                   NA                0.4467297   0.4371593   0.4563000
3-6 months     MAL-ED         BANGLADESH   NA                   NA                0.4752798   0.4582021   0.4923576
3-6 months     MAL-ED         BRAZIL       NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED         INDIA        NA                   NA                0.4421852   0.4242493   0.4601211
3-6 months     MAL-ED         NEPAL        NA                   NA                0.5212498   0.5005373   0.5419623
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
6-9 months     MAL-ED         INDIA        NA                   NA                0.2373787   0.2225426   0.2522148
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
9-12 months    MAL-ED         INDIA        NA                   NA                0.1775294   0.1625008   0.1925581
9-12 months    MAL-ED         NEPAL        NA                   NA                0.1836863   0.1687462   0.1986264
9-12 months    MAL-ED         PERU         NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    PROVIDE        BANGLADESH   NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed   INDIA        NA                   NA                0.1940042   0.1780308   0.2099775
12-15 months   EE             PAKISTAN     NA                   NA                0.1548294   0.1084427   0.2012160
12-15 months   GMS-Nepal      NEPAL        NA                   NA                0.1722034   0.1587499   0.1856570
12-15 months   JiVitA-4       BANGLADESH   NA                   NA                0.1301049   0.1256802   0.1345296
12-15 months   Keneba         GAMBIA       NA                   NA                0.1876150   0.1774623   0.1977678
12-15 months   MAL-ED         BANGLADESH   NA                   NA                0.1360408   0.1198127   0.1522689
12-15 months   MAL-ED         BRAZIL       NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   MAL-ED         INDIA        NA                   NA                0.1767774   0.1598803   0.1936745
12-15 months   MAL-ED         NEPAL        NA                   NA                0.1491675   0.1320356   0.1662994
12-15 months   MAL-ED         PERU         NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   PROVIDE        BANGLADESH   NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed   INDIA        NA                   NA                0.1855182   0.1710991   0.1999372
15-18 months   EE             PAKISTAN     NA                   NA                0.0830902   0.0429076   0.1232727
15-18 months   GMS-Nepal      NEPAL        NA                   NA                0.2320613   0.2164969   0.2476258
15-18 months   JiVitA-4       BANGLADESH   NA                   NA                0.1596440   0.1546004   0.1646877
15-18 months   Keneba         GAMBIA       NA                   NA                0.1583148   0.1480451   0.1685846
15-18 months   MAL-ED         BANGLADESH   NA                   NA                0.1422772   0.1262424   0.1583121
15-18 months   MAL-ED         BRAZIL       NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED         INDIA        NA                   NA                0.1652193   0.1495522   0.1808865
15-18 months   MAL-ED         NEPAL        NA                   NA                0.1725504   0.1563874   0.1887134
15-18 months   MAL-ED         PERU         NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   PROVIDE        BANGLADESH   NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed   INDIA        NA                   NA                0.1741261   0.1450974   0.2031549
18-21 months   EE             PAKISTAN     NA                   NA                0.1065643   0.0620028   0.1511258
18-21 months   GMS-Nepal      NEPAL        NA                   NA                0.1448468   0.1289722   0.1607215
18-21 months   Keneba         GAMBIA       NA                   NA                0.1529026   0.1419060   0.1638992
18-21 months   LCNI-5         MALAWI       NA                   NA                0.2016785   0.1726437   0.2307133
18-21 months   MAL-ED         BANGLADESH   NA                   NA                0.1436485   0.1262881   0.1610088
18-21 months   MAL-ED         BRAZIL       NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED         INDIA        NA                   NA                0.1695319   0.1543435   0.1847203
18-21 months   MAL-ED         NEPAL        NA                   NA                0.1462090   0.1281722   0.1642458
18-21 months   MAL-ED         PERU         NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   PROVIDE        BANGLADESH   NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   GMS-Nepal      NEPAL        NA                   NA                0.1761495   0.1516134   0.2006855
21-24 months   Keneba         GAMBIA       NA                   NA                0.1654935   0.1547926   0.1761944
21-24 months   LCNI-5         MALAWI       NA                   NA                0.1779746   0.1356818   0.2202674
21-24 months   MAL-ED         BANGLADESH   NA                   NA                0.1538238   0.1384163   0.1692313
21-24 months   MAL-ED         BRAZIL       NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED         INDIA        NA                   NA                0.1538219   0.1403825   0.1672614
21-24 months   MAL-ED         NEPAL        NA                   NA                0.1738613   0.1535969   0.1941258
21-24 months   MAL-ED         PERU         NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   PROVIDE        BANGLADESH   NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL        0                    1                 -0.0445457   -0.0838257   -0.0052658
0-3 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH   0                    1                  0.0014193   -0.0070506    0.0098892
0-3 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH   0                    1                 -0.0674222   -0.0965971   -0.0382473
0-3 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA       0                    1                 -0.0409565   -0.0645652   -0.0173478
0-3 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH   0                    1                  0.0046524   -0.0439613    0.0532662
0-3 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL       0                    1                 -0.0997740   -0.2127984    0.0132504
0-3 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA        0                    1                 -0.0494115   -0.1572116    0.0583885
0-3 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL        0                    1                  0.0435893   -0.0881744    0.1753530
0-3 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU         0                    1                 -0.0614000   -0.1140258   -0.0087743
0-3 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH   0                    1                 -0.0421500   -0.0741089   -0.0101911
0-3 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA        0                    1                 -0.1157419   -0.2637432    0.0322594
3-6 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL        0                    1                  0.0114946   -0.0208152    0.0438045
3-6 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH   0                    1                 -0.0014637   -0.0106607    0.0077333
3-6 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4       BANGLADESH   0                    1                  0.0042452   -0.0189581    0.0274485
3-6 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA       0                    1                 -0.0160798   -0.0369480    0.0047884
3-6 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH   0                    1                  0.0003048   -0.0332147    0.0338244
3-6 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL       0                    1                 -0.0209538   -0.1061998    0.0642923
3-6 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA        0                    1                  0.0292773   -0.0417827    0.1003372
3-6 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL        0                    1                  0.1018867    0.0167467    0.1870267
3-6 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU         0                    1                  0.0003662   -0.0392372    0.0399697
3-6 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH   0                    1                 -0.0139472   -0.0432382    0.0153439
3-6 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA        0                    1                  0.1159725    0.0253273    0.2066177
6-9 months     EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN     0                    1                  0.0414537   -0.1017144    0.1846219
6-9 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL        0                    1                  0.0219000   -0.0124500    0.0562501
6-9 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4       BANGLADESH   0                    1                  0.0132133    0.0008104    0.0256161
6-9 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA       0                    1                 -0.0275037   -0.0568596    0.0018523
6-9 months     LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5         MALAWI       0                    1                  0.0471398   -0.0025472    0.0968267
6-9 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH   0                    1                  0.0221194   -0.0098722    0.0541109
6-9 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL       0                    1                  0.0016949   -0.0863516    0.0897413
6-9 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA        0                    1                  0.0223293   -0.0283987    0.0730574
6-9 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL        0                    1                 -0.0095357   -0.0522003    0.0331290
6-9 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU         0                    1                  0.0172058   -0.0118389    0.0462506
6-9 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH   0                    1                  0.0141769   -0.0116899    0.0400437
6-9 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA        0                    1                  0.0260381   -0.0812158    0.1332921
9-12 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN     0                    1                 -0.0472576   -0.1526584    0.0581433
9-12 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL        0                    1                  0.0213158   -0.0085890    0.0512206
9-12 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH   0                    1                  0.0110171    0.0007330    0.0213012
9-12 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA       0                    1                  0.0506829    0.0240262    0.0773395
9-12 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5         MALAWI       0                    1                 -0.0311580   -0.1885949    0.1262788
9-12 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH   0                    1                  0.0252047   -0.0038768    0.0542863
9-12 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL       0                    1                  0.0180097   -0.0717275    0.1077470
9-12 months    MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA        0                    1                 -0.0107208   -0.0715880    0.0501464
9-12 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL        0                    1                  0.0603297   -0.0198071    0.1404664
9-12 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU         0                    1                  0.0323051    0.0012057    0.0634045
9-12 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH   0                    1                 -0.0061337   -0.0282222    0.0159547
9-12 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA        0                    1                 -0.0211124   -0.0819742    0.0397493
12-15 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN     0                    1                  0.0610623   -0.0508970    0.1730217
12-15 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL        0                    1                 -0.0057418   -0.0387031    0.0272195
12-15 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH   0                    1                  0.0132765    0.0025616    0.0239914
12-15 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA       0                    1                  0.0040513   -0.0179742    0.0260768
12-15 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH   0                    1                  0.0310041   -0.0035313    0.0655394
12-15 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL       0                    1                  0.0251093   -0.0508485    0.1010671
12-15 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA        0                    1                  0.0772156   -0.0293144    0.1837455
12-15 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL        0                    1                  0.0012377   -0.0867556    0.0892310
12-15 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU         0                    1                  0.0074642   -0.0252757    0.0402040
12-15 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH   0                    1                  0.0259403   -0.0020926    0.0539732
12-15 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA        0                    1                 -0.0101026   -0.1355951    0.1153899
15-18 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN     0                    1                  0.0619187   -0.0077012    0.1315387
15-18 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL        0                    1                  0.0210046   -0.0166566    0.0586658
15-18 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH   0                    1                  0.0134591    0.0004701    0.0264480
15-18 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA       0                    1                  0.0024279   -0.0189121    0.0237679
15-18 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH   0                    1                 -0.0305092   -0.0636328    0.0026145
15-18 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL       0                    1                  0.0899219    0.0262834    0.1535604
15-18 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA        0                    1                 -0.0526660   -0.1396769    0.0343449
15-18 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL        0                    1                  0.0352280    0.0001397    0.0703164
15-18 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU         0                    1                  0.0400856    0.0005768    0.0795943
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
18-21 months   MAL-ED         BANGLADESH   0                    1                  0.0288815   -0.0076844    0.0654473
18-21 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL       0                    1                  0.0758594    0.0225442    0.1291746
18-21 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA        0                    1                  0.0476972   -0.0458529    0.1412474
18-21 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL        0                    1                 -0.0193169   -0.0778546    0.0392209
18-21 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU         0                    1                 -0.0107448   -0.0495101    0.0280206
18-21 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH   0                    1                  0.0200819   -0.0064612    0.0466250
21-24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL        0                    1                 -0.0304553   -0.0816376    0.0207269
21-24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA       0                    1                  0.0324063    0.0100023    0.0548103
21-24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5         MALAWI       0                    1                  0.0433432   -0.0473754    0.1340619
21-24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH   0                    1                  0.0012435   -0.0297140    0.0322009
21-24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL       0                    1                  0.0140558   -0.0669923    0.0951039
21-24 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA        0                    1                 -0.0136792   -0.0805211    0.0531628
21-24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL        0                    1                 -0.0341155   -0.0927716    0.0245406
21-24 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU         0                    1                  0.0153314   -0.0237306    0.0543933
21-24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH   0                    1                 -0.0128245   -0.0405496    0.0149006


### Parameter: PAR


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0118255   -0.0223947   -0.0012563
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0003217   -0.0015988    0.0022423
0-3 months     JiVitA-4       BANGLADESH   1                    NA                -0.0107921   -0.0158849   -0.0056993
0-3 months     Keneba         GAMBIA       1                    NA                -0.0279361   -0.0440685   -0.0118037
0-3 months     MAL-ED         BANGLADESH   1                    NA                 0.0029533   -0.0279072    0.0338138
0-3 months     MAL-ED         BRAZIL       1                    NA                -0.0855206   -0.1825142    0.0114730
0-3 months     MAL-ED         INDIA        1                    NA                -0.0468952   -0.1492157    0.0554254
0-3 months     MAL-ED         NEPAL        1                    NA                 0.0413999   -0.0837519    0.1665517
0-3 months     MAL-ED         PERU         1                    NA                -0.0404785   -0.0753464   -0.0056107
0-3 months     PROVIDE        BANGLADESH   1                    NA                -0.0316784   -0.0557389   -0.0076178
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.0058536   -0.0123722    0.0006650
3-6 months     GMS-Nepal      NEPAL        1                    NA                 0.0030966   -0.0056199    0.0118132
3-6 months     JiVitA-3       BANGLADESH   1                    NA                -0.0003408   -0.0024827    0.0018010
3-6 months     JiVitA-4       BANGLADESH   1                    NA                 0.0006481   -0.0028949    0.0041912
3-6 months     Keneba         GAMBIA       1                    NA                -0.0115321   -0.0265034    0.0034392
3-6 months     MAL-ED         BANGLADESH   1                    NA                 0.0001946   -0.0212041    0.0215933
3-6 months     MAL-ED         BRAZIL       1                    NA                -0.0179316   -0.0908894    0.0550262
3-6 months     MAL-ED         INDIA        1                    NA                 0.0277653   -0.0396306    0.0951611
3-6 months     MAL-ED         NEPAL        1                    NA                 0.0968383    0.0158644    0.1778121
3-6 months     MAL-ED         PERU         1                    NA                 0.0002423   -0.0259615    0.0264461
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0106982   -0.0331711    0.0117746
3-6 months     SAS-CompFeed   INDIA        1                    NA                 0.0055519   -0.0001633    0.0112671
6-9 months     EE             PAKISTAN     1                    NA                 0.0046060   -0.0117607    0.0209727
6-9 months     GMS-Nepal      NEPAL        1                    NA                 0.0054517   -0.0031421    0.0140455
6-9 months     JiVitA-4       BANGLADESH   1                    NA                 0.0027223    0.0001557    0.0052890
6-9 months     Keneba         GAMBIA       1                    NA                -0.0193370   -0.0399942    0.0013203
6-9 months     LCNI-5         MALAWI       1                    NA                 0.0396105   -0.0022362    0.0814572
6-9 months     MAL-ED         BANGLADESH   1                    NA                 0.0143725   -0.0064622    0.0352072
6-9 months     MAL-ED         BRAZIL       1                    NA                 0.0014466   -0.0737042    0.0765974
6-9 months     MAL-ED         INDIA        1                    NA                 0.0211762   -0.0269367    0.0692891
6-9 months     MAL-ED         NEPAL        1                    NA                -0.0090155   -0.0493541    0.0313230
6-9 months     MAL-ED         PERU         1                    NA                 0.0111662   -0.0077114    0.0300439
6-9 months     PROVIDE        BANGLADESH   1                    NA                 0.0110019   -0.0090776    0.0310814
6-9 months     SAS-CompFeed   INDIA        1                    NA                 0.0011624   -0.0034360    0.0057609
9-12 months    EE             PAKISTAN     1                    NA                -0.0053702   -0.0181590    0.0074186
9-12 months    GMS-Nepal      NEPAL        1                    NA                 0.0050356   -0.0020801    0.0121513
9-12 months    JiVitA-4       BANGLADESH   1                    NA                 0.0024008    0.0001585    0.0046431
9-12 months    Keneba         GAMBIA       1                    NA                 0.0344056    0.0162352    0.0525761
9-12 months    LCNI-5         MALAWI       1                    NA                -0.0211070   -0.1278851    0.0856710
9-12 months    MAL-ED         BANGLADESH   1                    NA                 0.0161030   -0.0025472    0.0347533
9-12 months    MAL-ED         BRAZIL       1                    NA                 0.0154104   -0.0613803    0.0922011
9-12 months    MAL-ED         INDIA        1                    NA                -0.0101592   -0.0678390    0.0475206
9-12 months    MAL-ED         NEPAL        1                    NA                 0.0572994   -0.0188323    0.1334311
9-12 months    MAL-ED         PERU         1                    NA                 0.0210327    0.0006891    0.0413762
9-12 months    PROVIDE        BANGLADESH   1                    NA                -0.0047216   -0.0217259    0.0122828
9-12 months    SAS-CompFeed   INDIA        1                    NA                -0.0007688   -0.0031005    0.0015629
12-15 months   EE             PAKISTAN     1                    NA                 0.0082517   -0.0083437    0.0248470
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0013564   -0.0091465    0.0064337
12-15 months   JiVitA-4       BANGLADESH   1                    NA                 0.0029115    0.0005388    0.0052842
12-15 months   Keneba         GAMBIA       1                    NA                 0.0027052   -0.0120026    0.0174130
12-15 months   MAL-ED         BANGLADESH   1                    NA                 0.0199095   -0.0023617    0.0421806
12-15 months   MAL-ED         BRAZIL       1                    NA                 0.0214248   -0.0433998    0.0862493
12-15 months   MAL-ED         INDIA        1                    NA                 0.0731516   -0.0277988    0.1741019
12-15 months   MAL-ED         NEPAL        1                    NA                 0.0011758   -0.0824179    0.0847694
12-15 months   MAL-ED         PERU         1                    NA                 0.0048984   -0.0165922    0.0263889
12-15 months   PROVIDE        BANGLADESH   1                    NA                 0.0198538   -0.0016217    0.0413293
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0003122   -0.0041194    0.0034950
15-18 months   EE             PAKISTAN     1                    NA                 0.0093816   -0.0036736    0.0224368
15-18 months   GMS-Nepal      NEPAL        1                    NA                 0.0051823   -0.0041466    0.0145113
15-18 months   JiVitA-4       BANGLADESH   1                    NA                 0.0029001    0.0000631    0.0057372
15-18 months   Keneba         GAMBIA       1                    NA                 0.0015914   -0.0123966    0.0155794
15-18 months   MAL-ED         BANGLADESH   1                    NA                -0.0192926   -0.0403359    0.0017508
15-18 months   MAL-ED         BRAZIL       1                    NA                 0.0760482    0.0220123    0.1300842
15-18 months   MAL-ED         INDIA        1                    NA                -0.0498941   -0.1323410    0.0325528
15-18 months   MAL-ED         NEPAL        1                    NA                 0.0332889    0.0001148    0.0664630
15-18 months   MAL-ED         PERU         1                    NA                 0.0260369    0.0002465    0.0518273
15-18 months   PROVIDE        BANGLADESH   1                    NA                 0.0085772   -0.0117909    0.0289453
15-18 months   SAS-CompFeed   INDIA        1                    NA                 0.0031389   -0.0042884    0.0105661
18-21 months   EE             PAKISTAN     1                    NA                -0.0025094   -0.0192689    0.0142501
18-21 months   GMS-Nepal      NEPAL        1                    NA                -0.0094036   -0.0177390   -0.0010681
18-21 months   Keneba         GAMBIA       1                    NA                -0.0180045   -0.0336898   -0.0023192
18-21 months   LCNI-5         MALAWI       1                    NA                -0.0182813   -0.0826623    0.0460998
18-21 months   MAL-ED         BANGLADESH   1                    NA                 0.0181581   -0.0049121    0.0412283
18-21 months   MAL-ED         BRAZIL       1                    NA                 0.0645032    0.0189827    0.1100236
18-21 months   MAL-ED         INDIA        1                    NA                 0.0454151   -0.0436697    0.1344999
18-21 months   MAL-ED         NEPAL        1                    NA                -0.0182536   -0.0735722    0.0370650
18-21 months   MAL-ED         PERU         1                    NA                -0.0070213   -0.0323630    0.0183203
18-21 months   PROVIDE        BANGLADESH   1                    NA                 0.0154134   -0.0049717    0.0357985
21-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0071985   -0.0193767    0.0049796
21-24 months   Keneba         GAMBIA       1                    NA                 0.0216713    0.0066624    0.0366803
21-24 months   LCNI-5         MALAWI       1                    NA                 0.0355803   -0.0389438    0.1101043
21-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0007896   -0.0188685    0.0204478
21-24 months   MAL-ED         BRAZIL       1                    NA                 0.0119261   -0.0568463    0.0806986
21-24 months   MAL-ED         INDIA        1                    NA                -0.0130215   -0.0766512    0.0506081
21-24 months   MAL-ED         NEPAL        1                    NA                -0.0322376   -0.0876746    0.0231994
21-24 months   MAL-ED         PERU         1                    NA                 0.0101398   -0.0157157    0.0359952
21-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0098101   -0.0310239    0.0114037
