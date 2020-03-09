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

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
* month
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
* single
* W_nrooms
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
* delta_single
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid         country                        predfeed6    n_cell       n
-------------  --------------  -----------------------------  ----------  -------  ------
0-3 months     EE              PAKISTAN                       1                33      37
0-3 months     EE              PAKISTAN                       0                 4      37
0-3 months     GMS-Nepal       NEPAL                          1               368     501
0-3 months     GMS-Nepal       NEPAL                          0               133     501
0-3 months     JiVitA-3        BANGLADESH                     1              9260   11961
0-3 months     JiVitA-3        BANGLADESH                     0              2701   11961
0-3 months     JiVitA-4        BANGLADESH                     1              1512    1805
0-3 months     JiVitA-4        BANGLADESH                     0               293    1805
0-3 months     MAL-ED          BANGLADESH                     1                82     227
0-3 months     MAL-ED          BANGLADESH                     0               145     227
0-3 months     MAL-ED          BRAZIL                         1                21     163
0-3 months     MAL-ED          BRAZIL                         0               142     163
0-3 months     MAL-ED          INDIA                          1                 8     167
0-3 months     MAL-ED          INDIA                          0               159     167
0-3 months     MAL-ED          NEPAL                          1                11     145
0-3 months     MAL-ED          NEPAL                          0               134     145
0-3 months     MAL-ED          PERU                           1                85     254
0-3 months     MAL-ED          PERU                           0               169     254
0-3 months     MAL-ED          SOUTH AFRICA                   1                 2     186
0-3 months     MAL-ED          SOUTH AFRICA                   0               184     186
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     211
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               211     211
3-6 months     EE              PAKISTAN                       1                34      38
3-6 months     EE              PAKISTAN                       0                 4      38
3-6 months     GMS-Nepal       NEPAL                          1               338     464
3-6 months     GMS-Nepal       NEPAL                          0               126     464
3-6 months     JiVitA-3        BANGLADESH                     1              5753    7502
3-6 months     JiVitA-3        BANGLADESH                     0              1749    7502
3-6 months     JiVitA-4        BANGLADESH                     1              1516    1797
3-6 months     JiVitA-4        BANGLADESH                     0               281    1797
3-6 months     MAL-ED          BANGLADESH                     1                80     222
3-6 months     MAL-ED          BANGLADESH                     0               142     222
3-6 months     MAL-ED          BRAZIL                         1                30     208
3-6 months     MAL-ED          BRAZIL                         0               178     208
3-6 months     MAL-ED          INDIA                          1                11     213
3-6 months     MAL-ED          INDIA                          0               202     213
3-6 months     MAL-ED          NEPAL                          1                11     222
3-6 months     MAL-ED          NEPAL                          0               211     222
3-6 months     MAL-ED          PERU                           1                90     266
3-6 months     MAL-ED          PERU                           0               176     266
3-6 months     MAL-ED          SOUTH AFRICA                   1                 3     222
3-6 months     MAL-ED          SOUTH AFRICA                   0               219     222
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     225
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               224     225
6-9 months     EE              PAKISTAN                       1                40      45
6-9 months     EE              PAKISTAN                       0                 5      45
6-9 months     GMS-Nepal       NEPAL                          1               354     474
6-9 months     GMS-Nepal       NEPAL                          0               120     474
6-9 months     JiVitA-4        BANGLADESH                     1              2198    2769
6-9 months     JiVitA-4        BANGLADESH                     0               571    2769
6-9 months     LCNI-5          MALAWI                         1                23     145
6-9 months     LCNI-5          MALAWI                         0               122     145
6-9 months     MAL-ED          BANGLADESH                     1                76     217
6-9 months     MAL-ED          BANGLADESH                     0               141     217
6-9 months     MAL-ED          BRAZIL                         1                29     198
6-9 months     MAL-ED          BRAZIL                         0               169     198
6-9 months     MAL-ED          INDIA                          1                11     213
6-9 months     MAL-ED          INDIA                          0               202     213
6-9 months     MAL-ED          NEPAL                          1                12     220
6-9 months     MAL-ED          NEPAL                          0               208     220
6-9 months     MAL-ED          PERU                           1                86     245
6-9 months     MAL-ED          PERU                           0               159     245
6-9 months     MAL-ED          SOUTH AFRICA                   1                 3     210
6-9 months     MAL-ED          SOUTH AFRICA                   0               207     210
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     214
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     214
6-9 months     SAS-FoodSuppl   INDIA                          1                 0     142
6-9 months     SAS-FoodSuppl   INDIA                          0               142     142
9-12 months    EE              PAKISTAN                       1                39      44
9-12 months    EE              PAKISTAN                       0                 5      44
9-12 months    GMS-Nepal       NEPAL                          1               341     450
9-12 months    GMS-Nepal       NEPAL                          0               109     450
9-12 months    JiVitA-4        BANGLADESH                     1              2453    3134
9-12 months    JiVitA-4        BANGLADESH                     0               681    3134
9-12 months    LCNI-5          MALAWI                         1                10      32
9-12 months    LCNI-5          MALAWI                         0                22      32
9-12 months    MAL-ED          BANGLADESH                     1                78     216
9-12 months    MAL-ED          BANGLADESH                     0               138     216
9-12 months    MAL-ED          BRAZIL                         1                28     194
9-12 months    MAL-ED          BRAZIL                         0               166     194
9-12 months    MAL-ED          INDIA                          1                11     210
9-12 months    MAL-ED          INDIA                          0               199     210
9-12 months    MAL-ED          NEPAL                          1                11     219
9-12 months    MAL-ED          NEPAL                          0               208     219
9-12 months    MAL-ED          PERU                           1                82     235
9-12 months    MAL-ED          PERU                           0               153     235
9-12 months    MAL-ED          SOUTH AFRICA                   1                 3     212
9-12 months    MAL-ED          SOUTH AFRICA                   0               209     212
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     213
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               212     213
9-12 months    SAS-FoodSuppl   INDIA                          1                 0     144
9-12 months    SAS-FoodSuppl   INDIA                          0               144     144
12-15 months   EE              PAKISTAN                       1                32      37
12-15 months   EE              PAKISTAN                       0                 5      37
12-15 months   GMS-Nepal       NEPAL                          1               341     452
12-15 months   GMS-Nepal       NEPAL                          0               111     452
12-15 months   JiVitA-4        BANGLADESH                     1              2460    3148
12-15 months   JiVitA-4        BANGLADESH                     0               688    3148
12-15 months   LCNI-5          MALAWI                         1                 0       1
12-15 months   LCNI-5          MALAWI                         0                 1       1
12-15 months   MAL-ED          BANGLADESH                     1                73     204
12-15 months   MAL-ED          BANGLADESH                     0               131     204
12-15 months   MAL-ED          BRAZIL                         1                27     184
12-15 months   MAL-ED          BRAZIL                         0               157     184
12-15 months   MAL-ED          INDIA                          1                11     209
12-15 months   MAL-ED          INDIA                          0               198     209
12-15 months   MAL-ED          NEPAL                          1                11     220
12-15 months   MAL-ED          NEPAL                          0               209     220
12-15 months   MAL-ED          PERU                           1                77     224
12-15 months   MAL-ED          PERU                           0               147     224
12-15 months   MAL-ED          SOUTH AFRICA                   1                 3     209
12-15 months   MAL-ED          SOUTH AFRICA                   0               206     209
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     214
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     214
12-15 months   SAS-FoodSuppl   INDIA                          1                 0     137
12-15 months   SAS-FoodSuppl   INDIA                          0               137     137
15-18 months   EE              PAKISTAN                       1                28      33
15-18 months   EE              PAKISTAN                       0                 5      33
15-18 months   GMS-Nepal       NEPAL                          1               347     461
15-18 months   GMS-Nepal       NEPAL                          0               114     461
15-18 months   JiVitA-4        BANGLADESH                     1              2467    3148
15-18 months   JiVitA-4        BANGLADESH                     0               681    3148
15-18 months   LCNI-5          MALAWI                         1                 0       4
15-18 months   LCNI-5          MALAWI                         0                 4       4
15-18 months   MAL-ED          BANGLADESH                     1                75     204
15-18 months   MAL-ED          BANGLADESH                     0               129     204
15-18 months   MAL-ED          BRAZIL                         1                27     175
15-18 months   MAL-ED          BRAZIL                         0               148     175
15-18 months   MAL-ED          INDIA                          1                11     209
15-18 months   MAL-ED          INDIA                          0               198     209
15-18 months   MAL-ED          NEPAL                          1                12     218
15-18 months   MAL-ED          NEPAL                          0               206     218
15-18 months   MAL-ED          PERU                           1                75     213
15-18 months   MAL-ED          PERU                           0               138     213
15-18 months   MAL-ED          SOUTH AFRICA                   1                 3     206
15-18 months   MAL-ED          SOUTH AFRICA                   0               203     206
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     205
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204     205
15-18 months   SAS-FoodSuppl   INDIA                          1                 0     129
15-18 months   SAS-FoodSuppl   INDIA                          0               129     129
18-21 months   EE              PAKISTAN                       1                28      33
18-21 months   EE              PAKISTAN                       0                 5      33
18-21 months   GMS-Nepal       NEPAL                          1               325     426
18-21 months   GMS-Nepal       NEPAL                          0               101     426
18-21 months   LCNI-5          MALAWI                         1                29     170
18-21 months   LCNI-5          MALAWI                         0               141     170
18-21 months   MAL-ED          BANGLADESH                     1                75     202
18-21 months   MAL-ED          BANGLADESH                     0               127     202
18-21 months   MAL-ED          BRAZIL                         1                25     167
18-21 months   MAL-ED          BRAZIL                         0               142     167
18-21 months   MAL-ED          INDIA                          1                10     209
18-21 months   MAL-ED          INDIA                          0               199     209
18-21 months   MAL-ED          NEPAL                          1                12     218
18-21 months   MAL-ED          NEPAL                          0               206     218
18-21 months   MAL-ED          PERU                           1                70     202
18-21 months   MAL-ED          PERU                           0               132     202
18-21 months   MAL-ED          SOUTH AFRICA                   1                 3     213
18-21 months   MAL-ED          SOUTH AFRICA                   0               210     213
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     192
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               191     192
21-24 months   EE              PAKISTAN                       1                16      18
21-24 months   EE              PAKISTAN                       0                 2      18
21-24 months   GMS-Nepal       NEPAL                          1               251     329
21-24 months   GMS-Nepal       NEPAL                          0                78     329
21-24 months   LCNI-5          MALAWI                         1                25     141
21-24 months   LCNI-5          MALAWI                         0               116     141
21-24 months   MAL-ED          BANGLADESH                     1                73     200
21-24 months   MAL-ED          BANGLADESH                     0               127     200
21-24 months   MAL-ED          BRAZIL                         1                25     165
21-24 months   MAL-ED          BRAZIL                         0               140     165
21-24 months   MAL-ED          INDIA                          1                10     208
21-24 months   MAL-ED          INDIA                          0               198     208
21-24 months   MAL-ED          NEPAL                          1                12     218
21-24 months   MAL-ED          NEPAL                          0               206     218
21-24 months   MAL-ED          PERU                           1                64     189
21-24 months   MAL-ED          PERU                           0               125     189
21-24 months   MAL-ED          SOUTH AFRICA                   1                 3     214
21-24 months   MAL-ED          SOUTH AFRICA                   0               211     214
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     192
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               191     192


