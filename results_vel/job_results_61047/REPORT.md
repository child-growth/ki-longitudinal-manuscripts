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

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        predexfd6    n_cell       n
-------------  ---------------  -----------------------------  ----------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          1                 6       6
0-3 months     CMC-V-BCS-2002   INDIA                          0                 0       6
0-3 months     EE               PAKISTAN                       1                33      37
0-3 months     EE               PAKISTAN                       0                 4      37
0-3 months     GMS-Nepal        NEPAL                          1               368     501
0-3 months     GMS-Nepal        NEPAL                          0               133     501
0-3 months     IRC              INDIA                          1                 0      14
0-3 months     IRC              INDIA                          0                14      14
0-3 months     JiVitA-3         BANGLADESH                     1              9260   11961
0-3 months     JiVitA-3         BANGLADESH                     0              2701   11961
0-3 months     JiVitA-4         BANGLADESH                     1              1512    1805
0-3 months     JiVitA-4         BANGLADESH                     0               293    1805
0-3 months     Keneba           GAMBIA                         1               391    1207
0-3 months     Keneba           GAMBIA                         0               816    1207
0-3 months     MAL-ED           BANGLADESH                     1                82     227
0-3 months     MAL-ED           BANGLADESH                     0               145     227
0-3 months     MAL-ED           BRAZIL                         1                21     163
0-3 months     MAL-ED           BRAZIL                         0               142     163
0-3 months     MAL-ED           INDIA                          1                 8     167
0-3 months     MAL-ED           INDIA                          0               159     167
0-3 months     MAL-ED           NEPAL                          1                11     145
0-3 months     MAL-ED           NEPAL                          0               134     145
0-3 months     MAL-ED           PERU                           1                85     254
0-3 months     MAL-ED           PERU                           0               169     254
0-3 months     MAL-ED           SOUTH AFRICA                   1                 2     186
0-3 months     MAL-ED           SOUTH AFRICA                   0               184     186
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
3-6 months     JiVitA-3         BANGLADESH                     1              5753    7502
3-6 months     JiVitA-3         BANGLADESH                     0              1749    7502
3-6 months     JiVitA-4         BANGLADESH                     1              1516    1797
3-6 months     JiVitA-4         BANGLADESH                     0               281    1797
3-6 months     Keneba           GAMBIA                         1               377    1331
3-6 months     Keneba           GAMBIA                         0               954    1331
3-6 months     MAL-ED           BANGLADESH                     1                80     222
3-6 months     MAL-ED           BANGLADESH                     0               142     222
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
6-9 months     JiVitA-4         BANGLADESH                     1              2198    2769
6-9 months     JiVitA-4         BANGLADESH                     0               571    2769
6-9 months     Keneba           GAMBIA                         1               242     815
6-9 months     Keneba           GAMBIA                         0               573     815
6-9 months     LCNI-5           MALAWI                         1                23     145
6-9 months     LCNI-5           MALAWI                         0               122     145
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
9-12 months    JiVitA-4         BANGLADESH                     1              2453    3134
9-12 months    JiVitA-4         BANGLADESH                     0               681    3134
9-12 months    Keneba           GAMBIA                         1               254     793
9-12 months    Keneba           GAMBIA                         0               539     793
9-12 months    LCNI-5           MALAWI                         1                10      32
9-12 months    LCNI-5           MALAWI                         0                22      32
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
12-15 months   JiVitA-4         BANGLADESH                     1              2460    3148
12-15 months   JiVitA-4         BANGLADESH                     0               688    3148
12-15 months   Keneba           GAMBIA                         1               410    1236
12-15 months   Keneba           GAMBIA                         0               826    1236
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
15-18 months   JiVitA-4         BANGLADESH                     1              2467    3148
15-18 months   JiVitA-4         BANGLADESH                     0               681    3148
15-18 months   Keneba           GAMBIA                         1               431    1249
15-18 months   Keneba           GAMBIA                         0               818    1249
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
15-18 months   MAL-ED           PERU                           1                75     213
15-18 months   MAL-ED           PERU                           0               138     213
15-18 months   MAL-ED           SOUTH AFRICA                   1                 3     206
15-18 months   MAL-ED           SOUTH AFRICA                   0               203     206
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     205
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               204     205
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     192
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               191     192
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     192
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               191     192
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/bb083489-8289-4a0d-aa56-1fbaec22811e/a8dada2c-6987-4beb-88c0-5565b26a2908/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bb083489-8289-4a0d-aa56-1fbaec22811e/a8dada2c-6987-4beb-88c0-5565b26a2908/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bb083489-8289-4a0d-aa56-1fbaec22811e/a8dada2c-6987-4beb-88c0-5565b26a2908/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0269301   -0.0557521    0.0018919
0-3 months     GMS-Nepal      NEPAL        0                    NA                -0.0507142   -0.1036543    0.0022260
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0735279    0.0669535    0.0801022
0-3 months     JiVitA-3       BANGLADESH   0                    NA                 0.0798036    0.0687130    0.0908942
0-3 months     JiVitA-4       BANGLADESH   1                    NA                 0.0785521    0.0628880    0.0942163
0-3 months     JiVitA-4       BANGLADESH   0                    NA                 0.0104417   -0.0309909    0.0518743
0-3 months     Keneba         GAMBIA       1                    NA                -0.2786666   -0.3215460   -0.2357872
0-3 months     Keneba         GAMBIA       0                    NA                -0.2890351   -0.3196104   -0.2584599
0-3 months     MAL-ED         BANGLADESH   1                    NA                -0.1056892   -0.1580681   -0.0533102
0-3 months     MAL-ED         BANGLADESH   0                    NA                -0.1224744   -0.1669677   -0.0779810
0-3 months     MAL-ED         BRAZIL       1                    NA                 0.2814340    0.1061404    0.4567276
0-3 months     MAL-ED         BRAZIL       0                    NA                 0.1237921    0.0631249    0.1844593
0-3 months     MAL-ED         INDIA        1                    NA                -0.1519059   -0.3354979    0.0316861
0-3 months     MAL-ED         INDIA        0                    NA                -0.0618553   -0.1121399   -0.0115708
0-3 months     MAL-ED         NEPAL        1                    NA                -0.0944330   -0.2004774    0.0116115
0-3 months     MAL-ED         NEPAL        0                    NA                 0.0659682    0.0161549    0.1157814
0-3 months     MAL-ED         PERU         1                    NA                -0.2326382   -0.2930112   -0.1722653
0-3 months     MAL-ED         PERU         0                    NA                -0.2722190   -0.3137286   -0.2307094
0-3 months     PROVIDE        BANGLADESH   1                    NA                -0.1775419   -0.2094030   -0.1456807
0-3 months     PROVIDE        BANGLADESH   0                    NA                -0.1890571   -0.2096054   -0.1685087
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.1257104   -0.1530267   -0.0983942
0-3 months     SAS-CompFeed   INDIA        0                    NA                -0.3105682   -0.3875824   -0.2335540
3-6 months     GMS-Nepal      NEPAL        1                    NA                -0.1519250   -0.1733140   -0.1305360
3-6 months     GMS-Nepal      NEPAL        0                    NA                -0.1879666   -0.2260756   -0.1498577
3-6 months     JiVitA-3       BANGLADESH   1                    NA                -0.0037061   -0.0106769    0.0032646
3-6 months     JiVitA-3       BANGLADESH   0                    NA                -0.0033298   -0.0147006    0.0080410
3-6 months     JiVitA-4       BANGLADESH   1                    NA                -0.0158073   -0.0310038   -0.0006108
3-6 months     JiVitA-4       BANGLADESH   0                    NA                 0.0145733   -0.0210362    0.0501828
3-6 months     Keneba         GAMBIA       1                    NA                -0.0293718   -0.0630401    0.0042966
3-6 months     Keneba         GAMBIA       0                    NA                -0.0133642   -0.0363380    0.0096097
3-6 months     MAL-ED         BANGLADESH   1                    NA                -0.0128964   -0.0559337    0.0301410
3-6 months     MAL-ED         BANGLADESH   0                    NA                -0.0308888   -0.0594426   -0.0023351
3-6 months     MAL-ED         BRAZIL       1                    NA                 0.0545341   -0.0463951    0.1554634
3-6 months     MAL-ED         BRAZIL       0                    NA                 0.0613118    0.0218702    0.1007533
3-6 months     MAL-ED         INDIA        1                    NA                 0.0135966   -0.0841604    0.1113536
3-6 months     MAL-ED         INDIA        0                    NA                -0.0400923   -0.0720236   -0.0081610
3-6 months     MAL-ED         NEPAL        1                    NA                -0.0251106   -0.1454822    0.0952609
3-6 months     MAL-ED         NEPAL        0                    NA                -0.0218552   -0.0504402    0.0067298
3-6 months     MAL-ED         PERU         1                    NA                 0.0345751   -0.0219790    0.0911292
3-6 months     MAL-ED         PERU         0                    NA                 0.0226757   -0.0153143    0.0606658
3-6 months     PROVIDE        BANGLADESH   1                    NA                 0.0000630   -0.0312703    0.0313963
3-6 months     PROVIDE        BANGLADESH   0                    NA                -0.0348068   -0.0531074   -0.0165062
3-6 months     SAS-CompFeed   INDIA        1                    NA                -0.0398525   -0.0752492   -0.0044558
3-6 months     SAS-CompFeed   INDIA        0                    NA                 0.0480716   -0.1204917    0.2166348
6-9 months     EE             PAKISTAN     1                    NA                -0.1102361   -0.1665884   -0.0538838
6-9 months     EE             PAKISTAN     0                    NA                -0.0939376   -0.1833491   -0.0045262
6-9 months     GMS-Nepal      NEPAL        1                    NA                -0.0463911   -0.0644254   -0.0283567
6-9 months     GMS-Nepal      NEPAL        0                    NA                -0.0525190   -0.0992507   -0.0057873
6-9 months     JiVitA-4       BANGLADESH   1                    NA                -0.0293330   -0.0393999   -0.0192661
6-9 months     JiVitA-4       BANGLADESH   0                    NA                -0.0247786   -0.0455773   -0.0039799
6-9 months     Keneba         GAMBIA       1                    NA                 0.0130646   -0.0353475    0.0614766
6-9 months     Keneba         GAMBIA       0                    NA                -0.0249650   -0.0523163    0.0023864
6-9 months     LCNI-5         MALAWI       1                    NA                 0.0167586   -0.0664028    0.0999200
6-9 months     LCNI-5         MALAWI       0                    NA                 0.0071430   -0.0212469    0.0355328
6-9 months     MAL-ED         BANGLADESH   1                    NA                -0.0712302   -0.1013371   -0.0411233
6-9 months     MAL-ED         BANGLADESH   0                    NA                -0.0642928   -0.0865732   -0.0420125
6-9 months     MAL-ED         BRAZIL       1                    NA                 0.0695913   -0.0525384    0.1917209
6-9 months     MAL-ED         BRAZIL       0                    NA                -0.0005793   -0.0343843    0.0332256
6-9 months     MAL-ED         INDIA        1                    NA                -0.0099959   -0.0822773    0.0622855
6-9 months     MAL-ED         INDIA        0                    NA                -0.0690359   -0.0933700   -0.0447018
6-9 months     MAL-ED         NEPAL        1                    NA                -0.1052128   -0.1773790   -0.0330466
6-9 months     MAL-ED         NEPAL        0                    NA                -0.0342146   -0.0542334   -0.0141957
6-9 months     MAL-ED         PERU         1                    NA                -0.0343184   -0.0759862    0.0073494
6-9 months     MAL-ED         PERU         0                    NA                -0.0313555   -0.0609072   -0.0018038
6-9 months     PROVIDE        BANGLADESH   1                    NA                -0.0761869   -0.0986487   -0.0537250
6-9 months     PROVIDE        BANGLADESH   0                    NA                -0.0572953   -0.0696279   -0.0449626
6-9 months     SAS-CompFeed   INDIA        1                    NA                -0.0847370   -0.1219955   -0.0474784
6-9 months     SAS-CompFeed   INDIA        0                    NA                -0.1340104   -0.2940868    0.0260659
9-12 months    EE             PAKISTAN     1                    NA                -0.1276355   -0.1664421   -0.0888290
9-12 months    EE             PAKISTAN     0                    NA                -0.1346832   -0.2415573   -0.0278091
9-12 months    GMS-Nepal      NEPAL        1                    NA                -0.0841181   -0.0982960   -0.0699401
9-12 months    GMS-Nepal      NEPAL        0                    NA                -0.0661827   -0.1036822   -0.0286832
9-12 months    JiVitA-4       BANGLADESH   1                    NA                -0.0539843   -0.0631275   -0.0448411
9-12 months    JiVitA-4       BANGLADESH   0                    NA                -0.0512747   -0.0681415   -0.0344079
9-12 months    Keneba         GAMBIA       1                    NA                -0.1067045   -0.1380046   -0.0754044
9-12 months    Keneba         GAMBIA       0                    NA                -0.0956931   -0.1182165   -0.0731696
9-12 months    LCNI-5         MALAWI       1                    NA                -0.1373614   -0.2234391   -0.0512837
9-12 months    LCNI-5         MALAWI       0                    NA                -0.1440548   -0.2215521   -0.0665575
9-12 months    MAL-ED         BANGLADESH   1                    NA                -0.1046983   -0.1314134   -0.0779833
9-12 months    MAL-ED         BANGLADESH   0                    NA                -0.0798921   -0.1006556   -0.0591285
9-12 months    MAL-ED         BRAZIL       1                    NA                -0.0352154   -0.1220130    0.0515822
9-12 months    MAL-ED         BRAZIL       0                    NA                 0.0163500   -0.0168813    0.0495814
9-12 months    MAL-ED         INDIA        1                    NA                -0.1382168   -0.2300002   -0.0464334
9-12 months    MAL-ED         INDIA        0                    NA                -0.0901228   -0.1068391   -0.0734064
9-12 months    MAL-ED         NEPAL        1                    NA                -0.1439987   -0.1889335   -0.0990639
9-12 months    MAL-ED         NEPAL        0                    NA                -0.0607115   -0.0789082   -0.0425148
9-12 months    MAL-ED         PERU         1                    NA                -0.0480723   -0.0827213   -0.0134232
9-12 months    MAL-ED         PERU         0                    NA                -0.0388586   -0.0662320   -0.0114852
9-12 months    PROVIDE        BANGLADESH   1                    NA                -0.0752230   -0.0977150   -0.0527310
9-12 months    PROVIDE        BANGLADESH   0                    NA                -0.0593254   -0.0717844   -0.0468663
9-12 months    SAS-CompFeed   INDIA        1                    NA                -0.0907751   -0.1204583   -0.0610919
9-12 months    SAS-CompFeed   INDIA        0                    NA                 0.0498786   -0.0587520    0.1585093
12-15 months   EE             PAKISTAN     1                    NA                -0.0016762   -0.0345630    0.0312106
12-15 months   EE             PAKISTAN     0                    NA                 0.0416377   -0.0932971    0.1765724
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0696423   -0.0803186   -0.0589660
12-15 months   GMS-Nepal      NEPAL        0                    NA                -0.0716306   -0.0933335   -0.0499277
12-15 months   JiVitA-4       BANGLADESH   1                    NA                -0.0494715   -0.0565851   -0.0423580
12-15 months   JiVitA-4       BANGLADESH   0                    NA                -0.0310639   -0.0479558   -0.0141720
12-15 months   Keneba         GAMBIA       1                    NA                -0.0468866   -0.0662219   -0.0275513
12-15 months   Keneba         GAMBIA       0                    NA                -0.0522248   -0.0679461   -0.0365034
12-15 months   MAL-ED         BANGLADESH   1                    NA                -0.0650564   -0.0884772   -0.0416356
12-15 months   MAL-ED         BANGLADESH   0                    NA                -0.0478075   -0.0690685   -0.0265465
12-15 months   MAL-ED         BRAZIL       1                    NA                -0.0190596   -0.0748902    0.0367710
12-15 months   MAL-ED         BRAZIL       0                    NA                -0.0001253   -0.0248409    0.0245903
12-15 months   MAL-ED         INDIA        1                    NA                -0.0460608   -0.1119132    0.0197916
12-15 months   MAL-ED         INDIA        0                    NA                -0.0568379   -0.0732472   -0.0404286
12-15 months   MAL-ED         NEPAL        1                    NA                -0.0638683   -0.1201337   -0.0076029
12-15 months   MAL-ED         NEPAL        0                    NA                -0.0586436   -0.0748638   -0.0424235
12-15 months   MAL-ED         PERU         1                    NA                -0.0751073   -0.1039922   -0.0462224
12-15 months   MAL-ED         PERU         0                    NA                -0.0618461   -0.0849339   -0.0387583
12-15 months   PROVIDE        BANGLADESH   1                    NA                -0.0402170   -0.0582278   -0.0222062
12-15 months   PROVIDE        BANGLADESH   0                    NA                -0.0415920   -0.0535600   -0.0296241
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0781898   -0.1071019   -0.0492777
12-15 months   SAS-CompFeed   INDIA        0                    NA                -0.1559999   -0.2687769   -0.0432229
15-18 months   EE             PAKISTAN     1                    NA                -0.0239930   -0.0525465    0.0045604
15-18 months   EE             PAKISTAN     0                    NA                -0.0267957   -0.0572607    0.0036694
15-18 months   GMS-Nepal      NEPAL        1                    NA                -0.0594405   -0.0739100   -0.0449709
15-18 months   GMS-Nepal      NEPAL        0                    NA                -0.0905604   -0.1074195   -0.0737014
15-18 months   JiVitA-4       BANGLADESH   1                    NA                -0.0336996   -0.0409907   -0.0264086
15-18 months   JiVitA-4       BANGLADESH   0                    NA                -0.0290965   -0.0431173   -0.0150758
15-18 months   Keneba         GAMBIA       1                    NA                -0.0262366   -0.0489117   -0.0035616
15-18 months   Keneba         GAMBIA       0                    NA                -0.0329602   -0.0474661   -0.0184543
15-18 months   MAL-ED         BANGLADESH   1                    NA                -0.0460009   -0.0695122   -0.0224897
15-18 months   MAL-ED         BANGLADESH   0                    NA                -0.0477594   -0.0656256   -0.0298933
15-18 months   MAL-ED         BRAZIL       1                    NA                -0.0089822   -0.0740760    0.0561116
15-18 months   MAL-ED         BRAZIL       0                    NA                -0.0186804   -0.0418427    0.0044820
15-18 months   MAL-ED         INDIA        1                    NA                -0.0486650   -0.0991237    0.0017936
15-18 months   MAL-ED         INDIA        0                    NA                -0.0364840   -0.0501300   -0.0228380
15-18 months   MAL-ED         NEPAL        1                    NA                -0.0432096   -0.0790809   -0.0073383
15-18 months   MAL-ED         NEPAL        0                    NA                -0.0558636   -0.0721742   -0.0395531
15-18 months   MAL-ED         PERU         1                    NA                -0.0404724   -0.0650731   -0.0158716
15-18 months   MAL-ED         PERU         0                    NA                -0.0312634   -0.0512292   -0.0112977
15-18 months   PROVIDE        BANGLADESH   1                    NA                -0.0508400   -0.0695431   -0.0321368
15-18 months   PROVIDE        BANGLADESH   0                    NA                -0.0338927   -0.0438148   -0.0239705
15-18 months   SAS-CompFeed   INDIA        1                    NA                -0.0172802   -0.0379484    0.0033881
15-18 months   SAS-CompFeed   INDIA        0                    NA                 0.0618751   -0.1198771    0.2436273
18-21 months   EE             PAKISTAN     1                    NA                -0.0093635   -0.0349812    0.0162542
18-21 months   EE             PAKISTAN     0                    NA                -0.0265882   -0.0706485    0.0174721
18-21 months   GMS-Nepal      NEPAL        1                    NA                 0.0137660   -0.0014701    0.0290021
18-21 months   GMS-Nepal      NEPAL        0                    NA                 0.0284138    0.0095073    0.0473203
18-21 months   Keneba         GAMBIA       1                    NA                -0.0198387   -0.0431278    0.0034504
18-21 months   Keneba         GAMBIA       0                    NA                -0.0231913   -0.0389102   -0.0074725
18-21 months   LCNI-5         MALAWI       1                    NA                -0.0351956   -0.1600821    0.0896908
18-21 months   LCNI-5         MALAWI       0                    NA                -0.0005536   -0.0274574    0.0263503
18-21 months   MAL-ED         BANGLADESH   1                    NA                -0.0119564   -0.0318046    0.0078918
18-21 months   MAL-ED         BANGLADESH   0                    NA                -0.0141648   -0.0301010    0.0017715
18-21 months   MAL-ED         BRAZIL       1                    NA                -0.0637215   -0.1194765   -0.0079664
18-21 months   MAL-ED         BRAZIL       0                    NA                -0.0133791   -0.0406970    0.0139387
18-21 months   MAL-ED         INDIA        1                    NA                 0.0041969   -0.0492089    0.0576028
18-21 months   MAL-ED         INDIA        0                    NA                 0.0073227   -0.0046084    0.0192538
18-21 months   MAL-ED         NEPAL        1                    NA                -0.0682299   -0.1113639   -0.0250959
18-21 months   MAL-ED         NEPAL        0                    NA                -0.0286163   -0.0423155   -0.0149172
18-21 months   MAL-ED         PERU         1                    NA                -0.0192612   -0.0457779    0.0072554
18-21 months   MAL-ED         PERU         0                    NA                -0.0022051   -0.0214243    0.0170141
18-21 months   PROVIDE        BANGLADESH   1                    NA                -0.0246676   -0.0420813   -0.0072539
18-21 months   PROVIDE        BANGLADESH   0                    NA                -0.0074718   -0.0167443    0.0018006
21-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0438440    0.0270075    0.0606804
21-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0519688    0.0098689    0.0940687
21-24 months   Keneba         GAMBIA       1                    NA                 0.0073905   -0.0146957    0.0294767
21-24 months   Keneba         GAMBIA       0                    NA                 0.0194878    0.0054830    0.0334926
21-24 months   LCNI-5         MALAWI       1                    NA                -0.0094875   -0.0580473    0.0390724
21-24 months   LCNI-5         MALAWI       0                    NA                -0.0122066   -0.0372520    0.0128388
21-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0262540    0.0033971    0.0491109
21-24 months   MAL-ED         BANGLADESH   0                    NA                 0.0251254    0.0100274    0.0402234
21-24 months   MAL-ED         BRAZIL       1                    NA                 0.0196298   -0.0164493    0.0557089
21-24 months   MAL-ED         BRAZIL       0                    NA                 0.0163640   -0.0015070    0.0342349
21-24 months   MAL-ED         INDIA        1                    NA                 0.0265221   -0.0087160    0.0617602
21-24 months   MAL-ED         INDIA        0                    NA                 0.0303688    0.0186099    0.0421278
21-24 months   MAL-ED         NEPAL        1                    NA                 0.0481180   -0.0252670    0.1215030
21-24 months   MAL-ED         NEPAL        0                    NA                 0.0040941   -0.0101991    0.0183874
21-24 months   MAL-ED         PERU         1                    NA                 0.0454497    0.0148855    0.0760140
21-24 months   MAL-ED         PERU         0                    NA                 0.0651423    0.0465439    0.0837408
21-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0412713    0.0234670    0.0590756
21-24 months   PROVIDE        BANGLADESH   0                    NA                 0.0476470    0.0376952    0.0575988


