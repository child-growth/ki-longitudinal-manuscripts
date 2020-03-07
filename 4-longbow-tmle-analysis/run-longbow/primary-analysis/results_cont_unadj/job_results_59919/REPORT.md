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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        single    n_cell       n
-------------  ---------------  -----------------------------  -------  -------  ------
0-3 months     COHORTS          GUATEMALA                      0            692     737
0-3 months     COHORTS          GUATEMALA                      1             45     737
0-3 months     COHORTS          INDIA                          0           4797    4804
0-3 months     COHORTS          INDIA                          1              7    4804
0-3 months     JiVitA-4         BANGLADESH                     0           1790    1793
0-3 months     JiVitA-4         BANGLADESH                     1              3    1793
0-3 months     MAL-ED           BANGLADESH                     0            246     246
0-3 months     MAL-ED           BANGLADESH                     1              0     246
0-3 months     MAL-ED           BRAZIL                         0            187     218
0-3 months     MAL-ED           BRAZIL                         1             31     218
0-3 months     MAL-ED           INDIA                          0            236     236
0-3 months     MAL-ED           INDIA                          1              0     236
0-3 months     MAL-ED           NEPAL                          0            232     232
0-3 months     MAL-ED           NEPAL                          1              0     232
0-3 months     MAL-ED           PERU                           0            248     282
0-3 months     MAL-ED           PERU                           1             34     282
0-3 months     MAL-ED           SOUTH AFRICA                   0            156     272
0-3 months     MAL-ED           SOUTH AFRICA                   1            116     272
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            228     237
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     237
0-3 months     PROBIT           BELARUS                        0          14702   15327
0-3 months     PROBIT           BELARUS                        1            625   15327
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1817    2007
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            190    2007
0-3 months     ZVITAMBO         ZIMBABWE                       0           7633    8143
0-3 months     ZVITAMBO         ZIMBABWE                       1            510    8143
3-6 months     COHORTS          GUATEMALA                      0            700     758
3-6 months     COHORTS          GUATEMALA                      1             58     758
3-6 months     COHORTS          INDIA                          0           4851    4859
3-6 months     COHORTS          INDIA                          1              8    4859
3-6 months     JiVitA-4         BANGLADESH                     0           1814    1817
3-6 months     JiVitA-4         BANGLADESH                     1              3    1817
3-6 months     MAL-ED           BANGLADESH                     0            233     233
3-6 months     MAL-ED           BANGLADESH                     1              0     233
3-6 months     MAL-ED           BRAZIL                         0            178     208
3-6 months     MAL-ED           BRAZIL                         1             30     208
3-6 months     MAL-ED           INDIA                          0            228     228
3-6 months     MAL-ED           INDIA                          1              0     228
3-6 months     MAL-ED           NEPAL                          0            233     233
3-6 months     MAL-ED           NEPAL                          1              0     233
3-6 months     MAL-ED           PERU                           0            235     267
3-6 months     MAL-ED           PERU                           1             32     267
3-6 months     MAL-ED           SOUTH AFRICA                   0            135     243
3-6 months     MAL-ED           SOUTH AFRICA                   1            108     243
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            231     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              8     239
3-6 months     PROBIT           BELARUS                        0          12781   13317
3-6 months     PROBIT           BELARUS                        1            536   13317
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1508    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            148    1656
3-6 months     ZVITAMBO         ZIMBABWE                       0           5736    6117
3-6 months     ZVITAMBO         ZIMBABWE                       1            381    6117
6-9 months     COHORTS          GUATEMALA                      0            715     778
6-9 months     COHORTS          GUATEMALA                      1             63     778
6-9 months     COHORTS          INDIA                          0           4338    4346
6-9 months     COHORTS          INDIA                          1              8    4346
6-9 months     Guatemala BSC    GUATEMALA                      0            190     212
6-9 months     Guatemala BSC    GUATEMALA                      1             22     212
6-9 months     JiVitA-4         BANGLADESH                     0           3064    3070
6-9 months     JiVitA-4         BANGLADESH                     1              6    3070
6-9 months     MAL-ED           BANGLADESH                     0            224     224
6-9 months     MAL-ED           BANGLADESH                     1              0     224
6-9 months     MAL-ED           BRAZIL                         0            170     198
6-9 months     MAL-ED           BRAZIL                         1             28     198
6-9 months     MAL-ED           INDIA                          0            228     228
6-9 months     MAL-ED           INDIA                          1              0     228
6-9 months     MAL-ED           NEPAL                          0            230     230
6-9 months     MAL-ED           NEPAL                          1              0     230
6-9 months     MAL-ED           PERU                           0            214     245
6-9 months     MAL-ED           PERU                           1             31     245
6-9 months     MAL-ED           SOUTH AFRICA                   0            127     231
6-9 months     MAL-ED           SOUTH AFRICA                   1            104     231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            219     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     225
6-9 months     PROBIT           BELARUS                        0          11954   12436
6-9 months     PROBIT           BELARUS                        1            482   12436
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1355    1487
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            132    1487
6-9 months     ZVITAMBO         ZIMBABWE                       0           5209    5550
6-9 months     ZVITAMBO         ZIMBABWE                       1            341    5550
9-12 months    COHORTS          GUATEMALA                      0            802     873
9-12 months    COHORTS          GUATEMALA                      1             71     873
9-12 months    COHORTS          INDIA                          0           3739    3747
9-12 months    COHORTS          INDIA                          1              8    3747
9-12 months    Guatemala BSC    GUATEMALA                      0            165     185
9-12 months    Guatemala BSC    GUATEMALA                      1             20     185
9-12 months    JiVitA-4         BANGLADESH                     0           3508    3514
9-12 months    JiVitA-4         BANGLADESH                     1              6    3514
9-12 months    MAL-ED           BANGLADESH                     0            225     225
9-12 months    MAL-ED           BANGLADESH                     1              0     225
9-12 months    MAL-ED           BRAZIL                         0            167     194
9-12 months    MAL-ED           BRAZIL                         1             27     194
9-12 months    MAL-ED           INDIA                          0            225     225
9-12 months    MAL-ED           INDIA                          1              0     225
9-12 months    MAL-ED           NEPAL                          0            229     229
9-12 months    MAL-ED           NEPAL                          1              0     229
9-12 months    MAL-ED           PERU                           0            206     235
9-12 months    MAL-ED           PERU                           1             29     235
9-12 months    MAL-ED           SOUTH AFRICA                   0            128     233
9-12 months    MAL-ED           SOUTH AFRICA                   1            105     233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            217     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              7     224
9-12 months    PROBIT           BELARUS                        0          12193   12687
9-12 months    PROBIT           BELARUS                        1            494   12687
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            979    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             99    1078
9-12 months    ZVITAMBO         ZIMBABWE                       0           4731    5033
9-12 months    ZVITAMBO         ZIMBABWE                       1            302    5033
12-15 months   COHORTS          GUATEMALA                      0            771     842
12-15 months   COHORTS          GUATEMALA                      1             71     842
12-15 months   Guatemala BSC    GUATEMALA                      0             83      95
12-15 months   Guatemala BSC    GUATEMALA                      1             12      95
12-15 months   JiVitA-4         BANGLADESH                     0           3542    3547
12-15 months   JiVitA-4         BANGLADESH                     1              5    3547
12-15 months   MAL-ED           BANGLADESH                     0            212     212
12-15 months   MAL-ED           BANGLADESH                     1              0     212
12-15 months   MAL-ED           BRAZIL                         0            160     184
12-15 months   MAL-ED           BRAZIL                         1             24     184
12-15 months   MAL-ED           INDIA                          0            224     224
12-15 months   MAL-ED           INDIA                          1              0     224
12-15 months   MAL-ED           NEPAL                          0            230     230
12-15 months   MAL-ED           NEPAL                          1              0     230
12-15 months   MAL-ED           PERU                           0            195     224
12-15 months   MAL-ED           PERU                           1             29     224
12-15 months   MAL-ED           SOUTH AFRICA                   0            126     228
12-15 months   MAL-ED           SOUTH AFRICA                   1            102     228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            219     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              7     226
12-15 months   PROBIT           BELARUS                        0            959    1001
12-15 months   PROBIT           BELARUS                        1             42    1001
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            715     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             71     786
12-15 months   ZVITAMBO         ZIMBABWE                       0           1731    1854
12-15 months   ZVITAMBO         ZIMBABWE                       1            123    1854
15-18 months   COHORTS          GUATEMALA                      0            710     767
15-18 months   COHORTS          GUATEMALA                      1             57     767
15-18 months   JiVitA-4         BANGLADESH                     0           3501    3505
15-18 months   JiVitA-4         BANGLADESH                     1              4    3505
15-18 months   MAL-ED           BANGLADESH                     0            212     212
15-18 months   MAL-ED           BANGLADESH                     1              0     212
15-18 months   MAL-ED           BRAZIL                         0            154     175
15-18 months   MAL-ED           BRAZIL                         1             21     175
15-18 months   MAL-ED           INDIA                          0            224     224
15-18 months   MAL-ED           INDIA                          1              0     224
15-18 months   MAL-ED           NEPAL                          0            227     227
15-18 months   MAL-ED           NEPAL                          1              0     227
15-18 months   MAL-ED           PERU                           0            187     214
15-18 months   MAL-ED           PERU                           1             27     214
15-18 months   MAL-ED           SOUTH AFRICA                   0            125     225
15-18 months   MAL-ED           SOUTH AFRICA                   1            100     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            214     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     220
15-18 months   PROBIT           BELARUS                        0            260     279
15-18 months   PROBIT           BELARUS                        1             19     279
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            597     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             65     662
15-18 months   ZVITAMBO         ZIMBABWE                       0           1112    1196
15-18 months   ZVITAMBO         ZIMBABWE                       1             84    1196
18-21 months   COHORTS          GUATEMALA                      0            711     768
18-21 months   COHORTS          GUATEMALA                      1             57     768
18-21 months   MAL-ED           BANGLADESH                     0            209     209
18-21 months   MAL-ED           BANGLADESH                     1              0     209
18-21 months   MAL-ED           BRAZIL                         0            146     167
18-21 months   MAL-ED           BRAZIL                         1             21     167
18-21 months   MAL-ED           INDIA                          0            224     224
18-21 months   MAL-ED           INDIA                          1              0     224
18-21 months   MAL-ED           NEPAL                          0            227     227
18-21 months   MAL-ED           NEPAL                          1              0     227
18-21 months   MAL-ED           PERU                           0            176     202
18-21 months   MAL-ED           PERU                           1             26     202
18-21 months   MAL-ED           SOUTH AFRICA                   0            130     233
18-21 months   MAL-ED           SOUTH AFRICA                   1            103     233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            202     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     208
18-21 months   PROBIT           BELARUS                        0            206     214
18-21 months   PROBIT           BELARUS                        1              8     214
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             10      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1      11
18-21 months   ZVITAMBO         ZIMBABWE                       0            611     657
18-21 months   ZVITAMBO         ZIMBABWE                       1             46     657
21-24 months   COHORTS          GUATEMALA                      0            767     835
21-24 months   COHORTS          GUATEMALA                      1             68     835
21-24 months   MAL-ED           BANGLADESH                     0            207     207
21-24 months   MAL-ED           BANGLADESH                     1              0     207
21-24 months   MAL-ED           BRAZIL                         0            144     165
21-24 months   MAL-ED           BRAZIL                         1             21     165
21-24 months   MAL-ED           INDIA                          0            224     224
21-24 months   MAL-ED           INDIA                          1              0     224
21-24 months   MAL-ED           NEPAL                          0            227     227
21-24 months   MAL-ED           NEPAL                          1              0     227
21-24 months   MAL-ED           PERU                           0            165     189
21-24 months   MAL-ED           PERU                           1             24     189
21-24 months   MAL-ED           SOUTH AFRICA                   0            131     235
21-24 months   MAL-ED           SOUTH AFRICA                   1            104     235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            199     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              7     206
21-24 months   PROBIT           BELARUS                        0            204     210
21-24 months   PROBIT           BELARUS                        1              6     210
21-24 months   ZVITAMBO         ZIMBABWE                       0            273     303
21-24 months   ZVITAMBO         ZIMBABWE                       1             30     303


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b919bda3-25da-4aca-b3be-1957ab640648/61dca716-7a3a-4310-839e-c1306f9e3a5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b919bda3-25da-4aca-b3be-1957ab640648/61dca716-7a3a-4310-839e-c1306f9e3a5d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b919bda3-25da-4aca-b3be-1957ab640648/61dca716-7a3a-4310-839e-c1306f9e3a5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS          GUATEMALA                      0                    NA                0.7933058    0.7750697   0.8115418
0-3 months     COHORTS          GUATEMALA                      1                    NA                0.8198254    0.7549425   0.8847083
0-3 months     COHORTS          INDIA                          0                    NA                0.8055495    0.7999770   0.8111220
0-3 months     COHORTS          INDIA                          1                    NA                0.7726892    0.7639240   0.7814544
0-3 months     MAL-ED           BRAZIL                         0                    NA                1.0618698    1.0246111   1.0991284
0-3 months     MAL-ED           BRAZIL                         1                    NA                1.0818993    0.9958491   1.1679495
0-3 months     MAL-ED           PERU                           0                    NA                0.9682098    0.9436271   0.9927925
0-3 months     MAL-ED           PERU                           1                    NA                0.9836510    0.8790287   1.0882733
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                0.9432246    0.9117390   0.9747101
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.9374825    0.8921502   0.9828148
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8813898    0.8513474   0.9114322
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9659610    0.7386006   1.1933213
0-3 months     PROBIT           BELARUS                        0                    NA                0.8356996    0.8250996   0.8462995
0-3 months     PROBIT           BELARUS                        1                    NA                0.8342673    0.8184704   0.8500642
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9226678    0.9119223   0.9334134
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9190338    0.8873930   0.9506746
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                0.9515356    0.9462473   0.9568239
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.9253906    0.9041098   0.9466713
3-6 months     COHORTS          GUATEMALA                      0                    NA                0.4554741    0.4438706   0.4670777
3-6 months     COHORTS          GUATEMALA                      1                    NA                0.5018815    0.4576015   0.5461615
3-6 months     COHORTS          INDIA                          0                    NA                0.4758640    0.4712895   0.4804385
3-6 months     COHORTS          INDIA                          1                    NA                0.4982388    0.4889453   0.5075323
3-6 months     MAL-ED           BRAZIL                         0                    NA                0.5824962    0.5479809   0.6170115
3-6 months     MAL-ED           BRAZIL                         1                    NA                0.5526923    0.4831148   0.6222698
3-6 months     MAL-ED           PERU                           0                    NA                0.5058393    0.4861077   0.5255708
3-6 months     MAL-ED           PERU                           1                    NA                0.4423784    0.3824786   0.5022783
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                0.4500446    0.4178887   0.4822004
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.4848352    0.4431162   0.5265542
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4625595    0.4385839   0.4865351
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3003443    0.1414040   0.4592845
3-6 months     PROBIT           BELARUS                        0                    NA                0.6650704    0.6569271   0.6732138
3-6 months     PROBIT           BELARUS                        1                    NA                0.6781326    0.6612880   0.6949773
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4170711    0.4079596   0.4261826
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4449927    0.4165198   0.4734656
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                0.4786144    0.4739343   0.4832946
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.4756080    0.4571516   0.4940645
6-9 months     COHORTS          GUATEMALA                      0                    NA                0.2136533    0.2031888   0.2241177
6-9 months     COHORTS          GUATEMALA                      1                    NA                0.2205928    0.1905793   0.2506063
6-9 months     COHORTS          INDIA                          0                    NA                0.2731650    0.2683905   0.2779395
6-9 months     COHORTS          INDIA                          1                    NA                0.3235952    0.3121349   0.3350555
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                0.2489498    0.2305274   0.2673721
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                0.2071730    0.1431560   0.2711900
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                0.2397993    0.2343919   0.2452068
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                0.2451012    0.2428482   0.2473542
6-9 months     MAL-ED           BRAZIL                         0                    NA                0.3856874    0.3577003   0.4136745
6-9 months     MAL-ED           BRAZIL                         1                    NA                0.3677433    0.2966196   0.4388669
6-9 months     MAL-ED           PERU                           0                    NA                0.2606412    0.2444956   0.2767868
6-9 months     MAL-ED           PERU                           1                    NA                0.2665851    0.2159503   0.3172200
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                0.2543345    0.2260020   0.2826671
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.2655600    0.2341366   0.2969834
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2351655    0.2109242   0.2594069
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3549726    0.2006319   0.5093134
6-9 months     PROBIT           BELARUS                        0                    NA                0.4741924    0.4652068   0.4831781
6-9 months     PROBIT           BELARUS                        1                    NA                0.4622126    0.4431502   0.4812750
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2541992    0.2450549   0.2633436
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2768775    0.2420754   0.3116796
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                0.2586151    0.2540074   0.2632228
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.2574809    0.2366821   0.2782796
9-12 months    COHORTS          GUATEMALA                      0                    NA                0.1568000    0.1475275   0.1660726
9-12 months    COHORTS          GUATEMALA                      1                    NA                0.1254627    0.0920421   0.1588833
9-12 months    COHORTS          INDIA                          0                    NA                0.2138449    0.2088982   0.2187916
9-12 months    COHORTS          INDIA                          1                    NA                0.2070675    0.1975004   0.2166346
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                0.2044844    0.1819960   0.2269729
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                0.2293271    0.1747666   0.2838876
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                0.1544672    0.1500909   0.1588436
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                0.1523985    0.1481944   0.1566027
9-12 months    MAL-ED           BRAZIL                         0                    NA                0.2783588    0.2473103   0.3094072
9-12 months    MAL-ED           BRAZIL                         1                    NA                0.3231478    0.2003081   0.4459874
9-12 months    MAL-ED           PERU                           0                    NA                0.1906604    0.1741233   0.2071974
9-12 months    MAL-ED           PERU                           1                    NA                0.1648936    0.1259366   0.2038507
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.2051516    0.1769461   0.2333572
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.2262167    0.1914417   0.2609918
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1664599    0.1457901   0.1871296
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1801852    0.0866910   0.2736793
9-12 months    PROBIT           BELARUS                        0                    NA                0.3669655    0.3522635   0.3816675
9-12 months    PROBIT           BELARUS                        1                    NA                0.3597252    0.3409599   0.3784905
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2058990    0.1954894   0.2163087
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1924881    0.1540135   0.2309627
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.1813618    0.1766593   0.1860643
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1536765    0.1370561   0.1702968
12-15 months   COHORTS          GUATEMALA                      0                    NA                0.1503526    0.1404856   0.1602196
12-15 months   COHORTS          GUATEMALA                      1                    NA                0.1570468    0.1236778   0.1904158
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                0.1964102    0.1673314   0.2254891
12-15 months   Guatemala BSC    GUATEMALA                      1                    NA                0.1907551    0.1086380   0.2728722
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                0.1302003    0.1259962   0.1344043
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                0.2594121    0.2555025   0.2633216
12-15 months   MAL-ED           BRAZIL                         0                    NA                0.2046998    0.1784786   0.2309210
12-15 months   MAL-ED           BRAZIL                         1                    NA                0.2468264    0.1732307   0.3204222
12-15 months   MAL-ED           PERU                           0                    NA                0.1385092    0.1203797   0.1566386
12-15 months   MAL-ED           PERU                           1                    NA                0.1634569    0.1223073   0.2046065
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.1838083    0.1508324   0.2167841
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1963623    0.1573587   0.2353659
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1575278    0.1326510   0.1824046
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2193927    0.0513147   0.3874707
12-15 months   PROBIT           BELARUS                        0                    NA                0.2214054    0.1448648   0.2979460
12-15 months   PROBIT           BELARUS                        1                    NA                0.2480425    0.0648097   0.4312753
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1719610    0.1600982   0.1838239
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1915399    0.1533932   0.2296866
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1485563    0.1402806   0.1568320
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1678900    0.1388272   0.1969527
15-18 months   COHORTS          GUATEMALA                      0                    NA                0.1385581    0.1269420   0.1501742
15-18 months   COHORTS          GUATEMALA                      1                    NA                0.1459167    0.1045907   0.1872426
15-18 months   MAL-ED           BRAZIL                         0                    NA                0.2084590    0.1789637   0.2379543
15-18 months   MAL-ED           BRAZIL                         1                    NA                0.1664631    0.1197564   0.2131699
15-18 months   MAL-ED           PERU                           0                    NA                0.1453002    0.1254599   0.1651405
15-18 months   MAL-ED           PERU                           1                    NA                0.1523436    0.0935048   0.2111824
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.2099225    0.1734351   0.2464100
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2407203    0.1962831   0.2851576
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1447529    0.1212835   0.1682223
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0732286   -0.0012679   0.1477251
15-18 months   PROBIT           BELARUS                        0                    NA                0.2256047    0.1605215   0.2906879
15-18 months   PROBIT           BELARUS                        1                    NA                0.2075999    0.1891325   0.2260674
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1723455    0.1574921   0.1871989
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1506178    0.1006679   0.2005677
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1351454    0.1241678   0.1461229
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1153462    0.0732631   0.1574294
18-21 months   COHORTS          GUATEMALA                      0                    NA                0.1646793    0.1535267   0.1758319
18-21 months   COHORTS          GUATEMALA                      1                    NA                0.1485657    0.1041838   0.1929477
18-21 months   MAL-ED           BRAZIL                         0                    NA                0.1608315    0.1349947   0.1866683
18-21 months   MAL-ED           BRAZIL                         1                    NA                0.1593812    0.0919977   0.2267648
18-21 months   MAL-ED           PERU                           0                    NA                0.1575850    0.1369861   0.1781838
18-21 months   MAL-ED           PERU                           1                    NA                0.1885085    0.1420841   0.2349330
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.1904406    0.1543730   0.2265082
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1602168    0.1212571   0.1991764
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1467392    0.1214408   0.1720376
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1333784   -0.0049223   0.2716792
18-21 months   PROBIT           BELARUS                        0                    NA                0.1755919    0.0142976   0.3368861
18-21 months   PROBIT           BELARUS                        1                    NA                0.2442974    0.2161038   0.2724911
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1233168    0.1058990   0.1407346
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0895577    0.0149056   0.1642098
21-24 months   COHORTS          GUATEMALA                      0                    NA                0.1893724    0.1788615   0.1998832
21-24 months   COHORTS          GUATEMALA                      1                    NA                0.1267778    0.0890716   0.1644840
21-24 months   MAL-ED           BRAZIL                         0                    NA                0.1465335    0.1206105   0.1724564
21-24 months   MAL-ED           BRAZIL                         1                    NA                0.1226209    0.0782199   0.1670219
21-24 months   MAL-ED           PERU                           0                    NA                0.1843406    0.1626496   0.2060316
21-24 months   MAL-ED           PERU                           1                    NA                0.1617116    0.1187780   0.2046452
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.1967906    0.1676652   0.2259160
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1761502    0.1370958   0.2152045
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1437536    0.1153756   0.1721316
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0720988   -0.0244394   0.1686370
21-24 months   PROBIT           BELARUS                        0                    NA                0.1715392    0.0857454   0.2573330
21-24 months   PROBIT           BELARUS                        1                    NA                0.2968968   -0.0405634   0.6343569
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1066044    0.0770842   0.1361245
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1317442    0.0469008   0.2165876


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7949250   0.7773441   0.8125059
0-3 months     COHORTS          INDIA                          NA                   NA                0.8055016   0.8000639   0.8109393
0-3 months     MAL-ED           BRAZIL                         NA                   NA                1.0647180   1.0304826   1.0989534
0-3 months     MAL-ED           PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9407758   0.9143190   0.9672326
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     PROBIT           BELARUS                        NA                   NA                0.8356412   0.8250517   0.8462307
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9223238   0.9121447   0.9325029
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.9498981   0.9447631   0.9550331
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4590251   0.4477522   0.4702979
3-6 months     COHORTS          INDIA                          NA                   NA                0.4759008   0.4714346   0.4803671
3-6 months     MAL-ED           BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED           PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4655071   0.4396676   0.4913465
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     PROBIT           BELARUS                        NA                   NA                0.6655962   0.6576122   0.6735801
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4195665   0.4108794   0.4282536
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.4784272   0.4738904   0.4829639
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2142152   0.2042949   0.2241356
6-9 months     COHORTS          INDIA                          NA                   NA                0.2732578   0.2685935   0.2779222
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                0.2446145   0.2267346   0.2624943
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                0.2398097   0.2345358   0.2450835
6-9 months     MAL-ED           BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     MAL-ED           PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     PROBIT           BELARUS                        NA                   NA                0.4737281   0.4649839   0.4824723
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2562124   0.2473195   0.2651053
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.2585454   0.2540360   0.2630548
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1542514   0.1452918   0.1632110
9-12 months    COHORTS          INDIA                          NA                   NA                0.2138304   0.2090015   0.2186594
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.2071701   0.1862339   0.2281064
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1544637   0.1501926   0.1587348
9-12 months    MAL-ED           BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    MAL-ED           PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    PROBIT           BELARUS                        NA                   NA                0.3666836   0.3521958   0.3811713
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2046674   0.1945724   0.2147625
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1797006   0.1751655   0.1842357
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1509171   0.1414532   0.1603809
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1956959   0.1682516   0.2231402
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1303824   0.1262709   0.1344939
12-15 months   MAL-ED           BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   MAL-ED           PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   PROBIT           BELARUS                        NA                   NA                0.2225230   0.1483776   0.2966684
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1737296   0.1623947   0.1850645
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1498389   0.1418723   0.1578056
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1391050   0.1279213   0.1502886
15-18 months   MAL-ED           BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED           PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   PROBIT           BELARUS                        NA                   NA                0.2243786   0.1636115   0.2851457
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702121   0.1559390   0.1844852
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1337548   0.1231250   0.1443846
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1634834   0.1526417   0.1743251
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED           PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   PROBIT           BELARUS                        NA                   NA                0.1781603   0.0230043   0.3333163
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1209531   0.1039197   0.1379866
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1842749   0.1740770   0.1944727
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED           PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   PROBIT           BELARUS                        NA                   NA                0.1751208   0.0912401   0.2590016
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090935   0.0811882   0.1369987


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      1                    0                  0.0265196   -0.0408773    0.0939166
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                 -0.0328602   -0.0432468   -0.0224736
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                  0.0200295   -0.0737406    0.1137997
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    0                  0.0154412   -0.0920303    0.1229128
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                 -0.0057420   -0.0609358    0.0494518
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0845712   -0.1447654    0.3139078
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                 -0.0014323   -0.0135661    0.0107016
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0036340   -0.0370497    0.0297817
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0261450   -0.0480730   -0.0042170
3-6 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      1                    0                  0.0464074    0.0006323    0.0921825
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                  0.0223748    0.0120164    0.0327331
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                 -0.0298039   -0.1074720    0.0478642
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    0                 -0.0634609   -0.1265269   -0.0003948
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0347906   -0.0178826    0.0874639
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1622152   -0.3229536   -0.0014769
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                  0.0130622   -0.0044304    0.0305548
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0279216   -0.0019736    0.0578168
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0030064   -0.0220470    0.0160342
6-9 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      1                    0                  0.0069395   -0.0248459    0.0387250
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                  0.0504302    0.0380151    0.0628453
6-9 months     Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      1                    0                 -0.0417768   -0.1083918    0.0248382
6-9 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    0                  0.0053019   -0.0005226    0.0111263
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                 -0.0179442   -0.0943761    0.0584878
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    0                  0.0059439   -0.0472027    0.0590906
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0112254   -0.0310849    0.0535358
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1198071   -0.0364258    0.2760399
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                 -0.0119799   -0.0325698    0.0086101
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0226783   -0.0133051    0.0586616
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0011342   -0.0224373    0.0201688
9-12 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      1                    0                 -0.0313373   -0.0660204    0.0033458
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.0067774   -0.0175477    0.0039929
9-12 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      1                    0                  0.0248427   -0.0341707    0.0838560
9-12 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0020687   -0.0080629    0.0039254
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                  0.0447890   -0.0819138    0.1714918
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    0                 -0.0257667   -0.0680884    0.0165550
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.0210651   -0.0237105    0.0658407
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0137253   -0.0820264    0.1094770
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                 -0.0072403   -0.0251704    0.0106898
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0134109   -0.0532689    0.0264470
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.0276853   -0.0449582   -0.0104125
12-15 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      1                    0                  0.0066942   -0.0281030    0.0414914
12-15 months   Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      1                    0                 -0.0056552   -0.0927688    0.0814585
12-15 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    0                  0.1292118    0.1236891    0.1347345
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                  0.0421266   -0.0360007    0.1202540
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    0                  0.0249477   -0.0200186    0.0699140
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0125540   -0.0385213    0.0636294
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0618649   -0.1080441    0.2317739
12-15 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        1                    0                  0.0266371   -0.1677172    0.2209915
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0195789   -0.0203698    0.0595276
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0193337   -0.0108844    0.0495517
15-18 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      1                    0                  0.0073586   -0.0355690    0.0502861
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                 -0.0419959   -0.0972362    0.0132444
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    0                  0.0070434   -0.0550504    0.0691372
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0307978   -0.0267001    0.0882956
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0715243   -0.1496302    0.0065816
15-18 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        1                    0                 -0.0180048   -0.0853515    0.0493419
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0217276   -0.0738392    0.0303839
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0197991   -0.0632905    0.0236922
18-21 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      1                    0                 -0.0161136   -0.0618753    0.0296482
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                 -0.0014503   -0.0736173    0.0707168
18-21 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    0                  0.0309235   -0.0198656    0.0817127
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0302238   -0.0833155    0.0228679
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0133608   -0.1539563    0.1272347
18-21 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        1                    0                  0.0687056   -0.0959226    0.2333338
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0337591   -0.1104163    0.0428980
21-24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      1                    0                 -0.0625946   -0.1017384   -0.0234508
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                 -0.0239126   -0.0753270    0.0275019
21-24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    0                 -0.0226290   -0.0707309    0.0254728
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0206404   -0.0693594    0.0280785
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0716548   -0.1722775    0.0289679
21-24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        1                    0                  0.1253576   -0.2241769    0.4748920
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0251398   -0.0646924    0.1149721


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      0                    NA                 0.0016192   -0.0025214    0.0057599
0-3 months     COHORTS          INDIA                          0                    NA                -0.0000479   -0.0003100    0.0002142
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.0028482   -0.0105185    0.0162150
0-3 months     MAL-ED           PERU                           0                    NA                 0.0018617   -0.0111092    0.0148326
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0024488   -0.0259898    0.0210922
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0032116   -0.0057383    0.0121614
0-3 months     PROBIT           BELARUS                        0                    NA                -0.0000584   -0.0005526    0.0004358
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003440   -0.0035078    0.0028197
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0016375   -0.0030177   -0.0002572
3-6 months     COHORTS          GUATEMALA                      0                    NA                 0.0035510   -0.0000602    0.0071621
3-6 months     COHORTS          INDIA                          0                    NA                 0.0000368   -0.0002234    0.0002970
3-6 months     MAL-ED           BRAZIL                         0                    NA                -0.0042986   -0.0155912    0.0069939
3-6 months     MAL-ED           PERU                           0                    NA                -0.0076058   -0.0155598    0.0003482
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0154625   -0.0080489    0.0389740
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0054298   -0.0119635    0.0011039
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0005257   -0.0001671    0.0012186
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0024954   -0.0002038    0.0051946
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0001873   -0.0013733    0.0009988
6-9 months     COHORTS          GUATEMALA                      0                    NA                 0.0005619   -0.0020154    0.0031393
6-9 months     COHORTS          INDIA                          0                    NA                 0.0000928   -0.0002241    0.0004098
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                -0.0043353   -0.0114587    0.0027881
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0000104   -0.0001353    0.0001561
6-9 months     MAL-ED           BRAZIL                         0                    NA                -0.0025376   -0.0133813    0.0083062
6-9 months     MAL-ED           PERU                           0                    NA                 0.0007521   -0.0059772    0.0074813
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0050539   -0.0140086    0.0241163
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0031949   -0.0016782    0.0080679
6-9 months     PROBIT           BELARUS                        0                    NA                -0.0004643   -0.0012536    0.0003250
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0020131   -0.0011979    0.0052241
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0000697   -0.0013786    0.0012392
9-12 months    COHORTS          GUATEMALA                      0                    NA                -0.0025486   -0.0054261    0.0003288
9-12 months    COHORTS          INDIA                          0                    NA                -0.0000145   -0.0002839    0.0002550
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0026857   -0.0037908    0.0091622
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0000035   -0.0001539    0.0001468
9-12 months    MAL-ED           BRAZIL                         0                    NA                 0.0062335   -0.0115355    0.0240025
9-12 months    MAL-ED           PERU                           0                    NA                -0.0031797   -0.0085141    0.0021546
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0094929   -0.0107300    0.0297157
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004289   -0.0025797    0.0034375
9-12 months    PROBIT           BELARUS                        0                    NA                -0.0002819   -0.0009674    0.0004036
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0012316   -0.0048993    0.0024361
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0016612   -0.0027135   -0.0006090
12-15 months   COHORTS          GUATEMALA                      0                    NA                 0.0005645   -0.0023724    0.0035014
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                -0.0007143   -0.0117247    0.0102961
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0001821   -0.0000067    0.0003710
12-15 months   MAL-ED           BRAZIL                         0                    NA                 0.0054948   -0.0049010    0.0158905
12-15 months   MAL-ED           PERU                           0                    NA                 0.0032298   -0.0026946    0.0091542
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0056163   -0.0172476    0.0284802
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0019162   -0.0035296    0.0073620
12-15 months   PROBIT           BELARUS                        0                    NA                 0.0011176   -0.0070689    0.0093041
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017686   -0.0018613    0.0053985
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012827   -0.0007340    0.0032993
15-18 months   COHORTS          GUATEMALA                      0                    NA                 0.0005469   -0.0026463    0.0037400
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0050395   -0.0119715    0.0018925
15-18 months   MAL-ED           PERU                           0                    NA                 0.0008886   -0.0069519    0.0087292
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0136879   -0.0119452    0.0393210
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019507   -0.0045809    0.0006796
15-18 months   PROBIT           BELARUS                        0                    NA                -0.0012261   -0.0057745    0.0033222
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0021334   -0.0072738    0.0030070
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0013906   -0.0044586    0.0016774
18-21 months   COHORTS          GUATEMALA                      0                    NA                -0.0011959   -0.0046054    0.0022136
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0001824   -0.0092576    0.0088928
18-21 months   MAL-ED           PERU                           0                    NA                 0.0039803   -0.0027119    0.0106724
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0133607   -0.0369098    0.0101883
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003854   -0.0044525    0.0036817
18-21 months   PROBIT           BELARUS                        0                    NA                 0.0025684   -0.0039375    0.0090744
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0023637   -0.0077711    0.0030438
21-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0050975   -0.0084904   -0.0017046
21-24 months   MAL-ED           BRAZIL                         0                    NA                -0.0030434   -0.0096998    0.0036129
21-24 months   MAL-ED           PERU                           0                    NA                -0.0028735   -0.0090759    0.0033289
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0091345   -0.0307352    0.0124662
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0024349   -0.0062884    0.0014186
21-24 months   PROBIT           BELARUS                        0                    NA                 0.0035816   -0.0122334    0.0193966
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0024891   -0.0064454    0.0114236
