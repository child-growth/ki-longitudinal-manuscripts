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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/02ee8870-2602-4170-9a2c-135f6bc623e2/2ff0f283-9fd3-408c-bb7e-f7ffd29b780a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/02ee8870-2602-4170-9a2c-135f6bc623e2/2ff0f283-9fd3-408c-bb7e-f7ffd29b780a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/02ee8870-2602-4170-9a2c-135f6bc623e2/2ff0f283-9fd3-408c-bb7e-f7ffd29b780a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                3.6077919   3.5492692   3.6663146
0-3 months     GMS-Nepal      NEPAL        0                    NA                3.5809851   3.4730627   3.6889075
0-3 months     JiVitA-3       BANGLADESH   1                    NA                3.7219926   3.7084510   3.7355341
0-3 months     JiVitA-3       BANGLADESH   0                    NA                3.7360843   3.7129711   3.7591975
0-3 months     JiVitA-4       BANGLADESH   1                    NA                3.6633061   3.6302845   3.6963277
0-3 months     JiVitA-4       BANGLADESH   0                    NA                3.5135934   3.4296787   3.5975081
0-3 months     Keneba         GAMBIA       1                    NA                3.1122784   3.0294391   3.1951177
0-3 months     Keneba         GAMBIA       0                    NA                3.1018909   3.0424270   3.1613549
0-3 months     MAL-ED         BANGLADESH   1                    NA                3.3904236   3.2467319   3.5341152
0-3 months     MAL-ED         BANGLADESH   0                    NA                3.3442558   3.2687638   3.4197478
0-3 months     MAL-ED         BRAZIL       1                    NA                4.1001464   3.4832446   4.7170481
0-3 months     MAL-ED         BRAZIL       0                    NA                3.8064228   3.6939940   3.9188516
0-3 months     PROVIDE        BANGLADESH   1                    NA                3.2558977   3.1897171   3.3220783
0-3 months     PROVIDE        BANGLADESH   0                    NA                3.2588441   3.2148586   3.3028296
0-3 months     SAS-CompFeed   INDIA        1                    NA                3.3695026   3.3106339   3.4283713
0-3 months     SAS-CompFeed   INDIA        0                    NA                2.9240440   2.7812046   3.0668835
3-6 months     GMS-Nepal      NEPAL        1                    NA                1.7312382   1.6854289   1.7770475
3-6 months     GMS-Nepal      NEPAL        0                    NA                1.6567869   1.5775225   1.7360513
3-6 months     JiVitA-3       BANGLADESH   1                    NA                1.9193317   1.9041370   1.9345264
3-6 months     JiVitA-3       BANGLADESH   0                    NA                1.9181052   1.8938248   1.9423857
3-6 months     JiVitA-4       BANGLADESH   1                    NA                1.8837059   1.8507880   1.9166238
3-6 months     JiVitA-4       BANGLADESH   0                    NA                1.9551973   1.8798827   2.0305118
3-6 months     Keneba         GAMBIA       1                    NA                1.9688513   1.8973789   2.0403237
3-6 months     Keneba         GAMBIA       0                    NA                2.0040520   1.9551698   2.0529343
3-6 months     MAL-ED         BANGLADESH   1                    NA                1.9556557   1.7548895   2.1564218
3-6 months     MAL-ED         BANGLADESH   0                    NA                1.9199597   1.8674179   1.9725015
3-6 months     MAL-ED         BRAZIL       1                    NA                2.3786388   2.0413240   2.7159535
3-6 months     MAL-ED         BRAZIL       0                    NA                2.1342890   2.0522343   2.2163437
3-6 months     MAL-ED         PERU         1                    NA                2.3622909   2.0228505   2.7017313
3-6 months     MAL-ED         PERU         0                    NA                2.0104898   1.9431975   2.0777821
3-6 months     PROVIDE        BANGLADESH   1                    NA                2.0154484   1.9489754   2.0819214
3-6 months     PROVIDE        BANGLADESH   0                    NA                1.9525567   1.9132604   1.9918529
3-6 months     SAS-CompFeed   INDIA        1                    NA                1.8959468   1.8172862   1.9746075
3-6 months     SAS-CompFeed   INDIA        0                    NA                2.0175913   1.4898496   2.5453330
6-9 months     EE             PAKISTAN     1                    NA                1.1144238   0.9844462   1.2444013
6-9 months     EE             PAKISTAN     0                    NA                1.2194058   1.0438676   1.3949439
6-9 months     GMS-Nepal      NEPAL        1                    NA                1.3129871   1.2716559   1.3543182
6-9 months     GMS-Nepal      NEPAL        0                    NA                1.3035328   1.1979683   1.4090972
6-9 months     JiVitA-4       BANGLADESH   1                    NA                1.3240071   1.3004939   1.3475203
6-9 months     JiVitA-4       BANGLADESH   0                    NA                1.3341230   1.2892229   1.3790230
6-9 months     Keneba         GAMBIA       1                    NA                1.4630542   1.3539980   1.5721104
6-9 months     Keneba         GAMBIA       0                    NA                1.3770259   1.3153015   1.4387504
6-9 months     LCNI-5         MALAWI       1                    NA                1.4562179   1.2723157   1.6401201
6-9 months     LCNI-5         MALAWI       0                    NA                1.4358273   1.3702912   1.5013634
6-9 months     MAL-ED         BANGLADESH   1                    NA                1.2353722   1.1387035   1.3320408
6-9 months     MAL-ED         BANGLADESH   0                    NA                1.2536302   1.2085725   1.2986879
6-9 months     MAL-ED         BRAZIL       1                    NA                1.4198493   1.1785879   1.6611107
6-9 months     MAL-ED         BRAZIL       0                    NA                1.4864759   1.4019474   1.5710043
6-9 months     MAL-ED         NEPAL        1                    NA                1.2396783   1.0117486   1.4676080
6-9 months     MAL-ED         NEPAL        0                    NA                1.3547135   1.3095232   1.3999037
6-9 months     MAL-ED         PERU         1                    NA                1.2198364   1.1255361   1.3141367
6-9 months     MAL-ED         PERU         0                    NA                1.3220832   1.2664382   1.3777282
6-9 months     PROVIDE        BANGLADESH   1                    NA                1.2532827   1.2018798   1.3046856
6-9 months     PROVIDE        BANGLADESH   0                    NA                1.2927330   1.2641882   1.3212778
6-9 months     SAS-CompFeed   INDIA        1                    NA                1.2109523   1.1268945   1.2950101
6-9 months     SAS-CompFeed   INDIA        0                    NA                1.0649253   0.7601232   1.3697273
9-12 months    EE             PAKISTAN     1                    NA                0.8435058   0.7523586   0.9346530
9-12 months    EE             PAKISTAN     0                    NA                0.8866775   0.6533943   1.1199607
9-12 months    GMS-Nepal      NEPAL        1                    NA                0.9934855   0.9583276   1.0286434
9-12 months    GMS-Nepal      NEPAL        0                    NA                1.0282559   0.9405987   1.1159132
9-12 months    JiVitA-4       BANGLADESH   1                    NA                1.0686465   1.0465444   1.0907485
9-12 months    JiVitA-4       BANGLADESH   0                    NA                1.0714555   1.0317922   1.1111187
9-12 months    Keneba         GAMBIA       1                    NA                0.9608759   0.8884172   1.0333346
9-12 months    Keneba         GAMBIA       0                    NA                0.9920666   0.9386522   1.0454811
9-12 months    LCNI-5         MALAWI       1                    NA                1.2367548   1.0303777   1.4431319
9-12 months    LCNI-5         MALAWI       0                    NA                0.9193655   0.7264121   1.1123188
9-12 months    MAL-ED         BANGLADESH   1                    NA                0.9142251   0.8045775   1.0238726
9-12 months    MAL-ED         BANGLADESH   0                    NA                0.9967769   0.9543051   1.0392488
9-12 months    MAL-ED         BRAZIL       1                    NA                1.1681764   0.9212200   1.4151328
9-12 months    MAL-ED         BRAZIL       0                    NA                1.3088037   1.2314848   1.3861227
9-12 months    MAL-ED         PERU         1                    NA                1.0867030   0.9036721   1.2697339
9-12 months    MAL-ED         PERU         0                    NA                1.0987691   1.0467589   1.1507794
9-12 months    PROVIDE        BANGLADESH   1                    NA                1.0242414   0.9691733   1.0793094
9-12 months    PROVIDE        BANGLADESH   0                    NA                1.0599350   1.0293877   1.0904823
9-12 months    SAS-CompFeed   INDIA        1                    NA                0.9762529   0.9017344   1.0507714
9-12 months    SAS-CompFeed   INDIA        0                    NA                1.3564768   1.0358524   1.6771013
12-15 months   EE             PAKISTAN     1                    NA                0.9994382   0.9109531   1.0879233
12-15 months   EE             PAKISTAN     0                    NA                1.1691763   0.8641761   1.4741764
12-15 months   GMS-Nepal      NEPAL        1                    NA                0.8726183   0.8442557   0.9009809
12-15 months   GMS-Nepal      NEPAL        0                    NA                0.8641418   0.8055891   0.9226945
12-15 months   JiVitA-4       BANGLADESH   1                    NA                0.9300539   0.9111755   0.9489323
12-15 months   JiVitA-4       BANGLADESH   0                    NA                0.9689740   0.9277627   1.0101852
12-15 months   Keneba         GAMBIA       1                    NA                0.9611211   0.9119572   1.0102850
12-15 months   Keneba         GAMBIA       0                    NA                0.9357174   0.8957972   0.9756375
12-15 months   MAL-ED         BANGLADESH   1                    NA                0.9106368   0.8062724   1.0150012
12-15 months   MAL-ED         BANGLADESH   0                    NA                0.9168323   0.8704459   0.9632187
12-15 months   MAL-ED         BRAZIL       1                    NA                1.3070231   1.0263010   1.5877453
12-15 months   MAL-ED         BRAZIL       0                    NA                1.1337064   1.0720189   1.1953940
12-15 months   PROVIDE        BANGLADESH   1                    NA                0.9684638   0.9228898   1.0140379
12-15 months   PROVIDE        BANGLADESH   0                    NA                0.9584081   0.9274009   0.9894153
12-15 months   SAS-CompFeed   INDIA        1                    NA                0.8475489   0.7723789   0.9227190
12-15 months   SAS-CompFeed   INDIA        0                    NA                0.5882718   0.3290880   0.8474557
15-18 months   EE             PAKISTAN     1                    NA                0.8264950   0.7398782   0.9131119
15-18 months   EE             PAKISTAN     0                    NA                0.9035877   0.8122406   0.9949348
15-18 months   GMS-Nepal      NEPAL        1                    NA                0.7808375   0.7409529   0.8207222
15-18 months   GMS-Nepal      NEPAL        0                    NA                0.6940850   0.6466583   0.7415118
15-18 months   JiVitA-4       BANGLADESH   1                    NA                0.8595499   0.8397005   0.8793993
15-18 months   JiVitA-4       BANGLADESH   0                    NA                0.8587390   0.8217481   0.8957299
15-18 months   Keneba         GAMBIA       1                    NA                0.8972392   0.8356253   0.9588531
15-18 months   Keneba         GAMBIA       0                    NA                0.8767011   0.8373016   0.9161006
15-18 months   MAL-ED         BANGLADESH   1                    NA                0.9154889   0.8254186   1.0055592
15-18 months   MAL-ED         BANGLADESH   0                    NA                0.8063749   0.7647362   0.8480135
15-18 months   MAL-ED         BRAZIL       1                    NA                0.9715745   0.6849963   1.2581527
15-18 months   MAL-ED         BRAZIL       0                    NA                0.9991807   0.9383061   1.0600553
15-18 months   MAL-ED         NEPAL        1                    NA                0.8276007   0.7021974   0.9530041
15-18 months   MAL-ED         NEPAL        0                    NA                0.8429471   0.7991561   0.8867381
15-18 months   PROVIDE        BANGLADESH   1                    NA                0.8168418   0.7648094   0.8688742
15-18 months   PROVIDE        BANGLADESH   0                    NA                0.8654451   0.8384370   0.8924531
15-18 months   SAS-CompFeed   INDIA        1                    NA                0.8869564   0.8297712   0.9441416
15-18 months   SAS-CompFeed   INDIA        0                    NA                1.1428504   0.6164293   1.6692716
18-21 months   EE             PAKISTAN     1                    NA                0.7829057   0.6977684   0.8680431
18-21 months   EE             PAKISTAN     0                    NA                0.8103374   0.7102740   0.9104008
18-21 months   GMS-Nepal      NEPAL        1                    NA                0.8997059   0.8560224   0.9433894
18-21 months   GMS-Nepal      NEPAL        0                    NA                0.9353379   0.8833248   0.9873509
18-21 months   Keneba         GAMBIA       1                    NA                0.8215603   0.7522333   0.8908873
18-21 months   Keneba         GAMBIA       0                    NA                0.8105150   0.7651887   0.8558413
18-21 months   LCNI-5         MALAWI       1                    NA                0.7746328   0.5751154   0.9741502
18-21 months   LCNI-5         MALAWI       0                    NA                0.8772569   0.7951204   0.9593934
18-21 months   MAL-ED         BANGLADESH   1                    NA                0.7511493   0.6410900   0.8612086
18-21 months   MAL-ED         BANGLADESH   0                    NA                0.8309044   0.7940161   0.8677928
18-21 months   MAL-ED         BRAZIL       1                    NA                0.8240176   0.6749250   0.9731102
18-21 months   MAL-ED         BRAZIL       0                    NA                0.9249191   0.8496901   1.0001481
18-21 months   MAL-ED         NEPAL        1                    NA                0.6943747   0.5519923   0.8367570
18-21 months   MAL-ED         NEPAL        0                    NA                0.8135873   0.7744237   0.8527509
18-21 months   PROVIDE        BANGLADESH   1                    NA                0.8110177   0.7615055   0.8605300
18-21 months   PROVIDE        BANGLADESH   0                    NA                0.8536384   0.8264113   0.8808655
21-24 months   GMS-Nepal      NEPAL        1                    NA                0.7839504   0.7348912   0.8330097
21-24 months   GMS-Nepal      NEPAL        0                    NA                0.8335281   0.7140565   0.9529997
21-24 months   Keneba         GAMBIA       1                    NA                0.7020403   0.6353927   0.7686879
21-24 months   Keneba         GAMBIA       0                    NA                0.7247089   0.6830852   0.7663326
21-24 months   LCNI-5         MALAWI       1                    NA                0.7519138   0.6153386   0.8884890
21-24 months   LCNI-5         MALAWI       0                    NA                0.7349328   0.6574247   0.8124410
21-24 months   MAL-ED         BANGLADESH   1                    NA                0.7787993   0.6661675   0.8914310
21-24 months   MAL-ED         BANGLADESH   0                    NA                0.7736678   0.7337304   0.8136051
21-24 months   MAL-ED         BRAZIL       1                    NA                0.7621692   0.6448891   0.8794492
21-24 months   MAL-ED         BRAZIL       0                    NA                0.7972163   0.7506035   0.8438290
21-24 months   MAL-ED         NEPAL        1                    NA                1.0103156   0.7162814   1.3043497
21-24 months   MAL-ED         NEPAL        0                    NA                0.7809671   0.7390545   0.8228797
21-24 months   PROVIDE        BANGLADESH   1                    NA                0.7443515   0.6932420   0.7954610
21-24 months   PROVIDE        BANGLADESH   0                    NA                0.7701518   0.7407915   0.7995122


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
0-3 months     GMS-Nepal      NEPAL        0                    1                 -0.0268068   -0.1495854    0.0959717
0-3 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH   0                    1                  0.0140917   -0.0102378    0.0384213
0-3 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH   0                    1                 -0.1497127   -0.2391195   -0.0603059
0-3 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA       0                    1                 -0.0103875   -0.1115716    0.0907967
0-3 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH   0                    1                 -0.0461677   -0.2090419    0.1167064
0-3 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL       0                    1                 -0.2937235   -0.9207865    0.3333394
0-3 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH   0                    1                  0.0029464   -0.0763431    0.0822359
0-3 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA        0                    1                 -0.4454586   -0.5939152   -0.2970019
3-6 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL        0                    1                 -0.0744513   -0.1659089    0.0170063
3-6 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH   0                    1                 -0.0012265   -0.0289363    0.0264833
3-6 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4       BANGLADESH   0                    1                  0.0714914   -0.0103942    0.1533770
3-6 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA       0                    1                  0.0352008   -0.0514645    0.1218661
3-6 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH   0                    1                 -0.0356959   -0.2434783    0.1720864
3-6 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL       0                    1                 -0.2443498   -0.5912061    0.1025065
3-6 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU         0                    1                 -0.3518011   -0.6978474   -0.0057548
3-6 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH   0                    1                 -0.0628917   -0.1401425    0.0143591
3-6 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA        0                    1                  0.1216445   -0.4499236    0.6932125
6-9 months     EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN     0                    1                  0.1049820   -0.1134392    0.3234031
6-9 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL        0                    1                 -0.0094543   -0.1209091    0.1020005
6-9 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4       BANGLADESH   0                    1                  0.0101159   -0.0395429    0.0597746
6-9 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA       0                    1                 -0.0860282   -0.2116572    0.0396007
6-9 months     LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5         MALAWI       0                    1                 -0.0203906   -0.2162238    0.1754427
6-9 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH   0                    1                  0.0182581   -0.0886405    0.1251566
6-9 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL       0                    1                  0.0666266   -0.1891285    0.3223817
6-9 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL        0                    1                  0.1150352   -0.1173312    0.3474015
6-9 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU         0                    1                  0.1022468   -0.0072471    0.2117407
6-9 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH   0                    1                  0.0394503   -0.0187896    0.0976902
6-9 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA        0                    1                 -0.1460270   -0.4785521    0.1864982
9-12 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN     0                    1                  0.0431716   -0.2072856    0.2936289
9-12 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL        0                    1                  0.0347704   -0.0596602    0.1292011
9-12 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH   0                    1                  0.0028090   -0.0422653    0.0478833
9-12 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA       0                    1                  0.0311907   -0.0595011    0.1218826
9-12 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5         MALAWI       0                    1                 -0.3173893   -0.6046664   -0.0301123
9-12 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH   0                    1                  0.0825518   -0.0351062    0.2002099
9-12 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL       0                    1                  0.1406273   -0.1187199    0.3999745
9-12 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU         0                    1                  0.0120661   -0.1782110    0.2023432
9-12 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH   0                    1                  0.0356936   -0.0267324    0.0981197
9-12 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA        0                    1                  0.3802239    0.0972003    0.6632476
12-15 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN     0                    1                  0.1697381   -0.1478382    0.4873144
12-15 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL        0                    1                 -0.0084765   -0.0734867    0.0565338
12-15 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH   0                    1                  0.0389201   -0.0059195    0.0837597
12-15 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA       0                    1                 -0.0254037   -0.0884947    0.0376872
12-15 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH   0                    1                  0.0061955   -0.1084818    0.1208728
12-15 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL       0                    1                 -0.1733167   -0.4603692    0.1137358
12-15 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH   0                    1                 -0.0100557   -0.0647844    0.0446729
12-15 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA        0                    1                 -0.2592771   -0.5410201    0.0224660
15-18 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN     0                    1                  0.0770926   -0.0487913    0.2029766
15-18 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL        0                    1                 -0.0867525   -0.1493258   -0.0241792
15-18 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH   0                    1                 -0.0008108   -0.0414211    0.0397995
15-18 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA       0                    1                 -0.0205381   -0.0936473    0.0525710
15-18 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH   0                    1                 -0.1091140   -0.2084182   -0.0098099
15-18 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL       0                    1                  0.0276061   -0.2650130    0.3202253
15-18 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL        0                    1                  0.0153464   -0.1174830    0.1481758
15-18 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH   0                    1                  0.0486032   -0.0099687    0.1071752
15-18 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA        0                    1                  0.2558940   -0.2603686    0.7721567
18-21 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN     0                    1                  0.0274317   -0.1039496    0.1588129
18-21 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL        0                    1                  0.0356320   -0.0334004    0.1046644
18-21 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA       0                    1                 -0.0110453   -0.0944426    0.0723521
18-21 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5         MALAWI       0                    1                  0.1026241   -0.1154000    0.3206482
18-21 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH   0                    1                  0.0797551   -0.0364842    0.1959945
18-21 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL       0                    1                  0.1009015   -0.0665632    0.2683662
18-21 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL        0                    1                  0.1192127   -0.0284576    0.2668829
18-21 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH   0                    1                  0.0426207   -0.0138943    0.0991357
21-24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL        0                    1                  0.0495777   -0.0801428    0.1792982
21-24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA       0                    1                  0.0226686   -0.0566589    0.1019961
21-24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5         MALAWI       0                    1                 -0.0169810   -0.1743890    0.1404271
21-24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH   0                    1                 -0.0051315   -0.1249515    0.1146884
21-24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL       0                    1                  0.0350471   -0.0916497    0.1617439
21-24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL        0                    1                 -0.2293485   -0.5263548    0.0676578
21-24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH   0                    1                  0.0258004   -0.0331050    0.0847057


