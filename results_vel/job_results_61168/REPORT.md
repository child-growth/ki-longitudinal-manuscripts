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
0-3 months     EE              PAKISTAN                       1                35      39
0-3 months     EE              PAKISTAN                       0                 4      39
0-3 months     GMS-Nepal       NEPAL                          1               368     501
0-3 months     GMS-Nepal       NEPAL                          0               133     501
0-3 months     JiVitA-3        BANGLADESH                     1              9439   12206
0-3 months     JiVitA-3        BANGLADESH                     0              2767   12206
0-3 months     JiVitA-4        BANGLADESH                     1              1506    1793
0-3 months     JiVitA-4        BANGLADESH                     0               287    1793
0-3 months     MAL-ED          BANGLADESH                     1                84     230
0-3 months     MAL-ED          BANGLADESH                     0               146     230
0-3 months     MAL-ED          BRAZIL                         1                30     210
0-3 months     MAL-ED          BRAZIL                         0               180     210
0-3 months     MAL-ED          INDIA                          1                11     216
0-3 months     MAL-ED          INDIA                          0               205     216
0-3 months     MAL-ED          NEPAL                          1                11     219
0-3 months     MAL-ED          NEPAL                          0               208     219
0-3 months     MAL-ED          PERU                           1                92     270
0-3 months     MAL-ED          PERU                           0               178     270
0-3 months     MAL-ED          SOUTH AFRICA                   1                 3     234
0-3 months     MAL-ED          SOUTH AFRICA                   0               231     234
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     219
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               218     219
3-6 months     EE              PAKISTAN                       1                33      37
3-6 months     EE              PAKISTAN                       0                 4      37
3-6 months     GMS-Nepal       NEPAL                          1               339     464
3-6 months     GMS-Nepal       NEPAL                          0               125     464
3-6 months     JiVitA-3        BANGLADESH                     1              5812    7576
3-6 months     JiVitA-3        BANGLADESH                     0              1764    7576
3-6 months     JiVitA-4        BANGLADESH                     1              1504    1775
3-6 months     JiVitA-4        BANGLADESH                     0               271    1775
3-6 months     MAL-ED          BANGLADESH                     1                81     224
3-6 months     MAL-ED          BANGLADESH                     0               143     224
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
6-9 months     GMS-Nepal       NEPAL                          1               353     470
6-9 months     GMS-Nepal       NEPAL                          0               117     470
6-9 months     JiVitA-4        BANGLADESH                     1              2212    2786
6-9 months     JiVitA-4        BANGLADESH                     0               574    2786
6-9 months     LCNI-5          MALAWI                         1                23     144
6-9 months     LCNI-5          MALAWI                         0               121     144
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
6-9 months     SAS-FoodSuppl   INDIA                          1                 0     139
6-9 months     SAS-FoodSuppl   INDIA                          0               139     139
9-12 months    EE              PAKISTAN                       1                39      44
9-12 months    EE              PAKISTAN                       0                 5      44
9-12 months    GMS-Nepal       NEPAL                          1               333     436
9-12 months    GMS-Nepal       NEPAL                          0               103     436
9-12 months    JiVitA-4        BANGLADESH                     1              2462    3148
9-12 months    JiVitA-4        BANGLADESH                     0               686    3148
9-12 months    LCNI-5          MALAWI                         1                10      31
9-12 months    LCNI-5          MALAWI                         0                21      31
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
9-12 months    SAS-FoodSuppl   INDIA                          1                 0     138
9-12 months    SAS-FoodSuppl   INDIA                          0               138     138
12-15 months   EE              PAKISTAN                       1                32      37
12-15 months   EE              PAKISTAN                       0                 5      37
12-15 months   GMS-Nepal       NEPAL                          1               333     436
12-15 months   GMS-Nepal       NEPAL                          0               103     436
12-15 months   JiVitA-4        BANGLADESH                     1              2460    3151
12-15 months   JiVitA-4        BANGLADESH                     0               691    3151
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
15-18 months   GMS-Nepal       NEPAL                          1               345     458
15-18 months   GMS-Nepal       NEPAL                          0               113     458
15-18 months   JiVitA-4        BANGLADESH                     1              2443    3114
15-18 months   JiVitA-4        BANGLADESH                     0               671    3114
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
15-18 months   MAL-ED          PERU                           1                75     214
15-18 months   MAL-ED          PERU                           0               139     214
15-18 months   MAL-ED          SOUTH AFRICA                   1                 3     206
15-18 months   MAL-ED          SOUTH AFRICA                   0               203     206
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     208
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               207     208
15-18 months   SAS-FoodSuppl   INDIA                          1                 0     129
15-18 months   SAS-FoodSuppl   INDIA                          0               129     129
18-21 months   EE              PAKISTAN                       1                29      34
18-21 months   EE              PAKISTAN                       0                 5      34
18-21 months   GMS-Nepal       NEPAL                          1               326     428
18-21 months   GMS-Nepal       NEPAL                          0               102     428
18-21 months   LCNI-5          MALAWI                         1                28     166
18-21 months   LCNI-5          MALAWI                         0               138     166
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
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     196
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               195     196
21-24 months   EE              PAKISTAN                       1                16      18
21-24 months   EE              PAKISTAN                       0                 2      18
21-24 months   GMS-Nepal       NEPAL                          1               252     330
21-24 months   GMS-Nepal       NEPAL                          0                78     330
21-24 months   LCNI-5          MALAWI                         1                24     134
21-24 months   LCNI-5          MALAWI                         0               110     134
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
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     194
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               193     194


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




