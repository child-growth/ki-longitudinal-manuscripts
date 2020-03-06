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
0-3 months     COHORTS          GUATEMALA                      0            632     676
0-3 months     COHORTS          GUATEMALA                      1             44     676
0-3 months     COHORTS          INDIA                          0           4655    4662
0-3 months     COHORTS          INDIA                          1              7    4662
0-3 months     MAL-ED           BANGLADESH                     0            243     243
0-3 months     MAL-ED           BANGLADESH                     1              0     243
0-3 months     MAL-ED           BRAZIL                         0            145     168
0-3 months     MAL-ED           BRAZIL                         1             23     168
0-3 months     MAL-ED           INDIA                          0            182     182
0-3 months     MAL-ED           INDIA                          1              0     182
0-3 months     MAL-ED           NEPAL                          0            156     156
0-3 months     MAL-ED           NEPAL                          1              0     156
0-3 months     MAL-ED           PERU                           0            234     265
0-3 months     MAL-ED           PERU                           1             31     265
0-3 months     MAL-ED           SOUTH AFRICA                   0            122     211
0-3 months     MAL-ED           SOUTH AFRICA                   1             89     211
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            219     228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     228
0-3 months     PROBIT           BELARUS                        0          14698   15323
0-3 months     PROBIT           BELARUS                        1            625   15323
0-3 months     ZVITAMBO         ZIMBABWE                       0           7453    7953
0-3 months     ZVITAMBO         ZIMBABWE                       1            500    7953
3-6 months     COHORTS          GUATEMALA                      0            696     754
3-6 months     COHORTS          GUATEMALA                      1             58     754
3-6 months     COHORTS          INDIA                          0           4711    4719
3-6 months     COHORTS          INDIA                          1              8    4719
3-6 months     MAL-ED           BANGLADESH                     0            231     231
3-6 months     MAL-ED           BANGLADESH                     1              0     231
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
3-6 months     PROBIT           BELARUS                        0          12772   13308
3-6 months     PROBIT           BELARUS                        1            536   13308
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1504    1652
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            148    1652
3-6 months     ZVITAMBO         ZIMBABWE                       0           5774    6157
3-6 months     ZVITAMBO         ZIMBABWE                       1            383    6157
6-9 months     COHORTS          GUATEMALA                      0            713     776
6-9 months     COHORTS          GUATEMALA                      1             63     776
6-9 months     COHORTS          INDIA                          0           4321    4329
6-9 months     COHORTS          INDIA                          1              8    4329
6-9 months     Guatemala BSC    GUATEMALA                      0            189     211
6-9 months     Guatemala BSC    GUATEMALA                      1             22     211
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
6-9 months     PROBIT           BELARUS                        0          11944   12426
6-9 months     PROBIT           BELARUS                        1            482   12426
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1347    1479
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            132    1479
6-9 months     ZVITAMBO         ZIMBABWE                       0           5546    5907
6-9 months     ZVITAMBO         ZIMBABWE                       1            361    5907
9-12 months    COHORTS          GUATEMALA                      0            801     872
9-12 months    COHORTS          GUATEMALA                      1             71     872
9-12 months    COHORTS          INDIA                          0           3717    3725
9-12 months    COHORTS          INDIA                          1              8    3725
9-12 months    Guatemala BSC    GUATEMALA                      0            166     185
9-12 months    Guatemala BSC    GUATEMALA                      1             19     185
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
9-12 months    PROBIT           BELARUS                        0          12187   12681
9-12 months    PROBIT           BELARUS                        1            494   12681
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            978    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             98    1076
9-12 months    ZVITAMBO         ZIMBABWE                       0           5563    5910
9-12 months    ZVITAMBO         ZIMBABWE                       1            347    5910
12-15 months   COHORTS          GUATEMALA                      0            765     836
12-15 months   COHORTS          GUATEMALA                      1             71     836
12-15 months   Guatemala BSC    GUATEMALA                      0             84      96
12-15 months   Guatemala BSC    GUATEMALA                      1             12      96
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
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            716     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             70     786
12-15 months   ZVITAMBO         ZIMBABWE                       0           2388    2543
12-15 months   ZVITAMBO         ZIMBABWE                       1            155    2543
15-18 months   COHORTS          GUATEMALA                      0            701     757
15-18 months   COHORTS          GUATEMALA                      1             56     757
15-18 months   MAL-ED           BANGLADESH                     0            212     212
15-18 months   MAL-ED           BANGLADESH                     1              0     212
15-18 months   MAL-ED           BRAZIL                         0            154     175
15-18 months   MAL-ED           BRAZIL                         1             21     175
15-18 months   MAL-ED           INDIA                          0            224     224
15-18 months   MAL-ED           INDIA                          1              0     224
15-18 months   MAL-ED           NEPAL                          0            227     227
15-18 months   MAL-ED           NEPAL                          1              0     227
15-18 months   MAL-ED           PERU                           0            186     213
15-18 months   MAL-ED           PERU                           1             27     213
15-18 months   MAL-ED           SOUTH AFRICA                   0            125     225
15-18 months   MAL-ED           SOUTH AFRICA                   1            100     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            211     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     217
15-18 months   PROBIT           BELARUS                        0            256     275
15-18 months   PROBIT           BELARUS                        1             19     275
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            596     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             66     662
15-18 months   ZVITAMBO         ZIMBABWE                       0           1909    2032
15-18 months   ZVITAMBO         ZIMBABWE                       1            123    2032
18-21 months   COHORTS          GUATEMALA                      0            697     751
18-21 months   COHORTS          GUATEMALA                      1             54     751
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            198     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     204
18-21 months   PROBIT           BELARUS                        0            210     218
18-21 months   PROBIT           BELARUS                        1              8     218
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              8       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       9
18-21 months   ZVITAMBO         ZIMBABWE                       0           1501    1592
18-21 months   ZVITAMBO         ZIMBABWE                       1             91    1592
21-24 months   COHORTS          GUATEMALA                      0            754     821
21-24 months   COHORTS          GUATEMALA                      1             67     821
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            198     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     204
21-24 months   PROBIT           BELARUS                        0            203     209
21-24 months   PROBIT           BELARUS                        1              6     209
21-24 months   ZVITAMBO         ZIMBABWE                       0           1099    1167
21-24 months   ZVITAMBO         ZIMBABWE                       1             68    1167


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
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

* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/3e938caa-1017-459c-a6df-321a897f16cf/e2fb23d6-c1b2-4262-9262-01664b205700/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3e938caa-1017-459c-a6df-321a897f16cf/e2fb23d6-c1b2-4262-9262-01664b205700/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3e938caa-1017-459c-a6df-321a897f16cf/e2fb23d6-c1b2-4262-9262-01664b205700/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS          GUATEMALA                      0                    NA                2.5881031    2.5412475   2.6349588
0-3 months     COHORTS          GUATEMALA                      1                    NA                2.6307619    2.4850536   2.7764702
0-3 months     COHORTS          INDIA                          0                    NA                3.4937576    3.4766632   3.5108521
0-3 months     COHORTS          INDIA                          1                    NA                3.3233945    3.3058170   3.3409721
0-3 months     MAL-ED           BRAZIL                         0                    NA                3.7627570    3.6431974   3.8823166
0-3 months     MAL-ED           BRAZIL                         1                    NA                4.0253072    3.7558305   4.2947839
0-3 months     MAL-ED           PERU                           0                    NA                3.0562769    2.9853938   3.1271600
0-3 months     MAL-ED           PERU                           1                    NA                3.0193197    2.8284921   3.2101473
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                3.2285246    3.1030967   3.3539526
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                3.1176822    2.9660698   3.2692946
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2710348    3.1936231   3.3484464
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                3.1054657    2.6067914   3.6041401
0-3 months     PROBIT           BELARUS                        0                    NA                2.8126229    2.6993308   2.9259150
0-3 months     PROBIT           BELARUS                        1                    NA                2.8316916    2.6880632   2.9753200
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                3.3438658    3.3227053   3.3650263
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                3.2513957    3.1666531   3.3361382
3-6 months     COHORTS          GUATEMALA                      0                    NA                1.7492401    1.7163974   1.7820828
3-6 months     COHORTS          GUATEMALA                      1                    NA                1.8199604    1.7049608   1.9349600
3-6 months     COHORTS          INDIA                          0                    NA                1.8568411    1.8425130   1.8711692
3-6 months     COHORTS          INDIA                          1                    NA                2.1076789    2.0752386   2.1401193
3-6 months     MAL-ED           BRAZIL                         0                    NA                2.1574240    2.0698552   2.2449927
3-6 months     MAL-ED           BRAZIL                         1                    NA                2.0787831    1.9027213   2.2548449
3-6 months     MAL-ED           PERU                           0                    NA                2.0261058    1.9543750   2.0978367
3-6 months     MAL-ED           PERU                           1                    NA                1.9391328    1.7749751   2.1032906
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                1.9357570    1.8365908   2.0349232
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                2.0137626    1.8816213   2.1459039
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8277484    1.7588679   1.8966290
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8977087    1.5100436   2.2853737
3-6 months     PROBIT           BELARUS                        0                    NA                2.0910880    2.0494900   2.1326861
3-6 months     PROBIT           BELARUS                        1                    NA                2.1027613    2.0110266   2.1944959
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7908470    1.7532485   1.8284455
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8087200    1.6895827   1.9278572
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                1.9731413    1.9526981   1.9935845
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                2.0147272    1.9410074   2.0884470
6-9 months     COHORTS          GUATEMALA                      0                    NA                1.0986942    1.0695219   1.1278665
6-9 months     COHORTS          GUATEMALA                      1                    NA                1.1683111    1.0719482   1.2646741
6-9 months     COHORTS          INDIA                          0                    NA                1.1818785    1.1686603   1.1950967
6-9 months     COHORTS          INDIA                          1                    NA                1.2534354    1.2370561   1.2698148
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                1.1797674    1.1322230   1.2273118
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                1.1083024    0.9960728   1.2205320
6-9 months     MAL-ED           BRAZIL                         0                    NA                1.4577383    1.3792982   1.5361784
6-9 months     MAL-ED           BRAZIL                         1                    NA                1.6371946    1.3320945   1.9422948
6-9 months     MAL-ED           PERU                           0                    NA                1.3286937    1.2698129   1.3875745
6-9 months     MAL-ED           PERU                           1                    NA                1.2599578    1.1232960   1.3966195
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                1.3708770    1.2910402   1.4507138
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.3843123    1.2805403   1.4880843
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1917318    1.1124599   1.2710037
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1551243    0.7772373   1.5330114
6-9 months     PROBIT           BELARUS                        0                    NA                1.5734392    1.5431569   1.6037216
6-9 months     PROBIT           BELARUS                        1                    NA                1.6552395    1.5573405   1.7531385
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3283181    1.2897930   1.3668432
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2836701    1.1667963   1.4005439
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                1.3517815    1.3319711   1.3715918
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                1.2774775    1.2056950   1.3492599
9-12 months    COHORTS          GUATEMALA                      0                    NA                0.9483287    0.9218173   0.9748400
9-12 months    COHORTS          GUATEMALA                      1                    NA                0.9106063    0.8118539   1.0093586
9-12 months    COHORTS          INDIA                          0                    NA                0.9847814    0.9705291   0.9990338
9-12 months    COHORTS          INDIA                          1                    NA                0.8523361    0.8317512   0.8729209
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                1.0398521    0.9987032   1.0810009
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                1.0275140    0.8961420   1.1588860
9-12 months    MAL-ED           BRAZIL                         0                    NA                1.3085769    1.2366043   1.3805496
9-12 months    MAL-ED           BRAZIL                         1                    NA                1.2344185    0.9423784   1.5264587
9-12 months    MAL-ED           PERU                           0                    NA                1.0908889    1.0361937   1.1455841
9-12 months    MAL-ED           PERU                           1                    NA                1.1526655    1.0154002   1.2899308
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.9651433    0.8777087   1.0525780
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                1.0742817    0.9789237   1.1696396
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8071688    0.7245435   0.8897941
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9972118    0.5951044   1.3993193
9-12 months    PROBIT           BELARUS                        0                    NA                1.3719982    1.3215452   1.4224511
9-12 months    PROBIT           BELARUS                        1                    NA                1.3705410    1.2916092   1.4494727
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0824215    1.0464860   1.1183570
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1189724    1.0125543   1.2253904
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                1.0771664    1.0586307   1.0957022
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                1.1416261    1.0725607   1.2106915
12-15 months   COHORTS          GUATEMALA                      0                    NA                0.7965294    0.7685555   0.8245032
12-15 months   COHORTS          GUATEMALA                      1                    NA                0.7112572    0.6198290   0.8026854
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                0.9990557    0.9367269   1.0613845
12-15 months   Guatemala BSC    GUATEMALA                      1                    NA                1.0771534    0.8669218   1.2873851
12-15 months   MAL-ED           BRAZIL                         0                    NA                1.1573514    1.0935119   1.2211909
12-15 months   MAL-ED           BRAZIL                         1                    NA                1.0410174    0.8933506   1.1886842
12-15 months   MAL-ED           PERU                           0                    NA                0.8834580    0.8327039   0.9342120
12-15 months   MAL-ED           PERU                           1                    NA                0.9473365    0.8429110   1.0517620
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.9569889    0.8904072   1.0235705
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8734796    0.7750368   0.9719223
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8523791    0.7870800   0.9176781
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9807716    0.6181885   1.3433546
12-15 months   PROBIT           BELARUS                        0                    NA                1.1989109    0.8605189   1.5373028
12-15 months   PROBIT           BELARUS                        1                    NA                0.9135878    0.4095171   1.4176584
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9272632    0.8886908   0.9658357
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9796275    0.8539388   1.1053163
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.9215193    0.8937307   0.9493079
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.9077688    0.7975574   1.0179802
15-18 months   COHORTS          GUATEMALA                      0                    NA                0.7340058    0.7025922   0.7654193
15-18 months   COHORTS          GUATEMALA                      1                    NA                0.8494923    0.7423343   0.9566503
15-18 months   MAL-ED           BRAZIL                         0                    NA                1.0123671    0.9500060   1.0747282
15-18 months   MAL-ED           BRAZIL                         1                    NA                0.9269026    0.7470860   1.1067193
15-18 months   MAL-ED           PERU                           0                    NA                0.8566762    0.8097967   0.9035557
15-18 months   MAL-ED           PERU                           1                    NA                0.8310730    0.7478465   0.9142994
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8949700    0.8232758   0.9666642
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8773755    0.7999141   0.9548368
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6963717    0.6354932   0.7572502
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3483119   -0.1147398   0.8113637
15-18 months   PROBIT           BELARUS                        0                    NA                1.0221139    0.5518189   1.4924089
15-18 months   PROBIT           BELARUS                        1                    NA                1.1941234    1.1247404   1.2635064
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9426140    0.8977364   0.9874916
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8883241    0.7715359   1.0051123
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.8000498    0.7689581   0.8311416
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.7646061    0.6636767   0.8655355
18-21 months   COHORTS          GUATEMALA                      0                    NA                0.7496952    0.7195390   0.7798513
18-21 months   COHORTS          GUATEMALA                      1                    NA                0.7397851    0.6283436   0.8512266
18-21 months   MAL-ED           BRAZIL                         0                    NA                0.9247635    0.8473977   1.0021293
18-21 months   MAL-ED           BRAZIL                         1                    NA                0.8556759    0.6913159   1.0200360
18-21 months   MAL-ED           PERU                           0                    NA                0.8424766    0.7942447   0.8907085
18-21 months   MAL-ED           PERU                           1                    NA                0.8344533    0.7172967   0.9516099
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.7676279    0.6908314   0.8444244
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8005489    0.7207108   0.8803871
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7365600    0.6694071   0.8037130
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9794486    0.4122749   1.5466223
18-21 months   PROBIT           BELARUS                        0                    NA                0.8930082    0.2588882   1.5271282
18-21 months   PROBIT           BELARUS                        1                    NA                0.9432774    0.9046799   0.9818748
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.6807977    0.6460441   0.7155514
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.7155196    0.5646202   0.8664189
21-24 months   COHORTS          GUATEMALA                      0                    NA                0.6874934    0.6624588   0.7125279
21-24 months   COHORTS          GUATEMALA                      1                    NA                0.5803118    0.5014065   0.6592170
21-24 months   MAL-ED           BRAZIL                         0                    NA                0.8078592    0.7666129   0.8491054
21-24 months   MAL-ED           BRAZIL                         1                    NA                0.7158735    0.5198494   0.9118976
21-24 months   MAL-ED           PERU                           0                    NA                0.7751591    0.7259705   0.8243476
21-24 months   MAL-ED           PERU                           1                    NA                0.6640546    0.5216968   0.8064124
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8157571    0.7529774   0.8785368
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8693956    0.7844407   0.9543504
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7272737    0.6616295   0.7929180
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4436808    0.1849372   0.7024244
21-24 months   PROBIT           BELARUS                        0                    NA                0.9276005    0.4525135   1.4026875
21-24 months   PROBIT           BELARUS                        1                    NA                0.5378204   -0.8759402   1.9515809
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.6884803    0.6485766   0.7283840
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.7225496    0.6133333   0.8317659


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5908797   2.5460519   2.6357075
0-3 months     COHORTS          INDIA                          NA                   NA                3.4935018   3.4768279   3.5101758
0-3 months     MAL-ED           BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     MAL-ED           PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     PROBIT           BELARUS                        NA                   NA                2.8134007   2.6999348   2.9268665
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3380523   3.3175130   3.3585915
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7546801   1.7230708   1.7862894
3-6 months     COHORTS          INDIA                          NA                   NA                1.8572663   1.8432699   1.8712628
3-6 months     MAL-ED           BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED           PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     PROBIT           BELARUS                        NA                   NA                2.0915582   2.0504573   2.1326590
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7924482   1.7565918   1.8283046
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9757282   1.9560142   1.9954421
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1043461   1.0763917   1.1323005
6-9 months     COHORTS          INDIA                          NA                   NA                1.1820108   1.1691162   1.1949053
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                1.1723161   1.1280519   1.2165803
6-9 months     MAL-ED           BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED           PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     PROBIT           BELARUS                        NA                   NA                1.5766123   1.5455111   1.6077135
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3243333   1.2877231   1.3609435
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3472405   1.3281251   1.3663559
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9452572   0.9196023   0.9709122
9-12 months    COHORTS          INDIA                          NA                   NA                0.9844970   0.9705900   0.9984039
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                1.0385849   0.9992705   1.0778993
9-12 months    MAL-ED           BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED           PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    PROBIT           BELARUS                        NA                   NA                1.3719414   1.3218894   1.4219934
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0857505   1.0516744   1.1198266
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0809511   1.0630344   1.0988678
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7892873   0.7624890   0.8160857
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                1.0088179   0.9480568   1.0695791
12-15 months   MAL-ED           BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED           PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   PROBIT           BELARUS                        NA                   NA                1.1869393   0.8605053   1.5133732
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9319267   0.8950348   0.9688186
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9206812   0.8937353   0.9476271
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7425490   0.7123217   0.7727764
15-18 months   MAL-ED           BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED           PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   PROBIT           BELARUS                        NA                   NA                1.0339982   0.5968654   1.4711310
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9372014   0.8951355   0.9792674
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7979044   0.7680603   0.8277484
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7489826   0.7198697   0.7780954
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED           PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   PROBIT           BELARUS                        NA                   NA                0.8948530   0.2840229   1.5056831
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6827825   0.6488968   0.7166681
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6787465   0.6547860   0.7027071
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED           PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   PROBIT           BELARUS                        NA                   NA                0.9164106   0.4532958   1.3795255
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6904655   0.6523491   0.7285819


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      1                    0                  0.0426588   -0.1103979    0.1957155
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                 -0.1703631   -0.1948823   -0.1458439
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                  0.2625502   -0.0322585    0.5573590
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    0                 -0.0369572   -0.2405244    0.1666099
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                 -0.1108424   -0.3076126    0.0859277
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1655690   -0.6702161    0.3390780
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                  0.0190687   -0.0660645    0.1042019
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0924702   -0.1798147   -0.0051256
3-6 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      1                    0                  0.0707203   -0.0488772    0.1903178
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                  0.2508378    0.2153742    0.2863015
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                 -0.0786409   -0.2752777    0.1179959
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    0                 -0.0869730   -0.2661184    0.0921724
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0780056   -0.0872072    0.2432184
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0699602   -0.3237767    0.4636971
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                  0.0116732   -0.0779705    0.1013170
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0178730   -0.1070564    0.1428023
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0415859   -0.0349160    0.1180877
6-9 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      1                    0                  0.0696169   -0.0310650    0.1702988
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                  0.0715569    0.0505093    0.0926046
6-9 months     Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      1                    0                 -0.0714651   -0.1933501    0.0504199
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                  0.1794564   -0.1355657    0.4944785
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    0                 -0.0687360   -0.2175425    0.0800706
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0134353   -0.1174943    0.1443648
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0366075   -0.4227197    0.3495048
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                  0.0818003   -0.0052836    0.1688842
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0446480   -0.1677077    0.0784116
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0743040   -0.1487699    0.0001619
9-12 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      1                    0                 -0.0377224   -0.1399715    0.0645267
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.1324453   -0.1574826   -0.1074081
9-12 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.0123381   -0.1500038    0.1253276
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                 -0.0741584   -0.3749366    0.2266198
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    0                  0.0617766   -0.0859844    0.2095377
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.1091384   -0.0202369    0.2385136
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1900430   -0.2204656    0.6005517
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                 -0.0014572   -0.0716075    0.0686931
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0365509   -0.0757708    0.1488726
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                  0.0644596   -0.0070499    0.1359691
12-15 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      1                    0                 -0.0852721   -0.1808841    0.0103398
12-15 months   Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      1                    0                  0.0780977   -0.1411789    0.2973743
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                 -0.1163340   -0.2772096    0.0445417
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    0                  0.0638785   -0.0522277    0.1799847
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0835093   -0.2023541    0.0353355
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1283925   -0.2400236    0.4968086
12-15 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        1                    0                 -0.2853231   -0.8785137    0.3078675
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0523643   -0.0791101    0.1838386
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0137505   -0.1274112    0.0999102
15-18 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      1                    0                  0.1154865    0.0038190    0.2271541
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                 -0.0854645   -0.2757878    0.1048588
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    0                 -0.0256032   -0.1211246    0.0699181
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0175946   -0.1231423    0.0879532
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3480598   -0.8150963    0.1189768
15-18 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        1                    0                  0.1720095   -0.3065177    0.6505368
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0542899   -0.1794038    0.0708240
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0354437   -0.1410535    0.0701661
18-21 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      1                    0                 -0.0099101   -0.1253596    0.1055395
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                 -0.0690876   -0.2507458    0.1125706
18-21 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    0                 -0.0080233   -0.1347197    0.1186732
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0329211   -0.0778572    0.1436993
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2428885   -0.3282468    0.8140238
18-21 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        1                    0                  0.0502691   -0.5834984    0.6840367
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0347218   -0.1201279    0.1895716
21-24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      1                    0                 -0.1071816   -0.1899630   -0.0244002
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                 -0.0919857   -0.2923021    0.1083308
21-24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    0                 -0.1111045   -0.2617207    0.0395118
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0536385   -0.0519959    0.1592729
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2835930   -0.5505338   -0.0166521
21-24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        1                    0                 -0.3897802   -1.8830660    1.1035057
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0340693   -0.0822085    0.1503470


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      0                    NA                 0.0027766   -0.0072172    0.0127705
0-3 months     COHORTS          INDIA                          0                    NA                -0.0002558   -0.0008974    0.0003858
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.0359444   -0.0066743    0.0785630
0-3 months     MAL-ED           PERU                           0                    NA                -0.0043233   -0.0281799    0.0195333
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0467534   -0.1300808    0.0365739
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0065356   -0.0268926    0.0138214
0-3 months     PROBIT           BELARUS                        0                    NA                 0.0007778   -0.0027061    0.0042617
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0058135   -0.0113269   -0.0003001
3-6 months     COHORTS          GUATEMALA                      0                    NA                 0.0054400   -0.0038577    0.0147378
3-6 months     COHORTS          INDIA                          0                    NA                 0.0004252   -0.0005090    0.0013594
3-6 months     MAL-ED           BRAZIL                         0                    NA                -0.0113424   -0.0399522    0.0172673
3-6 months     MAL-ED           PERU                           0                    NA                -0.0104237   -0.0321610    0.0113136
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0346692   -0.0389210    0.1082593
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0023418   -0.0109343    0.0156179
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0004702   -0.0031268    0.0040672
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0016012   -0.0095937    0.0127961
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0025869   -0.0021786    0.0073523
6-9 months     COHORTS          GUATEMALA                      0                    NA                 0.0056519   -0.0026309    0.0139347
6-9 months     COHORTS          INDIA                          0                    NA                 0.0001322   -0.0004019    0.0006663
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                -0.0074513   -0.0204985    0.0055958
6-9 months     MAL-ED           BRAZIL                         0                    NA                 0.0253777   -0.0200186    0.0707740
6-9 months     MAL-ED           PERU                           0                    NA                -0.0086972   -0.0277428    0.0103484
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0060488   -0.0529042    0.0650017
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0009762   -0.0113015    0.0093491
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0031730   -0.0004473    0.0067933
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0039848   -0.0149870    0.0070174
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0045410   -0.0091145    0.0000325
9-12 months    COHORTS          GUATEMALA                      0                    NA                -0.0030714   -0.0114249    0.0052820
9-12 months    COHORTS          INDIA                          0                    NA                -0.0002844   -0.0009406    0.0003717
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0012672   -0.0154161    0.0128818
9-12 months    MAL-ED           BRAZIL                         0                    NA                -0.0103210   -0.0523382    0.0316962
9-12 months    MAL-ED           PERU                           0                    NA                 0.0076235   -0.0107957    0.0260427
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0491825   -0.0095369    0.1079019
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0059388   -0.0076038    0.0194815
9-12 months    PROBIT           BELARUS                        0                    NA                -0.0000568   -0.0027877    0.0026741
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0033290   -0.0069204    0.0135783
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0037847   -0.0004317    0.0080010
12-15 months   COHORTS          GUATEMALA                      0                    NA                -0.0072420   -0.0155207    0.0010367
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0097622   -0.0181351    0.0376595
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0151740   -0.0369120    0.0065640
12-15 months   MAL-ED           PERU                           0                    NA                 0.0082700   -0.0070229    0.0235628
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0373594   -0.0908005    0.0160817
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0039768   -0.0077987    0.0157522
12-15 months   PROBIT           BELARUS                        0                    NA                -0.0119716   -0.0384707    0.0145275
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0046635   -0.0070918    0.0164188
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0008381   -0.0077671    0.0060909
15-18 months   COHORTS          GUATEMALA                      0                    NA                 0.0085433    0.0000061    0.0170804
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0102557   -0.0334643    0.0129529
15-18 months   MAL-ED           PERU                           0                    NA                -0.0032455   -0.0154080    0.0089170
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0078198   -0.0547439    0.0391043
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0096238   -0.0246132    0.0053656
15-18 months   PROBIT           BELARUS                        0                    NA                 0.0118843   -0.0217875    0.0455561
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0054126   -0.0179477    0.0071225
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0021455   -0.0085487    0.0042578
18-21 months   COHORTS          GUATEMALA                      0                    NA                -0.0007126   -0.0090159    0.0075907
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0086877   -0.0317952    0.0144198
18-21 months   MAL-ED           PERU                           0                    NA                -0.0010327   -0.0173444    0.0152790
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0145531   -0.0344627    0.0635689
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0071438   -0.0105775    0.0248651
18-21 months   PROBIT           BELARUS                        0                    NA                 0.0018447   -0.0214627    0.0251522
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019847   -0.0068755    0.0108449
21-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0087469   -0.0157947   -0.0016990
21-24 months   MAL-ED           BRAZIL                         0                    NA                -0.0117073   -0.0376302    0.0142157
21-24 months   MAL-ED           PERU                           0                    NA                -0.0141085   -0.0339519    0.0057349
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0237379   -0.0231354    0.0706112
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0083410   -0.0185922    0.0019102
21-24 months   PROBIT           BELARUS                        0                    NA                -0.0111899   -0.0410164    0.0186367
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019852   -0.0048057    0.0087760
