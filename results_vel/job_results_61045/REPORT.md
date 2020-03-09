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
![](/tmp/a770fc88-ae60-4b2c-ae21-8114bab2cf25/612bdd10-9a94-4ee1-b99f-260ee8775998/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a770fc88-ae60-4b2c-ae21-8114bab2cf25/612bdd10-9a94-4ee1-b99f-260ee8775998/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a770fc88-ae60-4b2c-ae21-8114bab2cf25/612bdd10-9a94-4ee1-b99f-260ee8775998/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0267146   -0.0555845    0.0021553
0-3 months     GMS-Nepal      NEPAL        0                    NA                -0.0464761   -0.0995518    0.0065996
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0733799    0.0668036    0.0799563
0-3 months     JiVitA-3       BANGLADESH   0                    NA                 0.0797870    0.0686559    0.0909181
0-3 months     JiVitA-4       BANGLADESH   1                    NA                 0.0789314    0.0632514    0.0946114
0-3 months     JiVitA-4       BANGLADESH   0                    NA                 0.0101007   -0.0309137    0.0511152
0-3 months     Keneba         GAMBIA       1                    NA                -0.2812517   -0.3240494   -0.2384540
0-3 months     Keneba         GAMBIA       0                    NA                -0.2870410   -0.3173789   -0.2567030
0-3 months     MAL-ED         BANGLADESH   1                    NA                -0.0544302   -0.1376177    0.0287572
0-3 months     MAL-ED         BANGLADESH   0                    NA                -0.1274187   -0.1660670   -0.0887703
0-3 months     MAL-ED         BRAZIL       1                    NA                 0.2966143   -0.0211040    0.6143325
0-3 months     MAL-ED         BRAZIL       0                    NA                 0.1378398    0.0796403    0.1960393
0-3 months     PROVIDE        BANGLADESH   1                    NA                -0.1845873   -0.2165395   -0.1526352
0-3 months     PROVIDE        BANGLADESH   0                    NA                -0.1893776   -0.2099828   -0.1687724
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.1257104   -0.1530267   -0.0983942
0-3 months     SAS-CompFeed   INDIA        0                    NA                -0.3105682   -0.3875824   -0.2335540
3-6 months     GMS-Nepal      NEPAL        1                    NA                -0.1518688   -0.1733260   -0.1304116
3-6 months     GMS-Nepal      NEPAL        0                    NA                -0.1878721   -0.2260658   -0.1496785
3-6 months     JiVitA-3       BANGLADESH   1                    NA                -0.0038172   -0.0107747    0.0031403
3-6 months     JiVitA-3       BANGLADESH   0                    NA                -0.0030037   -0.0143655    0.0083581
3-6 months     JiVitA-4       BANGLADESH   1                    NA                -0.0164991   -0.0316100   -0.0013882
3-6 months     JiVitA-4       BANGLADESH   0                    NA                 0.0182472   -0.0160882    0.0525826
3-6 months     Keneba         GAMBIA       1                    NA                -0.0289089   -0.0627128    0.0048950
3-6 months     Keneba         GAMBIA       0                    NA                -0.0143729   -0.0371703    0.0084245
3-6 months     MAL-ED         BANGLADESH   1                    NA                 0.0032959   -0.0715480    0.0781397
3-6 months     MAL-ED         BANGLADESH   0                    NA                -0.0304788   -0.0556681   -0.0052895
3-6 months     MAL-ED         BRAZIL       1                    NA                 0.1505251    0.0062586    0.2947916
3-6 months     MAL-ED         BRAZIL       0                    NA                 0.0543833    0.0166914    0.0920753
3-6 months     MAL-ED         PERU         1                    NA                 0.1763089    0.0068862    0.3457315
3-6 months     MAL-ED         PERU         0                    NA                 0.0236519   -0.0080991    0.0554029
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0038487   -0.0346443    0.0269468
3-6 months     PROVIDE        BANGLADESH   0                    NA                -0.0350725   -0.0533386   -0.0168065
3-6 months     SAS-CompFeed   INDIA        1                    NA                -0.0398525   -0.0752492   -0.0044558
3-6 months     SAS-CompFeed   INDIA        0                    NA                 0.0480716   -0.1204917    0.2166348
6-9 months     EE             PAKISTAN     1                    NA                -0.1102361   -0.1665884   -0.0538838
6-9 months     EE             PAKISTAN     0                    NA                -0.0939376   -0.1833491   -0.0045262
6-9 months     GMS-Nepal      NEPAL        1                    NA                -0.0454000   -0.0633813   -0.0274187
6-9 months     GMS-Nepal      NEPAL        0                    NA                -0.0572130   -0.1028217   -0.0116043
6-9 months     JiVitA-4       BANGLADESH   1                    NA                -0.0292911   -0.0394220   -0.0191601
6-9 months     JiVitA-4       BANGLADESH   0                    NA                -0.0230907   -0.0432565   -0.0029249
6-9 months     Keneba         GAMBIA       1                    NA                 0.0184081   -0.0301100    0.0669263
6-9 months     Keneba         GAMBIA       0                    NA                -0.0266481   -0.0537378    0.0004416
6-9 months     LCNI-5         MALAWI       1                    NA                -0.0023300   -0.0864861    0.0818260
6-9 months     LCNI-5         MALAWI       0                    NA                 0.0085273   -0.0198367    0.0368914
6-9 months     MAL-ED         BANGLADESH   1                    NA                -0.0635068   -0.1065760   -0.0204376
6-9 months     MAL-ED         BANGLADESH   0                    NA                -0.0674731   -0.0869791   -0.0479671
6-9 months     MAL-ED         BRAZIL       1                    NA                -0.1337881   -0.2688913    0.0013150
6-9 months     MAL-ED         BRAZIL       0                    NA                 0.0107762   -0.0257511    0.0473035
6-9 months     MAL-ED         NEPAL        1                    NA                -0.0901638   -0.1918341    0.0115066
6-9 months     MAL-ED         NEPAL        0                    NA                -0.0356189   -0.0553206   -0.0159172
6-9 months     MAL-ED         PERU         1                    NA                -0.0737873   -0.1136321   -0.0339426
6-9 months     MAL-ED         PERU         0                    NA                -0.0327407   -0.0574401   -0.0080413
6-9 months     PROVIDE        BANGLADESH   1                    NA                -0.0766798   -0.0994287   -0.0539308
6-9 months     PROVIDE        BANGLADESH   0                    NA                -0.0573498   -0.0696809   -0.0450188
6-9 months     SAS-CompFeed   INDIA        1                    NA                -0.0847370   -0.1219955   -0.0474784
6-9 months     SAS-CompFeed   INDIA        0                    NA                -0.1340104   -0.2940868    0.0260659
9-12 months    EE             PAKISTAN     1                    NA                -0.1276355   -0.1664421   -0.0888290
9-12 months    EE             PAKISTAN     0                    NA                -0.1346832   -0.2415573   -0.0278091
9-12 months    GMS-Nepal      NEPAL        1                    NA                -0.0835863   -0.0977934   -0.0693793
9-12 months    GMS-Nepal      NEPAL        0                    NA                -0.0691610   -0.1063709   -0.0319511
9-12 months    JiVitA-4       BANGLADESH   1                    NA                -0.0537777   -0.0628987   -0.0446566
9-12 months    JiVitA-4       BANGLADESH   0                    NA                -0.0510700   -0.0674360   -0.0347041
9-12 months    Keneba         GAMBIA       1                    NA                -0.1102755   -0.1399885   -0.0805626
9-12 months    Keneba         GAMBIA       0                    NA                -0.0946876   -0.1171446   -0.0722306
9-12 months    LCNI-5         MALAWI       1                    NA                -0.1142363   -0.1918545   -0.0366181
9-12 months    LCNI-5         MALAWI       0                    NA                -0.1437054   -0.2181565   -0.0692542
9-12 months    MAL-ED         BANGLADESH   1                    NA                -0.1053585   -0.1437659   -0.0669511
9-12 months    MAL-ED         BANGLADESH   0                    NA                -0.0870283   -0.1050093   -0.0690473
9-12 months    MAL-ED         BRAZIL       1                    NA                -0.0480135   -0.1391462    0.0431192
9-12 months    MAL-ED         BRAZIL       0                    NA                 0.0118373   -0.0204433    0.0441179
9-12 months    MAL-ED         PERU         1                    NA                -0.0353182   -0.1171395    0.0465032
9-12 months    MAL-ED         PERU         0                    NA                -0.0420697   -0.0639794   -0.0201600
9-12 months    PROVIDE        BANGLADESH   1                    NA                -0.0743042   -0.0967344   -0.0518740
9-12 months    PROVIDE        BANGLADESH   0                    NA                -0.0595298   -0.0719630   -0.0470966
9-12 months    SAS-CompFeed   INDIA        1                    NA                -0.0907751   -0.1204583   -0.0610919
9-12 months    SAS-CompFeed   INDIA        0                    NA                 0.0498786   -0.0587520    0.1585093
12-15 months   EE             PAKISTAN     1                    NA                -0.0016762   -0.0345630    0.0312106
12-15 months   EE             PAKISTAN     0                    NA                 0.0416377   -0.0932971    0.1765724
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0694214   -0.0801273   -0.0587154
12-15 months   GMS-Nepal      NEPAL        0                    NA                -0.0716398   -0.0930735   -0.0502061
12-15 months   JiVitA-4       BANGLADESH   1                    NA                -0.0495451   -0.0566560   -0.0424342
12-15 months   JiVitA-4       BANGLADESH   0                    NA                -0.0312366   -0.0482347   -0.0142384
12-15 months   Keneba         GAMBIA       1                    NA                -0.0447679   -0.0639941   -0.0255417
12-15 months   Keneba         GAMBIA       0                    NA                -0.0542194   -0.0698722   -0.0385666
12-15 months   MAL-ED         BANGLADESH   1                    NA                -0.0495011   -0.0838809   -0.0151212
12-15 months   MAL-ED         BANGLADESH   0                    NA                -0.0532837   -0.0709120   -0.0356554
12-15 months   MAL-ED         BRAZIL       1                    NA                 0.0371702   -0.0660620    0.1404024
12-15 months   MAL-ED         BRAZIL       0                    NA                -0.0078235   -0.0309997    0.0153527
12-15 months   PROVIDE        BANGLADESH   1                    NA                -0.0396539   -0.0576575   -0.0216503
12-15 months   PROVIDE        BANGLADESH   0                    NA                -0.0415329   -0.0535019   -0.0295640
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0781898   -0.1071019   -0.0492777
12-15 months   SAS-CompFeed   INDIA        0                    NA                -0.1559999   -0.2687769   -0.0432229
15-18 months   EE             PAKISTAN     1                    NA                -0.0239930   -0.0525465    0.0045604
15-18 months   EE             PAKISTAN     0                    NA                -0.0267957   -0.0572607    0.0036694
15-18 months   GMS-Nepal      NEPAL        1                    NA                -0.0592944   -0.0737406   -0.0448481
15-18 months   GMS-Nepal      NEPAL        0                    NA                -0.0880389   -0.1048031   -0.0712747
15-18 months   JiVitA-4       BANGLADESH   1                    NA                -0.0330737   -0.0403903   -0.0257571
15-18 months   JiVitA-4       BANGLADESH   0                    NA                -0.0308610   -0.0441443   -0.0175778
15-18 months   Keneba         GAMBIA       1                    NA                -0.0256987   -0.0488548   -0.0025427
15-18 months   Keneba         GAMBIA       0                    NA                -0.0326141   -0.0471449   -0.0180832
15-18 months   MAL-ED         BANGLADESH   1                    NA                -0.0098894   -0.0447145    0.0249357
15-18 months   MAL-ED         BANGLADESH   0                    NA                -0.0531966   -0.0684073   -0.0379858
15-18 months   MAL-ED         BRAZIL       1                    NA                -0.0139064   -0.0763737    0.0485609
15-18 months   MAL-ED         BRAZIL       0                    NA                -0.0224932   -0.0443369   -0.0006496
15-18 months   MAL-ED         NEPAL        1                    NA                -0.0623720   -0.1122360   -0.0125080
15-18 months   MAL-ED         NEPAL        0                    NA                -0.0539038   -0.0697401   -0.0380676
15-18 months   PROVIDE        BANGLADESH   1                    NA                -0.0460963   -0.0646879   -0.0275047
15-18 months   PROVIDE        BANGLADESH   0                    NA                -0.0343240   -0.0442527   -0.0243954
15-18 months   SAS-CompFeed   INDIA        1                    NA                -0.0172802   -0.0379484    0.0033881
15-18 months   SAS-CompFeed   INDIA        0                    NA                 0.0618751   -0.1198771    0.2436273
18-21 months   EE             PAKISTAN     1                    NA                -0.0093635   -0.0349812    0.0162542
18-21 months   EE             PAKISTAN     0                    NA                -0.0265882   -0.0706485    0.0174721
18-21 months   GMS-Nepal      NEPAL        1                    NA                 0.0146176   -0.0005898    0.0298250
18-21 months   GMS-Nepal      NEPAL        0                    NA                 0.0233153    0.0045800    0.0420507
18-21 months   Keneba         GAMBIA       1                    NA                -0.0237478   -0.0480244    0.0005288
18-21 months   Keneba         GAMBIA       0                    NA                -0.0237941   -0.0397197   -0.0078684
18-21 months   LCNI-5         MALAWI       1                    NA                -0.0309581   -0.1433314    0.0814153
18-21 months   LCNI-5         MALAWI       0                    NA                 0.0005509   -0.0265017    0.0276036
18-21 months   MAL-ED         BANGLADESH   1                    NA                -0.0111348   -0.0474433    0.0251736
18-21 months   MAL-ED         BANGLADESH   0                    NA                -0.0111990   -0.0239970    0.0015989
18-21 months   MAL-ED         BRAZIL       1                    NA                 0.0038458   -0.0328815    0.0405731
18-21 months   MAL-ED         BRAZIL       0                    NA                -0.0176002   -0.0435290    0.0083286
18-21 months   MAL-ED         NEPAL        1                    NA                -0.0729293   -0.1201994   -0.0256593
18-21 months   MAL-ED         NEPAL        0                    NA                -0.0295862   -0.0430048   -0.0161677
18-21 months   PROVIDE        BANGLADESH   1                    NA                -0.0264971   -0.0434443   -0.0095498
18-21 months   PROVIDE        BANGLADESH   0                    NA                -0.0070913   -0.0163151    0.0021326
21-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0429816    0.0260640    0.0598992
21-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0450820    0.0037645    0.0863995
21-24 months   Keneba         GAMBIA       1                    NA                 0.0071637   -0.0150395    0.0293668
21-24 months   Keneba         GAMBIA       0                    NA                 0.0188928    0.0050199    0.0327658
21-24 months   LCNI-5         MALAWI       1                    NA                -0.0069057   -0.0543744    0.0405630
21-24 months   LCNI-5         MALAWI       0                    NA                -0.0125999   -0.0375115    0.0123118
21-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0280654   -0.0100634    0.0661942
21-24 months   MAL-ED         BANGLADESH   0                    NA                 0.0250518    0.0113768    0.0387269
21-24 months   MAL-ED         BRAZIL       1                    NA                -0.0183422   -0.0707937    0.0341092
21-24 months   MAL-ED         BRAZIL       0                    NA                 0.0171349    0.0002677    0.0340021
21-24 months   MAL-ED         NEPAL        1                    NA                 0.0818375   -0.0062005    0.1698756
21-24 months   MAL-ED         NEPAL        0                    NA                 0.0043644   -0.0097178    0.0184466
21-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0387290    0.0208314    0.0566266
21-24 months   PROVIDE        BANGLADESH   0                    NA                 0.0481268    0.0382362    0.0580174


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
0-3 months     GMS-Nepal      NEPAL        0                    1                 -0.0197615   -0.0802301    0.0407071
0-3 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH   0                    1                  0.0064071   -0.0052507    0.0180648
0-3 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH   0                    1                 -0.0688307   -0.1123497   -0.0253116
0-3 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA       0                    1                 -0.0057892   -0.0580773    0.0464988
0-3 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH   0                    1                 -0.0729884   -0.1646260    0.0186491
0-3 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL       0                    1                 -0.1587745   -0.4817792    0.1642303
0-3 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH   0                    1                 -0.0047903   -0.0428131    0.0332325
0-3 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA        0                    1                 -0.1848578   -0.2573389   -0.1123766
3-6 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL        0                    1                 -0.0360034   -0.0798014    0.0077947
3-6 months     JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH   0                    1                  0.0008135   -0.0120677    0.0136948
3-6 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4       BANGLADESH   0                    1                  0.0347463   -0.0025901    0.0720827
3-6 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA       0                    1                  0.0145361   -0.0261406    0.0552127
3-6 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH   0                    1                 -0.0337746   -0.1127138    0.0451645
3-6 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL       0                    1                 -0.0961418   -0.2453225    0.0530390
3-6 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU         0                    1                 -0.1526569   -0.3250291    0.0197152
3-6 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH   0                    1                 -0.0312238   -0.0667053    0.0042577
3-6 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA        0                    1                  0.0879241   -0.0966906    0.2725387
6-9 months     EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN     0                    1                  0.0162985   -0.0893897    0.1219867
6-9 months     GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL        0                    1                 -0.0118130   -0.0605074    0.0368815
6-9 months     JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4       BANGLADESH   0                    1                  0.0062004   -0.0160200    0.0284208
6-9 months     Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA       0                    1                 -0.0450562   -0.1008865    0.0107740
6-9 months     LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5         MALAWI       0                    1                  0.0108573   -0.0781629    0.0998776
6-9 months     MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH   0                    1                 -0.0039663   -0.0513513    0.0434188
6-9 months     MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL       0                    1                  0.1445643    0.0039035    0.2852252
6-9 months     MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL        0                    1                  0.0545449   -0.0490168    0.1581066
6-9 months     MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU         0                    1                  0.0410466   -0.0058327    0.0879259
6-9 months     PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH   0                    1                  0.0193299   -0.0065201    0.0451800
6-9 months     SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA        0                    1                 -0.0492735   -0.2027962    0.1042492
9-12 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN     0                    1                 -0.0070477   -0.1207491    0.1066537
9-12 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL        0                    1                  0.0144253   -0.0254969    0.0543476
9-12 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH   0                    1                  0.0027077   -0.0159250    0.0213403
9-12 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA       0                    1                  0.0155879   -0.0217893    0.0529651
9-12 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5         MALAWI       0                    1                 -0.0294690   -0.1432548    0.0843167
9-12 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH   0                    1                  0.0183302   -0.0239281    0.0605884
9-12 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL       0                    1                  0.0598508   -0.0368611    0.1565627
9-12 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU         0                    1                 -0.0067516   -0.0914555    0.0779524
9-12 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH   0                    1                  0.0147744   -0.0106326    0.0401814
9-12 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA        0                    1                  0.1406537    0.0432942    0.2380132
12-15 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN     0                    1                  0.0433139   -0.0955707    0.1821984
12-15 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL        0                    1                 -0.0022185   -0.0261879    0.0217510
12-15 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH   0                    1                  0.0183085    0.0000745    0.0365426
12-15 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA       0                    1                 -0.0094515   -0.0342497    0.0153468
12-15 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH   0                    1                 -0.0037826   -0.0424568    0.0348915
12-15 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL       0                    1                 -0.0449937   -0.1507718    0.0607843
12-15 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH   0                    1                 -0.0018790   -0.0234008    0.0196429
12-15 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA        0                    1                 -0.0778101   -0.1915481    0.0359279
15-18 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN     0                    1                 -0.0028026   -0.0445569    0.0389516
15-18 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL        0                    1                 -0.0287446   -0.0509769   -0.0065122
15-18 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH   0                    1                  0.0022126   -0.0125517    0.0169770
15-18 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA       0                    1                 -0.0069153   -0.0342310    0.0204004
15-18 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH   0                    1                 -0.0433071   -0.0814512   -0.0051630
15-18 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL       0                    1                 -0.0085868   -0.0750627    0.0578890
15-18 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL        0                    1                  0.0084682   -0.0438501    0.0607865
15-18 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH   0                    1                  0.0117723   -0.0092821    0.0328267
15-18 months   SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA        0                    1                  0.0791553   -0.0985243    0.2568349
18-21 months   EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN     0                    1                 -0.0172247   -0.0681912    0.0337417
18-21 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL        0                    1                  0.0086978   -0.0164013    0.0337968
18-21 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA       0                    1                 -0.0000462   -0.0291932    0.0291007
18-21 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5         MALAWI       0                    1                  0.0315090   -0.0848074    0.1478254
18-21 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH   0                    1                 -0.0000642   -0.0384258    0.0382974
18-21 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL       0                    1                 -0.0214460   -0.0660740    0.0231819
18-21 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL        0                    1                  0.0433431   -0.0057946    0.0924808
18-21 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH   0                    1                  0.0194058    0.0001808    0.0386308
21-24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL        0                    1                  0.0021004   -0.0427858    0.0469866
21-24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA       0                    1                  0.0117292   -0.0146155    0.0380738
21-24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5         MALAWI       0                    1                 -0.0056942   -0.0595392    0.0481509
21-24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH   0                    1                 -0.0030136   -0.0435305    0.0375034
21-24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL       0                    1                  0.0354771   -0.0196588    0.0906130
21-24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL        0                    1                 -0.0774731   -0.1666304    0.0116841
21-24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH   0                    1                  0.0093978   -0.0110511    0.0298467


### Parameter: PAR


agecat         studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL        1                    NA                -0.0052872   -0.0213835    0.0108092
0-3 months     JiVitA-3       BANGLADESH   1                    NA                 0.0014581   -0.0011901    0.0041064
0-3 months     JiVitA-4       BANGLADESH   1                    NA                -0.0114614   -0.0186649   -0.0042579
0-3 months     Keneba         GAMBIA       1                    NA                -0.0037429   -0.0392947    0.0318089
0-3 months     MAL-ED         BANGLADESH   1                    NA                -0.0640514   -0.1430279    0.0149251
0-3 months     MAL-ED         BRAZIL       1                    NA                -0.1519559   -0.4611291    0.1572172
0-3 months     PROVIDE        BANGLADESH   1                    NA                -0.0034529   -0.0320567    0.0251510
0-3 months     SAS-CompFeed   INDIA        1                    NA                -0.0090494   -0.0146012   -0.0034975
3-6 months     GMS-Nepal      NEPAL        1                    NA                -0.0099029   -0.0218351    0.0020294
3-6 months     JiVitA-3       BANGLADESH   1                    NA                 0.0001180   -0.0029082    0.0031442
3-6 months     JiVitA-4       BANGLADESH   1                    NA                 0.0058397   -0.0000220    0.0117014
3-6 months     Keneba         GAMBIA       1                    NA                 0.0115088   -0.0179515    0.0409691
3-6 months     MAL-ED         BANGLADESH   1                    NA                -0.0275596   -0.0949921    0.0398730
3-6 months     MAL-ED         BRAZIL       1                    NA                -0.0907960   -0.2315004    0.0499085
3-6 months     MAL-ED         PERU         1                    NA                -0.1497875   -0.3178688    0.0182939
3-6 months     PROVIDE        BANGLADESH   1                    NA                -0.0231138   -0.0504131    0.0041856
3-6 months     SAS-CompFeed   INDIA        1                    NA                 0.0040574   -0.0061054    0.0142202
6-9 months     EE             PAKISTAN     1                    NA                 0.0018109   -0.0100293    0.0136512
6-9 months     GMS-Nepal      NEPAL        1                    NA                 0.0000374   -0.0120916    0.0121663
6-9 months     JiVitA-4       BANGLADESH   1                    NA                 0.0006923   -0.0039890    0.0053736
6-9 months     Keneba         GAMBIA       1                    NA                -0.0314978   -0.0716286    0.0086330
6-9 months     LCNI-5         MALAWI       1                    NA                 0.0119162   -0.0634704    0.0873028
6-9 months     MAL-ED         BANGLADESH   1                    NA                -0.0042473   -0.0454344    0.0369399
6-9 months     MAL-ED         BRAZIL       1                    NA                 0.1425715    0.0084540    0.2766890
6-9 months     MAL-ED         NEPAL        1                    NA                 0.0533052   -0.0476732    0.1542836
6-9 months     MAL-ED         PERU         1                    NA                 0.0402089   -0.0055042    0.0859220
6-9 months     PROVIDE        BANGLADESH   1                    NA                 0.0152534   -0.0049009    0.0354076
6-9 months     SAS-CompFeed   INDIA        1                    NA                 0.0005223   -0.0059728    0.0070174
9-12 months    EE             PAKISTAN     1                    NA                -0.0008009   -0.0137388    0.0121370
9-12 months    GMS-Nepal      NEPAL        1                    NA                 0.0040013   -0.0055216    0.0135243
9-12 months    JiVitA-4       BANGLADESH   1                    NA                 0.0008684   -0.0032568    0.0049937
9-12 months    Keneba         GAMBIA       1                    NA                 0.0100499   -0.0153974    0.0354973
9-12 months    LCNI-5         MALAWI       1                    NA                 0.0089589   -0.0738595    0.0917774
9-12 months    MAL-ED         BANGLADESH   1                    NA                 0.0157660   -0.0215249    0.0530568
9-12 months    MAL-ED         BRAZIL       1                    NA                 0.0561919   -0.0351140    0.1474978
9-12 months    MAL-ED         PERU         1                    NA                -0.0066079   -0.0891944    0.0759785
9-12 months    PROVIDE        BANGLADESH   1                    NA                 0.0112572   -0.0083036    0.0308180
9-12 months    SAS-CompFeed   INDIA        1                    NA                 0.0033620   -0.0001172    0.0068412
12-15 months   EE             PAKISTAN     1                    NA                 0.0058532   -0.0135283    0.0252347
12-15 months   GMS-Nepal      NEPAL        1                    NA                -0.0005830   -0.0064592    0.0052931
12-15 months   JiVitA-4       BANGLADESH   1                    NA                 0.0037522   -0.0000403    0.0075448
12-15 months   Keneba         GAMBIA       1                    NA                -0.0061202   -0.0227306    0.0104901
12-15 months   MAL-ED         BANGLADESH   1                    NA                -0.0044783   -0.0390395    0.0300829
12-15 months   MAL-ED         BRAZIL       1                    NA                -0.0402132   -0.1398033    0.0593769
12-15 months   PROVIDE        BANGLADESH   1                    NA                -0.0012568   -0.0177065    0.0151929
12-15 months   SAS-CompFeed   INDIA        1                    NA                -0.0019827   -0.0053711    0.0014058
15-18 months   EE             PAKISTAN     1                    NA                -0.0004246   -0.0067606    0.0059113
15-18 months   GMS-Nepal      NEPAL        1                    NA                -0.0072139   -0.0128687   -0.0015591
15-18 months   JiVitA-4       BANGLADESH   1                    NA                 0.0008669   -0.0023388    0.0040727
15-18 months   Keneba         GAMBIA       1                    NA                -0.0044787   -0.0226495    0.0136921
15-18 months   MAL-ED         BANGLADESH   1                    NA                -0.0366630   -0.0699479   -0.0033781
15-18 months   MAL-ED         BRAZIL       1                    NA                -0.0064358   -0.0682008    0.0553292
15-18 months   MAL-ED         NEPAL        1                    NA                 0.0082739   -0.0427367    0.0592846
15-18 months   PROVIDE        BANGLADESH   1                    NA                 0.0084526   -0.0075547    0.0244599
15-18 months   SAS-CompFeed   INDIA        1                    NA                 0.0013465   -0.0042059    0.0068989
18-21 months   EE             PAKISTAN     1                    NA                -0.0026098   -0.0106230    0.0054034
18-21 months   GMS-Nepal      NEPAL        1                    NA                 0.0018931   -0.0040796    0.0078657
18-21 months   Keneba         GAMBIA       1                    NA                 0.0012839   -0.0184402    0.0210079
18-21 months   LCNI-5         MALAWI       1                    NA                 0.0217297   -0.0704514    0.1139109
18-21 months   MAL-ED         BANGLADESH   1                    NA                -0.0025570   -0.0365695    0.0314555
18-21 months   MAL-ED         BRAZIL       1                    NA                -0.0242048   -0.0657396    0.0173301
18-21 months   MAL-ED         NEPAL        1                    NA                 0.0423490   -0.0055680    0.0902660
18-21 months   PROVIDE        BANGLADESH   1                    NA                 0.0155572    0.0007309    0.0303834
21-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0035808   -0.0068174    0.0139791
21-24 months   Keneba         GAMBIA       1                    NA                 0.0089319   -0.0089317    0.0267954
21-24 months   LCNI-5         MALAWI       1                    NA                -0.0047191   -0.0497576    0.0403194
21-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0024414   -0.0386854    0.0338027
21-24 months   MAL-ED         BRAZIL       1                    NA                 0.0348292   -0.0171799    0.0868384
21-24 months   MAL-ED         NEPAL        1                    NA                -0.0756962   -0.1626382    0.0112457
21-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0075052   -0.0081645    0.0231749