The following strata were considered:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/ed59e8bd-1ca9-4f5f-b48e-1c32f0b3ee83/b081aaeb-0504-4eb8-91ee-d449269df282/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ed59e8bd-1ca9-4f5f-b48e-1c32f0b3ee83/b081aaeb-0504-4eb8-91ee-d449269df282/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ed59e8bd-1ca9-4f5f-b48e-1c32f0b3ee83/b081aaeb-0504-4eb8-91ee-d449269df282/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                3.6073848   3.5489377   3.6658319
0-3 months     GMS-Nepal   NEPAL        0                    NA                3.5723675   3.4625457   3.6821892
0-3 months     JiVitA-3    BANGLADESH   1                    NA                3.7225844   3.7090714   3.7360975
0-3 months     JiVitA-3    BANGLADESH   0                    NA                3.7343999   3.7111346   3.7576651
0-3 months     JiVitA-4    BANGLADESH   1                    NA                3.6620162   3.6290472   3.6949851
0-3 months     JiVitA-4    BANGLADESH   0                    NA                3.5189718   3.4332502   3.6046934
0-3 months     MAL-ED      BANGLADESH   1                    NA                3.3474372   3.2342411   3.4606334
0-3 months     MAL-ED      BANGLADESH   0                    NA                3.3513696   3.2656995   3.4370397
0-3 months     MAL-ED      BRAZIL       1                    NA                4.2389719   3.9131023   4.5648415
0-3 months     MAL-ED      BRAZIL       0                    NA                3.7888851   3.6718191   3.9059510
0-3 months     MAL-ED      INDIA        1                    NA                3.1975488   2.8853961   3.5097015
0-3 months     MAL-ED      INDIA        0                    NA                3.3449364   3.2480037   3.4418691
0-3 months     MAL-ED      NEPAL        1                    NA                3.3756712   3.0999388   3.6514035
0-3 months     MAL-ED      NEPAL        0                    NA                3.6513989   3.5505305   3.7522672
0-3 months     MAL-ED      PERU         1                    NA                3.1146134   2.9978634   3.2313634
0-3 months     MAL-ED      PERU         0                    NA                3.0333539   2.9529801   3.1137276
3-6 months     GMS-Nepal   NEPAL        1                    NA                1.7321467   1.6862692   1.7780242
3-6 months     GMS-Nepal   NEPAL        0                    NA                1.6448132   1.5650285   1.7245979
3-6 months     JiVitA-3    BANGLADESH   1                    NA                1.9189304   1.9037345   1.9341263
3-6 months     JiVitA-3    BANGLADESH   0                    NA                1.9180685   1.8936404   1.9424966
3-6 months     JiVitA-4    BANGLADESH   1                    NA                1.8836835   1.8507942   1.9165728
3-6 months     JiVitA-4    BANGLADESH   0                    NA                1.9539946   1.8771959   2.0307932
3-6 months     MAL-ED      BANGLADESH   1                    NA                1.9162938   1.8222890   2.0102985
3-6 months     MAL-ED      BANGLADESH   0                    NA                1.9160472   1.8546736   1.9774208
3-6 months     MAL-ED      BRAZIL       1                    NA                2.1487891   1.9269977   2.3705804
3-6 months     MAL-ED      BRAZIL       0                    NA                2.1489819   2.0637844   2.2341795
3-6 months     MAL-ED      INDIA        1                    NA                1.8694055   1.6438987   2.0949123
3-6 months     MAL-ED      INDIA        0                    NA                1.8846146   1.8157367   1.9534926
3-6 months     MAL-ED      NEPAL        1                    NA                1.7635822   1.5065838   2.0205807
3-6 months     MAL-ED      NEPAL        0                    NA                1.9702530   1.9099858   2.0305202
3-6 months     MAL-ED      PERU         1                    NA                2.0353267   1.9175769   2.1530765
3-6 months     MAL-ED      PERU         0                    NA                2.0064060   1.9260340   2.0867779
6-9 months     EE          PAKISTAN     1                    NA                1.1144238   0.9844462   1.2444013
6-9 months     EE          PAKISTAN     0                    NA                1.2194058   1.0438676   1.3949439
6-9 months     GMS-Nepal   NEPAL        1                    NA                1.3132770   1.2717649   1.3547892
6-9 months     GMS-Nepal   NEPAL        0                    NA                1.3111719   1.2083206   1.4140232
6-9 months     JiVitA-4    BANGLADESH   1                    NA                1.3237325   1.3003134   1.3471516
6-9 months     JiVitA-4    BANGLADESH   0                    NA                1.3312339   1.2845976   1.3778703
6-9 months     LCNI-5      MALAWI       1                    NA                1.4322505   1.2463716   1.6181293
6-9 months     LCNI-5      MALAWI       0                    NA                1.4334466   1.3680731   1.4988201
6-9 months     MAL-ED      BANGLADESH   1                    NA                1.2483843   1.1795968   1.3171718
6-9 months     MAL-ED      BANGLADESH   0                    NA                1.2586444   1.2080793   1.3092096
6-9 months     MAL-ED      BRAZIL       1                    NA                1.6247372   1.2691694   1.9803050
6-9 months     MAL-ED      BRAZIL       0                    NA                1.4618695   1.3850180   1.5387211
6-9 months     MAL-ED      INDIA        1                    NA                1.2277294   1.0880388   1.3674200
6-9 months     MAL-ED      INDIA        0                    NA                1.2500277   1.1948431   1.3052123
6-9 months     MAL-ED      NEPAL        1                    NA                1.3148505   1.1234176   1.5062835
6-9 months     MAL-ED      NEPAL        0                    NA                1.3612941   1.3155474   1.4070408
6-9 months     MAL-ED      PERU         1                    NA                1.3230046   1.2237299   1.4222793
6-9 months     MAL-ED      PERU         0                    NA                1.3115186   1.2440723   1.3789649
9-12 months    EE          PAKISTAN     1                    NA                0.8435058   0.7523586   0.9346530
9-12 months    EE          PAKISTAN     0                    NA                0.8866775   0.6533943   1.1199607
9-12 months    GMS-Nepal   NEPAL        1                    NA                0.9890712   0.9543013   1.0238412
9-12 months    GMS-Nepal   NEPAL        0                    NA                1.0328946   0.9438711   1.1219181
9-12 months    JiVitA-4    BANGLADESH   1                    NA                1.0687513   1.0469567   1.0905458
9-12 months    JiVitA-4    BANGLADESH   0                    NA                1.0689037   1.0288516   1.1089559
9-12 months    LCNI-5      MALAWI       1                    NA                1.1774984   0.9652117   1.3897852
9-12 months    LCNI-5      MALAWI       0                    NA                0.9072537   0.7150687   1.0994387
9-12 months    MAL-ED      BANGLADESH   1                    NA                0.9507871   0.8849773   1.0165969
9-12 months    MAL-ED      BANGLADESH   0                    NA                1.0070007   0.9571552   1.0568462
9-12 months    MAL-ED      BRAZIL       1                    NA                1.2716999   1.0774376   1.4659621
9-12 months    MAL-ED      BRAZIL       0                    NA                1.3171392   1.2366317   1.3976467
9-12 months    MAL-ED      INDIA        1                    NA                0.9408024   0.7159444   1.1656604
9-12 months    MAL-ED      INDIA        0                    NA                0.9848765   0.9445100   1.0252430
9-12 months    MAL-ED      NEPAL        1                    NA                0.9776792   0.8606844   1.0946740
9-12 months    MAL-ED      NEPAL        0                    NA                1.0921279   1.0482576   1.1359981
9-12 months    MAL-ED      PERU         1                    NA                1.0960220   1.0133703   1.1786737
9-12 months    MAL-ED      PERU         0                    NA                1.0998480   1.0350559   1.1646401
12-15 months   EE          PAKISTAN     1                    NA                0.9994382   0.9109531   1.0879233
12-15 months   EE          PAKISTAN     0                    NA                1.1691763   0.8641761   1.4741764
12-15 months   GMS-Nepal   NEPAL        1                    NA                0.8731880   0.8447681   0.9016078
12-15 months   GMS-Nepal   NEPAL        0                    NA                0.8640035   0.8054515   0.9225555
12-15 months   JiVitA-4    BANGLADESH   1                    NA                0.9311518   0.9122605   0.9500432
12-15 months   JiVitA-4    BANGLADESH   0                    NA                0.9690913   0.9270607   1.0111219
12-15 months   MAL-ED      BANGLADESH   1                    NA                0.8930943   0.8310958   0.9550928
12-15 months   MAL-ED      BANGLADESH   0                    NA                0.9350131   0.8799077   0.9901185
12-15 months   MAL-ED      BRAZIL       1                    NA                1.1367444   0.9924703   1.2810185
12-15 months   MAL-ED      BRAZIL       0                    NA                1.1447531   1.0800097   1.2094965
12-15 months   MAL-ED      INDIA        1                    NA                0.9171990   0.7330577   1.1013402
12-15 months   MAL-ED      INDIA        0                    NA                0.9129158   0.8706379   0.9551937
12-15 months   MAL-ED      NEPAL        1                    NA                0.9369595   0.7246352   1.1492837
12-15 months   MAL-ED      NEPAL        0                    NA                0.9469838   0.9056100   0.9883576
12-15 months   MAL-ED      PERU         1                    NA                0.8671222   0.7915064   0.9427381
12-15 months   MAL-ED      PERU         0                    NA                0.9021583   0.8437303   0.9605863
15-18 months   EE          PAKISTAN     1                    NA                0.8264950   0.7398782   0.9131119
15-18 months   EE          PAKISTAN     0                    NA                0.9035877   0.8122406   0.9949348
15-18 months   GMS-Nepal   NEPAL        1                    NA                0.7812208   0.7411520   0.8212896
15-18 months   GMS-Nepal   NEPAL        0                    NA                0.6940736   0.6458234   0.7423239
15-18 months   JiVitA-4    BANGLADESH   1                    NA                0.8591695   0.8394348   0.8789041
15-18 months   JiVitA-4    BANGLADESH   0                    NA                0.8630268   0.8241715   0.9018820
15-18 months   MAL-ED      BANGLADESH   1                    NA                0.8218693   0.7602608   0.8834778
15-18 months   MAL-ED      BANGLADESH   0                    NA                0.8236608   0.7745140   0.8728077
15-18 months   MAL-ED      BRAZIL       1                    NA                0.9840236   0.8249612   1.1430859
15-18 months   MAL-ED      BRAZIL       0                    NA                1.0043520   0.9399433   1.0687607
15-18 months   MAL-ED      INDIA        1                    NA                0.7911604   0.6825171   0.8998036
15-18 months   MAL-ED      INDIA        0                    NA                0.8507704   0.8122870   0.8892537
15-18 months   MAL-ED      NEPAL        1                    NA                0.8999262   0.7705411   1.0293112
15-18 months   MAL-ED      NEPAL        0                    NA                0.8393708   0.7947418   0.8839998
15-18 months   MAL-ED      PERU         1                    NA                0.8321498   0.7649980   0.8993016
15-18 months   MAL-ED      PERU         0                    NA                0.8628098   0.8086191   0.9170005
18-21 months   EE          PAKISTAN     1                    NA                0.7829057   0.6977684   0.8680431
18-21 months   EE          PAKISTAN     0                    NA                0.8103374   0.7102740   0.9104008
18-21 months   GMS-Nepal   NEPAL        1                    NA                0.9018851   0.8577399   0.9460304
18-21 months   GMS-Nepal   NEPAL        0                    NA                0.9200092   0.8693781   0.9706402
18-21 months   LCNI-5      MALAWI       1                    NA                0.7222098   0.4431144   1.0013051
18-21 months   LCNI-5      MALAWI       0                    NA                0.8713276   0.7917031   0.9509521
18-21 months   MAL-ED      BANGLADESH   1                    NA                0.8050918   0.7456413   0.8645422
18-21 months   MAL-ED      BANGLADESH   0                    NA                0.8315649   0.7869372   0.8761926
18-21 months   MAL-ED      BRAZIL       1                    NA                0.7883681   0.6486337   0.9281024
18-21 months   MAL-ED      BRAZIL       0                    NA                0.9374873   0.8584385   1.0165361
18-21 months   MAL-ED      INDIA        1                    NA                0.8771818   0.7352267   1.0191369
18-21 months   MAL-ED      INDIA        0                    NA                0.8855714   0.8488970   0.9222457
18-21 months   MAL-ED      NEPAL        1                    NA                0.7235392   0.5887943   0.8582841
18-21 months   MAL-ED      NEPAL        0                    NA                0.8181012   0.7782828   0.8579195
18-21 months   MAL-ED      PERU         1                    NA                0.8271267   0.7492249   0.9050285
18-21 months   MAL-ED      PERU         0                    NA                0.8490883   0.7934379   0.9047386
21-24 months   GMS-Nepal   NEPAL        1                    NA                0.7890306   0.7400621   0.8379992
21-24 months   GMS-Nepal   NEPAL        0                    NA                0.8382068   0.7234447   0.9529690
21-24 months   LCNI-5      MALAWI       1                    NA                0.7550174   0.6116715   0.8983632
21-24 months   LCNI-5      MALAWI       0                    NA                0.7349316   0.6574330   0.8124301
21-24 months   MAL-ED      BANGLADESH   1                    NA                0.7706972   0.7052147   0.8361796
21-24 months   MAL-ED      BANGLADESH   0                    NA                0.7666486   0.7210066   0.8122906
21-24 months   MAL-ED      BRAZIL       1                    NA                0.8081571   0.7255271   0.8907871
21-24 months   MAL-ED      BRAZIL       0                    NA                0.7989133   0.7493405   0.8484860
21-24 months   MAL-ED      INDIA        1                    NA                0.8721756   0.7410548   1.0032964
21-24 months   MAL-ED      INDIA        0                    NA                0.8288138   0.7954856   0.8621419
21-24 months   MAL-ED      NEPAL        1                    NA                0.8278078   0.6250274   1.0305883
21-24 months   MAL-ED      NEPAL        0                    NA                0.7794596   0.7366437   0.8222755
21-24 months   MAL-ED      PERU         1                    NA                0.7425132   0.6555510   0.8294753
21-24 months   MAL-ED      PERU         0                    NA                0.7709139   0.7139516   0.8278762