# Results Detail

## Results Plots
![](/tmp/215f75a4-ee96-4631-baff-502f8adba5cc/ec2deb89-7ff5-49f3-9359-6dd116fd20e7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/215f75a4-ee96-4631-baff-502f8adba5cc/ec2deb89-7ff5-49f3-9359-6dd116fd20e7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/215f75a4-ee96-4631-baff-502f8adba5cc/ec2deb89-7ff5-49f3-9359-6dd116fd20e7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                0.8409797    0.8214595   0.8604999
0-3 months     GMS-Nepal   NEPAL        0                    NA                0.7962190    0.7619413   0.8304967
0-3 months     JiVitA-3    BANGLADESH   1                    NA                0.8699447    0.8658648   0.8740245
0-3 months     JiVitA-3    BANGLADESH   0                    NA                0.8707294    0.8636727   0.8777860
0-3 months     JiVitA-4    BANGLADESH   1                    NA                0.9011904    0.8901390   0.9122417
0-3 months     JiVitA-4    BANGLADESH   0                    NA                0.8332382    0.8088837   0.8575927
0-3 months     MAL-ED      BANGLADESH   1                    NA                0.8794034    0.8424142   0.9163925
0-3 months     MAL-ED      BANGLADESH   0                    NA                0.8830274    0.8512145   0.9148402
0-3 months     MAL-ED      BRAZIL       1                    NA                1.1734632    1.0640423   1.2828842
0-3 months     MAL-ED      BRAZIL       0                    NA                1.0570653    1.0209663   1.0931643
0-3 months     MAL-ED      INDIA        1                    NA                0.8112435    0.6966979   0.9257891
0-3 months     MAL-ED      INDIA        0                    NA                0.7587887    0.7349804   0.7825971
0-3 months     MAL-ED      NEPAL        1                    NA                0.9165963    0.7832674   1.0499252
0-3 months     MAL-ED      NEPAL        0                    NA                0.9594074    0.9312252   0.9875896
0-3 months     MAL-ED      PERU         1                    NA                1.0092280    0.9678594   1.0505966
0-3 months     MAL-ED      PERU         0                    NA                0.9525420    0.9201251   0.9849589
3-6 months     GMS-Nepal   NEPAL        1                    NA                0.4943147    0.4783696   0.5102598
3-6 months     GMS-Nepal   NEPAL        0                    NA                0.5024816    0.4741977   0.5307656
3-6 months     JiVitA-3    BANGLADESH   1                    NA                0.4403957    0.4362035   0.4445879
3-6 months     JiVitA-3    BANGLADESH   0                    NA                0.4391586    0.4308944   0.4474227
3-6 months     JiVitA-4    BANGLADESH   1                    NA                0.4379795    0.4282827   0.4476763
3-6 months     JiVitA-4    BANGLADESH   0                    NA                0.4455612    0.4234088   0.4677137
3-6 months     MAL-ED      BANGLADESH   1                    NA                0.4757600    0.4502960   0.5012240
3-6 months     MAL-ED      BANGLADESH   0                    NA                0.4753187    0.4529707   0.4976667
3-6 months     MAL-ED      BRAZIL       1                    NA                0.5903306    0.5091896   0.6714716
3-6 months     MAL-ED      BRAZIL       0                    NA                0.5741638    0.5401304   0.6081972
3-6 months     MAL-ED      INDIA        1                    NA                0.3948238    0.3142778   0.4753697
3-6 months     MAL-ED      INDIA        0                    NA                0.4438155    0.4252735   0.4623575
3-6 months     MAL-ED      NEPAL        1                    NA                0.4447126    0.3651998   0.5242254
3-6 months     MAL-ED      NEPAL        0                    NA                0.5264597    0.5052960   0.5476233
3-6 months     MAL-ED      PERU         1                    NA                0.4987109    0.4668351   0.5305867
3-6 months     MAL-ED      PERU         0                    NA                0.4992873    0.4754647   0.5231098
6-9 months     EE          PAKISTAN     1                    NA                0.2499821    0.2062696   0.2936946
6-9 months     EE          PAKISTAN     0                    NA                0.2914358    0.1551041   0.4277675
6-9 months     GMS-Nepal   NEPAL        1                    NA                0.1821879    0.1699169   0.1944589
6-9 months     GMS-Nepal   NEPAL        0                    NA                0.2003890    0.1678641   0.2329138
6-9 months     JiVitA-4    BANGLADESH   1                    NA                0.2363156    0.2301979   0.2424332
6-9 months     JiVitA-4    BANGLADESH   0                    NA                0.2473209    0.2364202   0.2582216
6-9 months     LCNI-5      MALAWI       1                    NA                0.2424892    0.2020639   0.2829145
6-9 months     LCNI-5      MALAWI       0                    NA                0.2893468    0.2609429   0.3177508
6-9 months     MAL-ED      BANGLADESH   1                    NA                0.2251224    0.1976646   0.2525801
6-9 months     MAL-ED      BANGLADESH   0                    NA                0.2498913    0.2320653   0.2677174
6-9 months     MAL-ED      BRAZIL       1                    NA                0.3854099    0.2962754   0.4745443
6-9 months     MAL-ED      BRAZIL       0                    NA                0.3837898    0.3568611   0.4107186
6-9 months     MAL-ED      INDIA        1                    NA                0.1895752    0.1413255   0.2378250
6-9 months     MAL-ED      INDIA        0                    NA                0.2388987    0.2234409   0.2543565
6-9 months     MAL-ED      NEPAL        1                    NA                0.2722763    0.2284242   0.3161283
6-9 months     MAL-ED      NEPAL        0                    NA                0.2696377    0.2540865   0.2851890
6-9 months     MAL-ED      PERU         1                    NA                0.2544987    0.2332542   0.2757432
6-9 months     MAL-ED      PERU         0                    NA                0.2643983    0.2424531   0.2863435
9-12 months    EE          PAKISTAN     1                    NA                0.2651476    0.2138835   0.3164117
9-12 months    EE          PAKISTAN     0                    NA                0.2178900    0.1257959   0.3099842
9-12 months    GMS-Nepal   NEPAL        1                    NA                0.1368400    0.1220836   0.1515963
9-12 months    GMS-Nepal   NEPAL        0                    NA                0.1576410    0.1314865   0.1837955
9-12 months    JiVitA-4    BANGLADESH   1                    NA                0.1521994    0.1472861   0.1571127
9-12 months    JiVitA-4    BANGLADESH   0                    NA                0.1623238    0.1528191   0.1718284
9-12 months    LCNI-5      MALAWI       1                    NA                0.1917464    0.0400616   0.3434312
9-12 months    LCNI-5      MALAWI       0                    NA                0.1513462    0.0693619   0.2333306
9-12 months    MAL-ED      BANGLADESH   1                    NA                0.1607593    0.1376455   0.1838730
9-12 months    MAL-ED      BANGLADESH   0                    NA                0.1823121    0.1649939   0.1996304
9-12 months    MAL-ED      BRAZIL       1                    NA                0.3030610    0.2134250   0.3926971
9-12 months    MAL-ED      BRAZIL       0                    NA                0.2889101    0.2541289   0.3236913
9-12 months    MAL-ED      INDIA        1                    NA                0.1898540    0.1197255   0.2599824
9-12 months    MAL-ED      INDIA        0                    NA                0.1769831    0.1614594   0.1925068
9-12 months    MAL-ED      NEPAL        1                    NA                0.1231120    0.0431772   0.2030467
9-12 months    MAL-ED      NEPAL        0                    NA                0.1866840    0.1716212   0.2017468
9-12 months    MAL-ED      PERU         1                    NA                0.1685115    0.1439527   0.1930704
9-12 months    MAL-ED      PERU         0                    NA                0.1972989    0.1778066   0.2167913
12-15 months   EE          PAKISTAN     1                    NA                0.1465777    0.0958703   0.1972852
12-15 months   EE          PAKISTAN     0                    NA                0.2076400    0.1078220   0.3074581
12-15 months   GMS-Nepal   NEPAL        1                    NA                0.1733809    0.1582683   0.1884934
12-15 months   GMS-Nepal   NEPAL        0                    NA                0.1702551    0.1408110   0.1996991
12-15 months   JiVitA-4    BANGLADESH   1                    NA                0.1275626    0.1226106   0.1325147
12-15 months   JiVitA-4    BANGLADESH   0                    NA                0.1390176    0.1295710   0.1484643
12-15 months   MAL-ED      BANGLADESH   1                    NA                0.1156720    0.0868797   0.1444643
12-15 months   MAL-ED      BANGLADESH   0                    NA                0.1470151    0.1275702   0.1664600
12-15 months   MAL-ED      BRAZIL       1                    NA                0.1935312    0.1152203   0.2718421
12-15 months   MAL-ED      BRAZIL       0                    NA                0.2136083    0.1873178   0.2398987
12-15 months   MAL-ED      INDIA        1                    NA                0.1295292    0.0241195   0.2349389
12-15 months   MAL-ED      INDIA        0                    NA                0.1809675    0.1642868   0.1976483
12-15 months   MAL-ED      NEPAL        1                    NA                0.1359063    0.0552846   0.2165280
12-15 months   MAL-ED      NEPAL        0                    NA                0.1481488    0.1307219   0.1655758
12-15 months   MAL-ED      PERU         1                    NA                0.1399275    0.1154827   0.1643723
12-15 months   MAL-ED      PERU         0                    NA                0.1441280    0.1221624   0.1660935
15-18 months   EE          PAKISTAN     1                    NA                0.0737086    0.0281881   0.1192290
15-18 months   EE          PAKISTAN     0                    NA                0.1356273    0.0829507   0.1883039
15-18 months   GMS-Nepal   NEPAL        1                    NA                0.2259161    0.2084007   0.2434316
15-18 months   GMS-Nepal   NEPAL        0                    NA                0.2476950    0.2134851   0.2819050
15-18 months   JiVitA-4    BANGLADESH   1                    NA                0.1566180    0.1510554   0.1621806
15-18 months   JiVitA-4    BANGLADESH   0                    NA                0.1715978    0.1583504   0.1848451
15-18 months   MAL-ED      BANGLADESH   1                    NA                0.1613052    0.1353002   0.1873102
15-18 months   MAL-ED      BANGLADESH   0                    NA                0.1309183    0.1109784   0.1508583
15-18 months   MAL-ED      BRAZIL       1                    NA                0.1266791    0.0681920   0.1851663
15-18 months   MAL-ED      BRAZIL       0                    NA                0.2165709    0.1873709   0.2457708
15-18 months   MAL-ED      INDIA        1                    NA                0.2193326    0.1299719   0.3086934
15-18 months   MAL-ED      INDIA        0                    NA                0.1626452    0.1469125   0.1783779
15-18 months   MAL-ED      NEPAL        1                    NA                0.1381064    0.1046609   0.1715520
15-18 months   MAL-ED      NEPAL        0                    NA                0.1745684    0.1576103   0.1915266
15-18 months   MAL-ED      PERU         1                    NA                0.1195460    0.0860146   0.1530774
15-18 months   MAL-ED      PERU         0                    NA                0.1606750    0.1378405   0.1835096
18-21 months   EE          PAKISTAN     1                    NA                0.1090737    0.0599290   0.1582184
18-21 months   EE          PAKISTAN     0                    NA                0.0920099   -0.0098532   0.1938729
18-21 months   GMS-Nepal   NEPAL        1                    NA                0.1542588    0.1356117   0.1729058
18-21 months   GMS-Nepal   NEPAL        0                    NA                0.1160393    0.0873518   0.1447267
18-21 months   LCNI-5      MALAWI       1                    NA                0.1887537    0.1252401   0.2522674
18-21 months   LCNI-5      MALAWI       0                    NA                0.1958032    0.1638179   0.2277884
18-21 months   MAL-ED      BANGLADESH   1                    NA                0.1294853    0.0998394   0.1591312
18-21 months   MAL-ED      BANGLADESH   0                    NA                0.1514825    0.1309716   0.1719935
18-21 months   MAL-ED      BRAZIL       1                    NA                0.0938391    0.0420621   0.1456161
18-21 months   MAL-ED      BRAZIL       0                    NA                0.1723452    0.1456246   0.1990658
18-21 months   MAL-ED      INDIA        1                    NA                0.0726246   -0.0168320   0.1620811
18-21 months   MAL-ED      INDIA        0                    NA                0.1716120    0.1564264   0.1867976
18-21 months   MAL-ED      NEPAL        1                    NA                0.1127929    0.0645439   0.1610418
18-21 months   MAL-ED      NEPAL        0                    NA                0.1448824    0.1260328   0.1637319
18-21 months   MAL-ED      PERU         1                    NA                0.1611549    0.1284908   0.1938190
18-21 months   MAL-ED      PERU         0                    NA                0.1608879    0.1373192   0.1844566
21-24 months   GMS-Nepal   NEPAL        1                    NA                0.1835580    0.1541357   0.2129802
21-24 months   GMS-Nepal   NEPAL        0                    NA                0.1536388    0.1106323   0.1966453
21-24 months   LCNI-5      MALAWI       1                    NA                0.1266044    0.0524589   0.2007498
21-24 months   LCNI-5      MALAWI       0                    NA                0.1842200    0.1369281   0.2315119
21-24 months   MAL-ED      BANGLADESH   1                    NA                0.1553983    0.1292045   0.1815921
21-24 months   MAL-ED      BANGLADESH   0                    NA                0.1514093    0.1313488   0.1714697
21-24 months   MAL-ED      BRAZIL       1                    NA                0.1315192    0.0520380   0.2110004
21-24 months   MAL-ED      BRAZIL       0                    NA                0.1450419    0.1209912   0.1690926
21-24 months   MAL-ED      INDIA        1                    NA                0.1319022    0.0542770   0.2095274
21-24 months   MAL-ED      INDIA        0                    NA                0.1527784    0.1390431   0.1665137
21-24 months   MAL-ED      NEPAL        1                    NA                0.1986500    0.1425424   0.2547575
21-24 months   MAL-ED      NEPAL        0                    NA                0.1718781    0.1506848   0.1930713
21-24 months   MAL-ED      PERU         1                    NA                0.1778318    0.1463987   0.2092650
21-24 months   MAL-ED      PERU         0                    NA                0.1832916    0.1583838   0.2081995


### Parameter: E(Y)


agecat         studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL        NA                   NA                0.8262343   0.8091204   0.8433482
0-3 months     JiVitA-3    BANGLADESH   NA                   NA                0.8701010   0.8664010   0.8738010
0-3 months     JiVitA-4    BANGLADESH   NA                   NA                0.8897715   0.8792902   0.9002529
0-3 months     MAL-ED      BANGLADESH   NA                   NA                0.8815161   0.8573098   0.9057224
0-3 months     MAL-ED      BRAZIL       NA                   NA                1.0702868   1.0355019   1.1050717
0-3 months     MAL-ED      INDIA        NA                   NA                0.7615268   0.7382819   0.7847718
0-3 months     MAL-ED      NEPAL        NA                   NA                0.9570869   0.9295107   0.9846631
0-3 months     MAL-ED      PERU         NA                   NA                0.9722590   0.9463823   0.9981357
3-6 months     GMS-Nepal   NEPAL        NA                   NA                0.4969184   0.4830319   0.5108048
3-6 months     JiVitA-3    BANGLADESH   NA                   NA                0.4401107   0.4363074   0.4439140
3-6 months     JiVitA-4    BANGLADESH   NA                   NA                0.4390246   0.4301757   0.4478736
3-6 months     MAL-ED      BANGLADESH   NA                   NA                0.4752798   0.4582021   0.4923576
3-6 months     MAL-ED      BRAZIL       NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED      INDIA        NA                   NA                0.4421852   0.4242493   0.4601211
3-6 months     MAL-ED      NEPAL        NA                   NA                0.5212498   0.5005373   0.5419623
3-6 months     MAL-ED      PERU         NA                   NA                0.4986791   0.4796733   0.5176848
6-9 months     EE          PAKISTAN     NA                   NA                0.2545881   0.2127069   0.2964693
6-9 months     GMS-Nepal   NEPAL        NA                   NA                0.1872663   0.1750716   0.1994611
6-9 months     JiVitA-4    BANGLADESH   NA                   NA                0.2387113   0.2332818   0.2441408
6-9 months     LCNI-5      MALAWI       NA                   NA                0.2829175   0.2578313   0.3080037
6-9 months     MAL-ED      BANGLADESH   NA                   NA                0.2415793   0.2267676   0.2563910
6-9 months     MAL-ED      BRAZIL       NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     MAL-ED      INDIA        NA                   NA                0.2373787   0.2225426   0.2522148
6-9 months     MAL-ED      NEPAL        NA                   NA                0.2701634   0.2553060   0.2850207
6-9 months     MAL-ED      PERU         NA                   NA                0.2613933   0.2459015   0.2768851
9-12 months    EE          PAKISTAN     NA                   NA                0.2597774   0.2129342   0.3066206
9-12 months    GMS-Nepal   NEPAL        NA                   NA                0.1419417   0.1290817   0.1548016
9-12 months    JiVitA-4    BANGLADESH   NA                   NA                0.1546030   0.1501980   0.1590079
9-12 months    LCNI-5      MALAWI       NA                   NA                0.1849664   0.1167599   0.2531730
9-12 months    MAL-ED      BANGLADESH   NA                   NA                0.1745300   0.1605119   0.1885482
9-12 months    MAL-ED      BRAZIL       NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    MAL-ED      INDIA        NA                   NA                0.1775294   0.1625008   0.1925581
9-12 months    MAL-ED      NEPAL        NA                   NA                0.1836863   0.1687462   0.1986264
9-12 months    MAL-ED      PERU         NA                   NA                0.1874806   0.1721694   0.2027919
12-15 months   EE          PAKISTAN     NA                   NA                0.1548294   0.1084427   0.2012160
12-15 months   GMS-Nepal   NEPAL        NA                   NA                0.1722034   0.1587499   0.1856570
12-15 months   JiVitA-4    BANGLADESH   NA                   NA                0.1301049   0.1256802   0.1345296
12-15 months   MAL-ED      BANGLADESH   NA                   NA                0.1360408   0.1198127   0.1522689
12-15 months   MAL-ED      BRAZIL       NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   MAL-ED      INDIA        NA                   NA                0.1767774   0.1598803   0.1936745
12-15 months   MAL-ED      NEPAL        NA                   NA                0.1491675   0.1320356   0.1662994
12-15 months   MAL-ED      PERU         NA                   NA                0.1417390   0.1250455   0.1584325
15-18 months   EE          PAKISTAN     NA                   NA                0.0830902   0.0429076   0.1232727
15-18 months   GMS-Nepal   NEPAL        NA                   NA                0.2320613   0.2164969   0.2476258
15-18 months   JiVitA-4    BANGLADESH   NA                   NA                0.1596440   0.1546004   0.1646877
15-18 months   MAL-ED      BANGLADESH   NA                   NA                0.1422772   0.1262424   0.1583121
15-18 months   MAL-ED      BRAZIL       NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED      INDIA        NA                   NA                0.1652193   0.1495522   0.1808865
15-18 months   MAL-ED      NEPAL        NA                   NA                0.1725504   0.1563874   0.1887134
15-18 months   MAL-ED      PERU         NA                   NA                0.1461889   0.1273267   0.1650511
18-21 months   EE          PAKISTAN     NA                   NA                0.1065643   0.0620028   0.1511258
18-21 months   GMS-Nepal   NEPAL        NA                   NA                0.1448468   0.1289722   0.1607215
18-21 months   LCNI-5      MALAWI       NA                   NA                0.2016785   0.1726437   0.2307133
18-21 months   MAL-ED      BANGLADESH   NA                   NA                0.1436485   0.1262881   0.1610088
18-21 months   MAL-ED      BRAZIL       NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED      INDIA        NA                   NA                0.1695319   0.1543435   0.1847203
18-21 months   MAL-ED      NEPAL        NA                   NA                0.1462090   0.1281722   0.1642458
18-21 months   MAL-ED      PERU         NA                   NA                0.1615652   0.1425950   0.1805355
21-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1761495   0.1516134   0.2006855
21-24 months   LCNI-5      MALAWI       NA                   NA                0.1779746   0.1356818   0.2202674
21-24 months   MAL-ED      BANGLADESH   NA                   NA                0.1538238   0.1384163   0.1692313
21-24 months   MAL-ED      BRAZIL       NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED      INDIA        NA                   NA                0.1538219   0.1403825   0.1672614
21-24 months   MAL-ED      NEPAL        NA                   NA                0.1738613   0.1535969   0.1941258
21-24 months   MAL-ED      PERU         NA                   NA                0.1814671   0.1617319   0.2012023


### Parameter: ATE


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL        0                    1                 -0.0447607   -0.0837446   -0.0057769
0-3 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH   0                    1                  0.0007847   -0.0069421    0.0085115
0-3 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH   0                    1                 -0.0679522   -0.0940257   -0.0418786
0-3 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH   0                    1                  0.0036240   -0.0452348    0.0524829
0-3 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL       0                    1                 -0.1163979   -0.2317296   -0.0010663
0-3 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA        0                    1                 -0.0524548   -0.1695203    0.0646108
0-3 months     MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL        0                    1                  0.0428111   -0.0934268    0.1790490
0-3 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU         0                    1                 -0.0566860   -0.1089875   -0.0043845
3-6 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL        0                    1                  0.0081670   -0.0243533    0.0406873
3-6 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH   0                    1                 -0.0012371   -0.0103809    0.0079066
3-6 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH   0                    1                  0.0075817   -0.0165332    0.0316966
3-6 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH   0                    1                 -0.0004413   -0.0344187    0.0335360
3-6 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL       0                    1                 -0.0161668   -0.1041548    0.0718212
3-6 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA        0                    1                  0.0489917   -0.0337743    0.1317577
3-6 months     MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL        0                    1                  0.0817470   -0.0002288    0.1637229
3-6 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU         0                    1                  0.0005764   -0.0392419    0.0403947
6-9 months     EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE          PAKISTAN     0                    1                  0.0414537   -0.1017144    0.1846219
6-9 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL        0                    1                  0.0182011   -0.0165886    0.0529907
6-9 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH   0                    1                  0.0110053   -0.0013023    0.0233130
6-9 months     LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI       0                    1                  0.0468577   -0.0021032    0.0958186
6-9 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH   0                    1                  0.0247690   -0.0085526    0.0580905
6-9 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL       0                    1                 -0.0016200   -0.0948002    0.0915601
6-9 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA        0                    1                  0.0493235   -0.0012270    0.0998739
6-9 months     MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL        0                    1                 -0.0026385   -0.0490486    0.0437716
6-9 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU         0                    1                  0.0098996   -0.0222454    0.0420445
9-12 months    EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE          PAKISTAN     0                    1                 -0.0472576   -0.1526584    0.0581433
9-12 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL        0                    1                  0.0208010   -0.0092418    0.0508438
9-12 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH   0                    1                  0.0101244   -0.0003528    0.0206016
9-12 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI       0                    1                 -0.0404002   -0.2206318    0.1398315
9-12 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH   0                    1                  0.0215529   -0.0074550    0.0505608
9-12 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL       0                    1                 -0.0141510   -0.1106734    0.0823715
9-12 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA        0                    1                 -0.0128709   -0.0846892    0.0589475
9-12 months    MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL        0                    1                  0.0635721   -0.0177536    0.1448978
9-12 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU         0                    1                  0.0287874   -0.0026552    0.0602301
12-15 months   EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE          PAKISTAN     0                    1                  0.0610623   -0.0508970    0.1730217
12-15 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL        0                    1                 -0.0031258   -0.0363175    0.0300659
12-15 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH   0                    1                  0.0114550    0.0009546    0.0219554
12-15 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH   0                    1                  0.0313431   -0.0034809    0.0661671
12-15 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL       0                    1                  0.0200771   -0.0626289    0.1027831
12-15 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA        0                    1                  0.0514383   -0.0552841    0.1581607
12-15 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL        0                    1                  0.0122425   -0.0705972    0.0950823
12-15 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU         0                    1                  0.0042005   -0.0287241    0.0371251
15-18 months   EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE          PAKISTAN     0                    1                  0.0619187   -0.0077012    0.1315387
15-18 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL        0                    1                  0.0217789   -0.0167596    0.0603174
15-18 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH   0                    1                  0.0149798    0.0005560    0.0294035
15-18 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH   0                    1                 -0.0303869   -0.0633968    0.0026231
15-18 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL       0                    1                  0.0898917    0.0244805    0.1553029
15-18 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA        0                    1                 -0.0566874   -0.1472923    0.0339175
15-18 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL        0                    1                  0.0364620   -0.0010092    0.0739332
15-18 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU         0                    1                  0.0411290    0.0004515    0.0818065
18-21 months   EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE          PAKISTAN     0                    1                 -0.0170638   -0.1301624    0.0960347
18-21 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL        0                    1                 -0.0382195   -0.0723312   -0.0041078
18-21 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI       0                    1                  0.0070494   -0.0635714    0.0776703
18-21 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH   0                    1                  0.0219972   -0.0136961    0.0576905
18-21 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL       0                    1                  0.0785061    0.0198036    0.1372085
18-21 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA        0                    1                  0.0989874    0.0082628    0.1897121
18-21 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL        0                    1                  0.0320895   -0.0193457    0.0835247
18-21 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU         0                    1                 -0.0002671   -0.0405310    0.0399969
21-24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL        0                    1                 -0.0299191   -0.0819775    0.0221392
21-24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI       0                    1                  0.0576156   -0.0322761    0.1475073
21-24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH   0                    1                 -0.0039890   -0.0370959    0.0291179
21-24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL       0                    1                  0.0135227   -0.0697512    0.0967965
21-24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA        0                    1                  0.0208762   -0.0585195    0.1002719
21-24 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL        0                    1                 -0.0267719   -0.0867420    0.0331982
21-24 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU         0                    1                  0.0054598   -0.0349164    0.0458360


### Parameter: PAR


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0147454   -0.0251862   -0.0043046
0-3 months     JiVitA-3    BANGLADESH   1                    NA                 0.0001563   -0.0015934    0.0019061
0-3 months     JiVitA-4    BANGLADESH   1                    NA                -0.0114188   -0.0161047   -0.0067329
0-3 months     MAL-ED      BANGLADESH   1                    NA                 0.0021127   -0.0289174    0.0331428
0-3 months     MAL-ED      BRAZIL       1                    NA                -0.1031764   -0.2025491   -0.0038037
0-3 months     MAL-ED      INDIA        1                    NA                -0.0497167   -0.1612679    0.0618346
0-3 months     MAL-ED      NEPAL        1                    NA                 0.0404906   -0.0891987    0.1701800
0-3 months     MAL-ED      PERU         1                    NA                -0.0369690   -0.0716910   -0.0022471
3-6 months     GMS-Nepal   NEPAL        1                    NA                 0.0026037   -0.0061538    0.0113611
3-6 months     JiVitA-3    BANGLADESH   1                    NA                -0.0002850   -0.0024185    0.0018484
3-6 months     JiVitA-4    BANGLADESH   1                    NA                 0.0010451   -0.0024656    0.0045558
3-6 months     MAL-ED      BANGLADESH   1                    NA                -0.0004802   -0.0228902    0.0219298
3-6 months     MAL-ED      BRAZIL       1                    NA                -0.0121330   -0.0878419    0.0635758
3-6 months     MAL-ED      INDIA        1                    NA                 0.0473615   -0.0317714    0.1264943
3-6 months     MAL-ED      NEPAL        1                    NA                 0.0765372   -0.0017250    0.1547994
3-6 months     MAL-ED      PERU         1                    NA                -0.0000318   -0.0263704    0.0263068
6-9 months     EE          PAKISTAN     1                    NA                 0.0046060   -0.0117607    0.0209727
6-9 months     GMS-Nepal   NEPAL        1                    NA                 0.0050784   -0.0035363    0.0136931
6-9 months     JiVitA-4    BANGLADESH   1                    NA                 0.0023957   -0.0001345    0.0049259
6-9 months     LCNI-5      MALAWI       1                    NA                 0.0404283   -0.0011638    0.0820205
6-9 months     MAL-ED      BANGLADESH   1                    NA                 0.0164569   -0.0054246    0.0383384
6-9 months     MAL-ED      BRAZIL       1                    NA                -0.0022600   -0.0825392    0.0780192
6-9 months     MAL-ED      INDIA        1                    NA                 0.0478035   -0.0005324    0.0961393
6-9 months     MAL-ED      NEPAL        1                    NA                -0.0021129   -0.0463176    0.0420918
6-9 months     MAL-ED      PERU         1                    NA                 0.0068946   -0.0142950    0.0280842
9-12 months    EE          PAKISTAN     1                    NA                -0.0053702   -0.0181590    0.0074186
9-12 months    GMS-Nepal   NEPAL        1                    NA                 0.0051017   -0.0020239    0.0122272
9-12 months    JiVitA-4    BANGLADESH   1                    NA                 0.0024036    0.0002163    0.0045909
9-12 months    LCNI-5      MALAWI       1                    NA                -0.0067800   -0.1321570    0.1185970
9-12 months    MAL-ED      BANGLADESH   1                    NA                 0.0137708   -0.0048499    0.0323914
9-12 months    MAL-ED      BRAZIL       1                    NA                -0.0184688   -0.1028691    0.0659315
9-12 months    MAL-ED      INDIA        1                    NA                -0.0123245   -0.0809588    0.0563098
9-12 months    MAL-ED      NEPAL        1                    NA                 0.0605744   -0.0167828    0.1379315
9-12 months    MAL-ED      PERU         1                    NA                 0.0189691   -0.0016353    0.0395735
12-15 months   EE          PAKISTAN     1                    NA                 0.0082517   -0.0083437    0.0248470
12-15 months   GMS-Nepal   NEPAL        1                    NA                -0.0011774   -0.0090372    0.0066823
12-15 months   JiVitA-4    BANGLADESH   1                    NA                 0.0025423    0.0002130    0.0048716
12-15 months   MAL-ED      BANGLADESH   1                    NA                 0.0203688   -0.0021448    0.0428824
12-15 months   MAL-ED      BRAZIL       1                    NA                 0.0166634   -0.0549249    0.0882516
12-15 months   MAL-ED      INDIA        1                    NA                 0.0472482   -0.0539718    0.1484682
12-15 months   MAL-ED      NEPAL        1                    NA                 0.0132612   -0.0653513    0.0918738
12-15 months   MAL-ED      PERU         1                    NA                 0.0018115   -0.0199660    0.0235890
15-18 months   EE          PAKISTAN     1                    NA                 0.0093816   -0.0036736    0.0224368
15-18 months   GMS-Nepal   NEPAL        1                    NA                 0.0061452   -0.0033534    0.0156438
15-18 months   JiVitA-4    BANGLADESH   1                    NA                 0.0030260    0.0001312    0.0059208
15-18 months   MAL-ED      BANGLADESH   1                    NA                -0.0190280   -0.0399815    0.0019256
15-18 months   MAL-ED      BRAZIL       1                    NA                 0.0767404    0.0210384    0.1324423
15-18 months   MAL-ED      INDIA        1                    NA                -0.0541133   -0.1401815    0.0319549
15-18 months   MAL-ED      NEPAL        1                    NA                 0.0344440   -0.0011161    0.0700041
15-18 months   MAL-ED      PERU         1                    NA                 0.0266428   -0.0005546    0.0538403
18-21 months   EE          PAKISTAN     1                    NA                -0.0025094   -0.0192689    0.0142501
18-21 months   GMS-Nepal   NEPAL        1                    NA                -0.0094119   -0.0176907   -0.0011331
18-21 months   LCNI-5      MALAWI       1                    NA                 0.0129247   -0.0458732    0.0717227
18-21 months   MAL-ED      BANGLADESH   1                    NA                 0.0141632   -0.0088743    0.0372007
18-21 months   MAL-ED      BRAZIL       1                    NA                 0.0668100    0.0162651    0.1173549
18-21 months   MAL-ED      INDIA        1                    NA                 0.0969073    0.0103155    0.1834992
18-21 months   MAL-ED      NEPAL        1                    NA                 0.0334161   -0.0149067    0.0817390
18-21 months   MAL-ED      PERU         1                    NA                 0.0004103   -0.0269574    0.0277781
21-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0074085   -0.0195860    0.0047689
21-24 months   LCNI-5      MALAWI       1                    NA                 0.0513702   -0.0255993    0.1283397
21-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0015745   -0.0237792    0.0206303
21-24 months   MAL-ED      BRAZIL       1                    NA                 0.0119708   -0.0589211    0.0828628
21-24 months   MAL-ED      INDIA        1                    NA                 0.0219197   -0.0543422    0.0981817
21-24 months   MAL-ED      NEPAL        1                    NA                -0.0247886   -0.0817004    0.0321232
21-24 months   MAL-ED      PERU         1                    NA                 0.0036353   -0.0239886    0.0312591
