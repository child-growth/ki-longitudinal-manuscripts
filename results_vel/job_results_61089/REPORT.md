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
![](/tmp/6f90299d-8576-4865-b167-5934efaafd45/14b9d479-643c-4f47-9a48-631061931ec4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6f90299d-8576-4865-b167-5934efaafd45/14b9d479-643c-4f47-9a48-631061931ec4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6f90299d-8576-4865-b167-5934efaafd45/14b9d479-643c-4f47-9a48-631061931ec4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                3.6057948   3.5473752   3.6642144
0-3 months     GMS-Nepal      NEPAL        0                    NA                3.5776323   3.4675988   3.6876657
0-3 months     JiVitA-3       BANGLADESH   1                    NA                3.7221382   3.7086495   3.7356269
0-3 months     JiVitA-3       BANGLADESH   0                    NA                3.7344103   3.7111029   3.7577177
0-3 months     JiVitA-4       BANGLADESH   1                    NA                3.6620372   3.6290113   3.6950631
0-3 months     JiVitA-4       BANGLADESH   0                    NA                3.5141046   3.4286309   3.5995783
0-3 months     Keneba         GAMBIA       1                    NA                3.1068463   3.0241420   3.1895507
0-3 months     Keneba         GAMBIA       0                    NA                3.1045367   3.0450506   3.1640228
0-3 months     MAL-ED         BANGLADESH   1                    NA                3.3428208   3.2322406   3.4534011
0-3 months     MAL-ED         BANGLADESH   0                    NA                3.3538380   3.2685044   3.4391715
0-3 months     MAL-ED         BRAZIL       1                    NA                4.1208692   3.7759501   4.4657884
0-3 months     MAL-ED         BRAZIL       0                    NA                3.7857105   3.6683184   3.9031027
0-3 months     MAL-ED         INDIA        1                    NA                3.1975488   2.8853961   3.5097015
0-3 months     MAL-ED         INDIA        0                    NA                3.3449364   3.2480037   3.4418691
0-3 months     MAL-ED         NEPAL        1                    NA                3.1516366   2.9130201   3.3902530
0-3 months     MAL-ED         NEPAL        0                    NA                3.6468875   3.5463899   3.7473851
0-3 months     MAL-ED         PERU         1                    NA                3.1110120   2.9977139   3.2243101
0-3 months     MAL-ED         PERU         0                    NA                3.0361958   2.9561976   3.1161940
0-3 months     PROVIDE        BANGLADESH   1                    NA                3.2536622   3.1867002   3.3206241
0-3 months     PROVIDE        BANGLADESH   0                    NA                3.2579987   3.2138742   3.3021232
0-3 months     SAS-CompFeed   INDIA        1                    NA                3.3695026   3.3106339   3.4283713
0-3 months     SAS-CompFeed   INDIA        0                    NA                2.9240440   2.7812046   3.0668835
3-6 months     GMS-Nepal      NEPAL        1                    NA                1.7299693   1.6843120   1.7756266
3-6 months     GMS-Nepal      NEPAL        0                    NA                1.6455792   1.5651879   1.7259706
3-6 months     JiVitA-3       BANGLADESH   1                    NA                1.9193400   1.9041529   1.9345271
3-6 months     JiVitA-3       BANGLADESH   0                    NA                1.9177102   1.8931976   1.9422229
3-6 months     JiVitA-4       BANGLADESH   1                    NA                1.8835595   1.8506315   1.9164876
3-6 months     JiVitA-4       BANGLADESH   0                    NA                1.9555166   1.8758329   2.0352003
3-6 months     Keneba         GAMBIA       1                    NA                1.9640770   1.8918658   2.0362881
3-6 months     Keneba         GAMBIA       0                    NA                2.0022506   1.9533821   2.0511191
3-6 months     MAL-ED         BANGLADESH   1                    NA                1.9297006   1.8306984   2.0287029
3-6 months     MAL-ED         BANGLADESH   0                    NA                1.9165206   1.8568656   1.9761756
3-6 months     MAL-ED         BRAZIL       1                    NA                2.1511591   1.9247579   2.3775604
3-6 months     MAL-ED         BRAZIL       0                    NA                2.1565630   2.0707437   2.2423822
3-6 months     MAL-ED         INDIA        1                    NA                2.0312749   1.8254887   2.2370612
3-6 months     MAL-ED         INDIA        0                    NA                1.8841415   1.8152411   1.9530420
3-6 months     MAL-ED         NEPAL        1                    NA                2.0364079   1.8012064   2.2716094
3-6 months     MAL-ED         NEPAL        0                    NA                1.9714792   1.9112130   2.0317453
3-6 months     MAL-ED         PERU         1                    NA                2.0473490   1.9294089   2.1652892
3-6 months     MAL-ED         PERU         0                    NA                2.0098259   1.9293698   2.0902820
3-6 months     PROVIDE        BANGLADESH   1                    NA                2.0071425   1.9406502   2.0736348
3-6 months     PROVIDE        BANGLADESH   0                    NA                1.9518491   1.9125467   1.9911516
3-6 months     SAS-CompFeed   INDIA        1                    NA                1.8959468   1.8172862   1.9746075
3-6 months     SAS-CompFeed   INDIA        0                    NA                2.0175913   1.4898496   2.5453330
6-9 months     EE             PAKISTAN     1                    NA                1.1144238   0.9844462   1.2444013
6-9 months     EE             PAKISTAN     0                    NA                1.2194058   1.0438676   1.3949439
6-9 months     GMS-Nepal      NEPAL        1                    NA                1.3142445   1.2730577   1.3554313
6-9 months     GMS-Nepal      NEPAL        0                    NA                1.3082539   1.2013367   1.4151711
6-9 months     JiVitA-4       BANGLADESH   1                    NA                1.3225866   1.2990750   1.3460982
6-9 months     JiVitA-4       BANGLADESH   0                    NA                1.3340766   1.2869384   1.3812149
6-9 months     Keneba         GAMBIA       1                    NA                1.4751129   1.3671478   1.5830780
6-9 months     Keneba         GAMBIA       0                    NA                1.3743049   1.3125361   1.4360738
6-9 months     LCNI-5         MALAWI       1                    NA                1.2930994   1.1239667   1.4622321
6-9 months     LCNI-5         MALAWI       0                    NA                1.4283893   1.3626434   1.4941352
6-9 months     MAL-ED         BANGLADESH   1                    NA                1.2460723   1.1774127   1.3147319
6-9 months     MAL-ED         BANGLADESH   0                    NA                1.2608289   1.2104287   1.3112290
6-9 months     MAL-ED         BRAZIL       1                    NA                1.5221685   1.1983426   1.8459944
6-9 months     MAL-ED         BRAZIL       0                    NA                1.4575583   1.3797737   1.5353428
6-9 months     MAL-ED         INDIA        1                    NA                1.2577127   1.1295009   1.3859246
6-9 months     MAL-ED         INDIA        0                    NA                1.2506008   1.1954841   1.3057175
6-9 months     MAL-ED         NEPAL        1                    NA                1.2001776   1.0014324   1.3989229
6-9 months     MAL-ED         NEPAL        0                    NA                1.3607726   1.3150048   1.4065405
6-9 months     MAL-ED         PERU         1                    NA                1.3201629   1.2216036   1.4187222
6-9 months     MAL-ED         PERU         0                    NA                1.3171952   1.2519710   1.3824195
6-9 months     PROVIDE        BANGLADESH   1                    NA                1.2546195   1.2023896   1.3068494
6-9 months     PROVIDE        BANGLADESH   0                    NA                1.2923820   1.2637872   1.3209767
6-9 months     SAS-CompFeed   INDIA        1                    NA                1.2109523   1.1268945   1.2950101
6-9 months     SAS-CompFeed   INDIA        0                    NA                1.0649253   0.7601232   1.3697273
9-12 months    EE             PAKISTAN     1                    NA                0.8435058   0.7523586   0.9346530
9-12 months    EE             PAKISTAN     0                    NA                0.8866775   0.6533943   1.1199607
9-12 months    GMS-Nepal      NEPAL        1                    NA                0.9881162   0.9532058   1.0230266
9-12 months    GMS-Nepal      NEPAL        0                    NA                1.0241916   0.9393541   1.1090290
9-12 months    JiVitA-4       BANGLADESH   1                    NA                1.0691029   1.0470874   1.0911184
9-12 months    JiVitA-4       BANGLADESH   0                    NA                1.0693830   1.0284562   1.1103098
9-12 months    Keneba         GAMBIA       1                    NA                0.9632029   0.8903132   1.0360926
9-12 months    Keneba         GAMBIA       0                    NA                0.9889410   0.9354658   1.0424163
9-12 months    LCNI-5         MALAWI       1                    NA                1.0734863   0.8575347   1.2894378
9-12 months    LCNI-5         MALAWI       0                    NA                0.8916460   0.7015191   1.0817729
9-12 months    MAL-ED         BANGLADESH   1                    NA                0.9487851   0.8833474   1.0142228
9-12 months    MAL-ED         BANGLADESH   0                    NA                1.0059137   0.9564225   1.0554049
9-12 months    MAL-ED         BRAZIL       1                    NA                1.1749481   0.9746654   1.3752307
9-12 months    MAL-ED         BRAZIL       0                    NA                1.3146274   1.2341484   1.3951064
9-12 months    MAL-ED         INDIA        1                    NA                0.9281847   0.6658752   1.1904941
9-12 months    MAL-ED         INDIA        0                    NA                0.9850546   0.9446479   1.0254613
9-12 months    MAL-ED         NEPAL        1                    NA                0.9939093   0.8900314   1.0977872
9-12 months    MAL-ED         NEPAL        0                    NA                1.0921205   1.0482865   1.1359545
9-12 months    MAL-ED         PERU         1                    NA                1.0995260   1.0170782   1.1819737
9-12 months    MAL-ED         PERU         0                    NA                1.1010164   1.0358444   1.1661884
9-12 months    PROVIDE        BANGLADESH   1                    NA                1.0164884   0.9600562   1.0729206
9-12 months    PROVIDE        BANGLADESH   0                    NA                1.0584661   1.0279294   1.0890027
9-12 months    SAS-CompFeed   INDIA        1                    NA                0.9762529   0.9017344   1.0507714
9-12 months    SAS-CompFeed   INDIA        0                    NA                1.3564768   1.0358524   1.6771013
12-15 months   EE             PAKISTAN     1                    NA                0.9994382   0.9109531   1.0879233
12-15 months   EE             PAKISTAN     0                    NA                1.1691763   0.8641761   1.4741764
12-15 months   GMS-Nepal      NEPAL        1                    NA                0.8741346   0.8457550   0.9025143
12-15 months   GMS-Nepal      NEPAL        0                    NA                0.8591442   0.8015823   0.9167061
12-15 months   JiVitA-4       BANGLADESH   1                    NA                0.9313543   0.9125079   0.9502007
12-15 months   JiVitA-4       BANGLADESH   0                    NA                0.9683990   0.9251561   1.0116420
12-15 months   Keneba         GAMBIA       1                    NA                0.9567652   0.9074642   1.0060662
12-15 months   Keneba         GAMBIA       0                    NA                0.9356673   0.8960614   0.9752732
12-15 months   MAL-ED         BANGLADESH   1                    NA                0.8982317   0.8379963   0.9584672
12-15 months   MAL-ED         BANGLADESH   0                    NA                0.9331260   0.8777894   0.9884626
12-15 months   MAL-ED         BRAZIL       1                    NA                1.1335877   0.9865035   1.2806719
12-15 months   MAL-ED         BRAZIL       0                    NA                1.1439737   1.0790519   1.2088956
12-15 months   MAL-ED         INDIA        1                    NA                0.9015548   0.7519379   1.0511718
12-15 months   MAL-ED         INDIA        0                    NA                0.9122480   0.8699000   0.9545961
12-15 months   MAL-ED         NEPAL        1                    NA                1.0876010   0.8822048   1.2929972
12-15 months   MAL-ED         NEPAL        0                    NA                0.9473775   0.9060262   0.9887288
12-15 months   MAL-ED         PERU         1                    NA                0.8638930   0.7877480   0.9400381
12-15 months   MAL-ED         PERU         0                    NA                0.9003204   0.8420827   0.9585581
12-15 months   PROVIDE        BANGLADESH   1                    NA                0.9554984   0.9099281   1.0010688
12-15 months   PROVIDE        BANGLADESH   0                    NA                0.9577491   0.9267578   0.9887405
12-15 months   SAS-CompFeed   INDIA        1                    NA                0.8475489   0.7723789   0.9227190
12-15 months   SAS-CompFeed   INDIA        0                    NA                0.5882718   0.3290880   0.8474557
15-18 months   EE             PAKISTAN     1                    NA                0.8264950   0.7398782   0.9131119
15-18 months   EE             PAKISTAN     0                    NA                0.9035877   0.8122406   0.9949348
15-18 months   GMS-Nepal      NEPAL        1                    NA                0.7803685   0.7404627   0.8202742
15-18 months   GMS-Nepal      NEPAL        0                    NA                0.6955912   0.6488529   0.7423295
15-18 months   JiVitA-4       BANGLADESH   1                    NA                0.8601351   0.8403574   0.8799129
15-18 months   JiVitA-4       BANGLADESH   0                    NA                0.8613325   0.8197793   0.9028857
15-18 months   Keneba         GAMBIA       1                    NA                0.9009924   0.8386068   0.9633780
15-18 months   Keneba         GAMBIA       0                    NA                0.8786870   0.8399808   0.9173932
15-18 months   MAL-ED         BANGLADESH   1                    NA                0.8214326   0.7605316   0.8823337
15-18 months   MAL-ED         BANGLADESH   0                    NA                0.8233921   0.7744450   0.8723392
15-18 months   MAL-ED         BRAZIL       1                    NA                1.0240693   0.8552969   1.1928418
15-18 months   MAL-ED         BRAZIL       0                    NA                1.0062542   0.9417960   1.0707125
15-18 months   MAL-ED         INDIA        1                    NA                0.7679404   0.6418119   0.8940690
15-18 months   MAL-ED         INDIA        0                    NA                0.8504923   0.8119601   0.8890244
15-18 months   MAL-ED         NEPAL        1                    NA                0.8831753   0.7427474   1.0236033
15-18 months   MAL-ED         NEPAL        0                    NA                0.8388685   0.7942395   0.8834975
15-18 months   MAL-ED         PERU         1                    NA                0.8318221   0.7655251   0.8981192
15-18 months   MAL-ED         PERU         0                    NA                0.8619823   0.8073963   0.9165683
15-18 months   PROVIDE        BANGLADESH   1                    NA                0.8199198   0.7678358   0.8720039
15-18 months   PROVIDE        BANGLADESH   0                    NA                0.8650411   0.8380609   0.8920213
15-18 months   SAS-CompFeed   INDIA        1                    NA                0.8869564   0.8297712   0.9441416
15-18 months   SAS-CompFeed   INDIA        0                    NA                1.1428504   0.6164293   1.6692716
18-21 months   EE             PAKISTAN     1                    NA                0.7829057   0.6977684   0.8680431
18-21 months   EE             PAKISTAN     0                    NA                0.8103374   0.7102740   0.9104008
18-21 months   GMS-Nepal      NEPAL        1                    NA                0.8995113   0.8561754   0.9428471
18-21 months   GMS-Nepal      NEPAL        0                    NA                0.9388539   0.8898783   0.9878294
18-21 months   Keneba         GAMBIA       1                    NA                0.8206546   0.7589779   0.8823314
18-21 months   Keneba         GAMBIA       0                    NA                0.8082130   0.7633145   0.8531116
18-21 months   LCNI-5         MALAWI       1                    NA                0.7812699   0.5569198   1.0056200
18-21 months   LCNI-5         MALAWI       0                    NA                0.8743667   0.7944784   0.9542551
18-21 months   MAL-ED         BANGLADESH   1                    NA                0.8001252   0.7401973   0.8600531
18-21 months   MAL-ED         BANGLADESH   0                    NA                0.8301723   0.7849142   0.8754303
18-21 months   MAL-ED         BRAZIL       1                    NA                0.8519324   0.7148534   0.9890115
18-21 months   MAL-ED         BRAZIL       0                    NA                0.9390642   0.8599676   1.0181607
18-21 months   MAL-ED         INDIA        1                    NA                0.7649088   0.6151337   0.9146839
18-21 months   MAL-ED         INDIA        0                    NA                0.8859537   0.8492273   0.9226802
18-21 months   MAL-ED         NEPAL        1                    NA                0.6461224   0.5043236   0.7879212
18-21 months   MAL-ED         NEPAL        0                    NA                0.8181103   0.7782731   0.8579474
18-21 months   MAL-ED         PERU         1                    NA                0.8285636   0.7485062   0.9086210
18-21 months   MAL-ED         PERU         0                    NA                0.8563274   0.8000931   0.9125617
18-21 months   PROVIDE        BANGLADESH   1                    NA                0.7975224   0.7470073   0.8480375
18-21 months   PROVIDE        BANGLADESH   0                    NA                0.8520083   0.8247710   0.8792455
21-24 months   GMS-Nepal      NEPAL        1                    NA                0.7873284   0.7379333   0.8367236
21-24 months   GMS-Nepal      NEPAL        0                    NA                0.8180493   0.7023789   0.9337197
21-24 months   Keneba         GAMBIA       1                    NA                0.6869388   0.6202514   0.7536262
21-24 months   Keneba         GAMBIA       0                    NA                0.7278988   0.6860407   0.7697569
21-24 months   LCNI-5         MALAWI       1                    NA                0.7354697   0.5887124   0.8822269
21-24 months   LCNI-5         MALAWI       0                    NA                0.7294547   0.6528187   0.8060907
21-24 months   MAL-ED         BANGLADESH   1                    NA                0.7800930   0.7150153   0.8451707
21-24 months   MAL-ED         BANGLADESH   0                    NA                0.7683484   0.7232408   0.8134559
21-24 months   MAL-ED         BRAZIL       1                    NA                0.7833425   0.6926828   0.8740021
21-24 months   MAL-ED         BRAZIL       0                    NA                0.7974826   0.7477122   0.8472530
21-24 months   MAL-ED         INDIA        1                    NA                0.7836786   0.6256825   0.9416747
21-24 months   MAL-ED         INDIA        0                    NA                0.8287997   0.7954385   0.8621608
21-24 months   MAL-ED         NEPAL        1                    NA                0.8979239   0.6653866   1.1304611
21-24 months   MAL-ED         NEPAL        0                    NA                0.7781703   0.7352392   0.8211014
21-24 months   MAL-ED         PERU         1                    NA                0.7343324   0.6434729   0.8251918
21-24 months   MAL-ED         PERU         0                    NA                0.7747946   0.7173165   0.8322728
21-24 months   PROVIDE        BANGLADESH   1                    NA                0.7444214   0.6944514   0.7943915
21-24 months   PROVIDE        BANGLADESH   0                    NA                0.7707393   0.7413896   0.8000891


### Parameter: E(Y)


agecat         studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL        NA                   NA                3.5982617   3.5465367   3.6499867
0-3 months     JiVitA-3       BANGLADESH   NA                   NA                3.7251075   3.7124931   3.7377219
0-3 months     JiVitA-4       BANGLADESH   NA                   NA                3.6386843   3.6074983   3.6698703
0-3 months     Keneba         GAMBIA       NA                   NA                3.1044617   3.0557519   3.1531714
0-3 months     MAL-ED         BANGLADESH   NA                   NA                3.3482498   3.2804281   3.4160715
0-3 months     MAL-ED         BRAZIL       NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     MAL-ED         INDIA        NA                   NA                3.3378760   3.2442606   3.4314913
0-3 months     MAL-ED         NEPAL        NA                   NA                3.6205791   3.5251464   3.7160118
0-3 months     MAL-ED         PERU         NA                   NA                3.0614469   2.9957442   3.1271496
0-3 months     PROVIDE        BANGLADESH   NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed   INDIA        NA                   NA                3.3522434   3.2847848   3.4197021
3-6 months     GMS-Nepal      NEPAL        NA                   NA                1.7086613   1.6690533   1.7482692
3-6 months     JiVitA-3       BANGLADESH   NA                   NA                1.9190532   1.9057476   1.9323587
3-6 months     JiVitA-4       BANGLADESH   NA                   NA                1.8947099   1.8645495   1.9248703
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
6-9 months     JiVitA-4       BANGLADESH   NA                   NA                1.3251314   1.3038170   1.3464459
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
9-12 months    JiVitA-4       BANGLADESH   NA                   NA                1.0696646   1.0503114   1.0890177
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
12-15 months   JiVitA-4       BANGLADESH   NA                   NA                0.9393119   0.9219119   0.9567119
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
15-18 months   JiVitA-4       BANGLADESH   NA                   NA                0.8612746   0.8433730   0.8791761
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
0-3 months     GMS-Nepal      NEPAL        0                    1                 -0.0281625   -0.1528274    0.0965024
0-3 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH   0                    1                  0.0122721   -0.0121270    0.0366712
0-3 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH   0                    1                 -0.1479326   -0.2393007   -0.0565645
0-3 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA       0                    1                 -0.0023097   -0.1037855    0.0991662
0-3 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH   0                    1                  0.0110172   -0.1290917    0.1511260
0-3 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL       0                    1                 -0.3351587   -0.7012089    0.0308915
0-3 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA        0                    1                  0.1473877   -0.1794690    0.4742443
0-3 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL        0                    1                  0.4952510    0.2353437    0.7551582
0-3 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU         0                    1                 -0.0748162   -0.2135846    0.0639522
0-3 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH   0                    1                  0.0043365   -0.0759149    0.0845879
0-3 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA        0                    1                 -0.4454586   -0.5939152   -0.2970019
3-6 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL        0                    1                 -0.0843901   -0.1773994    0.0086192
3-6 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH   0                    1                 -0.0016298   -0.0296191    0.0263595
3-6 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4       BANGLADESH   0                    1                  0.0719571   -0.0143185    0.1582326
3-6 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA       0                    1                  0.0381736   -0.0490204    0.1253676
3-6 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH   0                    1                 -0.0131800   -0.1296636    0.1033035
3-6 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL       0                    1                  0.0054038   -0.2381090    0.2489167
3-6 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA        0                    1                 -0.1471334   -0.3651357    0.0708689
3-6 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL        0                    1                 -0.0649287   -0.3084909    0.1786334
3-6 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU         0                    1                 -0.0375231   -0.1804894    0.1054432
3-6 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH   0                    1                 -0.0552934   -0.1325686    0.0219818
3-6 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA        0                    1                  0.1216445   -0.4499236    0.6932125
6-9 months     EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN     0                    1                  0.1049820   -0.1134392    0.3234031
6-9 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL        0                    1                 -0.0059906   -0.1203364    0.1083551
6-9 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4       BANGLADESH   0                    1                  0.0114900   -0.0399973    0.0629773
6-9 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA       0                    1                 -0.1008080   -0.2255450    0.0239290
6-9 months     LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5         MALAWI       0                    1                  0.1352899   -0.0484480    0.3190278
6-9 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH   0                    1                  0.0147566   -0.0710526    0.1005657
6-9 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL       0                    1                 -0.0646102   -0.3977654    0.2685450
6-9 months     MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA        0                    1                 -0.0071120   -0.1469816    0.1327577
6-9 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL        0                    1                  0.1605950   -0.0433631    0.3645530
6-9 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU         0                    1                 -0.0029676   -0.1211803    0.1152450
6-9 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH   0                    1                  0.0377624   -0.0214034    0.0969282
6-9 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA        0                    1                 -0.1460270   -0.4785521    0.1864982
9-12 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN     0                    1                  0.0431716   -0.2072856    0.2936289
9-12 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL        0                    1                  0.0360754   -0.0558548    0.1280056
9-12 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH   0                    1                  0.0002801   -0.0459889    0.0465490
9-12 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA       0                    1                  0.0257381   -0.0651866    0.1166629
9-12 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5         MALAWI       0                    1                 -0.1818403   -0.4738753    0.1101947
9-12 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH   0                    1                  0.0571286   -0.0251494    0.1394067
9-12 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL       0                    1                  0.1396793   -0.0767506    0.3561092
9-12 months    MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA        0                    1                  0.0568700   -0.2085852    0.3223251
9-12 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL        0                    1                  0.0982112   -0.0147142    0.2111365
9-12 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU         0                    1                  0.0014905   -0.1035451    0.1065261
9-12 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH   0                    1                  0.0419776   -0.0217129    0.1056682
9-12 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA        0                    1                  0.3802239    0.0972003    0.6632476
12-15 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN     0                    1                  0.1697381   -0.1478382    0.4873144
12-15 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL        0                    1                 -0.0149904   -0.0791891    0.0492082
12-15 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH   0                    1                  0.0370448   -0.0096720    0.0837615
12-15 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA       0                    1                 -0.0210979   -0.0844142    0.0422184
12-15 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH   0                    1                  0.0348942   -0.0471092    0.1168977
12-15 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL       0                    1                  0.0103860   -0.1505690    0.1713411
12-15 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA        0                    1                  0.0106932   -0.1446678    0.1660542
12-15 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL        0                    1                 -0.1402234   -0.3500612    0.0696143
12-15 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU         0                    1                  0.0364274   -0.0600056    0.1328604
12-15 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH   0                    1                  0.0022507   -0.0524443    0.0569457
12-15 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA        0                    1                 -0.2592771   -0.5410201    0.0224660
15-18 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN     0                    1                  0.0770926   -0.0487913    0.2029766
15-18 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL        0                    1                 -0.0847773   -0.1465456   -0.0230089
15-18 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH   0                    1                  0.0011974   -0.0435297    0.0459244
15-18 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA       0                    1                 -0.0223054   -0.0957124    0.0511016
15-18 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH   0                    1                  0.0019595   -0.0762930    0.0802119
15-18 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL       0                    1                 -0.0178151   -0.2004715    0.1648413
15-18 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA        0                    1                  0.0825518   -0.0494534    0.2145571
15-18 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL        0                    1                 -0.0443068   -0.1913602    0.1027465
15-18 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU         0                    1                  0.0301601   -0.0558169    0.1161372
15-18 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH   0                    1                  0.0451213   -0.0134664    0.1037090
15-18 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA        0                    1                  0.2558940   -0.2603686    0.7721567
18-21 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN     0                    1                  0.0274317   -0.1039496    0.1588129
18-21 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL        0                    1                  0.0393426   -0.0262941    0.1049794
18-21 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA       0                    1                 -0.0124416   -0.0892265    0.0643433
18-21 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5         MALAWI       0                    1                  0.0930968   -0.1458923    0.3320859
18-21 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH   0                    1                  0.0300471   -0.0462367    0.1063308
18-21 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL       0                    1                  0.0871317   -0.0732737    0.2475371
18-21 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA        0                    1                  0.1210449   -0.0324846    0.2745745
18-21 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL        0                    1                  0.1719879    0.0250931    0.3188827
18-21 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU         0                    1                  0.0277638   -0.0711097    0.1266373
18-21 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH   0                    1                  0.0544859   -0.0029109    0.1118827
21-24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL        0                    1                  0.0307209   -0.0952954    0.1567371
21-24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA       0                    1                  0.0409600   -0.0384226    0.1203426
21-24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5         MALAWI       0                    1                 -0.0060150   -0.1736934    0.1616635
21-24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH   0                    1                 -0.0117447   -0.0910088    0.0675194
21-24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL       0                    1                  0.0141401   -0.0894705    0.1177508
21-24 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA        0                    1                  0.0451211   -0.1164790    0.2067212
21-24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL        0                    1                 -0.1197536   -0.3562757    0.1167686
21-24 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU         0                    1                  0.0404623   -0.0677767    0.1487013
21-24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH   0                    1                  0.0263179   -0.0315478    0.0841836


### Parameter: PAR


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0075331   -0.0400962    0.0250300
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0029693   -0.0025482    0.0084869
0-3 months     JiVitA-4       BANGLADESH   1                    NA                -0.0233529   -0.0383596   -0.0083462
0-3 months     Keneba         GAMBIA       1                    NA                -0.0023847   -0.0710227    0.0662534
0-3 months     MAL-ED         BANGLADESH   1                    NA                 0.0054290   -0.0852390    0.0960970
0-3 months     MAL-ED         BRAZIL       1                    NA                -0.3018325   -0.6243347    0.0206696
0-3 months     MAL-ED         INDIA        1                    NA                 0.1403272   -0.1709085    0.4515629
0-3 months     MAL-ED         NEPAL        1                    NA                 0.4689426    0.2255953    0.7122899
0-3 months     MAL-ED         PERU         1                    NA                -0.0495651   -0.1422652    0.0431350
0-3 months     PROVIDE        BANGLADESH   1                    NA                 0.0040189   -0.0563771    0.0644148
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.0172592   -0.0279700   -0.0065484
3-6 months     GMS-Nepal      NEPAL        1                    NA                -0.0213080   -0.0467643    0.0041482
3-6 months     JiVitA-3       BANGLADESH   1                    NA                -0.0002868   -0.0068063    0.0062327
3-6 months     JiVitA-4       BANGLADESH   1                    NA                 0.0111504   -0.0016744    0.0239751
3-6 months     Keneba         GAMBIA       1                    NA                 0.0290961   -0.0336959    0.0918881
3-6 months     MAL-ED         BANGLADESH   1                    NA                -0.0049028   -0.0830367    0.0732312
3-6 months     MAL-ED         BRAZIL       1                    NA                -0.0050776   -0.2149290    0.2047737
3-6 months     MAL-ED         INDIA        1                    NA                -0.1469457   -0.3550673    0.0611759
3-6 months     MAL-ED         NEPAL        1                    NA                -0.0695285   -0.3023702    0.1633131
3-6 months     MAL-ED         PERU         1                    NA                -0.0302464   -0.1251754    0.0646827
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0413968   -0.1008340    0.0180404
3-6 months     SAS-CompFeed   INDIA        1                    NA                 0.0091629   -0.0111747    0.0295005
6-9 months     EE             PAKISTAN     1                    NA                 0.0116647   -0.0144891    0.0378184
6-9 months     GMS-Nepal      NEPAL        1                    NA                -0.0002146   -0.0291226    0.0286934
6-9 months     JiVitA-4       BANGLADESH   1                    NA                 0.0025448   -0.0079333    0.0130229
6-9 months     Keneba         GAMBIA       1                    NA                -0.0708206   -0.1591598    0.0175186
6-9 months     LCNI-5         MALAWI       1                    NA                 0.1441610   -0.0123886    0.3007105
6-9 months     MAL-ED         BANGLADESH   1                    NA                 0.0080569   -0.0486933    0.0648072
6-9 months     MAL-ED         BRAZIL       1                    NA                -0.0390526   -0.3261110    0.2480058
6-9 months     MAL-ED         INDIA        1                    NA                -0.0079672   -0.1408502    0.1249158
6-9 months     MAL-ED         NEPAL        1                    NA                 0.1519214   -0.0426061    0.3464489
6-9 months     MAL-ED         PERU         1                    NA                -0.0001664   -0.0787412    0.0784085
6-9 months     PROVIDE        BANGLADESH   1                    NA                 0.0277990   -0.0183305    0.0739284
6-9 months     SAS-CompFeed   INDIA        1                    NA                -0.0008870   -0.0169575    0.0151834
9-12 months    EE             PAKISTAN     1                    NA                 0.0049059   -0.0238483    0.0336600
9-12 months    GMS-Nepal      NEPAL        1                    NA                 0.0100762   -0.0122970    0.0324494
9-12 months    JiVitA-4       BANGLADESH   1                    NA                 0.0005617   -0.0092047    0.0103280
9-12 months    Keneba         GAMBIA       1                    NA                 0.0186735   -0.0433876    0.0807345
9-12 months    LCNI-5         MALAWI       1                    NA                -0.1028518   -0.3119917    0.1062880
9-12 months    MAL-ED         BANGLADESH   1                    NA                 0.0360274   -0.0172076    0.0892623
9-12 months    MAL-ED         BRAZIL       1                    NA                 0.1233079   -0.0634371    0.3100528
9-12 months    MAL-ED         INDIA        1                    NA                 0.0542334   -0.2012546    0.3097214
9-12 months    MAL-ED         NEPAL        1                    NA                 0.0925146   -0.0162200    0.2012492
9-12 months    MAL-ED         PERU         1                    NA                -0.0010136   -0.0695315    0.0675043
9-12 months    PROVIDE        BANGLADESH   1                    NA                 0.0334866   -0.0157223    0.0826955
9-12 months    SAS-CompFeed   INDIA        1                    NA                 0.0063746   -0.0031233    0.0158725
12-15 months   EE             PAKISTAN     1                    NA                 0.0229376   -0.0239780    0.0698531
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0037283   -0.0194269    0.0119704
12-15 months   JiVitA-4       BANGLADESH   1                    NA                 0.0079576   -0.0017145    0.0176297
12-15 months   Keneba         GAMBIA       1                    NA                -0.0142781   -0.0569072    0.0283510
12-15 months   MAL-ED         BANGLADESH   1                    NA                 0.0217595   -0.0312849    0.0748038
12-15 months   MAL-ED         BRAZIL       1                    NA                 0.0085897   -0.1293724    0.1465518
12-15 months   MAL-ED         INDIA        1                    NA                 0.0089322   -0.1386268    0.1564913
12-15 months   MAL-ED         NEPAL        1                    NA                -0.1380564   -0.3390485    0.0629357
12-15 months   MAL-ED         PERU         1                    NA                 0.0278349   -0.0377831    0.0934529
12-15 months   PROVIDE        BANGLADESH   1                    NA                 0.0042516   -0.0375963    0.0460995
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0069089   -0.0163630    0.0025452
15-18 months   EE             PAKISTAN     1                    NA                 0.0116807   -0.0096621    0.0330235
15-18 months   GMS-Nepal      NEPAL        1                    NA                -0.0199752   -0.0355689   -0.0043814
15-18 months   JiVitA-4       BANGLADESH   1                    NA                 0.0011394   -0.0076202    0.0098991
15-18 months   Keneba         GAMBIA       1                    NA                -0.0161755   -0.0651153    0.0327643
15-18 months   MAL-ED         BANGLADESH   1                    NA                 0.0016003   -0.0486410    0.0518417
15-18 months   MAL-ED         BRAZIL       1                    NA                -0.0219580   -0.1792862    0.1353702
15-18 months   MAL-ED         INDIA        1                    NA                 0.0796074   -0.0470094    0.2062243
15-18 months   MAL-ED         NEPAL        1                    NA                -0.0405802   -0.1803772    0.0992168
15-18 months   MAL-ED         PERU         1                    NA                 0.0216086   -0.0336689    0.0768861
15-18 months   PROVIDE        BANGLADESH   1                    NA                 0.0361800   -0.0082004    0.0805604
15-18 months   SAS-CompFeed   INDIA        1                    NA                 0.0039620   -0.0117595    0.0196835
18-21 months   EE             PAKISTAN     1                    NA                 0.0041563   -0.0160395    0.0243522
18-21 months   GMS-Nepal      NEPAL        1                    NA                 0.0063590   -0.0092448    0.0219628
18-21 months   Keneba         GAMBIA       1                    NA                -0.0064508   -0.0561478    0.0432463
18-21 months   LCNI-5         MALAWI       1                    NA                 0.0607074   -0.1169403    0.2383551
18-21 months   MAL-ED         BANGLADESH   1                    NA                 0.0194608   -0.0303589    0.0692806
18-21 months   MAL-ED         BRAZIL       1                    NA                 0.0641434   -0.0747306    0.2030174
18-21 months   MAL-ED         INDIA        1                    NA                 0.1133757   -0.0335644    0.2603157
18-21 months   MAL-ED         NEPAL        1                    NA                 0.1647307    0.0243641    0.3050973
18-21 months   MAL-ED         PERU         1                    NA                 0.0128803   -0.0529197    0.0786802
18-21 months   PROVIDE        BANGLADESH   1                    NA                 0.0418153   -0.0023330    0.0859636
21-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0076288   -0.0222098    0.0374674
21-24 months   Keneba         GAMBIA       1                    NA                 0.0303558   -0.0229536    0.0836651
21-24 months   LCNI-5         MALAWI       1                    NA                -0.0012128   -0.1428247    0.1403991
21-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0083607   -0.0607562    0.0440349
21-24 months   MAL-ED         BRAZIL       1                    NA                 0.0128094   -0.0758812    0.1015001
21-24 months   MAL-ED         INDIA        1                    NA                 0.0442114   -0.1107794    0.1992022
21-24 months   MAL-ED         NEPAL        1                    NA                -0.1116965   -0.3379358    0.1145428
21-24 months   MAL-ED         PERU         1                    NA                 0.0267182   -0.0475324    0.1009688
21-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0187176   -0.0253872    0.0628225