### Parameter: E(Y)


agecat         studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL        NA                   NA                3.5982617   3.5465367   3.6499867
0-3 months     JiVitA-3    BANGLADESH   NA                   NA                3.7251075   3.7124931   3.7377219
0-3 months     JiVitA-4    BANGLADESH   NA                   NA                3.6386843   3.6074983   3.6698703
0-3 months     MAL-ED      BANGLADESH   NA                   NA                3.3482498   3.2804281   3.4160715
0-3 months     MAL-ED      BRAZIL       NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     MAL-ED      INDIA        NA                   NA                3.3378760   3.2442606   3.4314913
0-3 months     MAL-ED      NEPAL        NA                   NA                3.6205791   3.5251464   3.7160118
0-3 months     MAL-ED      PERU         NA                   NA                3.0614469   2.9957442   3.1271496
3-6 months     GMS-Nepal   NEPAL        NA                   NA                1.7086613   1.6690533   1.7482692
3-6 months     JiVitA-3    BANGLADESH   NA                   NA                1.9190532   1.9057476   1.9323587
3-6 months     JiVitA-4    BANGLADESH   NA                   NA                1.8947099   1.8645495   1.9248703
3-6 months     MAL-ED      BANGLADESH   NA                   NA                1.9247979   1.8735932   1.9760025
3-6 months     MAL-ED      BRAZIL       NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED      INDIA        NA                   NA                1.8843292   1.8181080   1.9505504
3-6 months     MAL-ED      NEPAL        NA                   NA                1.9668794   1.9086855   2.0250732
3-6 months     MAL-ED      PERU         NA                   NA                2.0171026   1.9506965   2.0835088
6-9 months     EE          PAKISTAN     NA                   NA                1.1260884   1.0085133   1.2436636
6-9 months     GMS-Nepal   NEPAL        NA                   NA                1.3140299   1.2729534   1.3551064
6-9 months     JiVitA-4    BANGLADESH   NA                   NA                1.3251314   1.3038170   1.3464459
6-9 months     LCNI-5      MALAWI       NA                   NA                1.4372604   1.3755150   1.4990057
6-9 months     MAL-ED      BANGLADESH   NA                   NA                1.2541293   1.2135456   1.2947130
6-9 months     MAL-ED      BRAZIL       NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED      INDIA        NA                   NA                1.2497455   1.1971145   1.3023766
6-9 months     MAL-ED      NEPAL        NA                   NA                1.3520991   1.3076136   1.3965845
6-9 months     MAL-ED      PERU         NA                   NA                1.3199965   1.2656612   1.3743319
9-12 months    EE          PAKISTAN     NA                   NA                0.8484117   0.7632855   0.9335379
9-12 months    GMS-Nepal   NEPAL        NA                   NA                0.9981924   0.9647527   1.0316321
9-12 months    JiVitA-4    BANGLADESH   NA                   NA                1.0696646   1.0503114   1.0890177
9-12 months    LCNI-5      MALAWI       NA                   NA                0.9706344   0.8246089   1.1166600
9-12 months    MAL-ED      BANGLADESH   NA                   NA                0.9848124   0.9457805   1.0238444
9-12 months    MAL-ED      BRAZIL       NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED      INDIA        NA                   NA                0.9824181   0.9426109   1.0222252
9-12 months    MAL-ED      NEPAL        NA                   NA                1.0864239   1.0443515   1.1284963
9-12 months    MAL-ED      PERU         NA                   NA                1.0985124   1.0475959   1.1494289
12-15 months   EE          PAKISTAN     NA                   NA                1.0223758   0.9334119   1.1113396
12-15 months   GMS-Nepal   NEPAL        NA                   NA                0.8704063   0.8447703   0.8960424
12-15 months   JiVitA-4    BANGLADESH   NA                   NA                0.9393119   0.9219119   0.9567119
12-15 months   MAL-ED      BANGLADESH   NA                   NA                0.9199912   0.8786810   0.9613015
12-15 months   MAL-ED      BRAZIL       NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED      INDIA        NA                   NA                0.9104871   0.8696624   0.9513117
12-15 months   MAL-ED      NEPAL        NA                   NA                0.9495446   0.9093518   0.9897373
12-15 months   MAL-ED      PERU         NA                   NA                0.8917280   0.8454370   0.9380189
15-18 months   EE          PAKISTAN     NA                   NA                0.8381757   0.7627800   0.9135715
15-18 months   GMS-Nepal   NEPAL        NA                   NA                0.7603933   0.7281594   0.7926271
15-18 months   JiVitA-4    BANGLADESH   NA                   NA                0.8612746   0.8433730   0.8791761
15-18 months   MAL-ED      BANGLADESH   NA                   NA                0.8230330   0.7852223   0.8608436
15-18 months   MAL-ED      BRAZIL       NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED      INDIA        NA                   NA                0.8475479   0.8106803   0.8844155
15-18 months   MAL-ED      NEPAL        NA                   NA                0.8425951   0.7997829   0.8854074
15-18 months   MAL-ED      PERU         NA                   NA                0.8534307   0.8111406   0.8957208
18-21 months   EE          PAKISTAN     NA                   NA                0.7870620   0.7131718   0.8609522
18-21 months   GMS-Nepal   NEPAL        NA                   NA                0.9058703   0.8708102   0.9409303
18-21 months   LCNI-5      MALAWI       NA                   NA                0.8419773   0.7481346   0.9358201
18-21 months   MAL-ED      BANGLADESH   NA                   NA                0.8195860   0.7845702   0.8546019
18-21 months   MAL-ED      BRAZIL       NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED      INDIA        NA                   NA                0.8782845   0.8424042   0.9141648
18-21 months   MAL-ED      NEPAL        NA                   NA                0.8108531   0.7724296   0.8492765
18-21 months   MAL-ED      PERU         NA                   NA                0.8414439   0.7967949   0.8860929
21-24 months   GMS-Nepal   NEPAL        NA                   NA                0.7949572   0.7486969   0.8412176
21-24 months   LCNI-5      MALAWI       NA                   NA                0.7342569   0.6662316   0.8022822
21-24 months   MAL-ED      BANGLADESH   NA                   NA                0.7717324   0.7354003   0.8080644
21-24 months   MAL-ED      BRAZIL       NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED      INDIA        NA                   NA                0.8278900   0.7955176   0.8602624
21-24 months   MAL-ED      NEPAL        NA                   NA                0.7862274   0.7444562   0.8279985
21-24 months   MAL-ED      PERU         NA                   NA                0.7610506   0.7141593   0.8079419


