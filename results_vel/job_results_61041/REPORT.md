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

**Intervention Variable:** predfeed3

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
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
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
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
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

agecat         studyid     country                        predfeed3    n_cell       n
-------------  ----------  -----------------------------  ----------  -------  ------
0-3 months     EE          PAKISTAN                       1                31      31
0-3 months     EE          PAKISTAN                       0                 0      31
0-3 months     GMS-Nepal   NEPAL                          1               378     456
0-3 months     GMS-Nepal   NEPAL                          0                78     456
0-3 months     JiVitA-3    BANGLADESH                     1             10705   11852
0-3 months     JiVitA-3    BANGLADESH                     0              1147   11852
0-3 months     JiVitA-4    BANGLADESH                     1               111     121
0-3 months     JiVitA-4    BANGLADESH                     0                10     121
0-3 months     MAL-ED      BANGLADESH                     1               193     237
0-3 months     MAL-ED      BANGLADESH                     0                44     237
0-3 months     MAL-ED      BRAZIL                         1                73     147
0-3 months     MAL-ED      BRAZIL                         0                74     147
0-3 months     MAL-ED      INDIA                          1               113     164
0-3 months     MAL-ED      INDIA                          0                51     164
0-3 months     MAL-ED      NEPAL                          1                81     153
0-3 months     MAL-ED      NEPAL                          0                72     153
0-3 months     MAL-ED      PERU                           1               168     262
0-3 months     MAL-ED      PERU                           0                94     262
0-3 months     MAL-ED      SOUTH AFRICA                   1                58     203
0-3 months     MAL-ED      SOUTH AFRICA                   0               145     203
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                57     197
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               140     197
3-6 months     EE          PAKISTAN                       1                31      31
3-6 months     EE          PAKISTAN                       0                 0      31
3-6 months     GMS-Nepal   NEPAL                          1               350     420
3-6 months     GMS-Nepal   NEPAL                          0                70     420
3-6 months     JiVitA-3    BANGLADESH                     1              6478    7103
3-6 months     JiVitA-3    BANGLADESH                     0               625    7103
3-6 months     JiVitA-4    BANGLADESH                     1                21      21
3-6 months     JiVitA-4    BANGLADESH                     0                 0      21
3-6 months     MAL-ED      BANGLADESH                     1               184     225
3-6 months     MAL-ED      BANGLADESH                     0                41     225
3-6 months     MAL-ED      BRAZIL                         1                93     186
3-6 months     MAL-ED      BRAZIL                         0                93     186
3-6 months     MAL-ED      INDIA                          1               146     206
3-6 months     MAL-ED      INDIA                          0                60     206
3-6 months     MAL-ED      NEPAL                          1               112     226
3-6 months     MAL-ED      NEPAL                          0               114     226
3-6 months     MAL-ED      PERU                           1               174     264
3-6 months     MAL-ED      PERU                           0                90     264
3-6 months     MAL-ED      SOUTH AFRICA                   1                63     234
3-6 months     MAL-ED      SOUTH AFRICA                   0               171     234
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                63     208
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               145     208
6-9 months     EE          PAKISTAN                       1                36      36
6-9 months     EE          PAKISTAN                       0                 0      36
6-9 months     GMS-Nepal   NEPAL                          1               314     378
6-9 months     GMS-Nepal   NEPAL                          0                64     378
6-9 months     JiVitA-4    BANGLADESH                     1                17      18
6-9 months     JiVitA-4    BANGLADESH                     0                 1      18
6-9 months     MAL-ED      BANGLADESH                     1               177     217
6-9 months     MAL-ED      BANGLADESH                     0                40     217
6-9 months     MAL-ED      BRAZIL                         1                90     177
6-9 months     MAL-ED      BRAZIL                         0                87     177
6-9 months     MAL-ED      INDIA                          1               143     205
6-9 months     MAL-ED      INDIA                          0                62     205
6-9 months     MAL-ED      NEPAL                          1               110     222
6-9 months     MAL-ED      NEPAL                          0               112     222
6-9 months     MAL-ED      PERU                           1               160     242
6-9 months     MAL-ED      PERU                           0                82     242
6-9 months     MAL-ED      SOUTH AFRICA                   1                62     222
6-9 months     MAL-ED      SOUTH AFRICA                   0               160     222
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                59     193
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               134     193
9-12 months    EE          PAKISTAN                       1                36      36
9-12 months    EE          PAKISTAN                       0                 0      36
9-12 months    GMS-Nepal   NEPAL                          1               302     362
9-12 months    GMS-Nepal   NEPAL                          0                60     362
9-12 months    JiVitA-4    BANGLADESH                     1                86      96
9-12 months    JiVitA-4    BANGLADESH                     0                10      96
9-12 months    MAL-ED      BANGLADESH                     1               179     218
9-12 months    MAL-ED      BANGLADESH                     0                39     218
9-12 months    MAL-ED      BRAZIL                         1                89     175
9-12 months    MAL-ED      BRAZIL                         0                86     175
9-12 months    MAL-ED      INDIA                          1               139     201
9-12 months    MAL-ED      INDIA                          0                62     201
9-12 months    MAL-ED      NEPAL                          1               109     221
9-12 months    MAL-ED      NEPAL                          0               112     221
9-12 months    MAL-ED      PERU                           1               155     233
9-12 months    MAL-ED      PERU                           0                78     233
9-12 months    MAL-ED      SOUTH AFRICA                   1                63     223
9-12 months    MAL-ED      SOUTH AFRICA                   0               160     223
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                56     192
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               136     192
12-15 months   EE          PAKISTAN                       1                29      29
12-15 months   EE          PAKISTAN                       0                 0      29
12-15 months   GMS-Nepal   NEPAL                          1               313     371
12-15 months   GMS-Nepal   NEPAL                          0                58     371
12-15 months   JiVitA-4    BANGLADESH                     1                99     109
12-15 months   JiVitA-4    BANGLADESH                     0                10     109
12-15 months   MAL-ED      BANGLADESH                     1               168     206
12-15 months   MAL-ED      BANGLADESH                     0                38     206
12-15 months   MAL-ED      BRAZIL                         1                86     165
12-15 months   MAL-ED      BRAZIL                         0                79     165
12-15 months   MAL-ED      INDIA                          1               138     200
12-15 months   MAL-ED      INDIA                          0                62     200
12-15 months   MAL-ED      NEPAL                          1               110     222
12-15 months   MAL-ED      NEPAL                          0               112     222
12-15 months   MAL-ED      PERU                           1               148     222
12-15 months   MAL-ED      PERU                           0                74     222
12-15 months   MAL-ED      SOUTH AFRICA                   1                60     219
12-15 months   MAL-ED      SOUTH AFRICA                   0               159     219
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                57     195
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               138     195
15-18 months   EE          PAKISTAN                       1                25      25
15-18 months   EE          PAKISTAN                       0                 0      25
15-18 months   GMS-Nepal   NEPAL                          1               319     379
15-18 months   GMS-Nepal   NEPAL                          0                60     379
15-18 months   JiVitA-4    BANGLADESH                     1                96     109
15-18 months   JiVitA-4    BANGLADESH                     0                13     109
15-18 months   MAL-ED      BANGLADESH                     1               168     206
15-18 months   MAL-ED      BANGLADESH                     0                38     206
15-18 months   MAL-ED      BRAZIL                         1                82     157
15-18 months   MAL-ED      BRAZIL                         0                75     157
15-18 months   MAL-ED      INDIA                          1               138     201
15-18 months   MAL-ED      INDIA                          0                63     201
15-18 months   MAL-ED      NEPAL                          1               108     219
15-18 months   MAL-ED      NEPAL                          0               111     219
15-18 months   MAL-ED      PERU                           1               141     210
15-18 months   MAL-ED      PERU                           0                69     210
15-18 months   MAL-ED      SOUTH AFRICA                   1                60     218
15-18 months   MAL-ED      SOUTH AFRICA                   0               158     218
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                55     188
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               133     188
18-21 months   EE          PAKISTAN                       1                26      26
18-21 months   EE          PAKISTAN                       0                 0      26
18-21 months   GMS-Nepal   NEPAL                          1               295     347
18-21 months   GMS-Nepal   NEPAL                          0                52     347
18-21 months   MAL-ED      BANGLADESH                     1               166     203
18-21 months   MAL-ED      BANGLADESH                     0                37     203
18-21 months   MAL-ED      BRAZIL                         1                79     150
18-21 months   MAL-ED      BRAZIL                         0                71     150
18-21 months   MAL-ED      INDIA                          1               138     201
18-21 months   MAL-ED      INDIA                          0                63     201
18-21 months   MAL-ED      NEPAL                          1               108     219
18-21 months   MAL-ED      NEPAL                          0               111     219
18-21 months   MAL-ED      PERU                           1               133     199
18-21 months   MAL-ED      PERU                           0                66     199
18-21 months   MAL-ED      SOUTH AFRICA                   1                60     225
18-21 months   MAL-ED      SOUTH AFRICA                   0               165     225
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                52     176
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               124     176
21-24 months   EE          PAKISTAN                       1                16      16
21-24 months   EE          PAKISTAN                       0                 0      16
21-24 months   GMS-Nepal   NEPAL                          1               237     279
21-24 months   GMS-Nepal   NEPAL                          0                42     279
21-24 months   MAL-ED      BANGLADESH                     1               164     201
21-24 months   MAL-ED      BANGLADESH                     0                37     201
21-24 months   MAL-ED      BRAZIL                         1                77     149
21-24 months   MAL-ED      BRAZIL                         0                72     149
21-24 months   MAL-ED      INDIA                          1               138     201
21-24 months   MAL-ED      INDIA                          0                63     201
21-24 months   MAL-ED      NEPAL                          1               109     219
21-24 months   MAL-ED      NEPAL                          0               110     219
21-24 months   MAL-ED      PERU                           1               125     187
21-24 months   MAL-ED      PERU                           0                62     187
21-24 months   MAL-ED      SOUTH AFRICA                   1                59     226
21-24 months   MAL-ED      SOUTH AFRICA                   0               167     226
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                53     175
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               122     175


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
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cc033c3f-24d6-4c5a-9a83-12ea062d6344/9b86cc20-1be1-421d-8d28-e095708e8efc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cc033c3f-24d6-4c5a-9a83-12ea062d6344/9b86cc20-1be1-421d-8d28-e095708e8efc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cc033c3f-24d6-4c5a-9a83-12ea062d6344/9b86cc20-1be1-421d-8d28-e095708e8efc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0380514   -0.0671050   -0.0089978
0-3 months     GMS-Nepal   NEPAL                          0                    NA                -0.0397200   -0.1064221    0.0269821
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0735648    0.0671725    0.0799571
0-3 months     JiVitA-3    BANGLADESH                     0                    NA                 0.0862677    0.0698424    0.1026930
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                 0.1172967    0.0708731    0.1637204
0-3 months     JiVitA-4    BANGLADESH                     0                    NA                 0.1150364    0.0184670    0.2116058
0-3 months     MAL-ED      BANGLADESH                     1                    NA                -0.1034981   -0.1408056   -0.0661906
0-3 months     MAL-ED      BANGLADESH                     0                    NA                -0.2280983   -0.3075544   -0.1486421
0-3 months     MAL-ED      BRAZIL                         1                    NA                 0.1869188    0.1048673    0.2689702
0-3 months     MAL-ED      BRAZIL                         0                    NA                 0.1140371    0.0242019    0.2038723
0-3 months     MAL-ED      INDIA                          1                    NA                -0.0446623   -0.1137018    0.0243773
0-3 months     MAL-ED      INDIA                          0                    NA                -0.0600806   -0.1582395    0.0380783
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.0063430   -0.0487457    0.0614316
0-3 months     MAL-ED      NEPAL                          0                    NA                 0.1033549    0.0307431    0.1759666
0-3 months     MAL-ED      PERU                           1                    NA                -0.2474056   -0.2895085   -0.2053027
0-3 months     MAL-ED      PERU                           0                    NA                -0.3034274   -0.3696847   -0.2371702
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                -0.2189586   -0.2953154   -0.1426018
0-3 months     MAL-ED      SOUTH AFRICA                   0                    NA                -0.1533166   -0.2160675   -0.0905657
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0400508   -0.1179154    0.0378138
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1963831   -0.2445160   -0.1482501
3-6 months     GMS-Nepal   NEPAL                          1                    NA                -0.1547761   -0.1762252   -0.1333269
3-6 months     GMS-Nepal   NEPAL                          0                    NA                -0.1709786   -0.2196594   -0.1222978
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0038310   -0.0103852    0.0027231
3-6 months     JiVitA-3    BANGLADESH                     0                    NA                -0.0179831   -0.0375705    0.0016044
3-6 months     MAL-ED      BANGLADESH                     1                    NA                -0.0240579   -0.0503839    0.0022682
3-6 months     MAL-ED      BANGLADESH                     0                    NA                -0.0061768   -0.0593917    0.0470382
3-6 months     MAL-ED      BRAZIL                         1                    NA                 0.0032548   -0.0493963    0.0559059
3-6 months     MAL-ED      BRAZIL                         0                    NA                 0.1288852    0.0728346    0.1849359
3-6 months     MAL-ED      INDIA                          1                    NA                -0.0377405   -0.0754959    0.0000148
3-6 months     MAL-ED      INDIA                          0                    NA                -0.0564439   -0.1154107    0.0025229
3-6 months     MAL-ED      NEPAL                          1                    NA                -0.0566375   -0.0917538   -0.0215213
3-6 months     MAL-ED      NEPAL                          0                    NA                 0.0134180   -0.0262438    0.0530797
3-6 months     MAL-ED      PERU                           1                    NA                 0.0129726   -0.0251061    0.0510512
3-6 months     MAL-ED      PERU                           0                    NA                 0.0389119   -0.0177936    0.0956174
3-6 months     MAL-ED      SOUTH AFRICA                   1                    NA                -0.0199254   -0.0919697    0.0521188
3-6 months     MAL-ED      SOUTH AFRICA                   0                    NA                -0.0036024   -0.0500352    0.0428304
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1105446   -0.1763464   -0.0447427
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0487515   -0.0878593   -0.0096437
6-9 months     GMS-Nepal   NEPAL                          1                    NA                -0.0455135   -0.0693078   -0.0217192
6-9 months     GMS-Nepal   NEPAL                          0                    NA                -0.0551387   -0.0941618   -0.0161157
6-9 months     MAL-ED      BANGLADESH                     1                    NA                -0.0713163   -0.0906867   -0.0519459
6-9 months     MAL-ED      BANGLADESH                     0                    NA                -0.0777290   -0.1230573   -0.0324007
6-9 months     MAL-ED      BRAZIL                         1                    NA                 0.0026554   -0.0552984    0.0606091
6-9 months     MAL-ED      BRAZIL                         0                    NA                 0.0044895   -0.0451096    0.0540886
6-9 months     MAL-ED      INDIA                          1                    NA                -0.0753426   -0.1033339   -0.0473513
6-9 months     MAL-ED      INDIA                          0                    NA                -0.0655001   -0.1117559   -0.0192443
6-9 months     MAL-ED      NEPAL                          1                    NA                -0.0363726   -0.0630213   -0.0097240
6-9 months     MAL-ED      NEPAL                          0                    NA                -0.0304019   -0.0589038   -0.0019000
6-9 months     MAL-ED      PERU                           1                    NA                -0.0350047   -0.0640899   -0.0059195
6-9 months     MAL-ED      PERU                           0                    NA                -0.0361487   -0.0828368    0.0105395
6-9 months     MAL-ED      SOUTH AFRICA                   1                    NA                -0.0198137   -0.0761411    0.0365138
6-9 months     MAL-ED      SOUTH AFRICA                   0                    NA                -0.0109373   -0.0451829    0.0233082
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0440175   -0.1157819    0.0277469
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1077192   -0.1432420   -0.0721965
9-12 months    GMS-Nepal   NEPAL                          1                    NA                -0.0872253   -0.1059136   -0.0685370
9-12 months    GMS-Nepal   NEPAL                          0                    NA                -0.0370495   -0.0677938   -0.0063051
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0517716   -0.0892818   -0.0142615
9-12 months    JiVitA-4    BANGLADESH                     0                    NA                 0.0964315   -0.0769393    0.2698023
9-12 months    MAL-ED      BANGLADESH                     1                    NA                -0.0858059   -0.1043735   -0.0672383
9-12 months    MAL-ED      BANGLADESH                     0                    NA                -0.0802951   -0.1122928   -0.0482974
9-12 months    MAL-ED      BRAZIL                         1                    NA                 0.0050139   -0.0390765    0.0491043
9-12 months    MAL-ED      BRAZIL                         0                    NA                 0.0030858   -0.0476589    0.0538305
9-12 months    MAL-ED      INDIA                          1                    NA                -0.1157529   -0.1355353   -0.0959706
9-12 months    MAL-ED      INDIA                          0                    NA                -0.0518876   -0.0788291   -0.0249462
9-12 months    MAL-ED      NEPAL                          1                    NA                -0.0664230   -0.0918778   -0.0409683
9-12 months    MAL-ED      NEPAL                          0                    NA                -0.0628130   -0.0868942   -0.0387318
9-12 months    MAL-ED      PERU                           1                    NA                -0.0302970   -0.0573888   -0.0032053
9-12 months    MAL-ED      PERU                           0                    NA                -0.0635892   -0.1000130   -0.0271653
9-12 months    MAL-ED      SOUTH AFRICA                   1                    NA                -0.0901408   -0.1472939   -0.0329877
9-12 months    MAL-ED      SOUTH AFRICA                   0                    NA                -0.0897760   -0.1196578   -0.0598943
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1898835   -0.2691676   -0.1105994
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1432393   -0.1865433   -0.0999352
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0688402   -0.0801618   -0.0575186
12-15 months   GMS-Nepal   NEPAL                          0                    NA                -0.0747070   -0.1059038   -0.0435102
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0303124   -0.0573825   -0.0032422
12-15 months   JiVitA-4    BANGLADESH                     0                    NA                 0.0072774   -0.0947368    0.1092917
12-15 months   MAL-ED      BANGLADESH                     1                    NA                -0.0637570   -0.0801494   -0.0473646
12-15 months   MAL-ED      BANGLADESH                     0                    NA                -0.0164924   -0.0604346    0.0274497
12-15 months   MAL-ED      BRAZIL                         1                    NA                -0.0012454   -0.0312216    0.0287309
12-15 months   MAL-ED      BRAZIL                         0                    NA                -0.0043005   -0.0396408    0.0310399
12-15 months   MAL-ED      INDIA                          1                    NA                -0.0615102   -0.0830374   -0.0399829
12-15 months   MAL-ED      INDIA                          0                    NA                -0.0556598   -0.0842067   -0.0271130
12-15 months   MAL-ED      NEPAL                          1                    NA                -0.0583409   -0.0804549   -0.0362269
12-15 months   MAL-ED      NEPAL                          0                    NA                -0.0581405   -0.0804614   -0.0358196
12-15 months   MAL-ED      PERU                           1                    NA                -0.0677019   -0.0884197   -0.0469841
12-15 months   MAL-ED      PERU                           0                    NA                -0.0575216   -0.0911311   -0.0239122
12-15 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.0747151   -0.1228009   -0.0266294
12-15 months   MAL-ED      SOUTH AFRICA                   0                    NA                -0.0523995   -0.0795312   -0.0252678
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0926424   -0.1379901   -0.0472948
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0609843   -0.0940843   -0.0278842
15-18 months   GMS-Nepal   NEPAL                          1                    NA                -0.0575947   -0.0728886   -0.0423008
15-18 months   GMS-Nepal   NEPAL                          0                    NA                -0.0891040   -0.1098911   -0.0683170
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0064443   -0.0354592    0.0225706
15-18 months   JiVitA-4    BANGLADESH                     0                    NA                 0.1042375    0.0533414    0.1551336
15-18 months   MAL-ED      BANGLADESH                     1                    NA                -0.0433679   -0.0588752   -0.0278606
15-18 months   MAL-ED      BANGLADESH                     0                    NA                -0.0860467   -0.1133181   -0.0587754
15-18 months   MAL-ED      BRAZIL                         1                    NA                -0.0368563   -0.0688288   -0.0048838
15-18 months   MAL-ED      BRAZIL                         0                    NA                -0.0208657   -0.0521242    0.0103927
15-18 months   MAL-ED      INDIA                          1                    NA                -0.0416625   -0.0574976   -0.0258273
15-18 months   MAL-ED      INDIA                          0                    NA                -0.0197298   -0.0453521    0.0058924
15-18 months   MAL-ED      NEPAL                          1                    NA                -0.0632153   -0.0857492   -0.0406813
15-18 months   MAL-ED      NEPAL                          0                    NA                -0.0520619   -0.0737851   -0.0303386
15-18 months   MAL-ED      PERU                           1                    NA                -0.0394060   -0.0565887   -0.0222233
15-18 months   MAL-ED      PERU                           0                    NA                -0.0320738   -0.0642685    0.0001208
15-18 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.0422966   -0.0817415   -0.0028518
15-18 months   MAL-ED      SOUTH AFRICA                   0                    NA                -0.0260805   -0.0477800   -0.0043810
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0944600   -0.1413341   -0.0475860
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0924090   -0.1206164   -0.0642017
18-21 months   GMS-Nepal   NEPAL                          1                    NA                 0.0176008    0.0012434    0.0339582
18-21 months   GMS-Nepal   NEPAL                          0                    NA                 0.0223135   -0.0034124    0.0480394
18-21 months   MAL-ED      BANGLADESH                     1                    NA                -0.0187069   -0.0321642   -0.0052496
18-21 months   MAL-ED      BANGLADESH                     0                    NA                 0.0114039   -0.0114306    0.0342384
18-21 months   MAL-ED      BRAZIL                         1                    NA                -0.0255286   -0.0597320    0.0086747
18-21 months   MAL-ED      BRAZIL                         0                    NA                -0.0158229   -0.0533097    0.0216638
18-21 months   MAL-ED      INDIA                          1                    NA                -0.0029567   -0.0174362    0.0115228
18-21 months   MAL-ED      INDIA                          0                    NA                 0.0192466   -0.0032442    0.0417374
18-21 months   MAL-ED      NEPAL                          1                    NA                -0.0376279   -0.0575516   -0.0177042
18-21 months   MAL-ED      NEPAL                          0                    NA                -0.0203669   -0.0385805   -0.0021533
18-21 months   MAL-ED      PERU                           1                    NA                -0.0038166   -0.0235215    0.0158883
18-21 months   MAL-ED      PERU                           0                    NA                -0.0141848   -0.0387519    0.0103823
18-21 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0128403   -0.0338933    0.0595739
18-21 months   MAL-ED      SOUTH AFRICA                   0                    NA                -0.0417871   -0.0632659   -0.0203082
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0189152   -0.0679155    0.0300851
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0352396   -0.0648571   -0.0056221
21-24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0520170    0.0319388    0.0720951
21-24 months   GMS-Nepal   NEPAL                          0                    NA                 0.0154157   -0.0208732    0.0517046
21-24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0236711    0.0093469    0.0379952
21-24 months   MAL-ED      BANGLADESH                     0                    NA                 0.0303862    0.0075426    0.0532297
21-24 months   MAL-ED      BRAZIL                         1                    NA                 0.0153880   -0.0062907    0.0370667
21-24 months   MAL-ED      BRAZIL                         0                    NA                 0.0194858   -0.0064837    0.0454554
21-24 months   MAL-ED      INDIA                          1                    NA                 0.0362789    0.0222834    0.0502744
21-24 months   MAL-ED      INDIA                          0                    NA                 0.0227909    0.0017321    0.0438498
21-24 months   MAL-ED      NEPAL                          1                    NA                 0.0098627   -0.0083299    0.0280553
21-24 months   MAL-ED      NEPAL                          0                    NA                 0.0043644   -0.0169953    0.0257241
21-24 months   MAL-ED      PERU                           1                    NA                 0.0566289    0.0378096    0.0754482
21-24 months   MAL-ED      PERU                           0                    NA                 0.0602320    0.0326920    0.0877720
21-24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0195838   -0.0123307    0.0514984
21-24 months   MAL-ED      SOUTH AFRICA                   0                    NA                 0.0550500    0.0342613    0.0758388
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0205777   -0.0156207    0.0567760
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0072256   -0.0237202    0.0381713


