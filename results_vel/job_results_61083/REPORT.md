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
![](/tmp/b2b672a1-93dd-43d5-96ec-159e69ce6d60/d1899600-dd2e-4125-86ee-7f00f1d6b238/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b2b672a1-93dd-43d5-96ec-159e69ce6d60/d1899600-dd2e-4125-86ee-7f00f1d6b238/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b2b672a1-93dd-43d5-96ec-159e69ce6d60/d1899600-dd2e-4125-86ee-7f00f1d6b238/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                3.5855096   3.5268514   3.6441677
0-3 months     GMS-Nepal   NEPAL                          0                    NA                3.6012103   3.4578268   3.7445937
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                3.7221851   3.7090524   3.7353179
0-3 months     JiVitA-3    BANGLADESH                     0                    NA                3.7602494   3.7261994   3.7942993
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                3.8140214   3.7118381   3.9162048
0-3 months     JiVitA-4    BANGLADESH                     0                    NA                3.7379110   3.4347246   4.0410974
0-3 months     MAL-ED      BANGLADESH                     1                    NA                3.3711754   3.2986109   3.4437399
0-3 months     MAL-ED      BANGLADESH                     0                    NA                3.1701229   3.0113996   3.3288462
0-3 months     MAL-ED      BRAZIL                         1                    NA                3.8924301   3.7357049   4.0491553
0-3 months     MAL-ED      BRAZIL                         0                    NA                3.7606334   3.5885424   3.9327244
0-3 months     MAL-ED      INDIA                          1                    NA                3.3872180   3.2501553   3.5242806
0-3 months     MAL-ED      INDIA                          0                    NA                3.3145720   3.1242043   3.5049396
0-3 months     MAL-ED      NEPAL                          1                    NA                3.4882231   3.3680429   3.6084034
0-3 months     MAL-ED      NEPAL                          0                    NA                3.7216881   3.5819308   3.8614455
0-3 months     MAL-ED      PERU                           1                    NA                3.0713249   2.9896662   3.1529837
0-3 months     MAL-ED      PERU                           0                    NA                3.0207483   2.8950712   3.1464254
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                3.1040548   2.9517779   3.2563318
0-3 months     MAL-ED      SOUTH AFRICA                   0                    NA                3.2331846   3.1101249   3.3562443
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4464601   3.2897633   3.6031569
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                3.1729705   3.0754337   3.2705073
3-6 months     GMS-Nepal   NEPAL                          1                    NA                1.7270253   1.6816337   1.7724168
3-6 months     GMS-Nepal   NEPAL                          0                    NA                1.6892010   1.5902748   1.7881273
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                1.9191285   1.9049056   1.9333514
3-6 months     JiVitA-3    BANGLADESH                     0                    NA                1.8906775   1.8479580   1.9333971
3-6 months     MAL-ED      BANGLADESH                     1                    NA                1.9216234   1.8663305   1.9769164
3-6 months     MAL-ED      BANGLADESH                     0                    NA                2.0038784   1.8867749   2.1209819
3-6 months     MAL-ED      BRAZIL                         1                    NA                2.0082925   1.8932598   2.1233251
3-6 months     MAL-ED      BRAZIL                         0                    NA                2.2993587   2.1724283   2.4262890
3-6 months     MAL-ED      INDIA                          1                    NA                1.8968388   1.8155602   1.9781174
3-6 months     MAL-ED      INDIA                          0                    NA                1.8299555   1.6952616   1.9646494
3-6 months     MAL-ED      NEPAL                          1                    NA                1.8834639   1.8086538   1.9582740
3-6 months     MAL-ED      NEPAL                          0                    NA                2.0456766   1.9615031   2.1298500
3-6 months     MAL-ED      PERU                           1                    NA                1.9947965   1.9140540   2.0755390
3-6 months     MAL-ED      PERU                           0                    NA                2.0861665   1.9663800   2.2059529
3-6 months     MAL-ED      SOUTH AFRICA                   1                    NA                1.9481908   1.7776473   2.1187343
3-6 months     MAL-ED      SOUTH AFRICA                   0                    NA                1.9787201   1.8805524   2.0768879
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7456591   1.6107494   1.8805687
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8737719   1.7910217   1.9565221
6-9 months     GMS-Nepal   NEPAL                          1                    NA                1.3167682   1.2617690   1.3717674
6-9 months     GMS-Nepal   NEPAL                          0                    NA                1.2972584   1.2098704   1.3846465
6-9 months     MAL-ED      BANGLADESH                     1                    NA                1.2447954   1.2000746   1.2895162
6-9 months     MAL-ED      BANGLADESH                     0                    NA                1.2312724   1.1308703   1.3316745
6-9 months     MAL-ED      BRAZIL                         1                    NA                1.4906007   1.3595652   1.6216362
6-9 months     MAL-ED      BRAZIL                         0                    NA                1.4668339   1.3528114   1.5808563
6-9 months     MAL-ED      INDIA                          1                    NA                1.2313190   1.1658124   1.2968257
6-9 months     MAL-ED      INDIA                          0                    NA                1.2632788   1.1615880   1.3649696
6-9 months     MAL-ED      NEPAL                          1                    NA                1.3514725   1.2894666   1.4134783
6-9 months     MAL-ED      NEPAL                          0                    NA                1.3693620   1.3048526   1.4338714
6-9 months     MAL-ED      PERU                           1                    NA                1.3096283   1.2438131   1.3754434
6-9 months     MAL-ED      PERU                           0                    NA                1.3112321   1.2124520   1.4100121
6-9 months     MAL-ED      SOUTH AFRICA                   1                    NA                1.3657909   1.2247839   1.5067979
6-9 months     MAL-ED      SOUTH AFRICA                   0                    NA                1.3888381   1.3112989   1.4663774
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3051282   1.1314266   1.4788299
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1440539   1.0622700   1.2258379
9-12 months    GMS-Nepal   NEPAL                          1                    NA                0.9812129   0.9361598   1.0262660
9-12 months    GMS-Nepal   NEPAL                          0                    NA                1.0764718   1.0067521   1.1461915
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                1.0753120   0.9839553   1.1666687
9-12 months    JiVitA-4    BANGLADESH                     0                    NA                1.3185690   0.7069348   1.9302033
9-12 months    MAL-ED      BANGLADESH                     1                    NA                0.9895186   0.9445610   1.0344761
9-12 months    MAL-ED      BANGLADESH                     0                    NA                0.9902575   0.9120328   1.0684822
9-12 months    MAL-ED      BRAZIL                         1                    NA                1.2744184   1.1646877   1.3841491
9-12 months    MAL-ED      BRAZIL                         0                    NA                1.3142633   1.1926698   1.4358567
9-12 months    MAL-ED      INDIA                          1                    NA                0.9197016   0.8725662   0.9668369
9-12 months    MAL-ED      INDIA                          0                    NA                1.0709478   1.0082299   1.1336657
9-12 months    MAL-ED      NEPAL                          1                    NA                1.0896959   1.0282719   1.1511198
9-12 months    MAL-ED      NEPAL                          0                    NA                1.0987589   1.0412407   1.1562770
9-12 months    MAL-ED      PERU                           1                    NA                1.1280625   1.0637831   1.1923420
9-12 months    MAL-ED      PERU                           0                    NA                1.0350244   0.9503214   1.1197275
9-12 months    MAL-ED      SOUTH AFRICA                   1                    NA                0.9902500   0.8445454   1.1359546
9-12 months    MAL-ED      SOUTH AFRICA                   0                    NA                1.0073363   0.9345861   1.0800865
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7072580   0.5249239   0.8895920
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8580282   0.7633710   0.9526854
12-15 months   GMS-Nepal   NEPAL                          1                    NA                0.8749625   0.8446871   0.9052379
12-15 months   GMS-Nepal   NEPAL                          0                    NA                0.8562135   0.7747963   0.9376307
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                0.9812014   0.9073740   1.0550288
12-15 months   JiVitA-4    BANGLADESH                     0                    NA                1.1038542   0.9111588   1.2965495
12-15 months   MAL-ED      BANGLADESH                     1                    NA                0.8926957   0.8493267   0.9360647
12-15 months   MAL-ED      BANGLADESH                     0                    NA                0.9958928   0.8866600   1.1051257
12-15 months   MAL-ED      BRAZIL                         1                    NA                1.1406174   1.0617301   1.2195047
12-15 months   MAL-ED      BRAZIL                         0                    NA                1.1531627   1.0609610   1.2453644
12-15 months   MAL-ED      INDIA                          1                    NA                0.8971330   0.8443037   0.9499623
12-15 months   MAL-ED      INDIA                          0                    NA                0.9167979   0.8453995   0.9881962
12-15 months   MAL-ED      NEPAL                          1                    NA                0.9523829   0.8953308   1.0094350
12-15 months   MAL-ED      NEPAL                          0                    NA                0.9517651   0.8940297   1.0095004
12-15 months   MAL-ED      PERU                           1                    NA                0.8846909   0.8301583   0.9392236
12-15 months   MAL-ED      PERU                           0                    NA                0.9081394   0.8211285   0.9951503
12-15 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.8847811   0.7622744   1.0072878
12-15 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.9335957   0.8650941   1.0020973
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7995216   0.6817058   0.9173375
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8779975   0.7925222   0.9634728
15-18 months   GMS-Nepal   NEPAL                          1                    NA                0.7856285   0.7433700   0.8278869
15-18 months   GMS-Nepal   NEPAL                          0                    NA                0.6829231   0.6224342   0.7434121
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                0.9486247   0.8697494   1.0275000
15-18 months   JiVitA-4    BANGLADESH                     0                    NA                1.2901025   1.1389664   1.4412386
15-18 months   MAL-ED      BANGLADESH                     1                    NA                0.8367386   0.7946024   0.8788747
15-18 months   MAL-ED      BANGLADESH                     0                    NA                0.7878056   0.7046715   0.8709398
15-18 months   MAL-ED      BRAZIL                         1                    NA                0.9548775   0.8647598   1.0449952
15-18 months   MAL-ED      BRAZIL                         0                    NA                1.0331429   0.9453529   1.1209328
15-18 months   MAL-ED      INDIA                          1                    NA                0.8306298   0.7855385   0.8757210
15-18 months   MAL-ED      INDIA                          0                    NA                0.8996497   0.8251085   0.9741908
15-18 months   MAL-ED      NEPAL                          1                    NA                0.8192230   0.7553883   0.8830577
15-18 months   MAL-ED      NEPAL                          0                    NA                0.8582209   0.7996097   0.9168320
15-18 months   MAL-ED      PERU                           1                    NA                0.8363486   0.7882489   0.8844482
15-18 months   MAL-ED      PERU                           0                    NA                0.8782223   0.7897103   0.9667343
15-18 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.8422999   0.7313817   0.9532181
15-18 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.8966562   0.8354557   0.9578568
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6905141   0.5671175   0.8139106
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6679226   0.5902772   0.7455680
18-21 months   GMS-Nepal   NEPAL                          1                    NA                0.9112887   0.8648971   0.9576803
18-21 months   GMS-Nepal   NEPAL                          0                    NA                0.9438591   0.8723643   1.0153539
18-21 months   MAL-ED      BANGLADESH                     1                    NA                0.8027971   0.7625573   0.8430369
18-21 months   MAL-ED      BANGLADESH                     0                    NA                0.8694545   0.8020398   0.9368691
18-21 months   MAL-ED      BRAZIL                         1                    NA                0.8929790   0.7971450   0.9888129
18-21 months   MAL-ED      BRAZIL                         0                    NA                0.9585456   0.8481018   1.0689895
18-21 months   MAL-ED      INDIA                          1                    NA                0.8489025   0.8045310   0.8932739
18-21 months   MAL-ED      INDIA                          0                    NA                0.9208853   0.8490938   0.9926768
18-21 months   MAL-ED      NEPAL                          1                    NA                0.7954752   0.7386911   0.8522593
18-21 months   MAL-ED      NEPAL                          0                    NA                0.8538699   0.7994365   0.9083034
18-21 months   MAL-ED      PERU                           1                    NA                0.8720911   0.8143458   0.9298364
18-21 months   MAL-ED      PERU                           0                    NA                0.7834459   0.7129900   0.8539018
18-21 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.9117078   0.7729052   1.0505105
18-21 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.7437934   0.6830408   0.8045460
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7934687   0.6579203   0.9290171
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7323915   0.6458477   0.8189353
21-24 months   GMS-Nepal   NEPAL                          1                    NA                0.8051090   0.7473630   0.8628549
21-24 months   GMS-Nepal   NEPAL                          0                    NA                0.6848252   0.5821080   0.7875424
21-24 months   MAL-ED      BANGLADESH                     1                    NA                0.7727046   0.7312203   0.8141890
21-24 months   MAL-ED      BANGLADESH                     0                    NA                0.7220377   0.6522807   0.7917948
21-24 months   MAL-ED      BRAZIL                         1                    NA                0.7759165   0.7130478   0.8387851
21-24 months   MAL-ED      BRAZIL                         0                    NA                0.8174879   0.7472098   0.8877660
21-24 months   MAL-ED      INDIA                          1                    NA                0.8217554   0.7821960   0.8613147
21-24 months   MAL-ED      INDIA                          0                    NA                0.8363760   0.7725752   0.9001767
21-24 months   MAL-ED      NEPAL                          1                    NA                0.7970357   0.7434898   0.8505817
21-24 months   MAL-ED      NEPAL                          0                    NA                0.7945098   0.7320281   0.8569914
21-24 months   MAL-ED      PERU                           1                    NA                0.7573024   0.7008546   0.8137502
21-24 months   MAL-ED      PERU                           0                    NA                0.7733194   0.6859345   0.8607044
21-24 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.7620614   0.6673220   0.8568009
21-24 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.8678900   0.8045157   0.9312644
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7617457   0.6548434   0.8686480
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6906920   0.5992241   0.7821600


### Parameter: E(Y)


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          NA                   NA                3.5832888   3.5291425   3.6374351
0-3 months     JiVitA-3    BANGLADESH                     NA                   NA                3.7257309   3.7129962   3.7384655
0-3 months     JiVitA-4    BANGLADESH                     NA                   NA                3.7971810   3.7001091   3.8942529
0-3 months     MAL-ED      BANGLADESH                     NA                   NA                3.3300100   3.2632400   3.3967800
0-3 months     MAL-ED      BRAZIL                         NA                   NA                3.8333086   3.7172183   3.9493989
0-3 months     MAL-ED      INDIA                          NA                   NA                3.3581259   3.2511263   3.4651254
0-3 months     MAL-ED      NEPAL                          NA                   NA                3.6149130   3.5218465   3.7079794
0-3 months     MAL-ED      PERU                           NA                   NA                3.0514630   2.9842485   3.1186774
0-3 months     MAL-ED      SOUTH AFRICA                   NA                   NA                3.1964081   3.0976125   3.2952037
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2460048   3.1627741   3.3292354
3-6 months     GMS-Nepal   NEPAL                          NA                   NA                1.7175472   1.6762113   1.7588831
3-6 months     JiVitA-3    BANGLADESH                     NA                   NA                1.9166214   1.9029983   1.9302445
3-6 months     MAL-ED      BANGLADESH                     NA                   NA                1.9360220   1.8863911   1.9856528
3-6 months     MAL-ED      BRAZIL                         NA                   NA                2.1610058   2.0768189   2.2451928
3-6 months     MAL-ED      INDIA                          NA                   NA                1.8774058   1.8092128   1.9455987
3-6 months     MAL-ED      NEPAL                          NA                   NA                1.9604886   1.9037186   2.0172585
3-6 months     MAL-ED      PERU                           NA                   NA                2.0146923   1.9480408   2.0813438
3-6 months     MAL-ED      SOUTH AFRICA                   NA                   NA                1.9673270   1.8846989   2.0499551
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8384078   1.7678309   1.9089846
6-9 months     GMS-Nepal   NEPAL                          NA                   NA                1.3149164   1.2666599   1.3631729
6-9 months     MAL-ED      BANGLADESH                     NA                   NA                1.2426951   1.2021480   1.2832422
6-9 months     MAL-ED      BRAZIL                         NA                   NA                1.4793615   1.3932814   1.5654415
6-9 months     MAL-ED      INDIA                          NA                   NA                1.2410939   1.1870908   1.2950970
6-9 months     MAL-ED      NEPAL                          NA                   NA                1.3593977   1.3145109   1.4042846
6-9 months     MAL-ED      PERU                           NA                   NA                1.3181643   1.2633979   1.3729307
6-9 months     MAL-ED      SOUTH AFRICA                   NA                   NA                1.3866251   1.3204306   1.4528196
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1862735   1.1092792   1.2632679
9-12 months    GMS-Nepal   NEPAL                          NA                   NA                0.9981577   0.9587526   1.0375629
9-12 months    JiVitA-4    BANGLADESH                     NA                   NA                1.0827638   1.0008916   1.1646360
9-12 months    MAL-ED      BANGLADESH                     NA                   NA                0.9927203   0.9534705   1.0319702
9-12 months    MAL-ED      BRAZIL                         NA                   NA                1.2871495   1.2069822   1.3673169
9-12 months    MAL-ED      INDIA                          NA                   NA                0.9664571   0.9272553   1.0056589
9-12 months    MAL-ED      NEPAL                          NA                   NA                1.0863279   1.0443920   1.1282637
9-12 months    MAL-ED      PERU                           NA                   NA                1.0996556   1.0484043   1.1509069
9-12 months    MAL-ED      SOUTH AFRICA                   NA                   NA                0.9974431   0.9321487   1.0627375
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8135761   0.7280408   0.8991114
12-15 months   GMS-Nepal   NEPAL                          NA                   NA                0.8703223   0.8418462   0.8987983
12-15 months   JiVitA-4    BANGLADESH                     NA                   NA                0.9942404   0.9259295   1.0625513
12-15 months   MAL-ED      BANGLADESH                     NA                   NA                0.9168218   0.8756400   0.9580036
12-15 months   MAL-ED      BRAZIL                         NA                   NA                1.1479969   1.0880713   1.2079226
12-15 months   MAL-ED      INDIA                          NA                   NA                0.9027484   0.8605827   0.9449141
12-15 months   MAL-ED      NEPAL                          NA                   NA                0.9510803   0.9108264   0.9913342
12-15 months   MAL-ED      PERU                           NA                   NA                0.8899324   0.8436019   0.9362629
12-15 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.9200282   0.8606688   0.9793876
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8603058   0.7910045   0.9296071
15-18 months   GMS-Nepal   NEPAL                          NA                   NA                0.7714871   0.7347479   0.8082263
15-18 months   JiVitA-4    BANGLADESH                     NA                   NA                0.9624250   0.8894872   1.0353628
15-18 months   MAL-ED      BANGLADESH                     NA                   NA                0.8229575   0.7855057   0.8604093
15-18 months   MAL-ED      BRAZIL                         NA                   NA                0.9818884   0.9203285   1.0434482
15-18 months   MAL-ED      INDIA                          NA                   NA                0.8524809   0.8141426   0.8908193
15-18 months   MAL-ED      NEPAL                          NA                   NA                0.8379671   0.7952249   0.8807093
15-18 months   MAL-ED      PERU                           NA                   NA                0.8524194   0.8100116   0.8948273
15-18 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.8824996   0.8291590   0.9358403
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6765672   0.6111365   0.7419980
18-21 months   GMS-Nepal   NEPAL                          NA                   NA                0.9164610   0.8758269   0.9570951
18-21 months   MAL-ED      BANGLADESH                     NA                   NA                0.8119236   0.7768456   0.8470016
18-21 months   MAL-ED      BRAZIL                         NA                   NA                0.9218418   0.8499673   0.9937164
18-21 months   MAL-ED      INDIA                          NA                   NA                0.8718128   0.8338464   0.9097793
18-21 months   MAL-ED      NEPAL                          NA                   NA                0.8188898   0.7796721   0.8581075
18-21 months   MAL-ED      PERU                           NA                   NA                0.8436364   0.7988407   0.8884321
18-21 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.7825058   0.7256746   0.8393371
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7427314   0.6697155   0.8157473
21-24 months   GMS-Nepal   NEPAL                          NA                   NA                0.7890401   0.7373935   0.8406867
21-24 months   MAL-ED      BANGLADESH                     NA                   NA                0.7650086   0.7291204   0.8008969
21-24 months   MAL-ED      BRAZIL                         NA                   NA                0.7910255   0.7450530   0.8369980
21-24 months   MAL-ED      INDIA                          NA                   NA                0.8277879   0.7947160   0.8608598
21-24 months   MAL-ED      NEPAL                          NA                   NA                0.7874809   0.7457868   0.8291749
21-24 months   MAL-ED      PERU                           NA                   NA                0.7633557   0.7160871   0.8106244
21-24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.8419384   0.7887410   0.8951359
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7195266   0.6482537   0.7907995


### Parameter: ATE


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL                          0                    1                  0.0157007   -0.1395560    0.1709573
0-3 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH                     0                    1                  0.0380642    0.0031675    0.0729609
0-3 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH                     0                    1                 -0.0761105   -0.3953517    0.2431307
0-3 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH                     0                    1                 -0.2010525   -0.3751723   -0.0269327
0-3 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL                         0                    1                 -0.1317967   -0.3652546    0.1016612
0-3 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA                          0                    1                 -0.0726460   -0.3076917    0.1623997
0-3 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL                          0                    1                  0.2334650    0.0492393    0.4176907
0-3 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU                           0                    1                 -0.0505766   -0.2043474    0.1031941
0-3 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.1291297   -0.0673712    0.3256307
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2734896   -0.4582096   -0.0887696
3-6 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL                          0                    1                 -0.0378242   -0.1463570    0.0707085
3-6 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH                     0                    1                 -0.0284510   -0.0730194    0.0161175
3-6 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH                     0                    1                  0.0822550   -0.0474700    0.2119799
3-6 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL                         0                    1                  0.2910662    0.1161441    0.4659884
3-6 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA                          0                    1                 -0.0668833   -0.2244924    0.0907258
3-6 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL                          0                    1                  0.1622126    0.0494449    0.2749803
3-6 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU                           0                    1                  0.0913700   -0.0535648    0.2363047
3-6 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.0305293   -0.1665535    0.2276121
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1281128   -0.0298236    0.2860493
6-9 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL                          0                    1                 -0.0195098   -0.1219318    0.0829123
6-9 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH                     0                    1                 -0.0135230   -0.1236150    0.0965689
6-9 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL                         0                    1                 -0.0237668   -0.2005477    0.1530142
6-9 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA                          0                    1                  0.0319597   -0.0893070    0.1532265
6-9 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL                          0                    1                  0.0178895   -0.0710525    0.1068315
6-9 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU                           0                    1                  0.0016038   -0.1171286    0.1203362
6-9 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.0230472   -0.1400661    0.1861606
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1610743   -0.3530471    0.0308985
9-12 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL                          0                    1                  0.0952589    0.0121686    0.1783492
9-12 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH                     0                    1                  0.2432570   -0.3731176    0.8596317
9-12 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH                     0                    1                  0.0007389   -0.0899212    0.0913990
9-12 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL                         0                    1                  0.0398449   -0.1263983    0.2060881
9-12 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA                          0                    1                  0.1512462    0.0732449    0.2292475
9-12 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL                          0                    1                  0.0090630   -0.0755229    0.0936489
9-12 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU                           0                    1                 -0.0930381   -0.1997603    0.0136842
9-12 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      SOUTH AFRICA                   0                    1                  0.0170863   -0.1462263    0.1803989
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1507703   -0.0552734    0.3568139
12-15 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL                          0                    1                 -0.0187490   -0.1056106    0.0681125
12-15 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH                     0                    1                  0.1226528   -0.0847738    0.3300793
12-15 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH                     0                    1                  0.1031971   -0.0145849    0.2209792
12-15 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL                         0                    1                  0.0125453   -0.1084460    0.1335366
12-15 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA                          0                    1                  0.0196649   -0.0694984    0.1088282
12-15 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL                          0                    1                 -0.0006179   -0.0820380    0.0808022
12-15 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU                           0                    1                  0.0234484   -0.0790774    0.1259743
12-15 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0488146   -0.0916778    0.1893070
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0784759   -0.0672702    0.2242220
15-18 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL                          0                    1                 -0.1027054   -0.1765041   -0.0289066
15-18 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH                     0                    1                  0.3414778    0.1692013    0.5137544
15-18 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH                     0                    1                 -0.0489329   -0.1423033    0.0444374
15-18 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL                         0                    1                  0.0782654   -0.0494891    0.2060198
15-18 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA                          0                    1                  0.0690199   -0.0186129    0.1566527
15-18 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL                          0                    1                  0.0389979   -0.0488675    0.1268632
15-18 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU                           0                    1                  0.0418737   -0.0591679    0.1429154
15-18 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0543564   -0.0727734    0.1814861
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0225914   -0.1686539    0.1234710
18-21 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL                          0                    1                  0.0325704   -0.0534644    0.1186052
18-21 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH                     0                    1                  0.0666574   -0.0119379    0.1452527
18-21 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL                         0                    1                  0.0655667   -0.0827456    0.2138790
18-21 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA                          0                    1                  0.0719829   -0.0118906    0.1558564
18-21 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL                          0                    1                  0.0583948   -0.0207411    0.1375306
18-21 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU                           0                    1                 -0.0886452   -0.1799619    0.0026715
18-21 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.1679145   -0.3203809   -0.0154480
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0610772   -0.2227714    0.1006170
21-24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL                          0                    1                 -0.1202838   -0.2382425   -0.0023250
21-24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH                     0                    1                 -0.0506669   -0.1319238    0.0305900
21-24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL                         0                    1                  0.0415714   -0.0529551    0.1360979
21-24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA                          0                    1                  0.0146206   -0.0607677    0.0900089
21-24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL                          0                    1                 -0.0025260   -0.0843368    0.0792848
21-24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU                           0                    1                  0.0160171   -0.0885077    0.1205418
21-24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.1058286   -0.0074705    0.2191277
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0710537   -0.2123692    0.0702619


### Parameter: PAR


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0022207   -0.0281524    0.0237109
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0035457    0.0001604    0.0069310
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0168404   -0.0441465    0.0104656
0-3 months     MAL-ED      BANGLADESH                     1                    NA                -0.0411654   -0.0745903   -0.0077406
0-3 months     MAL-ED      BRAZIL                         1                    NA                -0.0591215   -0.1767404    0.0584975
0-3 months     MAL-ED      INDIA                          1                    NA                -0.0290921   -0.1037094    0.0455252
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.1266898    0.0362364    0.2171433
0-3 months     MAL-ED      PERU                           1                    NA                -0.0198620   -0.0753260    0.0356020
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0923533   -0.0507040    0.2354107
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2004553   -0.3346980   -0.0662127
3-6 months     GMS-Nepal   NEPAL                          1                    NA                -0.0094781   -0.0275807    0.0086245
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0025071   -0.0063795    0.0013654
3-6 months     MAL-ED      BANGLADESH                     1                    NA                 0.0143985   -0.0084461    0.0372432
3-6 months     MAL-ED      BRAZIL                         1                    NA                 0.1527134    0.0608719    0.2445548
3-6 months     MAL-ED      INDIA                          1                    NA                -0.0194330   -0.0642544    0.0253883
3-6 months     MAL-ED      NEPAL                          1                    NA                 0.0770246    0.0189997    0.1350496
3-6 months     MAL-ED      PERU                           1                    NA                 0.0198958   -0.0301219    0.0699134
3-6 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0191362   -0.1290976    0.1673700
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0927487   -0.0182190    0.2037164
6-9 months     GMS-Nepal   NEPAL                          1                    NA                -0.0018518   -0.0191013    0.0153977
6-9 months     MAL-ED      BANGLADESH                     1                    NA                -0.0021003   -0.0217285    0.0175279
6-9 months     MAL-ED      BRAZIL                         1                    NA                -0.0112392   -0.0975245    0.0750461
6-9 months     MAL-ED      INDIA                          1                    NA                 0.0097748   -0.0262424    0.0457921
6-9 months     MAL-ED      NEPAL                          1                    NA                 0.0079253   -0.0369581    0.0528087
6-9 months     MAL-ED      PERU                           1                    NA                 0.0085361   -0.0318731    0.0489453
6-9 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0208342   -0.1002112    0.1418795
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1188547   -0.2538827    0.0161733
9-12 months    GMS-Nepal   NEPAL                          1                    NA                 0.0169448    0.0026235    0.0312661
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                 0.0074518   -0.0264502    0.0413538
9-12 months    MAL-ED      BANGLADESH                     1                    NA                 0.0032018   -0.0135657    0.0199692
9-12 months    MAL-ED      BRAZIL                         1                    NA                 0.0127312   -0.0689880    0.0944503
9-12 months    MAL-ED      INDIA                          1                    NA                 0.0467555    0.0206462    0.0728648
9-12 months    MAL-ED      NEPAL                          1                    NA                -0.0033680   -0.0469450    0.0402090
9-12 months    MAL-ED      PERU                           1                    NA                -0.0284069   -0.0642864    0.0074726
9-12 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.0071931   -0.1120661    0.1264523
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1063181   -0.0404303    0.2530666
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0046403   -0.0180586    0.0087781
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0130390   -0.0104864    0.0365644
12-15 months   MAL-ED      BANGLADESH                     1                    NA                 0.0241261    0.0007491    0.0475031
12-15 months   MAL-ED      BRAZIL                         1                    NA                 0.0073796   -0.0506955    0.0654547
12-15 months   MAL-ED      INDIA                          1                    NA                 0.0056154   -0.0217582    0.0329891
12-15 months   MAL-ED      NEPAL                          1                    NA                -0.0013027   -0.0424047    0.0397994
12-15 months   MAL-ED      PERU                           1                    NA                 0.0052415   -0.0289216    0.0394045
12-15 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0352471   -0.0677092    0.1382034
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0607842   -0.0431755    0.1647439
15-18 months   GMS-Nepal   NEPAL                          1                    NA                -0.0141414   -0.0261263   -0.0021564
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0138003   -0.0111837    0.0387843
15-18 months   MAL-ED      BANGLADESH                     1                    NA                -0.0137811   -0.0310893    0.0035271
15-18 months   MAL-ED      BRAZIL                         1                    NA                 0.0270109   -0.0333716    0.0873933
15-18 months   MAL-ED      INDIA                          1                    NA                 0.0218512   -0.0056877    0.0493900
15-18 months   MAL-ED      NEPAL                          1                    NA                 0.0187441   -0.0258875    0.0633757
15-18 months   MAL-ED      PERU                           1                    NA                 0.0160709   -0.0156642    0.0478060
15-18 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0401998   -0.0525780    0.1329775
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0139468   -0.1176560    0.0897624
18-21 months   GMS-Nepal   NEPAL                          1                    NA                 0.0051723   -0.0078522    0.0181967
18-21 months   MAL-ED      BANGLADESH                     1                    NA                 0.0091266   -0.0054562    0.0237093
18-21 months   MAL-ED      BRAZIL                         1                    NA                 0.0288629   -0.0397865    0.0975122
18-21 months   MAL-ED      INDIA                          1                    NA                 0.0229104   -0.0038439    0.0496646
18-21 months   MAL-ED      NEPAL                          1                    NA                 0.0234146   -0.0168539    0.0636831
18-21 months   MAL-ED      PERU                           1                    NA                -0.0284547   -0.0593160    0.0024066
18-21 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.1292020   -0.2446805   -0.0137235
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0507374   -0.1653227    0.0638480
21-24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0160689   -0.0345925    0.0024547
21-24 months   MAL-ED      BANGLADESH                     1                    NA                -0.0076960   -0.0223358    0.0069439
21-24 months   MAL-ED      BRAZIL                         1                    NA                 0.0151090   -0.0309832    0.0612013
21-24 months   MAL-ED      INDIA                          1                    NA                 0.0060325   -0.0163611    0.0284262
21-24 months   MAL-ED      NEPAL                          1                    NA                -0.0095549   -0.0507613    0.0316516
21-24 months   MAL-ED      PERU                           1                    NA                 0.0060534   -0.0281579    0.0402646
21-24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0798770   -0.0064115    0.1661655
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0422191   -0.1409575    0.0565194