### Parameter: ATE


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL        0                    1                 -0.0350173   -0.1594850    0.0894503
0-3 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH   0                    1                  0.0118154   -0.0126218    0.0362527
0-3 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH   0                    1                 -0.1430444   -0.2346358   -0.0514529
0-3 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH   0                    1                  0.0039324   -0.1386486    0.1465134
0-3 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL       0                    1                 -0.4500868   -0.7982165   -0.1019571
0-3 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA        0                    1                  0.1473877   -0.1794690    0.4742443
0-3 months     MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL        0                    1                  0.2757277   -0.0161556    0.5676110
0-3 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU         0                    1                 -0.0812595   -0.2233127    0.0607936
3-6 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL        0                    1                 -0.0873335   -0.1799719    0.0053048
3-6 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH   0                    1                 -0.0008619   -0.0287582    0.0270344
3-6 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH   0                    1                  0.0703111   -0.0130304    0.1536526
3-6 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH   0                    1                 -0.0002466   -0.1153181    0.1148249
3-6 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL       0                    1                  0.0001929   -0.2376636    0.2380493
3-6 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA        0                    1                  0.0152091   -0.2209727    0.2513909
3-6 months     MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL        0                    1                  0.2066708   -0.0578329    0.4711744
3-6 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU         0                    1                 -0.0289208   -0.1712909    0.1134494
6-9 months     EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE          PAKISTAN     0                    1                  0.1049820   -0.1134392    0.3234031
6-9 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL        0                    1                 -0.0021051   -0.1118028    0.1075926
6-9 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH   0                    1                  0.0075014   -0.0437254    0.0587283
6-9 months     LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI       0                    1                  0.0011961   -0.1960271    0.1984193
6-9 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH   0                    1                  0.0102601   -0.0752800    0.0958002
6-9 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL       0                    1                 -0.1628677   -0.5267601    0.2010247
6-9 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA        0                    1                  0.0222983   -0.1279545    0.1725511
6-9 months     MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL        0                    1                  0.0464435   -0.1502088    0.2430958
6-9 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU         0                    1                 -0.0114860   -0.1325979    0.1096260
9-12 months    EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE          PAKISTAN     0                    1                  0.0431716   -0.2072856    0.2936289
9-12 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL        0                    1                  0.0438234   -0.0521913    0.1398381
9-12 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH   0                    1                  0.0001525   -0.0452209    0.0455259
9-12 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI       0                    1                 -0.2702447   -0.5624619    0.0219724
9-12 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH   0                    1                  0.0562136   -0.0267383    0.1391655
9-12 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL       0                    1                  0.0454393   -0.1654115    0.2562902
9-12 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA        0                    1                  0.0440741   -0.1842519    0.2724001
9-12 months    MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL        0                    1                  0.1144487   -0.0105742    0.2394715
9-12 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU         0                    1                  0.0038260   -0.1009220    0.1085740
12-15 months   EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE          PAKISTAN     0                    1                  0.1697381   -0.1478382    0.4873144
12-15 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL        0                    1                 -0.0091845   -0.0743736    0.0560047
12-15 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH   0                    1                  0.0379395   -0.0077377    0.0836167
12-15 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH   0                    1                  0.0419188   -0.0412713    0.1251089
12-15 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL       0                    1                  0.0080087   -0.1501595    0.1661769
12-15 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA        0                    1                 -0.0042832   -0.1932074    0.1846411
12-15 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL        0                    1                  0.0100244   -0.2063553    0.2264040
12-15 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU         0                    1                  0.0350361   -0.0607637    0.1308359
15-18 months   EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE          PAKISTAN     0                    1                  0.0770926   -0.0487913    0.2029766
15-18 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL        0                    1                 -0.0871471   -0.1503144   -0.0239799
15-18 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH   0                    1                  0.0038573   -0.0382151    0.0459297
15-18 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH   0                    1                  0.0017915   -0.0773375    0.0809206
15-18 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL       0                    1                  0.0203284   -0.1528101    0.1934670
15-18 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA        0                    1                  0.0596100   -0.0556862    0.1749062
15-18 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL        0                    1                 -0.0605554   -0.1972512    0.0761403
15-18 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU         0                    1                  0.0306600   -0.0557529    0.1170728
18-21 months   EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE          PAKISTAN     0                    1                  0.0274317   -0.1039496    0.1588129
18-21 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL        0                    1                  0.0181240   -0.0492264    0.0854744
18-21 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI       0                    1                  0.1491178   -0.1427575    0.4409931
18-21 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH   0                    1                  0.0264732   -0.0480044    0.1009507
18-21 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL       0                    1                  0.1491192   -0.0116073    0.3098457
18-21 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA        0                    1                  0.0083896   -0.1378682    0.1546474
18-21 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL        0                    1                  0.0945620   -0.0460898    0.2352138
18-21 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU         0                    1                  0.0219616   -0.0741294    0.1180525
21-24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL        0                    1                  0.0491762   -0.0757457    0.1740982
21-24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI       0                    1                 -0.0200858   -0.1838065    0.1436349
21-24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH   0                    1                 -0.0040486   -0.0846578    0.0765607
21-24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL       0                    1                 -0.0092438   -0.1058141    0.0873265
21-24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA        0                    1                 -0.0433618   -0.1785142    0.0917905
21-24 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL        0                    1                 -0.0483483   -0.2559325    0.1592360
21-24 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU         0                    1                  0.0284007   -0.0764552    0.1332566