### Parameter: E(Y)


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        NA                   NA                -0.0320017   -0.0574984   -0.0065051
0-3 months     JiVitA-3       BANGLADESH   NA                   NA                 0.0748381    0.0686962    0.0809800
0-3 months     JiVitA-4       BANGLADESH   NA                   NA                 0.0674700    0.0524969    0.0824432
0-3 months     Keneba         GAMBIA       NA                   NA                -0.2849946   -0.3097468   -0.2602425
0-3 months     MAL-ED         BANGLADESH   NA                   NA                -0.1184816   -0.1534627   -0.0835006
0-3 months     MAL-ED         BRAZIL       NA                   NA                 0.1446583    0.0870976    0.2022191
0-3 months     MAL-ED         INDIA        NA                   NA                -0.0661691   -0.1149338   -0.0174045
0-3 months     MAL-ED         NEPAL        NA                   NA                 0.0549995    0.0083296    0.1016694
0-3 months     MAL-ED         PERU         NA                   NA                -0.2591669   -0.2929238   -0.2254100
0-3 months     PROVIDE        BANGLADESH   NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     SAS-CompFeed   INDIA        NA                   NA                -0.1347598   -0.1669848   -0.1025348
3-6 months     GMS-Nepal      NEPAL        NA                   NA                -0.1617717   -0.1805409   -0.1430025
3-6 months     JiVitA-3       BANGLADESH   NA                   NA                -0.0036992   -0.0098266    0.0024282
3-6 months     JiVitA-4       BANGLADESH   NA                   NA                -0.0106594   -0.0245209    0.0032020
3-6 months     Keneba         GAMBIA       NA                   NA                -0.0174002   -0.0363928    0.0015925
3-6 months     MAL-ED         BANGLADESH   NA                   NA                -0.0242637   -0.0483310   -0.0001965
3-6 months     MAL-ED         BRAZIL       NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED         INDIA        NA                   NA                -0.0402849   -0.0709914   -0.0095783
3-6 months     MAL-ED         NEPAL        NA                   NA                -0.0219437   -0.0494813    0.0055938
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
6-9 months     MAL-ED         INDIA        NA                   NA                -0.0688970   -0.0921281   -0.0456658
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
9-12 months    MAL-ED         INDIA        NA                   NA                -0.0907785   -0.1072717   -0.0742853
9-12 months    MAL-ED         NEPAL        NA                   NA                -0.0633531   -0.0808095   -0.0458966
9-12 months    MAL-ED         PERU         NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    PROVIDE        BANGLADESH   NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed   INDIA        NA                   NA                -0.0874131   -0.1167860   -0.0580402
12-15 months   EE             PAKISTAN     NA                   NA                 0.0041770   -0.0299533    0.0383073
12-15 months   GMS-Nepal      NEPAL        NA                   NA                -0.0700044   -0.0796323   -0.0603764
12-15 months   JiVitA-4       BANGLADESH   NA                   NA                -0.0457929   -0.0524470   -0.0391387
12-15 months   Keneba         GAMBIA       NA                   NA                -0.0508881   -0.0630216   -0.0387547
12-15 months   MAL-ED         BANGLADESH   NA                   NA                -0.0539793   -0.0699671   -0.0379916
12-15 months   MAL-ED         BRAZIL       NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED         INDIA        NA                   NA                -0.0564380   -0.0722459   -0.0406302
12-15 months   MAL-ED         NEPAL        NA                   NA                -0.0581047   -0.0738902   -0.0423192
12-15 months   MAL-ED         PERU         NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   PROVIDE        BANGLADESH   NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed   INDIA        NA                   NA                -0.0801725   -0.1084262   -0.0519187
15-18 months   EE             PAKISTAN     NA                   NA                -0.0244177   -0.0490831    0.0002477
15-18 months   GMS-Nepal      NEPAL        NA                   NA                -0.0665082   -0.0782160   -0.0548005
15-18 months   JiVitA-4       BANGLADESH   NA                   NA                -0.0322067   -0.0387357   -0.0256778
15-18 months   Keneba         GAMBIA       NA                   NA                -0.0301774   -0.0421851   -0.0181698
15-18 months   MAL-ED         BANGLADESH   NA                   NA                -0.0465524   -0.0603507   -0.0327542
15-18 months   MAL-ED         BRAZIL       NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED         INDIA        NA                   NA                -0.0368191   -0.0499234   -0.0237147
15-18 months   MAL-ED         NEPAL        NA                   NA                -0.0540981   -0.0695896   -0.0386065
15-18 months   MAL-ED         PERU         NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   PROVIDE        BANGLADESH   NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed   INDIA        NA                   NA                -0.0159336   -0.0379140    0.0060468
18-21 months   EE             PAKISTAN     NA                   NA                -0.0119733   -0.0348121    0.0108655
18-21 months   GMS-Nepal      NEPAL        NA                   NA                 0.0165107    0.0043866    0.0286347
18-21 months   Keneba         GAMBIA       NA                   NA                -0.0224639   -0.0348440   -0.0100838
18-21 months   LCNI-5         MALAWI       NA                   NA                -0.0092283   -0.0423286    0.0238719
18-21 months   MAL-ED         BANGLADESH   NA                   NA                -0.0136918   -0.0255600   -0.0018237
18-21 months   MAL-ED         BRAZIL       NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED         INDIA        NA                   NA                 0.0056606   -0.0059781    0.0172993
18-21 months   MAL-ED         NEPAL        NA                   NA                -0.0305803   -0.0437450   -0.0174157
18-21 months   MAL-ED         PERU         NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   PROVIDE        BANGLADESH   NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   GMS-Nepal      NEPAL        NA                   NA                 0.0465624    0.0306829    0.0624420
21-24 months   Keneba         GAMBIA       NA                   NA                 0.0160955    0.0044320    0.0277591
21-24 months   LCNI-5         MALAWI       NA                   NA                -0.0116248   -0.0336145    0.0103649
21-24 months   MAL-ED         BANGLADESH   NA                   NA                 0.0256240    0.0132472    0.0380008
21-24 months   MAL-ED         BRAZIL       NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED         INDIA        NA                   NA                 0.0308252    0.0194990    0.0421515
21-24 months   MAL-ED         NEPAL        NA                   NA                 0.0061413   -0.0078495    0.0201321
21-24 months   MAL-ED         PERU         NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   PROVIDE        BANGLADESH   NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL        0                    1                 -0.0237840   -0.0839040    0.0363359
0-3 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH   0                    1                  0.0062757   -0.0053281    0.0178796
0-3 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH   0                    1                 -0.0681104   -0.1120823   -0.0241385
0-3 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA       0                    1                 -0.0103685   -0.0628116    0.0420747
0-3 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH   0                    1                 -0.0167852   -0.0840071    0.0504367
0-3 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL       0                    1                 -0.1576419   -0.3433852    0.0281014
0-3 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA        0                    1                  0.0900506   -0.1003032    0.2804044
0-3 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL        0                    1                  0.1604011    0.0426931    0.2781092
0-3 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU         0                    1                 -0.0395808   -0.1139109    0.0347493
0-3 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH   0                    1                 -0.0115152   -0.0494423    0.0264119
0-3 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA        0                    1                 -0.1848578   -0.2573389   -0.1123766
3-6 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL        0                    1                 -0.0360416   -0.0796332    0.0075499
3-6 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH   0                    1                  0.0003763   -0.0125607    0.0133134
3-6 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4       BANGLADESH   0                    1                  0.0303806   -0.0082825    0.0690437
3-6 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA       0                    1                  0.0160076   -0.0246337    0.0566488
3-6 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH   0                    1                 -0.0179924   -0.0696689    0.0336840
3-6 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL       0                    1                  0.0067776   -0.1015569    0.1151121
3-6 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA        0                    1                 -0.0536889   -0.1563091    0.0489313
3-6 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL        0                    1                  0.0032555   -0.1205910    0.1271020
3-6 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU         0                    1                 -0.0118993   -0.0801013    0.0563026
3-6 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH   0                    1                 -0.0348698   -0.0709294    0.0011898
3-6 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA        0                    1                  0.0879241   -0.0966906    0.2725387
6-9 months     EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN     0                    1                  0.0162985   -0.0893897    0.1219867
6-9 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL        0                    1                 -0.0061280   -0.0561836    0.0439277
6-9 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4       BANGLADESH   0                    1                  0.0045544   -0.0181195    0.0272283
6-9 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA       0                    1                 -0.0380295   -0.0938657    0.0178066
6-9 months     LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5         MALAWI       0                    1                 -0.0096156   -0.0974806    0.0782493
6-9 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH   0                    1                  0.0069373   -0.0305666    0.0444412
6-9 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL       0                    1                 -0.0701706   -0.1971047    0.0567635
6-9 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA        0                    1                 -0.0590400   -0.1358068    0.0177268
6-9 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL        0                    1                  0.0709982   -0.0041973    0.1461938
6-9 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU         0                    1                  0.0029629   -0.0487018    0.0546276
6-9 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH   0                    1                  0.0188916   -0.0066999    0.0444831
6-9 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA        0                    1                 -0.0492735   -0.2027962    0.1042492
9-12 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN     0                    1                 -0.0070477   -0.1207491    0.1066537
9-12 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL        0                    1                  0.0179354   -0.0216972    0.0575680
9-12 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH   0                    1                  0.0027096   -0.0163835    0.0218027
9-12 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA       0                    1                  0.0110115   -0.0278977    0.0499207
9-12 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5         MALAWI       0                    1                 -0.0066934   -0.1267750    0.1133881
9-12 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH   0                    1                  0.0248063   -0.0089014    0.0585140
9-12 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL       0                    1                  0.0515655   -0.0414119    0.1445429
9-12 months    MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA        0                    1                  0.0480940   -0.0450927    0.1412807
9-12 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL        0                    1                  0.0832872    0.0348002    0.1317742
9-12 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU         0                    1                  0.0092136   -0.0350532    0.0534804
9-12 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH   0                    1                  0.0158977   -0.0096379    0.0414332
9-12 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA        0                    1                  0.1406537    0.0432942    0.2380132
12-15 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN     0                    1                  0.0433139   -0.0955707    0.1821984
12-15 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL        0                    1                 -0.0019883   -0.0261984    0.0222218
12-15 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH   0                    1                  0.0184076    0.0002276    0.0365876
12-15 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA       0                    1                 -0.0053382   -0.0301927    0.0195164
12-15 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH   0                    1                  0.0172489   -0.0144336    0.0489314
12-15 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL       0                    1                  0.0189343   -0.0420249    0.0798934
12-15 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA        0                    1                 -0.0107771   -0.0788246    0.0572704
12-15 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL        0                    1                  0.0052247   -0.0531160    0.0635653
12-15 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU         0                    1                  0.0132612   -0.0236670    0.0501895
12-15 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH   0                    1                 -0.0013750   -0.0229244    0.0201744
12-15 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA        0                    1                 -0.0778101   -0.1915481    0.0359279
15-18 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN     0                    1                 -0.0028026   -0.0445569    0.0389516
15-18 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL        0                    1                 -0.0311199   -0.0534864   -0.0087535
15-18 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH   0                    1                  0.0046031   -0.0107598    0.0199660
15-18 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA       0                    1                 -0.0067236   -0.0336887    0.0202416
15-18 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH   0                    1                 -0.0017585   -0.0313880    0.0278710
15-18 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL       0                    1                 -0.0096982   -0.0791125    0.0597162
15-18 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA        0                    1                  0.0121811   -0.0401353    0.0644974
15-18 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL        0                    1                 -0.0126540   -0.0521028    0.0267948
15-18 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU         0                    1                  0.0092089   -0.0225635    0.0409814
15-18 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH   0                    1                  0.0169473   -0.0041864    0.0380810
15-18 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA        0                    1                  0.0791553   -0.0985243    0.2568349
18-21 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN     0                    1                 -0.0172247   -0.0681912    0.0337417
18-21 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL        0                    1                  0.0146478   -0.0105620    0.0398576
18-21 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA       0                    1                 -0.0033526   -0.0316574    0.0249522
18-21 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5         MALAWI       0                    1                  0.0346420   -0.0934217    0.1627058
18-21 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH   0                    1                 -0.0022084   -0.0284276    0.0240109
18-21 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL       0                    1                  0.0503423   -0.0118650    0.1125497
18-21 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA        0                    1                  0.0031258   -0.0521151    0.0583667
18-21 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL        0                    1                  0.0396135   -0.0057953    0.0850223
18-21 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU         0                    1                  0.0170561   -0.0163294    0.0504416
18-21 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH   0                    1                  0.0171957   -0.0025239    0.0369153
21-24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL        0                    1                  0.0081248   -0.0373380    0.0535876
21-24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA       0                    1                  0.0120973   -0.0142378    0.0384323
21-24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5         MALAWI       0                    1                 -0.0027191   -0.0574038    0.0519656
21-24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH   0                    1                 -0.0011286   -0.0290100    0.0267528
21-24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL       0                    1                 -0.0032659   -0.0436119    0.0370801
21-24 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA        0                    1                  0.0038467   -0.0332389    0.0409324
21-24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL        0                    1                 -0.0440239   -0.1190120    0.0309643
21-24 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU         0                    1                  0.0196926   -0.0168211    0.0562063
21-24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH   0                    1                  0.0063757   -0.0140495    0.0268009


