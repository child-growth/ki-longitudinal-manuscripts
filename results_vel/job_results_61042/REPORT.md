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
![](/tmp/b2656a02-1747-49ac-906a-95d38afd1a4b/0435b967-8907-43a4-bd67-88eb105ee01a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b2656a02-1747-49ac-906a-95d38afd1a4b/0435b967-8907-43a4-bd67-88eb105ee01a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b2656a02-1747-49ac-906a-95d38afd1a4b/0435b967-8907-43a4-bd67-88eb105ee01a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0267363   -0.0556262    0.0021537
0-3 months     GMS-Nepal   NEPAL        0                    NA                -0.0513402   -0.1047221    0.0020418
0-3 months     JiVitA-3    BANGLADESH   1                    NA                 0.0735385    0.0669640    0.0801130
0-3 months     JiVitA-3    BANGLADESH   0                    NA                 0.0792967    0.0681107    0.0904827
0-3 months     JiVitA-4    BANGLADESH   1                    NA                 0.0791455    0.0636793    0.0946117
0-3 months     JiVitA-4    BANGLADESH   0                    NA                 0.0082789   -0.0317625    0.0483202
0-3 months     MAL-ED      BANGLADESH   1                    NA                -0.1060493   -0.1587582   -0.0533404
0-3 months     MAL-ED      BANGLADESH   0                    NA                -0.1179091   -0.1611153   -0.0747030
0-3 months     MAL-ED      BRAZIL       1                    NA                 0.2977801    0.1190390    0.4765212
0-3 months     MAL-ED      BRAZIL       0                    NA                 0.1246454    0.0642204    0.1850705
0-3 months     MAL-ED      INDIA        1                    NA                -0.1519059   -0.3354979    0.0316861
0-3 months     MAL-ED      INDIA        0                    NA                -0.0618553   -0.1121399   -0.0115708
0-3 months     MAL-ED      NEPAL        1                    NA                -0.0800144   -0.1922488    0.0322201
0-3 months     MAL-ED      NEPAL        0                    NA                 0.0664910    0.0168639    0.1161180
0-3 months     MAL-ED      PERU         1                    NA                -0.2228260   -0.2818388   -0.1638132
0-3 months     MAL-ED      PERU         0                    NA                -0.2699691   -0.3110829   -0.2288554
3-6 months     GMS-Nepal   NEPAL        1                    NA                -0.1517091   -0.1732129   -0.1302053
3-6 months     GMS-Nepal   NEPAL        0                    NA                -0.1858250   -0.2239863   -0.1476636
3-6 months     JiVitA-3    BANGLADESH   1                    NA                -0.0038174   -0.0107849    0.0031501
3-6 months     JiVitA-3    BANGLADESH   0                    NA                -0.0035570   -0.0150201    0.0079061
3-6 months     JiVitA-4    BANGLADESH   1                    NA                -0.0169690   -0.0321615   -0.0017766
3-6 months     JiVitA-4    BANGLADESH   0                    NA                 0.0218868   -0.0131709    0.0569444
3-6 months     MAL-ED      BANGLADESH   1                    NA                -0.0153558   -0.0592788    0.0285671
3-6 months     MAL-ED      BANGLADESH   0                    NA                -0.0297476   -0.0585194   -0.0009758
3-6 months     MAL-ED      BRAZIL       1                    NA                 0.0327893   -0.0739020    0.1394806
3-6 months     MAL-ED      BRAZIL       0                    NA                 0.0624893    0.0230979    0.1018808
3-6 months     MAL-ED      INDIA        1                    NA                -0.0186970   -0.1211725    0.0837784
3-6 months     MAL-ED      INDIA        0                    NA                -0.0404508   -0.0723690   -0.0085327
3-6 months     MAL-ED      NEPAL        1                    NA                -0.0301925   -0.1482681    0.0878831
3-6 months     MAL-ED      NEPAL        0                    NA                -0.0215875   -0.0501162    0.0069411
3-6 months     MAL-ED      PERU         1                    NA                 0.0359391   -0.0207268    0.0926050
3-6 months     MAL-ED      PERU         0                    NA                 0.0218123   -0.0159267    0.0595512
6-9 months     EE          PAKISTAN     1                    NA                -0.1102361   -0.1665884   -0.0538838
6-9 months     EE          PAKISTAN     0                    NA                -0.0939376   -0.1833491   -0.0045262
6-9 months     GMS-Nepal   NEPAL        1                    NA                -0.0458481   -0.0637917   -0.0279044
6-9 months     GMS-Nepal   NEPAL        0                    NA                -0.0432308   -0.0887214    0.0022599
6-9 months     JiVitA-4    BANGLADESH   1                    NA                -0.0296204   -0.0397138   -0.0195270
6-9 months     JiVitA-4    BANGLADESH   0                    NA                -0.0242844   -0.0446617   -0.0039070
6-9 months     LCNI-5      MALAWI       1                    NA                 0.0191692   -0.0601835    0.0985219
6-9 months     LCNI-5      MALAWI       0                    NA                 0.0060749   -0.0223370    0.0344869
6-9 months     MAL-ED      BANGLADESH   1                    NA                -0.0692020   -0.0987996   -0.0396045
6-9 months     MAL-ED      BANGLADESH   0                    NA                -0.0647046   -0.0868851   -0.0425242
6-9 months     MAL-ED      BRAZIL       1                    NA                 0.0740980   -0.0494586    0.1976547
6-9 months     MAL-ED      BRAZIL       0                    NA                -0.0013136   -0.0351528    0.0325256
6-9 months     MAL-ED      INDIA        1                    NA                -0.0231565   -0.0817397    0.0354267
6-9 months     MAL-ED      INDIA        0                    NA                -0.0687707   -0.0930551   -0.0444863
6-9 months     MAL-ED      NEPAL        1                    NA                -0.1085599   -0.1833482   -0.0337716
6-9 months     MAL-ED      NEPAL        0                    NA                -0.0343699   -0.0543777   -0.0143621
6-9 months     MAL-ED      PERU         1                    NA                -0.0300951   -0.0707130    0.0105229
6-9 months     MAL-ED      PERU         0                    NA                -0.0320161   -0.0612307   -0.0028015
9-12 months    EE          PAKISTAN     1                    NA                -0.1276355   -0.1664421   -0.0888290
9-12 months    EE          PAKISTAN     0                    NA                -0.1346832   -0.2415573   -0.0278091
9-12 months    GMS-Nepal   NEPAL        1                    NA                -0.0837477   -0.0979190   -0.0695764
9-12 months    GMS-Nepal   NEPAL        0                    NA                -0.0664444   -0.1054743   -0.0274144
9-12 months    JiVitA-4    BANGLADESH   1                    NA                -0.0537890   -0.0628968   -0.0446811
9-12 months    JiVitA-4    BANGLADESH   0                    NA                -0.0506568   -0.0673283   -0.0339854
9-12 months    LCNI-5      MALAWI       1                    NA                -0.0186093   -0.1238442    0.0866255
9-12 months    LCNI-5      MALAWI       0                    NA                -0.1232451   -0.2091784   -0.0373118
9-12 months    MAL-ED      BANGLADESH   1                    NA                -0.1071776   -0.1330394   -0.0813158
9-12 months    MAL-ED      BANGLADESH   0                    NA                -0.0794384   -0.1001820   -0.0586948
9-12 months    MAL-ED      BRAZIL       1                    NA                -0.0395642   -0.1223367    0.0432083
9-12 months    MAL-ED      BRAZIL       0                    NA                 0.0163953   -0.0168256    0.0496161
9-12 months    MAL-ED      INDIA        1                    NA                -0.0489731   -0.1316654    0.0337191
9-12 months    MAL-ED      INDIA        0                    NA                -0.0896593   -0.1064009   -0.0729178
9-12 months    MAL-ED      NEPAL        1                    NA                -0.1138883   -0.1538968   -0.0738799
9-12 months    MAL-ED      NEPAL        0                    NA                -0.0609622   -0.0791738   -0.0427505
9-12 months    MAL-ED      PERU         1                    NA                -0.0457000   -0.0803109   -0.0110890
9-12 months    MAL-ED      PERU         0                    NA                -0.0421090   -0.0694392   -0.0147788
12-15 months   EE          PAKISTAN     1                    NA                -0.0016762   -0.0345630    0.0312106
12-15 months   EE          PAKISTAN     0                    NA                 0.0416377   -0.0932971    0.1765724
12-15 months   GMS-Nepal   NEPAL        1                    NA                -0.0696401   -0.0803373   -0.0589428
12-15 months   GMS-Nepal   NEPAL        0                    NA                -0.0707387   -0.0925339   -0.0489434
12-15 months   JiVitA-4    BANGLADESH   1                    NA                -0.0497044   -0.0568019   -0.0426069
12-15 months   JiVitA-4    BANGLADESH   0                    NA                -0.0319967   -0.0487978   -0.0151955
12-15 months   MAL-ED      BANGLADESH   1                    NA                -0.0648382   -0.0894519   -0.0402246
12-15 months   MAL-ED      BANGLADESH   0                    NA                -0.0479511   -0.0693199   -0.0265824
12-15 months   MAL-ED      BRAZIL       1                    NA                -0.0232565   -0.0830630    0.0365500
12-15 months   MAL-ED      BRAZIL       0                    NA                 0.0007001   -0.0239206    0.0253208
12-15 months   MAL-ED      INDIA        1                    NA                -0.0597660   -0.1247346    0.0052026
12-15 months   MAL-ED      INDIA        0                    NA                -0.0569808   -0.0733860   -0.0405756
12-15 months   MAL-ED      NEPAL        1                    NA                -0.0595796   -0.1245700    0.0054107
12-15 months   MAL-ED      NEPAL        0                    NA                -0.0583424   -0.0746430   -0.0420418
12-15 months   MAL-ED      PERU         1                    NA                -0.0721040   -0.0998561   -0.0443519
12-15 months   MAL-ED      PERU         0                    NA                -0.0596107   -0.0824542   -0.0367673
15-18 months   EE          PAKISTAN     1                    NA                -0.0239930   -0.0525465    0.0045604
15-18 months   EE          PAKISTAN     0                    NA                -0.0267957   -0.0572607    0.0036694
15-18 months   GMS-Nepal   NEPAL        1                    NA                -0.0589711   -0.0733913   -0.0445510
15-18 months   GMS-Nepal   NEPAL        0                    NA                -0.0934403   -0.1105108   -0.0763697
15-18 months   JiVitA-4    BANGLADESH   1                    NA                -0.0334225   -0.0406995   -0.0261455
15-18 months   JiVitA-4    BANGLADESH   0                    NA                -0.0302029   -0.0438353   -0.0165704
15-18 months   MAL-ED      BANGLADESH   1                    NA                -0.0477501   -0.0717289   -0.0237712
15-18 months   MAL-ED      BANGLADESH   0                    NA                -0.0469920   -0.0650698   -0.0289142
15-18 months   MAL-ED      BRAZIL       1                    NA                -0.0308810   -0.0908860    0.0291241
15-18 months   MAL-ED      BRAZIL       0                    NA                -0.0179232   -0.0409368    0.0050904
15-18 months   MAL-ED      INDIA        1                    NA                -0.0274927   -0.0714280    0.0164427
15-18 months   MAL-ED      INDIA        0                    NA                -0.0364727   -0.0501188   -0.0228265
15-18 months   MAL-ED      NEPAL        1                    NA                -0.0446770   -0.0783166   -0.0110373
15-18 months   MAL-ED      NEPAL        0                    NA                -0.0561676   -0.0724461   -0.0398891
15-18 months   MAL-ED      PERU         1                    NA                -0.0409204   -0.0653179   -0.0165230
15-18 months   MAL-ED      PERU         0                    NA                -0.0313216   -0.0512743   -0.0113688
18-21 months   EE          PAKISTAN     1                    NA                -0.0093635   -0.0349812    0.0162542
18-21 months   EE          PAKISTAN     0                    NA                -0.0265882   -0.0706485    0.0174721
18-21 months   GMS-Nepal   NEPAL        1                    NA                 0.0153899    0.0001349    0.0306450
18-21 months   GMS-Nepal   NEPAL        0                    NA                 0.0249455    0.0063589    0.0435322
18-21 months   LCNI-5      MALAWI       1                    NA                -0.0367575   -0.1488011    0.0752862
18-21 months   LCNI-5      MALAWI       0                    NA                -0.0004287   -0.0273625    0.0265050
18-21 months   MAL-ED      BANGLADESH   1                    NA                -0.0122215   -0.0323615    0.0079186
18-21 months   MAL-ED      BANGLADESH   0                    NA                -0.0150204   -0.0307871    0.0007463
18-21 months   MAL-ED      BRAZIL       1                    NA                -0.0597980   -0.1144076   -0.0051883
18-21 months   MAL-ED      BRAZIL       0                    NA                -0.0134324   -0.0407396    0.0138747
18-21 months   MAL-ED      INDIA        1                    NA                 0.0481354   -0.0045240    0.1007949
18-21 months   MAL-ED      INDIA        0                    NA                 0.0072128   -0.0047097    0.0191352
18-21 months   MAL-ED      NEPAL        1                    NA                -0.0764197   -0.1185307   -0.0343086
18-21 months   MAL-ED      NEPAL        0                    NA                -0.0284827   -0.0421529   -0.0148125
18-21 months   MAL-ED      PERU         1                    NA                -0.0132700   -0.0400345    0.0134945
18-21 months   MAL-ED      PERU         0                    NA                -0.0054822   -0.0245138    0.0135494
21-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0444469    0.0275823    0.0613114
21-24 months   GMS-Nepal   NEPAL        0                    NA                 0.0420995    0.0018874    0.0823115
21-24 months   LCNI-5      MALAWI       1                    NA                -0.0052696   -0.0545026    0.0439634
21-24 months   LCNI-5      MALAWI       0                    NA                -0.0131458   -0.0378874    0.0115958
21-24 months   MAL-ED      BANGLADESH   1                    NA                 0.0242209    0.0016484    0.0467934
21-24 months   MAL-ED      BANGLADESH   0                    NA                 0.0262772    0.0113585    0.0411958
21-24 months   MAL-ED      BRAZIL       1                    NA                 0.0187842   -0.0188503    0.0564188
21-24 months   MAL-ED      BRAZIL       0                    NA                 0.0160660   -0.0018906    0.0340225
21-24 months   MAL-ED      INDIA        1                    NA                 0.0102479   -0.0329909    0.0534866
21-24 months   MAL-ED      INDIA        0                    NA                 0.0303331    0.0185789    0.0420874
21-24 months   MAL-ED      NEPAL        1                    NA                 0.0414296   -0.0207550    0.1036143
21-24 months   MAL-ED      NEPAL        0                    NA                 0.0042513   -0.0100938    0.0185963
21-24 months   MAL-ED      PERU         1                    NA                 0.0451953    0.0148626    0.0755281
21-24 months   MAL-ED      PERU         0                    NA                 0.0639528    0.0453277    0.0825779


### Parameter: E(Y)


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        NA                   NA                -0.0320017   -0.0574984   -0.0065051
0-3 months     JiVitA-3    BANGLADESH   NA                   NA                 0.0748381    0.0686962    0.0809800
0-3 months     JiVitA-4    BANGLADESH   NA                   NA                 0.0674700    0.0524969    0.0824432
0-3 months     MAL-ED      BANGLADESH   NA                   NA                -0.1184816   -0.1534627   -0.0835006
0-3 months     MAL-ED      BRAZIL       NA                   NA                 0.1446583    0.0870976    0.2022191
0-3 months     MAL-ED      INDIA        NA                   NA                -0.0661691   -0.1149338   -0.0174045
0-3 months     MAL-ED      NEPAL        NA                   NA                 0.0549995    0.0083296    0.1016694
0-3 months     MAL-ED      PERU         NA                   NA                -0.2591669   -0.2929238   -0.2254100
3-6 months     GMS-Nepal   NEPAL        NA                   NA                -0.1617717   -0.1805409   -0.1430025
3-6 months     JiVitA-3    BANGLADESH   NA                   NA                -0.0036992   -0.0098266    0.0024282
3-6 months     JiVitA-4    BANGLADESH   NA                   NA                -0.0106594   -0.0245209    0.0032020
3-6 months     MAL-ED      BANGLADESH   NA                   NA                -0.0242637   -0.0483310   -0.0001965
3-6 months     MAL-ED      BRAZIL       NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED      INDIA        NA                   NA                -0.0402849   -0.0709914   -0.0095783
3-6 months     MAL-ED      NEPAL        NA                   NA                -0.0219437   -0.0494813    0.0055938
3-6 months     MAL-ED      PERU         NA                   NA                 0.0265214   -0.0048238    0.0578666
6-9 months     EE          PAKISTAN     NA                   NA                -0.1084252   -0.1595142   -0.0573361
6-9 months     GMS-Nepal   NEPAL        NA                   NA                -0.0453626   -0.0630368   -0.0276885
6-9 months     JiVitA-4    BANGLADESH   NA                   NA                -0.0285987   -0.0378556   -0.0193419
6-9 months     LCNI-5      MALAWI       NA                   NA                 0.0095862   -0.0174314    0.0366037
6-9 months     MAL-ED      BANGLADESH   NA                   NA                -0.0677541   -0.0853832   -0.0501249
6-9 months     MAL-ED      BRAZIL       NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED      INDIA        NA                   NA                -0.0688970   -0.0921281   -0.0456658
6-9 months     MAL-ED      NEPAL        NA                   NA                -0.0368585   -0.0562650   -0.0174521
6-9 months     MAL-ED      PERU         NA                   NA                -0.0335784   -0.0576919   -0.0094649
9-12 months    EE          PAKISTAN     NA                   NA                -0.1284364   -0.1649203   -0.0919525
9-12 months    GMS-Nepal   NEPAL        NA                   NA                -0.0795850   -0.0935763   -0.0655937
9-12 months    JiVitA-4    BANGLADESH   NA                   NA                -0.0529092   -0.0609759   -0.0448426
9-12 months    LCNI-5      MALAWI       NA                   NA                -0.1052774   -0.1637460   -0.0468087
9-12 months    MAL-ED      BANGLADESH   NA                   NA                -0.0895925   -0.1058429   -0.0733421
9-12 months    MAL-ED      BRAZIL       NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED      INDIA        NA                   NA                -0.0907785   -0.1072717   -0.0742853
9-12 months    MAL-ED      NEPAL        NA                   NA                -0.0633531   -0.0808095   -0.0458966
9-12 months    MAL-ED      PERU         NA                   NA                -0.0419261   -0.0633861   -0.0204661
12-15 months   EE          PAKISTAN     NA                   NA                 0.0041770   -0.0299533    0.0383073
12-15 months   GMS-Nepal   NEPAL        NA                   NA                -0.0700044   -0.0796323   -0.0603764
12-15 months   JiVitA-4    BANGLADESH   NA                   NA                -0.0457929   -0.0524470   -0.0391387
12-15 months   MAL-ED      BANGLADESH   NA                   NA                -0.0539793   -0.0699671   -0.0379916
12-15 months   MAL-ED      BRAZIL       NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED      INDIA        NA                   NA                -0.0564380   -0.0722459   -0.0406302
12-15 months   MAL-ED      NEPAL        NA                   NA                -0.0581047   -0.0738902   -0.0423192
12-15 months   MAL-ED      PERU         NA                   NA                -0.0653532   -0.0832313   -0.0474751
15-18 months   EE          PAKISTAN     NA                   NA                -0.0244177   -0.0490831    0.0002477
15-18 months   GMS-Nepal   NEPAL        NA                   NA                -0.0665082   -0.0782160   -0.0548005
15-18 months   JiVitA-4    BANGLADESH   NA                   NA                -0.0322067   -0.0387357   -0.0256778
15-18 months   MAL-ED      BANGLADESH   NA                   NA                -0.0465524   -0.0603507   -0.0327542
15-18 months   MAL-ED      BRAZIL       NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED      INDIA        NA                   NA                -0.0368191   -0.0499234   -0.0237147
15-18 months   MAL-ED      NEPAL        NA                   NA                -0.0540981   -0.0695896   -0.0386065
15-18 months   MAL-ED      PERU         NA                   NA                -0.0360565   -0.0515481   -0.0205649
18-21 months   EE          PAKISTAN     NA                   NA                -0.0119733   -0.0348121    0.0108655
18-21 months   GMS-Nepal   NEPAL        NA                   NA                 0.0165107    0.0043866    0.0286347
18-21 months   LCNI-5      MALAWI       NA                   NA                -0.0092283   -0.0423286    0.0238719
18-21 months   MAL-ED      BANGLADESH   NA                   NA                -0.0136918   -0.0255600   -0.0018237
18-21 months   MAL-ED      BRAZIL       NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED      INDIA        NA                   NA                 0.0056606   -0.0059781    0.0172993
18-21 months   MAL-ED      NEPAL        NA                   NA                -0.0305803   -0.0437450   -0.0174157
18-21 months   MAL-ED      PERU         NA                   NA                -0.0081141   -0.0233572    0.0071290
21-24 months   GMS-Nepal   NEPAL        NA                   NA                 0.0465624    0.0306829    0.0624420
21-24 months   LCNI-5      MALAWI       NA                   NA                -0.0116248   -0.0336145    0.0103649
21-24 months   MAL-ED      BANGLADESH   NA                   NA                 0.0256240    0.0132472    0.0380008
21-24 months   MAL-ED      BRAZIL       NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED      INDIA        NA                   NA                 0.0308252    0.0194990    0.0421515
21-24 months   MAL-ED      NEPAL        NA                   NA                 0.0061413   -0.0078495    0.0201321
21-24 months   MAL-ED      PERU         NA                   NA                 0.0569744    0.0416628    0.0722859


### Parameter: ATE


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL        0                    1                 -0.0246039   -0.0854121    0.0362044
0-3 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH   0                    1                  0.0057582   -0.0059522    0.0174686
0-3 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH   0                    1                 -0.0708666   -0.1128660   -0.0288673
0-3 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH   0                    1                 -0.0118598   -0.0783182    0.0545986
0-3 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL       0                    1                 -0.1731347   -0.3619607    0.0156914
0-3 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA        0                    1                  0.0900506   -0.1003032    0.2804044
0-3 months     MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL        0                    1                  0.1465053    0.0235840    0.2694267
0-3 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU         0                    1                 -0.0471432   -0.1190065    0.0247202
3-6 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL        0                    1                 -0.0341158   -0.0779885    0.0097568
3-6 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH   0                    1                  0.0002604   -0.0127526    0.0132734
3-6 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH   0                    1                  0.0388558    0.0004752    0.0772364
3-6 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH   0                    1                 -0.0143918   -0.0673332    0.0385496
3-6 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL       0                    1                  0.0297001   -0.0836759    0.1430760
3-6 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA        0                    1                 -0.0217538   -0.1291177    0.0856101
3-6 months     MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL        0                    1                  0.0086050   -0.1129728    0.1301828
3-6 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU         0                    1                 -0.0141269   -0.0824017    0.0541479
6-9 months     EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE          PAKISTAN     0                    1                  0.0162985   -0.0893897    0.1219867
6-9 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL        0                    1                  0.0026173   -0.0460947    0.0513293
6-9 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH   0                    1                  0.0053360   -0.0170014    0.0276734
6-9 months     LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI       0                    1                 -0.0130943   -0.0977058    0.0715172
6-9 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH   0                    1                  0.0044974   -0.0326217    0.0416165
6-9 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL       0                    1                 -0.0754116   -0.2037034    0.0528801
6-9 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA        0                    1                 -0.0456142   -0.1091383    0.0179098
6-9 months     MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL        0                    1                  0.0741900   -0.0035996    0.1519797
6-9 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU         0                    1                 -0.0019210   -0.0524011    0.0485590
9-12 months    EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE          PAKISTAN     0                    1                 -0.0070477   -0.1207491    0.1066537
9-12 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL        0                    1                  0.0173033   -0.0242373    0.0588439
9-12 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH   0                    1                  0.0031321   -0.0157693    0.0220336
9-12 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI       0                    1                 -0.1046357   -0.2558753    0.0466038
9-12 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH   0                    1                  0.0277392   -0.0053178    0.0607961
9-12 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL       0                    1                  0.0559595   -0.0333234    0.1452424
9-12 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA        0                    1                 -0.0406862   -0.1250498    0.0436774
9-12 months    MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL        0                    1                  0.0529261    0.0088243    0.0970280
9-12 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU         0                    1                  0.0035910   -0.0405672    0.0477492
12-15 months   EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE          PAKISTAN     0                    1                  0.0433139   -0.0955707    0.1821984
12-15 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL        0                    1                 -0.0010986   -0.0254057    0.0232086
12-15 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH   0                    1                  0.0177077   -0.0004449    0.0358604
12-15 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH   0                    1                  0.0168871   -0.0157715    0.0495458
12-15 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL       0                    1                  0.0239566   -0.0407498    0.0886630
12-15 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA        0                    1                  0.0027852   -0.0643300    0.0699004
12-15 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL        0                    1                  0.0012373   -0.0657521    0.0682266
12-15 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU         0                    1                  0.0124932   -0.0232533    0.0482397
15-18 months   EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE          PAKISTAN     0                    1                 -0.0028026   -0.0445569    0.0389516
15-18 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL        0                    1                 -0.0344691   -0.0568522   -0.0120860
15-18 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH   0                    1                  0.0032196   -0.0118462    0.0182854
15-18 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH   0                    1                  0.0007581   -0.0293842    0.0309004
15-18 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL       0                    1                  0.0129578   -0.0517684    0.0776840
15-18 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA        0                    1                 -0.0089800   -0.0549591    0.0369991
15-18 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL        0                    1                 -0.0114906   -0.0489918    0.0260106
15-18 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU         0                    1                  0.0095989   -0.0220300    0.0412277
18-21 months   EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE          PAKISTAN     0                    1                 -0.0172247   -0.0681912    0.0337417
18-21 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL        0                    1                  0.0095556   -0.0153974    0.0345087
18-21 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI       0                    1                  0.0363288   -0.0796289    0.1522864
18-21 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH   0                    1                 -0.0027990   -0.0291640    0.0235660
18-21 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL       0                    1                  0.0463655   -0.0147382    0.1074692
18-21 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA        0                    1                 -0.0409227   -0.0954188    0.0135734
18-21 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL        0                    1                  0.0479370    0.0036734    0.0922005
18-21 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU         0                    1                  0.0077878   -0.0256810    0.0412566
21-24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL        0                    1                 -0.0023474   -0.0460379    0.0413432
21-24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI       0                    1                 -0.0078762   -0.0637872    0.0480348
21-24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH   0                    1                  0.0020563   -0.0250384    0.0291509
21-24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL       0                    1                 -0.0027183   -0.0444985    0.0390620
21-24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA        0                    1                  0.0200853   -0.0247162    0.0648868
21-24 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL        0                    1                 -0.0371783   -0.1010125    0.0266558
21-24 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU         0                    1                  0.0187574   -0.0174644    0.0549793


### Parameter: PAR


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0052655   -0.0213668    0.0108358
0-3 months     JiVitA-3    BANGLADESH   1                    NA                 0.0012996   -0.0013433    0.0039425
0-3 months     JiVitA-4    BANGLADESH   1                    NA                -0.0116755   -0.0186168   -0.0047342
0-3 months     MAL-ED      BANGLADESH   1                    NA                -0.0124323   -0.0549634    0.0300987
0-3 months     MAL-ED      BRAZIL       1                    NA                -0.1531218   -0.3194315    0.0131879
0-3 months     MAL-ED      INDIA        1                    NA                 0.0857368   -0.0955219    0.2669954
0-3 months     MAL-ED      NEPAL        1                    NA                 0.1350138    0.0190346    0.2509931
0-3 months     MAL-ED      PERU         1                    NA                -0.0363409   -0.0846117    0.0119299
3-6 months     GMS-Nepal   NEPAL        1                    NA                -0.0100625   -0.0220313    0.0019062
3-6 months     JiVitA-3    BANGLADESH   1                    NA                 0.0001182   -0.0029095    0.0031460
3-6 months     JiVitA-4    BANGLADESH   1                    NA                 0.0063096    0.0002976    0.0123216
3-6 months     MAL-ED      BANGLADESH   1                    NA                -0.0089079   -0.0431914    0.0253756
3-6 months     MAL-ED      BRAZIL       1                    NA                 0.0269399   -0.0715577    0.1254375
3-6 months     MAL-ED      INDIA        1                    NA                -0.0215878   -0.1236802    0.0805045
3-6 months     MAL-ED      NEPAL        1                    NA                 0.0082488   -0.1088367    0.1253343
3-6 months     MAL-ED      PERU         1                    NA                -0.0094177   -0.0547935    0.0359580
6-9 months     EE          PAKISTAN     1                    NA                 0.0018109   -0.0100293    0.0136512
6-9 months     GMS-Nepal   NEPAL        1                    NA                 0.0004854   -0.0117650    0.0127359
6-9 months     JiVitA-4    BANGLADESH   1                    NA                 0.0010217   -0.0035904    0.0056337
6-9 months     LCNI-5      MALAWI       1                    NA                -0.0095831   -0.0810332    0.0618671
6-9 months     MAL-ED      BANGLADESH   1                    NA                 0.0014480   -0.0234038    0.0262998
6-9 months     MAL-ED      BRAZIL       1                    NA                -0.0653147   -0.1751511    0.0445217
6-9 months     MAL-ED      INDIA        1                    NA                -0.0457405   -0.1063928    0.0149118
6-9 months     MAL-ED      NEPAL        1                    NA                 0.0717014   -0.0025865    0.1459893
6-9 months     MAL-ED      PERU         1                    NA                -0.0034834   -0.0367107    0.0297440
9-12 months    EE          PAKISTAN     1                    NA                -0.0008009   -0.0137388    0.0121370
9-12 months    GMS-Nepal   NEPAL        1                    NA                 0.0041627   -0.0053361    0.0136614
9-12 months    JiVitA-4    BANGLADESH   1                    NA                 0.0008797   -0.0032421    0.0050016
9-12 months    LCNI-5      MALAWI       1                    NA                -0.0866680   -0.1906880    0.0173520
9-12 months    MAL-ED      BANGLADESH   1                    NA                 0.0175851   -0.0036939    0.0388641
9-12 months    MAL-ED      BRAZIL       1                    NA                 0.0477426   -0.0305787    0.1260639
9-12 months    MAL-ED      INDIA        1                    NA                -0.0418054   -0.1220293    0.0384185
9-12 months    MAL-ED      NEPAL        1                    NA                 0.0505353    0.0082752    0.0927953
9-12 months    MAL-ED      PERU         1                    NA                 0.0037739   -0.0249318    0.0324795
12-15 months   EE          PAKISTAN     1                    NA                 0.0058532   -0.0135283    0.0252347
12-15 months   GMS-Nepal   NEPAL        1                    NA                -0.0003643   -0.0062602    0.0055316
12-15 months   JiVitA-4    BANGLADESH   1                    NA                 0.0039115    0.0001294    0.0076937
12-15 months   MAL-ED      BANGLADESH   1                    NA                 0.0108589   -0.0106854    0.0324033
12-15 months   MAL-ED      BRAZIL       1                    NA                 0.0202135   -0.0359367    0.0763637
12-15 months   MAL-ED      INDIA        1                    NA                 0.0033280   -0.0607892    0.0674452
12-15 months   MAL-ED      NEPAL        1                    NA                 0.0014750   -0.0622337    0.0651836
12-15 months   MAL-ED      PERU         1                    NA                 0.0067508   -0.0170414    0.0305430
15-18 months   EE          PAKISTAN     1                    NA                -0.0004246   -0.0067606    0.0059113
15-18 months   GMS-Nepal   NEPAL        1                    NA                -0.0075371   -0.0131263   -0.0019479
15-18 months   JiVitA-4    BANGLADESH   1                    NA                 0.0012157   -0.0019970    0.0044285
15-18 months   MAL-ED      BANGLADESH   1                    NA                 0.0011976   -0.0189069    0.0213021
15-18 months   MAL-ED      BRAZIL       1                    NA                 0.0105387   -0.0456905    0.0667680
15-18 months   MAL-ED      INDIA        1                    NA                -0.0093264   -0.0530422    0.0343894
15-18 months   MAL-ED      NEPAL        1                    NA                -0.0094211   -0.0443624    0.0255203
15-18 months   MAL-ED      PERU         1                    NA                 0.0048639   -0.0156840    0.0254119
18-21 months   EE          PAKISTAN     1                    NA                -0.0026098   -0.0106230    0.0054034
18-21 months   GMS-Nepal   NEPAL        1                    NA                 0.0011207   -0.0047886    0.0070301
18-21 months   LCNI-5      MALAWI       1                    NA                 0.0275292   -0.0641895    0.1192479
18-21 months   MAL-ED      BANGLADESH   1                    NA                -0.0014704   -0.0186221    0.0156814
18-21 months   MAL-ED      BRAZIL       1                    NA                 0.0394390   -0.0137163    0.0925943
18-21 months   MAL-ED      INDIA        1                    NA                -0.0424749   -0.0952338    0.0102841
18-21 months   MAL-ED      NEPAL        1                    NA                 0.0458393    0.0039393    0.0877393
18-21 months   MAL-ED      PERU         1                    NA                 0.0051559   -0.0166619    0.0269737
21-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0021156   -0.0082445    0.0124756
21-24 months   LCNI-5      MALAWI       1                    NA                -0.0063552   -0.0532929    0.0405825
21-24 months   MAL-ED      BANGLADESH   1                    NA                 0.0014031   -0.0161893    0.0189955
21-24 months   MAL-ED      BRAZIL       1                    NA                -0.0022972   -0.0383163    0.0337218
21-24 months   MAL-ED      INDIA        1                    NA                 0.0205774   -0.0225447    0.0636994
21-24 months   MAL-ED      NEPAL        1                    NA                -0.0352883   -0.0957574    0.0251807
21-24 months   MAL-ED      PERU         1                    NA                 0.0117790   -0.0129848    0.0365428