### Parameter: PAR


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0091231   -0.0417380    0.0234919
0-3 months     JiVitA-3    BANGLADESH   1                    NA                 0.0025231   -0.0029953    0.0080414
0-3 months     JiVitA-4    BANGLADESH   1                    NA                -0.0233319   -0.0383515   -0.0083123
0-3 months     MAL-ED      BANGLADESH   1                    NA                 0.0008126   -0.0917918    0.0934169
0-3 months     MAL-ED      BRAZIL       1                    NA                -0.4199352   -0.7279468   -0.1119235
0-3 months     MAL-ED      INDIA        1                    NA                 0.1403272   -0.1709085    0.4515629
0-3 months     MAL-ED      NEPAL        1                    NA                 0.2449080   -0.0329932    0.5228091
0-3 months     MAL-ED      PERU         1                    NA                -0.0531665   -0.1484960    0.0421631
3-6 months     GMS-Nepal   NEPAL        1                    NA                -0.0234854   -0.0489023    0.0019315
3-6 months     JiVitA-3    BANGLADESH   1                    NA                 0.0001228   -0.0063985    0.0066441
3-6 months     JiVitA-4    BANGLADESH   1                    NA                 0.0110264   -0.0017013    0.0237542
3-6 months     MAL-ED      BANGLADESH   1                    NA                 0.0085041   -0.0664936    0.0835017
3-6 months     MAL-ED      BRAZIL       1                    NA                -0.0027075   -0.2075445    0.2021294
3-6 months     MAL-ED      INDIA        1                    NA                 0.0149237   -0.2096530    0.2395004
3-6 months     MAL-ED      NEPAL        1                    NA                 0.2032971   -0.0504048    0.4569991
3-6 months     MAL-ED      PERU         1                    NA                -0.0182241   -0.1126109    0.0761628
6-9 months     EE          PAKISTAN     1                    NA                 0.0116647   -0.0144891    0.0378184
6-9 months     GMS-Nepal   NEPAL        1                    NA                 0.0007529   -0.0269804    0.0284861
6-9 months     JiVitA-4    BANGLADESH   1                    NA                 0.0013990   -0.0090120    0.0118099
6-9 months     LCNI-5      MALAWI       1                    NA                 0.0050099   -0.1622488    0.1722687
6-9 months     MAL-ED      BANGLADESH   1                    NA                 0.0057450   -0.0508031    0.0622931
6-9 months     MAL-ED      BRAZIL       1                    NA                -0.1416213   -0.4597147    0.1764721
6-9 months     MAL-ED      INDIA        1                    NA                 0.0220161   -0.1211746    0.1652068
6-9 months     MAL-ED      NEPAL        1                    NA                 0.0372485   -0.1503257    0.2248227
6-9 months     MAL-ED      PERU         1                    NA                -0.0030081   -0.0825830    0.0765669
9-12 months    EE          PAKISTAN     1                    NA                 0.0049059   -0.0238483    0.0336600
9-12 months    GMS-Nepal   NEPAL        1                    NA                 0.0091212   -0.0136627    0.0319050
9-12 months    JiVitA-4    BANGLADESH   1                    NA                 0.0009133   -0.0087668    0.0105934
9-12 months    LCNI-5      MALAWI       1                    NA                -0.2068640   -0.4166769    0.0029489
9-12 months    MAL-ED      BANGLADESH   1                    NA                 0.0340253   -0.0201212    0.0881719
9-12 months    MAL-ED      BRAZIL       1                    NA                 0.0265561   -0.1550797    0.2081918
9-12 months    MAL-ED      INDIA        1                    NA                 0.0416157   -0.1769523    0.2601836
9-12 months    MAL-ED      NEPAL        1                    NA                 0.1087447   -0.0109336    0.2284230
9-12 months    MAL-ED      PERU         1                    NA                 0.0024904   -0.0662671    0.0712479
12-15 months   EE          PAKISTAN     1                    NA                 0.0229376   -0.0239780    0.0698531
12-15 months   GMS-Nepal   NEPAL        1                    NA                -0.0027816   -0.0185562    0.0129930
12-15 months   JiVitA-4    BANGLADESH   1                    NA                 0.0081601   -0.0015555    0.0178756
12-15 months   MAL-ED      BANGLADESH   1                    NA                 0.0268969   -0.0274665    0.0812603
12-15 months   MAL-ED      BRAZIL       1                    NA                 0.0054330   -0.1300680    0.1409339
12-15 months   MAL-ED      INDIA        1                    NA                -0.0067119   -0.1876373    0.1742136
12-15 months   MAL-ED      NEPAL        1                    NA                 0.0125851   -0.1950484    0.2202187
12-15 months   MAL-ED      PERU         1                    NA                 0.0246057   -0.0401723    0.0893837
15-18 months   EE          PAKISTAN     1                    NA                 0.0116807   -0.0096621    0.0330235
15-18 months   GMS-Nepal   NEPAL        1                    NA                -0.0208275   -0.0366680   -0.0049870
15-18 months   JiVitA-4    BANGLADESH   1                    NA                 0.0021051   -0.0065381    0.0107483
15-18 months   MAL-ED      BANGLADESH   1                    NA                 0.0011637   -0.0496083    0.0519357
15-18 months   MAL-ED      BRAZIL       1                    NA                 0.0180878   -0.1293504    0.1655260
15-18 months   MAL-ED      INDIA        1                    NA                 0.0563875   -0.0534131    0.1661882
15-18 months   MAL-ED      NEPAL        1                    NA                -0.0573310   -0.1869021    0.0722401
15-18 months   MAL-ED      PERU         1                    NA                 0.0212809   -0.0344178    0.0769796
18-21 months   EE          PAKISTAN     1                    NA                 0.0041563   -0.0160395    0.0243522
18-21 months   GMS-Nepal   NEPAL        1                    NA                 0.0039851   -0.0120418    0.0200121
18-21 months   LCNI-5      MALAWI       1                    NA                 0.1197675   -0.1075790    0.3471141
18-21 months   MAL-ED      BANGLADESH   1                    NA                 0.0144943   -0.0342695    0.0632581
18-21 months   MAL-ED      BRAZIL       1                    NA                 0.1277078   -0.0102098    0.2656253
18-21 months   MAL-ED      INDIA        1                    NA                 0.0011027   -0.1397345    0.1419399
18-21 months   MAL-ED      NEPAL        1                    NA                 0.0873139   -0.0462745    0.2209023
18-21 months   MAL-ED      PERU         1                    NA                 0.0143172   -0.0482864    0.0769208
21-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0059266   -0.0237006    0.0355538
21-24 months   LCNI-5      MALAWI       1                    NA                -0.0207605   -0.1565776    0.1150567
21-24 months   MAL-ED      BANGLADESH   1                    NA                 0.0010352   -0.0520084    0.0540788
21-24 months   MAL-ED      BRAZIL       1                    NA                -0.0120052   -0.0936889    0.0696785
21-24 months   MAL-ED      INDIA        1                    NA                -0.0442856   -0.1731539    0.0845827
21-24 months   MAL-ED      NEPAL        1                    NA                -0.0415805   -0.2391561    0.1559951
21-24 months   MAL-ED      PERU         1                    NA                 0.0185374   -0.0515649    0.0886397
