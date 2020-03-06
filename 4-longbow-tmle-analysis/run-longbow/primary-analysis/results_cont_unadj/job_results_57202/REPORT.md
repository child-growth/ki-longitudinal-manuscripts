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
![](/tmp/6761e3b6-ac15-4fd5-9b27-1a86815318b8/2bb6aaa7-a7c3-41c2-a8df-3367953fb0d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6761e3b6-ac15-4fd5-9b27-1a86815318b8/2bb6aaa7-a7c3-41c2-a8df-3367953fb0d0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6761e3b6-ac15-4fd5-9b27-1a86815318b8/2bb6aaa7-a7c3-41c2-a8df-3367953fb0d0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      0                    NA                -0.5348041   -0.5583079   -0.5113004
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.4978746   -0.5778846   -0.4178647
0-3 months     COHORTS          INDIA                          0                    NA                -0.0687068   -0.0770617   -0.0603518
0-3 months     COHORTS          INDIA                          1                    NA                -0.1833597   -0.1913170   -0.1754024
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.1134598    0.0509805    0.1759391
0-3 months     MAL-ED           BRAZIL                         1                    NA                 0.2640139    0.1378356    0.3901921
0-3 months     MAL-ED           PERU                           0                    NA                -0.2617054   -0.2978724   -0.2255383
0-3 months     MAL-ED           PERU                           1                    NA                -0.2710683   -0.3730280   -0.1691085
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.1483376   -0.2124842   -0.0841910
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                -0.2205803   -0.2958144   -0.1453461
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1358649   -0.1754851   -0.0962447
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1794801   -0.4130538    0.0540936
0-3 months     PROBIT           BELARUS                        0                    NA                -0.4292043   -0.4878459   -0.3705626
0-3 months     PROBIT           BELARUS                        1                    NA                -0.4064569   -0.4775089   -0.3354050
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.1365984   -0.1471375   -0.1260592
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.1859464   -0.2280153   -0.1438775
3-6 months     COHORTS          GUATEMALA                      0                    NA                -0.1020783   -0.1177274   -0.0864293
3-6 months     COHORTS          GUATEMALA                      1                    NA                -0.0636022   -0.1167892   -0.0104152
3-6 months     COHORTS          INDIA                          0                    NA                -0.0632424   -0.0698428   -0.0566419
3-6 months     COHORTS          INDIA                          1                    NA                 0.0429801    0.0280337    0.0579266
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0649411    0.0244950    0.1053872
3-6 months     MAL-ED           BRAZIL                         1                    NA                 0.0288050   -0.0512251    0.1088351
3-6 months     MAL-ED           PERU                           0                    NA                 0.0297595   -0.0042027    0.0637216
3-6 months     MAL-ED           PERU                           1                    NA                -0.0037275   -0.0793951    0.0719400
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0211829   -0.0675100    0.0251443
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                 0.0153760   -0.0473237    0.0780757
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0721021   -0.1047651   -0.0394391
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0255782   -0.2091445    0.1579880
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0494341    0.0299986    0.0688697
3-6 months     PROBIT           BELARUS                        1                    NA                 0.0604848    0.0186524    0.1023172
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0868233   -0.1042645   -0.0693821
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0785085   -0.1339253   -0.0230917
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0024866   -0.0120589    0.0070856
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                 0.0196135   -0.0144970    0.0537239
6-9 months     COHORTS          GUATEMALA                      0                    NA                -0.1245624   -0.1373692   -0.1117557
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.0905927   -0.1332050   -0.0479803
6-9 months     COHORTS          INDIA                          0                    NA                -0.1011188   -0.1069496   -0.0952880
6-9 months     COHORTS          INDIA                          1                    NA                -0.0651786   -0.0723028   -0.0580545
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                -0.0919973   -0.1131421   -0.0708525
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                -0.1146683   -0.1624433   -0.0668933
6-9 months     MAL-ED           BRAZIL                         0                    NA                -0.0019250   -0.0363557    0.0325058
6-9 months     MAL-ED           BRAZIL                         1                    NA                 0.0737982   -0.0542648    0.2018611
6-9 months     MAL-ED           PERU                           0                    NA                -0.0300978   -0.0563283   -0.0038672
6-9 months     MAL-ED           PERU                           1                    NA                -0.0576063   -0.1163267    0.0011141
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0219288   -0.0570144    0.0131567
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                -0.0127198   -0.0581534    0.0327137
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0930898   -0.1271767   -0.0590030
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1050907   -0.2692768    0.0590954
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0512267    0.0371366    0.0653167
6-9 months     PROBIT           BELARUS                        1                    NA                 0.0906904    0.0459685    0.1354122
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0499849   -0.0669102   -0.0330596
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0721146   -0.1235136   -0.0207156
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0296785   -0.0383916   -0.0209653
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0587472   -0.0904052   -0.0270893
9-12 months    COHORTS          GUATEMALA                      0                    NA                -0.0902014   -0.1010217   -0.0793811
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.1010105   -0.1411553   -0.0608657
9-12 months    COHORTS          INDIA                          0                    NA                -0.0908921   -0.0967094   -0.0850748
9-12 months    COHORTS          INDIA                          1                    NA                -0.1470698   -0.1554213   -0.1387182
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0589917   -0.0757126   -0.0422707
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.0553525   -0.1077221   -0.0029829
9-12 months    MAL-ED           BRAZIL                         0                    NA                 0.0124954   -0.0173007    0.0422916
9-12 months    MAL-ED           BRAZIL                         1                    NA                -0.0185233   -0.1408147    0.1037680
9-12 months    MAL-ED           PERU                           0                    NA                -0.0455886   -0.0685652   -0.0226121
9-12 months    MAL-ED           PERU                           1                    NA                -0.0159093   -0.0750710    0.0432523
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.1048276   -0.1409602   -0.0686950
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                -0.0605232   -0.1002624   -0.0207839
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1575543   -0.1919223   -0.1231862
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0747321   -0.2443889    0.0949248
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0367061    0.0160594    0.0573529
9-12 months    PROBIT           BELARUS                        1                    NA                 0.0377077    0.0043187    0.0710967
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0670117   -0.0820928   -0.0519307
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0548337   -0.0986936   -0.0109739
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0610192   -0.0687531   -0.0532853
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0300249   -0.0586672   -0.0013825
12-15 months   COHORTS          GUATEMALA                      0                    NA                -0.0840015   -0.0947745   -0.0732286
12-15 months   COHORTS          GUATEMALA                      1                    NA                -0.1087504   -0.1454157   -0.0720850
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                -0.0150641   -0.0390505    0.0089223
12-15 months   Guatemala BSC    GUATEMALA                      1                    NA                 0.0250111   -0.0510146    0.1010367
12-15 months   MAL-ED           BRAZIL                         0                    NA                 0.0026692   -0.0217195    0.0270578
12-15 months   MAL-ED           BRAZIL                         1                    NA                -0.0411241   -0.0981287    0.0158805
12-15 months   MAL-ED           PERU                           0                    NA                -0.0691354   -0.0887670   -0.0495039
12-15 months   MAL-ED           PERU                           1                    NA                -0.0399208   -0.0792325   -0.0006091
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0444048   -0.0704886   -0.0183209
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0774225   -0.1168196   -0.0380255
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0707145   -0.0961706   -0.0452584
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0268644   -0.1652779    0.1115490
12-15 months   PROBIT           BELARUS                        0                    NA                 0.0120630   -0.1180138    0.1421398
12-15 months   PROBIT           BELARUS                        1                    NA                -0.0978596   -0.2868635    0.0911443
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0659016   -0.0810856   -0.0507176
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0491505   -0.0971639   -0.0011371
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0622506   -0.0731382   -0.0513631
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0617320   -0.1054790   -0.0179849
15-18 months   COHORTS          GUATEMALA                      0                    NA                -0.0592805   -0.0708174   -0.0477436
15-18 months   COHORTS          GUATEMALA                      1                    NA                -0.0114570   -0.0501090    0.0271949
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0170564   -0.0392128    0.0050999
15-18 months   MAL-ED           BRAZIL                         1                    NA                -0.0444381   -0.1103918    0.0215157
15-18 months   MAL-ED           PERU                           0                    NA                -0.0352659   -0.0523572   -0.0181746
15-18 months   MAL-ED           PERU                           1                    NA                -0.0415031   -0.0741843   -0.0088219
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0265853   -0.0525088   -0.0006617
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0310006   -0.0588296   -0.0031715
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0822747   -0.1045618   -0.0599877
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2037749   -0.3753973   -0.0321524
15-18 months   PROBIT           BELARUS                        0                    NA                -0.0156559   -0.1814937    0.1501819
15-18 months   PROBIT           BELARUS                        1                    NA                 0.0417538    0.0157178    0.0677898
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0168599   -0.0331908   -0.0005291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0422155   -0.0847291    0.0002982
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0624935   -0.0738670   -0.0511200
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0690303   -0.1066455   -0.0314152
18-21 months   COHORTS          GUATEMALA                      0                    NA                -0.0192784   -0.0296683   -0.0088885
18-21 months   COHORTS          GUATEMALA                      1                    NA                -0.0217279   -0.0616851    0.0182293
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0178147   -0.0445531    0.0089237
18-21 months   MAL-ED           BRAZIL                         1                    NA                -0.0380475   -0.0972257    0.0211308
18-21 months   MAL-ED           PERU                           0                    NA                -0.0080933   -0.0246018    0.0084152
18-21 months   MAL-ED           PERU                           1                    NA                -0.0082548   -0.0474576    0.0309480
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0390072   -0.0653357   -0.0126788
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0235326   -0.0512913    0.0042261
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0310388   -0.0536823   -0.0083952
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0653695   -0.1411306    0.2718696
18-21 months   PROBIT           BELARUS                        0                    NA                -0.0311450   -0.2627138    0.2004238
18-21 months   PROBIT           BELARUS                        1                    NA                -0.0138502   -0.0257129   -0.0019874
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0692268   -0.0812537   -0.0572000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0508470   -0.1024155    0.0007215
21-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0040052   -0.0124392    0.0044287
21-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0263236   -0.0548936    0.0022463
21-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0194224    0.0038049    0.0350399
21-24 months   MAL-ED           BRAZIL                         1                    NA                -0.0036412   -0.0688452    0.0615627
21-24 months   MAL-ED           PERU                           0                    NA                 0.0610180    0.0448034    0.0772325
21-24 months   MAL-ED           PERU                           1                    NA                 0.0291746   -0.0152105    0.0735598
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0347404    0.0145591    0.0549216
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0553746    0.0274468    0.0833024
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0113091   -0.0108275    0.0334457
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0726501   -0.1574914    0.0121911
21-24 months   PROBIT           BELARUS                        0                    NA                 0.0558343   -0.0989210    0.2105897
21-24 months   PROBIT           BELARUS                        1                    NA                -0.0832641   -0.5854945    0.4189663
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0165798    0.0035097    0.0296499
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0254554   -0.0114438    0.0623545


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5324004   -0.5549935   -0.5098074
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0688789   -0.0770284   -0.0607294
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1788096   -0.2278601   -0.1297591
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4282764   -0.4869030   -0.3696499
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1397008   -0.1499288   -0.1294729
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.0991186   -0.1141500   -0.0840873
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0630623   -0.0695098   -0.0566148
3-6 months     MAL-ED           BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0498792    0.0307240    0.0690345
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0860784   -0.1027155   -0.0694413
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0011119   -0.0103370    0.0081132
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1218046   -0.1340870   -0.1095222
6-9 months     COHORTS          INDIA                          NA                   NA                -0.1010524   -0.1067404   -0.0953644
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                -0.0943611   -0.1139677   -0.0747545
6-9 months     MAL-ED           BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0527574    0.0382697    0.0672452
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0519600   -0.0680460   -0.0358740
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0314550   -0.0398631   -0.0230468
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0910815   -0.1015463   -0.0806167
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0910128   -0.0966891   -0.0853364
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0586179   -0.0745573   -0.0426785
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0367452    0.0162651    0.0572253
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659026   -0.0801818   -0.0516233
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0591994   -0.0666733   -0.0517256
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0861034   -0.0964521   -0.0757547
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                -0.0100547   -0.0332477    0.0131383
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   PROBIT           BELARUS                        NA                   NA                 0.0074509   -0.1179050    0.1328067
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0644098   -0.0788912   -0.0499283
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622190   -0.0727849   -0.0516531
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0557427   -0.0668381   -0.0446473
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   PROBIT           BELARUS                        NA                   NA                -0.0116894   -0.1658506    0.1424718
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0193878   -0.0347002   -0.0040754
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0628892   -0.0738143   -0.0519641
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0194545   -0.0295164   -0.0093927
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   PROBIT           BELARUS                        NA                   NA                -0.0305103   -0.2535719    0.1925513
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0681762   -0.0798943   -0.0564581
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0058266   -0.0139264    0.0022732
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   PROBIT           BELARUS                        NA                   NA                 0.0518411   -0.0993926    0.2030747
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0170970    0.0046016    0.0295925


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      1                    0                  0.0369295   -0.0464613    0.1203203
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                 -0.1146529   -0.1261909   -0.1031150
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                  0.1505540    0.0097541    0.2913540
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    0                 -0.0093629   -0.1175472    0.0988214
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                 -0.0722427   -0.1711111    0.0266258
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0436152   -0.2805254    0.1932950
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                  0.0227473   -0.0196495    0.0651441
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0493480   -0.0927170   -0.0059791
3-6 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      1                    0                  0.0384761   -0.0169653    0.0939176
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                  0.1062225    0.0898835    0.1225615
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                 -0.0361361   -0.1258060    0.0535338
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    0                 -0.0334870   -0.1164268    0.0494528
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0365589   -0.0413991    0.1145169
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0465239   -0.1399257    0.2329735
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                  0.0110507   -0.0303125    0.0524138
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0083148   -0.0497818    0.0664115
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0221001   -0.0133280    0.0575282
6-9 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      1                    0                  0.0339697   -0.0105255    0.0784650
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                  0.0359401    0.0267340    0.0451462
6-9 months     Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      1                    0                 -0.0226710   -0.0749161    0.0295742
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                  0.0757231   -0.0568876    0.2083338
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    0                 -0.0275085   -0.0918212    0.0368042
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0092090   -0.0481949    0.0666128
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0120009   -0.1796881    0.1556863
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                  0.0394637    0.0001307    0.0787967
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0221297   -0.0762437    0.0319843
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0290688   -0.0619039    0.0037663
9-12 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      1                    0                 -0.0108091   -0.0523866    0.0307684
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.0561776   -0.0663555   -0.0459998
9-12 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      1                    0                  0.0036391   -0.0513351    0.0586134
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                 -0.0310188   -0.1568877    0.0948501
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    0                  0.0296793   -0.0337874    0.0931460
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.0443044   -0.0094057    0.0980145
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0828222   -0.0902807    0.2559251
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                  0.0010015   -0.0289414    0.0309445
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0121780   -0.0342022    0.0585582
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                  0.0309944    0.0013262    0.0606625
12-15 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      1                    0                 -0.0247488   -0.0629640    0.0134664
12-15 months   Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      1                    0                  0.0400752   -0.0396447    0.1197950
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                 -0.0437932   -0.1057959    0.0182094
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    0                  0.0292147   -0.0147263    0.0731556
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0330178   -0.0802671    0.0142315
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0438501   -0.0968848    0.1845849
12-15 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        1                    0                 -0.1099226   -0.3353916    0.1155463
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0167511   -0.0336060    0.0671082
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0005187   -0.0445628    0.0456002
15-18 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      1                    0                  0.0478234    0.0074864    0.0881604
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                 -0.0273816   -0.0969575    0.0421942
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    0                 -0.0062372   -0.0431177    0.0306433
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0044153   -0.0424480    0.0336174
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1215001   -0.2945636    0.0515633
15-18 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        1                    0                  0.0574097   -0.1115213    0.2263407
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0253555   -0.0708979    0.0201868
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0065368   -0.0458338    0.0327602
18-21 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      1                    0                 -0.0024495   -0.0437354    0.0388364
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                 -0.0202327   -0.0851713    0.0447058
18-21 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    0                 -0.0001615   -0.0426985    0.0423754
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0154746   -0.0227841    0.0537334
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0964083   -0.1113296    0.3041462
18-21 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        1                    0                  0.0172948   -0.2140664    0.2486560
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0183798   -0.0345726    0.0713322
21-24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      1                    0                 -0.0223184   -0.0521072    0.0074704
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                 -0.0230636   -0.0901119    0.0439846
21-24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    0                 -0.0318433   -0.0790975    0.0154108
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0206342   -0.0138222    0.0550906
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0839593   -0.1716409    0.0037224
21-24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        1                    0                 -0.1390985   -0.6620651    0.3838682
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0088755   -0.0302700    0.0480211


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      0                    NA                 0.0024037   -0.0030674    0.0078748
0-3 months     COHORTS          INDIA                          0                    NA                -0.0001722   -0.0004875    0.0001432
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.0206116   -0.0002014    0.0414245
0-3 months     MAL-ED           PERU                           0                    NA                -0.0010953   -0.0137560    0.0115654
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0304720   -0.0724531    0.0115090
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017217   -0.0111384    0.0076951
0-3 months     PROBIT           BELARUS                        0                    NA                 0.0009278   -0.0008215    0.0026771
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0031025   -0.0058417   -0.0003632
3-6 months     COHORTS          GUATEMALA                      0                    NA                 0.0029597   -0.0013674    0.0072868
3-6 months     COHORTS          INDIA                          0                    NA                 0.0001801   -0.0002470    0.0006072
3-6 months     MAL-ED           BRAZIL                         0                    NA                -0.0052119   -0.0182602    0.0078363
3-6 months     MAL-ED           PERU                           0                    NA                -0.0040134   -0.0140393    0.0060125
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0162484   -0.0184751    0.0509719
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0015573   -0.0047736    0.0078882
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0004451   -0.0012103    0.0021005
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0007449   -0.0044611    0.0059510
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0013748   -0.0008331    0.0035826
6-9 months     COHORTS          GUATEMALA                      0                    NA                 0.0027579   -0.0009131    0.0064288
6-9 months     COHORTS          INDIA                          0                    NA                 0.0000664   -0.0001683    0.0003011
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                -0.0023638   -0.0078912    0.0031636
6-9 months     MAL-ED           BRAZIL                         0                    NA                 0.0107083   -0.0084032    0.0298199
6-9 months     MAL-ED           PERU                           0                    NA                -0.0034807   -0.0116987    0.0047374
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0041460   -0.0217049    0.0299970
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003200   -0.0047988    0.0041588
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0015308   -0.0001169    0.0031785
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019751   -0.0068154    0.0028653
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0017765   -0.0037910    0.0002380
9-12 months    COHORTS          GUATEMALA                      0                    NA                -0.0008801   -0.0042711    0.0025109
9-12 months    COHORTS          INDIA                          0                    NA                -0.0001206   -0.0003885    0.0001472
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0003737   -0.0052745    0.0060220
9-12 months    MAL-ED           BRAZIL                         0                    NA                -0.0043170   -0.0219002    0.0132662
9-12 months    MAL-ED           PERU                           0                    NA                 0.0036625   -0.0042687    0.0115938
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0199655   -0.0044042    0.0443353
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0025882   -0.0031424    0.0083188
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0000390   -0.0011287    0.0012068
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0011091   -0.0031203    0.0053386
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0018198    0.0000680    0.0035716
12-15 months   COHORTS          GUATEMALA                      0                    NA                -0.0021019   -0.0053810    0.0011772
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0050094   -0.0053058    0.0153246
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0057122   -0.0140770    0.0026527
12-15 months   MAL-ED           PERU                           0                    NA                 0.0037823   -0.0020503    0.0096149
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0147711   -0.0360166    0.0064743
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0013582   -0.0031124    0.0058288
12-15 months   PROBIT           BELARUS                        0                    NA                -0.0046121   -0.0146797    0.0054554
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0014918   -0.0030053    0.0059890
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000316   -0.0027162    0.0027794
15-18 months   COHORTS          GUATEMALA                      0                    NA                 0.0035378    0.0004233    0.0066523
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0032858   -0.0117389    0.0051673
15-18 months   MAL-ED           PERU                           0                    NA                -0.0007906   -0.0054740    0.0038927
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0019624   -0.0188682    0.0149435
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0033595   -0.0088327    0.0021138
15-18 months   PROBIT           BELARUS                        0                    NA                 0.0039665   -0.0079032    0.0158362
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0025279   -0.0071052    0.0020494
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0003957   -0.0027754    0.0019840
18-21 months   COHORTS          GUATEMALA                      0                    NA                -0.0001761   -0.0031451    0.0027928
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0025442   -0.0107737    0.0056852
18-21 months   MAL-ED           PERU                           0                    NA                -0.0000208   -0.0054958    0.0054543
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0068407   -0.0101008    0.0237823
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0028355   -0.0036723    0.0093434
18-21 months   PROBIT           BELARUS                        0                    NA                 0.0006347   -0.0078766    0.0091460
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0010506   -0.0019834    0.0040847
21-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0018214   -0.0042881    0.0006454
21-24 months   MAL-ED           BRAZIL                         0                    NA                -0.0029354   -0.0115495    0.0056787
21-24 months   MAL-ED           PERU                           0                    NA                -0.0040436   -0.0102326    0.0021454
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0091317   -0.0061735    0.0244370
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0024694   -0.0057034    0.0007646
21-24 months   PROBIT           BELARUS                        0                    NA                -0.0039933   -0.0143132    0.0063267
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0005172   -0.0017669    0.0028013