### Parameter: PAR


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0095302   -0.0421968    0.0231364
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0031149   -0.0024179    0.0086477
0-3 months     JiVitA-4       BANGLADESH   1                    NA                -0.0246218   -0.0394505   -0.0097931
0-3 months     Keneba         GAMBIA       1                    NA                -0.0078167   -0.0764508    0.0608174
0-3 months     MAL-ED         BANGLADESH   1                    NA                -0.0421738   -0.1818180    0.0974705
0-3 months     MAL-ED         BRAZIL       1                    NA                -0.2811096   -0.8813136    0.3190943
0-3 months     PROVIDE        BANGLADESH   1                    NA                 0.0017833   -0.0578392    0.0614059
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.0172592   -0.0279700   -0.0065484
3-6 months     GMS-Nepal      NEPAL        1                    NA                -0.0225769   -0.0473558    0.0022020
3-6 months     JiVitA-3       BANGLADESH   1                    NA                -0.0002785   -0.0067825    0.0062255
3-6 months     JiVitA-4       BANGLADESH   1                    NA                 0.0110040   -0.0018147    0.0238228
3-6 months     Keneba         GAMBIA       1                    NA                 0.0243218   -0.0378018    0.0864454
3-6 months     MAL-ED         BANGLADESH   1                    NA                -0.0308578   -0.2136095    0.1518939
3-6 months     MAL-ED         BRAZIL       1                    NA                -0.2325572   -0.5616676    0.0965531
3-6 months     MAL-ED         PERU         1                    NA                -0.3451883   -0.6826324   -0.0077441
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0497027   -0.1091144    0.0097091
3-6 months     SAS-CompFeed   INDIA        1                    NA                 0.0091629   -0.0111747    0.0295005
6-9 months     EE             PAKISTAN     1                    NA                 0.0116647   -0.0144891    0.0378184
6-9 months     GMS-Nepal      NEPAL        1                    NA                 0.0010428   -0.0264081    0.0284938
6-9 months     JiVitA-4       BANGLADESH   1                    NA                 0.0011243   -0.0093015    0.0115501
6-9 months     Keneba         GAMBIA       1                    NA                -0.0587618   -0.1484805    0.0309568
6-9 months     LCNI-5         MALAWI       1                    NA                -0.0189575   -0.1842575    0.1463425
6-9 months     MAL-ED         BANGLADESH   1                    NA                 0.0187571   -0.0732120    0.1107261
6-9 months     MAL-ED         BRAZIL       1                    NA                 0.0632667   -0.1780583    0.3045916
6-9 months     MAL-ED         NEPAL        1                    NA                 0.1124208   -0.1141478    0.3389893
6-9 months     MAL-ED         PERU         1                    NA                 0.1001601   -0.0066119    0.2069321
6-9 months     PROVIDE        BANGLADESH   1                    NA                 0.0291358   -0.0161448    0.0744164
6-9 months     SAS-CompFeed   INDIA        1                    NA                -0.0008870   -0.0169575    0.0151834
9-12 months    EE             PAKISTAN     1                    NA                 0.0049059   -0.0238483    0.0336600
9-12 months    GMS-Nepal      NEPAL        1                    NA                 0.0047069   -0.0175406    0.0269544
9-12 months    JiVitA-4       BANGLADESH   1                    NA                 0.0010181   -0.0087655    0.0108017
9-12 months    Keneba         GAMBIA       1                    NA                 0.0210005   -0.0408480    0.0828490
9-12 months    LCNI-5         MALAWI       1                    NA                -0.2661204   -0.4775666   -0.0546741
9-12 months    MAL-ED         BANGLADESH   1                    NA                 0.0705874   -0.0337729    0.1749476
9-12 months    MAL-ED         BRAZIL       1                    NA                 0.1300795   -0.1147452    0.3749042
9-12 months    MAL-ED         PERU         1                    NA                 0.0118094   -0.1737109    0.1973297
9-12 months    PROVIDE        BANGLADESH   1                    NA                 0.0257336   -0.0222811    0.0737483
9-12 months    SAS-CompFeed   INDIA        1                    NA                 0.0063746   -0.0031233    0.0158725
12-15 months   EE             PAKISTAN     1                    NA                 0.0229376   -0.0239780    0.0698531
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0022119   -0.0178622    0.0134383
12-15 months   JiVitA-4       BANGLADESH   1                    NA                 0.0092580   -0.0003868    0.0189028
12-15 months   Keneba         GAMBIA       1                    NA                -0.0186340   -0.0610460    0.0237780
12-15 months   MAL-ED         BANGLADESH   1                    NA                 0.0093544   -0.0934886    0.1121973
12-15 months   MAL-ED         BRAZIL       1                    NA                -0.1648458   -0.4385602    0.1088687
12-15 months   PROVIDE        BANGLADESH   1                    NA                -0.0087138   -0.0504998    0.0330723
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0069089   -0.0163630    0.0025452
15-18 months   EE             PAKISTAN     1                    NA                 0.0116807   -0.0096621    0.0330235
15-18 months   GMS-Nepal      NEPAL        1                    NA                -0.0204443   -0.0363167   -0.0045719
15-18 months   JiVitA-4       BANGLADESH   1                    NA                 0.0017247   -0.0070358    0.0104853
15-18 months   Keneba         GAMBIA       1                    NA                -0.0124223   -0.0607292    0.0358845
15-18 months   MAL-ED         BANGLADESH   1                    NA                -0.0924559   -0.1781648   -0.0067471
15-18 months   MAL-ED         BRAZIL       1                    NA                 0.0305368   -0.2444488    0.3055225
15-18 months   MAL-ED         NEPAL        1                    NA                 0.0149944   -0.1145146    0.1445034
15-18 months   PROVIDE        BANGLADESH   1                    NA                 0.0392580   -0.0051275    0.0836435
15-18 months   SAS-CompFeed   INDIA        1                    NA                 0.0039620   -0.0117595    0.0196835
18-21 months   EE             PAKISTAN     1                    NA                 0.0041563   -0.0160395    0.0243522
18-21 months   GMS-Nepal      NEPAL        1                    NA                 0.0061644   -0.0102598    0.0225886
18-21 months   Keneba         GAMBIA       1                    NA                -0.0073564   -0.0635461    0.0488332
18-21 months   LCNI-5         MALAWI       1                    NA                 0.0673445   -0.0929227    0.2276117
18-21 months   MAL-ED         BANGLADESH   1                    NA                 0.0684368   -0.0320263    0.1688998
18-21 months   MAL-ED         BRAZIL       1                    NA                 0.0920583   -0.0657150    0.2498316
18-21 months   MAL-ED         NEPAL        1                    NA                 0.1164784   -0.0275197    0.2604765
18-21 months   PROVIDE        BANGLADESH   1                    NA                 0.0283199   -0.0151401    0.0717800
21-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0110068   -0.0190529    0.0410665
21-24 months   Keneba         GAMBIA       1                    NA                 0.0152543   -0.0379592    0.0684678
21-24 months   LCNI-5         MALAWI       1                    NA                -0.0176569   -0.1472074    0.1118935
21-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0070669   -0.1127074    0.0985736
21-24 months   MAL-ED         BRAZIL       1                    NA                 0.0339827   -0.0849995    0.1529649
21-24 months   MAL-ED         NEPAL        1                    NA                -0.2240882   -0.5137054    0.0655290
21-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0187876   -0.0263642    0.0639393