### Parameter: E(Y)


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          NA                   NA                -0.0389250   -0.0654744   -0.0123756
0-3 months     JiVitA-3    BANGLADESH                     NA                   NA                 0.0748525    0.0686630    0.0810419
0-3 months     JiVitA-4    BANGLADESH                     NA                   NA                 0.1109539    0.0661941    0.1557138
0-3 months     MAL-ED      BANGLADESH                     NA                   NA                -0.1272271   -0.1614593   -0.0929949
0-3 months     MAL-ED      BRAZIL                         NA                   NA                 0.1488245    0.0885499    0.2090991
0-3 months     MAL-ED      INDIA                          NA                   NA                -0.0545690   -0.1093806    0.0002426
0-3 months     MAL-ED      NEPAL                          NA                   NA                 0.0510100    0.0061541    0.0958660
0-3 months     MAL-ED      PERU                           NA                   NA                -0.2631203   -0.2975785   -0.2286621
0-3 months     MAL-ED      SOUTH AFRICA                   NA                   NA                -0.1701813   -0.2201854   -0.1201772
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1481092   -0.1901169   -0.1061015
3-6 months     GMS-Nepal   NEPAL                          NA                   NA                -0.1580566   -0.1776900   -0.1384232
3-6 months     JiVitA-3    BANGLADESH                     NA                   NA                -0.0050744   -0.0113651    0.0012163
3-6 months     MAL-ED      BANGLADESH                     NA                   NA                -0.0185754   -0.0420362    0.0048853
3-6 months     MAL-ED      BRAZIL                         NA                   NA                 0.0650837    0.0260851    0.1040822
3-6 months     MAL-ED      INDIA                          NA                   NA                -0.0434351   -0.0750382   -0.0118321
3-6 months     MAL-ED      NEPAL                          NA                   NA                -0.0255014   -0.0523456    0.0013427
3-6 months     MAL-ED      PERU                           NA                   NA                 0.0252665   -0.0061992    0.0567322
3-6 months     MAL-ED      SOUTH AFRICA                   NA                   NA                -0.0065980   -0.0455003    0.0323043
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0668448   -0.1004432   -0.0332465
6-9 months     GMS-Nepal   NEPAL                          NA                   NA                -0.0454089   -0.0661443   -0.0246735
6-9 months     MAL-ED      BANGLADESH                     NA                   NA                -0.0719928   -0.0896446   -0.0543410
6-9 months     MAL-ED      BRAZIL                         NA                   NA                 0.0070906   -0.0301925    0.0443736
6-9 months     MAL-ED      INDIA                          NA                   NA                -0.0730513   -0.0967576   -0.0493449
6-9 months     MAL-ED      NEPAL                          NA                   NA                -0.0334124   -0.0530149   -0.0138099
6-9 months     MAL-ED      PERU                           NA                   NA                -0.0344967   -0.0587887   -0.0102046
6-9 months     MAL-ED      SOUTH AFRICA                   NA                   NA                -0.0137350   -0.0427808    0.0153108
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0947719   -0.1279445   -0.0615994
9-12 months    GMS-Nepal   NEPAL                          NA                   NA                -0.0793581   -0.0958225   -0.0628937
9-12 months    JiVitA-4    BANGLADESH                     NA                   NA                -0.0463035   -0.0812128   -0.0113943
9-12 months    MAL-ED      BANGLADESH                     NA                   NA                -0.0853635   -0.1017180   -0.0690090
9-12 months    MAL-ED      BRAZIL                         NA                   NA                 0.0033209   -0.0300480    0.0366898
9-12 months    MAL-ED      INDIA                          NA                   NA                -0.0973168   -0.1135502   -0.0810834
9-12 months    MAL-ED      NEPAL                          NA                   NA                -0.0634351   -0.0807824   -0.0460878
9-12 months    MAL-ED      PERU                           NA                   NA                -0.0414622   -0.0630765   -0.0198479
9-12 months    MAL-ED      SOUTH AFRICA                   NA                   NA                -0.0920764   -0.1191029   -0.0650499
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1543757   -0.1899833   -0.1187681
12-15 months   GMS-Nepal   NEPAL                          NA                   NA                -0.0698643   -0.0805537   -0.0591748
12-15 months   JiVitA-4    BANGLADESH                     NA                   NA                -0.0245445   -0.0504325    0.0013435
12-15 months   MAL-ED      BANGLADESH                     NA                   NA                -0.0541395   -0.0699573   -0.0383217
12-15 months   MAL-ED      BRAZIL                         NA                   NA                -0.0004235   -0.0234370    0.0225900
12-15 months   MAL-ED      INDIA                          NA                   NA                -0.0593506   -0.0758306   -0.0428707
12-15 months   MAL-ED      NEPAL                          NA                   NA                -0.0574001   -0.0732076   -0.0415925
12-15 months   MAL-ED      PERU                           NA                   NA                -0.0661802   -0.0840222   -0.0483383
12-15 months   MAL-ED      SOUTH AFRICA                   NA                   NA                -0.0589478   -0.0825397   -0.0353559
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0678133   -0.0945748   -0.0410518
15-18 months   GMS-Nepal   NEPAL                          NA                   NA                -0.0623706   -0.0756949   -0.0490463
15-18 months   JiVitA-4    BANGLADESH                     NA                   NA                 0.0002451   -0.0264873    0.0269774
15-18 months   MAL-ED      BANGLADESH                     NA                   NA                -0.0458018   -0.0595013   -0.0321023
15-18 months   MAL-ED      BRAZIL                         NA                   NA                -0.0272762   -0.0493683   -0.0051840
15-18 months   MAL-ED      INDIA                          NA                   NA                -0.0347219   -0.0482094   -0.0212344
15-18 months   MAL-ED      NEPAL                          NA                   NA                -0.0558396   -0.0714014   -0.0402779
15-18 months   MAL-ED      PERU                           NA                   NA                -0.0366273   -0.0521417   -0.0211130
15-18 months   MAL-ED      SOUTH AFRICA                   NA                   NA                -0.0303264   -0.0494996   -0.0111532
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0885708   -0.1125745   -0.0645671
18-21 months   GMS-Nepal   NEPAL                          NA                   NA                 0.0192890    0.0050754    0.0335026
18-21 months   MAL-ED      BANGLADESH                     NA                   NA                -0.0156920   -0.0275555   -0.0038285
18-21 months   MAL-ED      BRAZIL                         NA                   NA                -0.0173059   -0.0423234    0.0077117
18-21 months   MAL-ED      INDIA                          NA                   NA                 0.0035076   -0.0086867    0.0157020
18-21 months   MAL-ED      NEPAL                          NA                   NA                -0.0277114   -0.0411503   -0.0142726
18-21 months   MAL-ED      PERU                           NA                   NA                -0.0075674   -0.0228614    0.0077265
18-21 months   MAL-ED      SOUTH AFRICA                   NA                   NA                -0.0319118   -0.0515078   -0.0123157
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0280548   -0.0527783   -0.0033314
21-24 months   GMS-Nepal   NEPAL                          NA                   NA                 0.0458107    0.0279350    0.0636865
21-24 months   MAL-ED      BANGLADESH                     NA                   NA                 0.0244279    0.0120979    0.0367579
21-24 months   MAL-ED      BRAZIL                         NA                   NA                 0.0141891   -0.0024092    0.0307875
21-24 months   MAL-ED      INDIA                          NA                   NA                 0.0316867    0.0200407    0.0433327
21-24 months   MAL-ED      NEPAL                          NA                   NA                 0.0073452   -0.0067007    0.0213911
21-24 months   MAL-ED      PERU                           NA                   NA                 0.0575837    0.0421321    0.0730353
21-24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                 0.0454561    0.0281790    0.0627333
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0106677   -0.0132987    0.0346340