### Parameter: PAR


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0050716   -0.0211316    0.0109884
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0013102   -0.0013166    0.0039370
0-3 months     JiVitA-4       BANGLADESH   1                    NA                -0.0110821   -0.0182761   -0.0038881
0-3 months     Keneba         GAMBIA       1                    NA                -0.0063280   -0.0421027    0.0294467
0-3 months     MAL-ED         BANGLADESH   1                    NA                -0.0127925   -0.0553916    0.0298067
0-3 months     MAL-ED         BRAZIL       1                    NA                -0.1367757   -0.3007299    0.0271785
0-3 months     MAL-ED         INDIA        1                    NA                 0.0857368   -0.0955219    0.2669954
0-3 months     MAL-ED         NEPAL        1                    NA                 0.1494325    0.0394126    0.2594523
0-3 months     MAL-ED         PERU         1                    NA                -0.0265287   -0.0761503    0.0230930
0-3 months     PROVIDE        BANGLADESH   1                    NA                -0.0104983   -0.0391650    0.0181683
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.0090494   -0.0146012   -0.0034975
3-6 months     GMS-Nepal      NEPAL        1                    NA                -0.0098467   -0.0216956    0.0020023
3-6 months     JiVitA-3       BANGLADESH   1                    NA                 0.0000069   -0.0030062    0.0030200
3-6 months     JiVitA-4       BANGLADESH   1                    NA                 0.0051479   -0.0006856    0.0109814
3-6 months     Keneba         GAMBIA       1                    NA                 0.0119716   -0.0172799    0.0412231
3-6 months     MAL-ED         BANGLADESH   1                    NA                -0.0113674   -0.0448536    0.0221189
3-6 months     MAL-ED         BRAZIL       1                    NA                 0.0051950   -0.0877549    0.0981449
3-6 months     MAL-ED         INDIA        1                    NA                -0.0538815   -0.1513929    0.0436299
3-6 months     MAL-ED         NEPAL        1                    NA                 0.0031669   -0.1156147    0.1219485
3-6 months     MAL-ED         PERU         1                    NA                -0.0080537   -0.0533943    0.0372869
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0270255   -0.0548126    0.0007616
3-6 months     SAS-CompFeed   INDIA        1                    NA                 0.0040574   -0.0061054    0.0142202
6-9 months     EE             PAKISTAN     1                    NA                 0.0018109   -0.0100293    0.0136512
6-9 months     GMS-Nepal      NEPAL        1                    NA                 0.0010284   -0.0113017    0.0133585
6-9 months     JiVitA-4       BANGLADESH   1                    NA                 0.0007342   -0.0038490    0.0053174
6-9 months     Keneba         GAMBIA       1                    NA                -0.0261542   -0.0660638    0.0137554
6-9 months     LCNI-5         MALAWI       1                    NA                -0.0071724   -0.0815670    0.0672221
6-9 months     MAL-ED         BANGLADESH   1                    NA                 0.0034761   -0.0219097    0.0288619
6-9 months     MAL-ED         BRAZIL       1                    NA                -0.0608079   -0.1684677    0.0468519
6-9 months     MAL-ED         INDIA        1                    NA                -0.0589010   -0.1328437    0.0150416
6-9 months     MAL-ED         NEPAL        1                    NA                 0.0683542   -0.0032584    0.1399669
6-9 months     MAL-ED         PERU         1                    NA                 0.0007400   -0.0329741    0.0344541
6-9 months     PROVIDE        BANGLADESH   1                    NA                 0.0147605   -0.0051370    0.0346580
6-9 months     SAS-CompFeed   INDIA        1                    NA                 0.0005223   -0.0059728    0.0070174
9-12 months    EE             PAKISTAN     1                    NA                -0.0008009   -0.0137388    0.0121370
9-12 months    GMS-Nepal      NEPAL        1                    NA                 0.0045330   -0.0045476    0.0136137
9-12 months    JiVitA-4       BANGLADESH   1                    NA                 0.0010751   -0.0030736    0.0052237
9-12 months    Keneba         GAMBIA       1                    NA                 0.0064789   -0.0202721    0.0332300
9-12 months    LCNI-5         MALAWI       1                    NA                 0.0320840   -0.0533492    0.1175172
9-12 months    MAL-ED         BANGLADESH   1                    NA                 0.0151058   -0.0070229    0.0372346
9-12 months    MAL-ED         BRAZIL       1                    NA                 0.0433938   -0.0385058    0.1252935
9-12 months    MAL-ED         INDIA        1                    NA                 0.0474383   -0.0413779    0.1362546
9-12 months    MAL-ED         NEPAL        1                    NA                 0.0806456    0.0338819    0.1274092
9-12 months    MAL-ED         PERU         1                    NA                 0.0061462   -0.0227427    0.0350350
9-12 months    PROVIDE        BANGLADESH   1                    NA                 0.0121760   -0.0074774    0.0318294
9-12 months    SAS-CompFeed   INDIA        1                    NA                 0.0033620   -0.0001172    0.0068412
12-15 months   EE             PAKISTAN     1                    NA                 0.0058532   -0.0135283    0.0252347
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0003621   -0.0062453    0.0055211
12-15 months   JiVitA-4       BANGLADESH   1                    NA                 0.0036787   -0.0001264    0.0074838
12-15 months   Keneba         GAMBIA       1                    NA                -0.0040015   -0.0206808    0.0126777
12-15 months   MAL-ED         BANGLADESH   1                    NA                 0.0110771   -0.0095410    0.0316951
12-15 months   MAL-ED         BRAZIL       1                    NA                 0.0160166   -0.0362926    0.0683258
12-15 months   MAL-ED         INDIA        1                    NA                -0.0103772   -0.0753189    0.0545645
12-15 months   MAL-ED         NEPAL        1                    NA                 0.0057636   -0.0493088    0.0608361
12-15 months   MAL-ED         PERU         1                    NA                 0.0097541   -0.0151082    0.0346164
12-15 months   PROVIDE        BANGLADESH   1                    NA                -0.0006937   -0.0171782    0.0157908
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0019827   -0.0053711    0.0014058
15-18 months   EE             PAKISTAN     1                    NA                -0.0004246   -0.0067606    0.0059113
15-18 months   GMS-Nepal      NEPAL        1                    NA                -0.0070678   -0.0126886   -0.0014470
15-18 months   JiVitA-4       BANGLADESH   1                    NA                 0.0014929   -0.0017271    0.0047129
15-18 months   Keneba         GAMBIA       1                    NA                -0.0039408   -0.0217187    0.0138371
15-18 months   MAL-ED         BANGLADESH   1                    NA                -0.0005515   -0.0202652    0.0191622
15-18 months   MAL-ED         BRAZIL       1                    NA                -0.0113601   -0.0722664    0.0495463
15-18 months   MAL-ED         INDIA        1                    NA                 0.0118460   -0.0381660    0.0618580
15-18 months   MAL-ED         NEPAL        1                    NA                -0.0108884   -0.0477300    0.0259531
15-18 months   MAL-ED         PERU         1                    NA                 0.0044159   -0.0162787    0.0251104
15-18 months   PROVIDE        BANGLADESH   1                    NA                 0.0131962   -0.0029081    0.0293005
15-18 months   SAS-CompFeed   INDIA        1                    NA                 0.0013465   -0.0042059    0.0068989
18-21 months   EE             PAKISTAN     1                    NA                -0.0026098   -0.0106230    0.0054034
18-21 months   GMS-Nepal      NEPAL        1                    NA                 0.0027447   -0.0032350    0.0087243
18-21 months   Keneba         GAMBIA       1                    NA                -0.0026252   -0.0215419    0.0162916
18-21 months   LCNI-5         MALAWI       1                    NA                 0.0259673   -0.0777959    0.1297304
18-21 months   MAL-ED         BANGLADESH   1                    NA                -0.0017354   -0.0184926    0.0150218
18-21 months   MAL-ED         BRAZIL       1                    NA                 0.0433625   -0.0109082    0.0976332
18-21 months   MAL-ED         INDIA        1                    NA                 0.0014636   -0.0512580    0.0541853
18-21 months   MAL-ED         NEPAL        1                    NA                 0.0376495   -0.0054662    0.0807653
18-21 months   MAL-ED         PERU         1                    NA                 0.0111471   -0.0104596    0.0327539
18-21 months   PROVIDE        BANGLADESH   1                    NA                 0.0137277   -0.0014712    0.0289266
21-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0027184   -0.0075740    0.0130109
21-24 months   Keneba         GAMBIA       1                    NA                 0.0087050   -0.0090255    0.0264355
21-24 months   LCNI-5         MALAWI       1                    NA                -0.0021373   -0.0483268    0.0440521
21-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0006300   -0.0185906    0.0173306
21-24 months   MAL-ED         BRAZIL       1                    NA                -0.0031428   -0.0379045    0.0316188
21-24 months   MAL-ED         INDIA        1                    NA                 0.0043031   -0.0310088    0.0396151
21-24 months   MAL-ED         NEPAL        1                    NA                -0.0419767   -0.1137571    0.0298037
21-24 months   MAL-ED         PERU         1                    NA                 0.0115246   -0.0136230    0.0366723
21-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0049629   -0.0107052    0.0206310