### Parameter: ATE


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL                          0                    1                 -0.0016686   -0.0744330    0.0710957
0-3 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH                     0                    1                  0.0127029   -0.0040736    0.0294795
0-3 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH                     0                    1                 -0.0022604   -0.1091081    0.1045874
0-3 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH                     0                    1                 -0.1246002   -0.2124889   -0.0367115
0-3 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL                         0                    1                 -0.0728817   -0.1949615    0.0491982
0-3 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA                          0                    1                 -0.0154183   -0.1382877    0.1074510
0-3 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL                          0                    1                  0.0970119    0.0064416    0.1875821
0-3 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU                           0                    1                 -0.0560218   -0.1373874    0.0253438
0-3 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.0656420   -0.0333665    0.1646505
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1563323   -0.2474085   -0.0652562
3-6 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL                          0                    1                 -0.0162025   -0.0694165    0.0370115
3-6 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH                     0                    1                 -0.0141521   -0.0345359    0.0062318
3-6 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH                     0                    1                  0.0178811   -0.0412574    0.0770196
3-6 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL                         0                    1                  0.1256304    0.0479965    0.2032643
3-6 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA                          0                    1                 -0.0187033   -0.0887213    0.0513146
3-6 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL                          0                    1                  0.0700555    0.0168096    0.1233014
3-6 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU                           0                    1                  0.0259393   -0.0425486    0.0944273
3-6 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.0163230   -0.0693249    0.1019710
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0617931   -0.0144128    0.1379990
6-9 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL                          0                    1                 -0.0096252   -0.0554190    0.0361686
6-9 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH                     0                    1                 -0.0064127   -0.0558014    0.0429760
6-9 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL                         0                    1                  0.0018341   -0.0762430    0.0799112
6-9 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA                          0                    1                  0.0098425   -0.0443326    0.0640175
6-9 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL                          0                    1                  0.0059708   -0.0328889    0.0448304
6-9 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU                           0                    1                 -0.0011440   -0.0567634    0.0544754
6-9 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.0088764   -0.0567996    0.0745523
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0637017   -0.1443967    0.0169933
9-12 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL                          0                    1                  0.0501758    0.0141862    0.0861654
9-12 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH                     0                    1                  0.1482031   -0.0297161    0.3261224
9-12 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH                     0                    1                  0.0055108   -0.0314872    0.0425089
9-12 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL                         0                    1                 -0.0019281   -0.0691579    0.0653018
9-12 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA                          0                    1                  0.0638653    0.0309007    0.0968299
9-12 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL                          0                    1                  0.0036100   -0.0315602    0.0387803
9-12 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU                           0                    1                 -0.0332921   -0.0787823    0.0121980
9-12 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      SOUTH AFRICA                   0                    1                  0.0003647   -0.0642231    0.0649526
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0466442   -0.0509345    0.1442229
12-15 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL                          0                    1                 -0.0058668   -0.0390145    0.0272809
12-15 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH                     0                    1                  0.0375898   -0.0681873    0.1433669
12-15 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH                     0                    1                  0.0472646    0.0003708    0.0941583
12-15 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL                         0                    1                 -0.0030551   -0.0490884    0.0429782
12-15 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA                          0                    1                  0.0058503   -0.0299804    0.0416811
12-15 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL                          0                    1                  0.0002004   -0.0309774    0.0313782
12-15 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU                           0                    1                  0.0101803   -0.0291006    0.0494612
12-15 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0223156   -0.0329714    0.0776027
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0316581   -0.0245743    0.0878906
15-18 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL                          0                    1                 -0.0315094   -0.0573672   -0.0056515
15-18 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH                     0                    1                  0.1106819    0.0502036    0.1711601
15-18 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH                     0                    1                 -0.0426788   -0.0742189   -0.0111387
15-18 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL                         0                    1                  0.0159906   -0.0291107    0.0610918
15-18 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA                          0                    1                  0.0219327   -0.0082963    0.0521616
15-18 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL                          0                    1                  0.0111534   -0.0203284    0.0426352
15-18 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU                           0                    1                  0.0073322   -0.0292662    0.0439306
15-18 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0162161   -0.0288470    0.0612791
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0020510   -0.0533191    0.0574211
18-21 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL                          0                    1                  0.0047128   -0.0264374    0.0358629
18-21 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH                     0                    1                  0.0301108    0.0035046    0.0567170
18-21 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL                         0                    1                  0.0097057   -0.0413935    0.0608050
18-21 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA                          0                    1                  0.0222033   -0.0043567    0.0487632
18-21 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL                          0                    1                  0.0172610   -0.0097343    0.0442563
18-21 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU                           0                    1                 -0.0103682   -0.0423816    0.0216452
18-21 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.0546274   -0.1072024   -0.0020524
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0163244   -0.0737258    0.0410769
21-24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL                          0                    1                 -0.0366013   -0.0784211    0.0052186
21-24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH                     0                    1                  0.0067151   -0.0203468    0.0337770
21-24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL                         0                    1                  0.0040978   -0.0298853    0.0380809
21-24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA                          0                    1                 -0.0134880   -0.0388917    0.0119158
21-24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL                          0                    1                 -0.0054983   -0.0332910    0.0222944
21-24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU                           0                    1                  0.0036031   -0.0301824    0.0373886
21-24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0354662   -0.0026664    0.0735988
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0133521   -0.0611614    0.0344572


### Parameter: PAR


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0008736   -0.0131857    0.0114384
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0012877   -0.0003181    0.0028936
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0063428   -0.0179136    0.0052279
0-3 months     MAL-ED      BANGLADESH                     1                    NA                -0.0237290   -0.0409455   -0.0065125
0-3 months     MAL-ED      BRAZIL                         1                    NA                -0.0380943   -0.0996790    0.0234904
0-3 months     MAL-ED      INDIA                          1                    NA                -0.0099068   -0.0502066    0.0303931
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.0446670    0.0031115    0.0862226
0-3 months     MAL-ED      PERU                           1                    NA                -0.0157147   -0.0452266    0.0137973
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0487773   -0.0219188    0.1194734
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1080584   -0.1741395   -0.0419773
3-6 months     GMS-Nepal   NEPAL                          1                    NA                -0.0032805   -0.0122271    0.0056660
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0012434   -0.0030315    0.0005448
3-6 months     MAL-ED      BANGLADESH                     1                    NA                 0.0054824   -0.0051159    0.0160807
3-6 months     MAL-ED      BRAZIL                         1                    NA                 0.0618289    0.0220306    0.1016271
3-6 months     MAL-ED      INDIA                          1                    NA                -0.0056946   -0.0259475    0.0145583
3-6 months     MAL-ED      NEPAL                          1                    NA                 0.0311361    0.0037013    0.0585708
3-6 months     MAL-ED      PERU                           1                    NA                 0.0122939   -0.0110661    0.0356540
3-6 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0133274   -0.0494763    0.0761311
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0436997   -0.0101976    0.0975971
6-9 months     GMS-Nepal   NEPAL                          1                    NA                 0.0001046   -0.0076790    0.0078882
6-9 months     MAL-ED      BANGLADESH                     1                    NA                -0.0006765   -0.0094702    0.0081172
6-9 months     MAL-ED      BRAZIL                         1                    NA                 0.0044352   -0.0336957    0.0425661
6-9 months     MAL-ED      INDIA                          1                    NA                 0.0022914   -0.0130592    0.0176419
6-9 months     MAL-ED      NEPAL                          1                    NA                 0.0029602   -0.0166940    0.0226144
6-9 months     MAL-ED      PERU                           1                    NA                 0.0005080   -0.0180191    0.0190351
6-9 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0060787   -0.0416178    0.0537752
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0507544   -0.1073945    0.0058856
9-12 months    GMS-Nepal   NEPAL                          1                    NA                 0.0078672    0.0017334    0.0140010
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                 0.0054681   -0.0094963    0.0204325
9-12 months    MAL-ED      BANGLADESH                     1                    NA                 0.0004424   -0.0064576    0.0073425
9-12 months    MAL-ED      BRAZIL                         1                    NA                -0.0016930   -0.0351997    0.0318138
9-12 months    MAL-ED      INDIA                          1                    NA                 0.0184361    0.0077210    0.0291512
9-12 months    MAL-ED      NEPAL                          1                    NA                 0.0029879   -0.0148630    0.0208388
9-12 months    MAL-ED      PERU                           1                    NA                -0.0111652   -0.0263013    0.0039710
9-12 months    MAL-ED      SOUTH AFRICA                   1                    NA                -0.0019356   -0.0485920    0.0447208
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0355078   -0.0304987    0.1015142
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0010241   -0.0060742    0.0040260
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0057679   -0.0026462    0.0141819
12-15 months   MAL-ED      BANGLADESH                     1                    NA                 0.0096175    0.0005373    0.0186977
12-15 months   MAL-ED      BRAZIL                         1                    NA                 0.0008219   -0.0211871    0.0228309
12-15 months   MAL-ED      INDIA                          1                    NA                 0.0021596   -0.0088870    0.0132061
12-15 months   MAL-ED      NEPAL                          1                    NA                 0.0009408   -0.0148838    0.0167654
12-15 months   MAL-ED      PERU                           1                    NA                 0.0015217   -0.0115835    0.0146269
12-15 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0157673   -0.0245103    0.0560449
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0248291   -0.0152365    0.0648947
15-18 months   GMS-Nepal   NEPAL                          1                    NA                -0.0047760   -0.0089819   -0.0005700
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0066894   -0.0021991    0.0155779
15-18 months   MAL-ED      BANGLADESH                     1                    NA                -0.0024339   -0.0088156    0.0039478
15-18 months   MAL-ED      BRAZIL                         1                    NA                 0.0095801   -0.0121049    0.0312652
15-18 months   MAL-ED      INDIA                          1                    NA                 0.0069406   -0.0025833    0.0164645
15-18 months   MAL-ED      NEPAL                          1                    NA                 0.0073756   -0.0085984    0.0233497
15-18 months   MAL-ED      PERU                           1                    NA                 0.0027787   -0.0091529    0.0147103
15-18 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0119702   -0.0208925    0.0448329
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0058892   -0.0342718    0.0460502
18-21 months   GMS-Nepal   NEPAL                          1                    NA                 0.0016882   -0.0030073    0.0063837
18-21 months   MAL-ED      BANGLADESH                     1                    NA                 0.0030149   -0.0019946    0.0080244
18-21 months   MAL-ED      BRAZIL                         1                    NA                 0.0082228   -0.0162562    0.0327018
18-21 months   MAL-ED      INDIA                          1                    NA                 0.0064643   -0.0018984    0.0148270
18-21 months   MAL-ED      NEPAL                          1                    NA                 0.0099165   -0.0038411    0.0236740
18-21 months   MAL-ED      PERU                           1                    NA                -0.0037508   -0.0143888    0.0068872
18-21 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.0447521   -0.0839615   -0.0055428
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0091396   -0.0501013    0.0318220
21-24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0062062   -0.0129100    0.0004975
21-24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0007568   -0.0041163    0.0056299
21-24 months   MAL-ED      BRAZIL                         1                    NA                -0.0011989   -0.0175954    0.0151977
21-24 months   MAL-ED      INDIA                          1                    NA                -0.0045922   -0.0127632    0.0035787
21-24 months   MAL-ED      NEPAL                          1                    NA                -0.0025175   -0.0164585    0.0114235
21-24 months   MAL-ED      PERU                           1                    NA                 0.0009548   -0.0105960    0.0125056
21-24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0258723   -0.0034990    0.0552436
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0099100   -0.0435134    0.0236933
