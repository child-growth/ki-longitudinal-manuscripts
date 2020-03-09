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
0-3 months     EE          PAKISTAN                       1                32      32
0-3 months     EE          PAKISTAN                       0                 0      32
0-3 months     GMS-Nepal   NEPAL                          1               378     455
0-3 months     GMS-Nepal   NEPAL                          0                77     455
0-3 months     JiVitA-3    BANGLADESH                     1             10915   12097
0-3 months     JiVitA-3    BANGLADESH                     0              1182   12097
0-3 months     JiVitA-4    BANGLADESH                     1               108     119
0-3 months     JiVitA-4    BANGLADESH                     0                11     119
0-3 months     MAL-ED      BANGLADESH                     1               195     239
0-3 months     MAL-ED      BANGLADESH                     0                44     239
0-3 months     MAL-ED      BRAZIL                         1                96     195
0-3 months     MAL-ED      BRAZIL                         0                99     195
0-3 months     MAL-ED      INDIA                          1               151     213
0-3 months     MAL-ED      INDIA                          0                62     213
0-3 months     MAL-ED      NEPAL                          1               111     224
0-3 months     MAL-ED      NEPAL                          0               113     224
0-3 months     MAL-ED      PERU                           1               181     279
0-3 months     MAL-ED      PERU                           0                98     279
0-3 months     MAL-ED      SOUTH AFRICA                   1                70     261
0-3 months     MAL-ED      SOUTH AFRICA                   0               191     261
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                59     205
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               146     205
3-6 months     EE          PAKISTAN                       1                30      30
3-6 months     EE          PAKISTAN                       0                 0      30
3-6 months     GMS-Nepal   NEPAL                          1               351     420
3-6 months     GMS-Nepal   NEPAL                          0                69     420
3-6 months     JiVitA-3    BANGLADESH                     1              6540    7170
3-6 months     JiVitA-3    BANGLADESH                     0               630    7170
3-6 months     JiVitA-4    BANGLADESH                     1                20      21
3-6 months     JiVitA-4    BANGLADESH                     0                 1      21
3-6 months     MAL-ED      BANGLADESH                     1               184     226
3-6 months     MAL-ED      BANGLADESH                     0                42     226
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
6-9 months     GMS-Nepal   NEPAL                          1               312     374
6-9 months     GMS-Nepal   NEPAL                          0                62     374
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
9-12 months    GMS-Nepal   NEPAL                          1               294     350
9-12 months    GMS-Nepal   NEPAL                          0                56     350
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
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                57     192
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               135     192
12-15 months   EE          PAKISTAN                       1                29      29
12-15 months   EE          PAKISTAN                       0                 0      29
12-15 months   GMS-Nepal   NEPAL                          1               303     358
12-15 months   GMS-Nepal   NEPAL                          0                55     358
12-15 months   JiVitA-4    BANGLADESH                     1                98     108
12-15 months   JiVitA-4    BANGLADESH                     0                10     108
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
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                58     195
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               137     195
15-18 months   EE          PAKISTAN                       1                25      25
15-18 months   EE          PAKISTAN                       0                 0      25
15-18 months   GMS-Nepal   NEPAL                          1               316     377
15-18 months   GMS-Nepal   NEPAL                          0                61     377
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
15-18 months   MAL-ED      PERU                           1               142     211
15-18 months   MAL-ED      PERU                           0                69     211
15-18 months   MAL-ED      SOUTH AFRICA                   1                60     218
15-18 months   MAL-ED      SOUTH AFRICA                   0               158     218
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                56     190
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               134     190
18-21 months   EE          PAKISTAN                       1                27      27
18-21 months   EE          PAKISTAN                       0                 0      27
18-21 months   GMS-Nepal   NEPAL                          1               295     348
18-21 months   GMS-Nepal   NEPAL                          0                53     348
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
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                53     179
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               126     179
21-24 months   EE          PAKISTAN                       1                16      16
21-24 months   EE          PAKISTAN                       0                 0      16
21-24 months   GMS-Nepal   NEPAL                          1               238     280
21-24 months   GMS-Nepal   NEPAL                          0                42     280
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
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                53     177
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               124     177


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
![](/tmp/4f011dcc-a5a8-4618-a615-9cacc9057b0f/74c9a363-ad0c-4e7c-a6f7-7af93e0be923/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4f011dcc-a5a8-4618-a615-9cacc9057b0f/74c9a363-ad0c-4e7c-a6f7-7af93e0be923/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4f011dcc-a5a8-4618-a615-9cacc9057b0f/74c9a363-ad0c-4e7c-a6f7-7af93e0be923/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                0.8315571   0.8122135   0.8509007
0-3 months     GMS-Nepal   NEPAL                          0                    NA                0.7980686   0.7502405   0.8458968
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                0.8699540   0.8660935   0.8738144
0-3 months     JiVitA-3    BANGLADESH                     0                    NA                0.8716040   0.8610863   0.8821217
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                0.9067454   0.8738284   0.9396624
0-3 months     JiVitA-4    BANGLADESH                     0                    NA                0.7438605   0.6238342   0.8638867
0-3 months     MAL-ED      BANGLADESH                     1                    NA                0.8845502   0.8586949   0.9104055
0-3 months     MAL-ED      BANGLADESH                     0                    NA                0.8532149   0.7946811   0.9117487
0-3 months     MAL-ED      BRAZIL                         1                    NA                1.0687218   1.0126497   1.1247939
0-3 months     MAL-ED      BRAZIL                         0                    NA                1.0607563   1.0123599   1.1091528
0-3 months     MAL-ED      INDIA                          1                    NA                0.7694407   0.7419751   0.7969063
0-3 months     MAL-ED      INDIA                          0                    NA                0.7281695   0.6842266   0.7721124
0-3 months     MAL-ED      NEPAL                          1                    NA                0.9541651   0.9147830   0.9935471
0-3 months     MAL-ED      NEPAL                          0                    NA                0.9634534   0.9247427   1.0021641
0-3 months     MAL-ED      PERU                           1                    NA                0.9808112   0.9521912   1.0094312
0-3 months     MAL-ED      PERU                           0                    NA                0.9536126   0.9047646   1.0024607
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                0.9459743   0.8890157   1.0029329
0-3 months     MAL-ED      SOUTH AFRICA                   0                    NA                0.9403042   0.9086479   0.9719606
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9442148   0.8818649   1.0065646
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8582314   0.8205115   0.8959513
3-6 months     GMS-Nepal   NEPAL                          1                    NA                0.4871006   0.4718328   0.5023684
3-6 months     GMS-Nepal   NEPAL                          0                    NA                0.5316541   0.4871599   0.5761484
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                0.4393199   0.4352552   0.4433847
3-6 months     JiVitA-3    BANGLADESH                     0                    NA                0.4380582   0.4262104   0.4499060
3-6 months     MAL-ED      BANGLADESH                     1                    NA                0.4762845   0.4576152   0.4949538
3-6 months     MAL-ED      BANGLADESH                     0                    NA                0.4696775   0.4263381   0.5130170
3-6 months     MAL-ED      BRAZIL                         1                    NA                0.5607631   0.5131479   0.6083783
3-6 months     MAL-ED      BRAZIL                         0                    NA                0.5992773   0.5492476   0.6493071
3-6 months     MAL-ED      INDIA                          1                    NA                0.4303037   0.4089224   0.4516851
3-6 months     MAL-ED      INDIA                          0                    NA                0.4744101   0.4372594   0.5115608
3-6 months     MAL-ED      NEPAL                          1                    NA                0.4992103   0.4682875   0.5301330
3-6 months     MAL-ED      NEPAL                          0                    NA                0.5429398   0.5160931   0.5697865
3-6 months     MAL-ED      PERU                           1                    NA                0.4854008   0.4620609   0.5087407
3-6 months     MAL-ED      PERU                           0                    NA                0.5247510   0.4887905   0.5607115
3-6 months     MAL-ED      SOUTH AFRICA                   1                    NA                0.4541969   0.4063399   0.5020539
3-6 months     MAL-ED      SOUTH AFRICA                   0                    NA                0.4696475   0.4383414   0.5009535
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4636751   0.4228051   0.5045450
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4391621   0.4065133   0.4718109
6-9 months     GMS-Nepal   NEPAL                          1                    NA                0.1818194   0.1661148   0.1975240
6-9 months     GMS-Nepal   NEPAL                          0                    NA                0.1953285   0.1641251   0.2265320
6-9 months     MAL-ED      BANGLADESH                     1                    NA                0.2420772   0.2254331   0.2587213
6-9 months     MAL-ED      BANGLADESH                     0                    NA                0.2525355   0.2173406   0.2877305
6-9 months     MAL-ED      BRAZIL                         1                    NA                0.3649722   0.3272309   0.4027135
6-9 months     MAL-ED      BRAZIL                         0                    NA                0.4163076   0.3764169   0.4561982
6-9 months     MAL-ED      INDIA                          1                    NA                0.2129527   0.1964120   0.2294934
6-9 months     MAL-ED      INDIA                          0                    NA                0.2578179   0.2238338   0.2918020
6-9 months     MAL-ED      NEPAL                          1                    NA                0.2581328   0.2368589   0.2794067
6-9 months     MAL-ED      NEPAL                          0                    NA                0.2851814   0.2638897   0.3064731
6-9 months     MAL-ED      PERU                           1                    NA                0.2515217   0.2314407   0.2716026
6-9 months     MAL-ED      PERU                           0                    NA                0.2865758   0.2571283   0.3160234
6-9 months     MAL-ED      SOUTH AFRICA                   1                    NA                0.2960330   0.2528581   0.3392079
6-9 months     MAL-ED      SOUTH AFRICA                   0                    NA                0.2412785   0.2159648   0.2665923
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2232450   0.1833476   0.2631424
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2548647   0.2200501   0.2896793
9-12 months    GMS-Nepal   NEPAL                          1                    NA                0.1442098   0.1279300   0.1604895
9-12 months    GMS-Nepal   NEPAL                          0                    NA                0.1754393   0.1475536   0.2033249
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                0.1897480   0.1723162   0.2071798
9-12 months    JiVitA-4    BANGLADESH                     0                    NA                0.2106788   0.0993839   0.3219737
9-12 months    MAL-ED      BANGLADESH                     1                    NA                0.1665662   0.1510751   0.1820573
9-12 months    MAL-ED      BANGLADESH                     0                    NA                0.2110938   0.1805498   0.2416378
9-12 months    MAL-ED      BRAZIL                         1                    NA                0.2566157   0.2129838   0.3002476
9-12 months    MAL-ED      BRAZIL                         0                    NA                0.3186209   0.2647874   0.3724543
9-12 months    MAL-ED      INDIA                          1                    NA                0.1724335   0.1550742   0.1897929
9-12 months    MAL-ED      INDIA                          0                    NA                0.1832112   0.1509493   0.2154731
9-12 months    MAL-ED      NEPAL                          1                    NA                0.1667501   0.1425668   0.1909334
9-12 months    MAL-ED      NEPAL                          0                    NA                0.2015664   0.1831289   0.2200039
9-12 months    MAL-ED      PERU                           1                    NA                0.1919214   0.1720585   0.2117842
9-12 months    MAL-ED      PERU                           0                    NA                0.1739400   0.1513390   0.1965409
9-12 months    MAL-ED      SOUTH AFRICA                   1                    NA                0.2042595   0.1656681   0.2428509
9-12 months    MAL-ED      SOUTH AFRICA                   0                    NA                0.2227754   0.1950608   0.2504901
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1401120   0.1030231   0.1772008
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1656526   0.1383503   0.1929549
12-15 months   GMS-Nepal   NEPAL                          1                    NA                0.1731936   0.1577193   0.1886679
12-15 months   GMS-Nepal   NEPAL                          0                    NA                0.1622673   0.1268208   0.1977138
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                0.1093257   0.0864275   0.1322238
12-15 months   JiVitA-4    BANGLADESH                     0                    NA                0.1060892   0.0186244   0.1935541
12-15 months   MAL-ED      BANGLADESH                     1                    NA                0.1284960   0.1103855   0.1466066
12-15 months   MAL-ED      BANGLADESH                     0                    NA                0.1610088   0.1272095   0.1948081
12-15 months   MAL-ED      BRAZIL                         1                    NA                0.1933114   0.1547183   0.2319044
12-15 months   MAL-ED      BRAZIL                         0                    NA                0.2321948   0.1942611   0.2701286
12-15 months   MAL-ED      INDIA                          1                    NA                0.1738420   0.1524779   0.1952060
12-15 months   MAL-ED      INDIA                          0                    NA                0.1770299   0.1444750   0.2095848
12-15 months   MAL-ED      NEPAL                          1                    NA                0.1497821   0.1208951   0.1786692
12-15 months   MAL-ED      NEPAL                          0                    NA                0.1577250   0.1390271   0.1764230
12-15 months   MAL-ED      PERU                           1                    NA                0.1311936   0.1113898   0.1509973
12-15 months   MAL-ED      PERU                           0                    NA                0.1615923   0.1314519   0.1917327
12-15 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.1612770   0.0942907   0.2282634
12-15 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.1993444   0.1734659   0.2252229
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1355535   0.0889947   0.1821123
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1770287   0.1451818   0.2088756
15-18 months   GMS-Nepal   NEPAL                          1                    NA                0.2210026   0.2031652   0.2388400
15-18 months   GMS-Nepal   NEPAL                          0                    NA                0.2788433   0.2270768   0.3306098
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                0.1514600   0.1257071   0.1772130
15-18 months   JiVitA-4    BANGLADESH                     0                    NA                0.1711096   0.1345732   0.2076460
15-18 months   MAL-ED      BANGLADESH                     1                    NA                0.1516593   0.1336449   0.1696737
15-18 months   MAL-ED      BANGLADESH                     0                    NA                0.1017795   0.0701460   0.1334130
15-18 months   MAL-ED      BRAZIL                         1                    NA                0.1880039   0.1452712   0.2307366
15-18 months   MAL-ED      BRAZIL                         0                    NA                0.2247833   0.1794614   0.2701053
15-18 months   MAL-ED      INDIA                          1                    NA                0.1683471   0.1490580   0.1876361
15-18 months   MAL-ED      INDIA                          0                    NA                0.1688423   0.1442837   0.1934010
15-18 months   MAL-ED      NEPAL                          1                    NA                0.1825080   0.1593013   0.2057147
15-18 months   MAL-ED      NEPAL                          0                    NA                0.1584544   0.1355882   0.1813206
15-18 months   MAL-ED      PERU                           1                    NA                0.1410622   0.1183963   0.1637282
15-18 months   MAL-ED      PERU                           0                    NA                0.1502631   0.1116652   0.1888610
15-18 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.2331111   0.1663217   0.2999005
15-18 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.2180498   0.1850126   0.2510870
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1249289   0.0807952   0.1690626
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1372736   0.1071718   0.1673754
18-21 months   GMS-Nepal   NEPAL                          1                    NA                0.1532496   0.1343441   0.1721552
18-21 months   GMS-Nepal   NEPAL                          0                    NA                0.1065562   0.0667171   0.1463953
18-21 months   MAL-ED      BANGLADESH                     1                    NA                0.1404290   0.1207566   0.1601015
18-21 months   MAL-ED      BANGLADESH                     0                    NA                0.1606322   0.1308697   0.1903946
18-21 months   MAL-ED      BRAZIL                         1                    NA                0.1427172   0.1108469   0.1745875
18-21 months   MAL-ED      BRAZIL                         0                    NA                0.1864266   0.1424438   0.2304095
18-21 months   MAL-ED      INDIA                          1                    NA                0.1754671   0.1575466   0.1933876
18-21 months   MAL-ED      INDIA                          0                    NA                0.1623420   0.1319763   0.1927077
18-21 months   MAL-ED      NEPAL                          1                    NA                0.1471665   0.1178550   0.1764780
18-21 months   MAL-ED      NEPAL                          0                    NA                0.1576259   0.1371174   0.1781345
18-21 months   MAL-ED      PERU                           1                    NA                0.1683357   0.1444952   0.1921762
18-21 months   MAL-ED      PERU                           0                    NA                0.1404969   0.1076987   0.1732950
18-21 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.1576005   0.1049339   0.2102671
18-21 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.1867138   0.1539368   0.2194909
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1681486   0.1124471   0.2238500
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1520126   0.1207981   0.1832271
21-24 months   GMS-Nepal   NEPAL                          1                    NA                0.1627388   0.1357132   0.1897644
21-24 months   GMS-Nepal   NEPAL                          0                    NA                0.1764831   0.1134796   0.2394866
21-24 months   MAL-ED      BANGLADESH                     1                    NA                0.1437261   0.1267584   0.1606939
21-24 months   MAL-ED      BANGLADESH                     0                    NA                0.1685407   0.1397162   0.1973653
21-24 months   MAL-ED      BRAZIL                         1                    NA                0.1362555   0.1020989   0.1704122
21-24 months   MAL-ED      BRAZIL                         0                    NA                0.1364647   0.1028602   0.1700693
21-24 months   MAL-ED      INDIA                          1                    NA                0.1521820   0.1352900   0.1690739
21-24 months   MAL-ED      INDIA                          0                    NA                0.1743720   0.1505859   0.1981582
21-24 months   MAL-ED      NEPAL                          1                    NA                0.1731052   0.1475699   0.1986405
21-24 months   MAL-ED      NEPAL                          0                    NA                0.1583540   0.1272901   0.1894178
21-24 months   MAL-ED      PERU                           1                    NA                0.1740985   0.1498954   0.1983017
21-24 months   MAL-ED      PERU                           0                    NA                0.1977792   0.1622388   0.2333196
21-24 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.1976755   0.1526307   0.2427202
21-24 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.1861187   0.1569534   0.2152841
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1233567   0.0736439   0.1730694
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1476920   0.1105315   0.1848524


### Parameter: E(Y)


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          NA                   NA                0.8249513   0.8069417   0.8429610
0-3 months     JiVitA-3    BANGLADESH                     NA                   NA                0.8700727   0.8663508   0.8737946
0-3 months     JiVitA-4    BANGLADESH                     NA                   NA                0.9009158   0.8704585   0.9313731
0-3 months     MAL-ED      BANGLADESH                     NA                   NA                0.8782283   0.8546037   0.9018529
0-3 months     MAL-ED      BRAZIL                         NA                   NA                1.0646542   1.0280029   1.1013055
0-3 months     MAL-ED      INDIA                          NA                   NA                0.7574589   0.7340940   0.7808237
0-3 months     MAL-ED      NEPAL                          NA                   NA                0.9584228   0.9310012   0.9858444
0-3 months     MAL-ED      PERU                           NA                   NA                0.9695845   0.9443399   0.9948290
0-3 months     MAL-ED      SOUTH AFRICA                   NA                   NA                0.9436816   0.9164103   0.9709528
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8823647   0.8498032   0.9149263
3-6 months     GMS-Nepal   NEPAL                          NA                   NA                0.4947387   0.4800952   0.5093821
3-6 months     JiVitA-3    BANGLADESH                     NA                   NA                0.4392001   0.4352946   0.4431056
3-6 months     MAL-ED      BANGLADESH                     NA                   NA                0.4759067   0.4588572   0.4929562
3-6 months     MAL-ED      BRAZIL                         NA                   NA                0.5807629   0.5466123   0.6149135
3-6 months     MAL-ED      INDIA                          NA                   NA                0.4428354   0.4243688   0.4613020
3-6 months     MAL-ED      NEPAL                          NA                   NA                0.5212569   0.5007636   0.5417503
3-6 months     MAL-ED      PERU                           NA                   NA                0.4987110   0.4795495   0.5178726
3-6 months     MAL-ED      SOUTH AFRICA                   NA                   NA                0.4651960   0.4389728   0.4914192
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4449049   0.4193050   0.4705047
6-9 months     GMS-Nepal   NEPAL                          NA                   NA                0.1833726   0.1693467   0.1973984
6-9 months     MAL-ED      BANGLADESH                     NA                   NA                0.2435771   0.2286416   0.2585125
6-9 months     MAL-ED      BRAZIL                         NA                   NA                0.3852363   0.3576221   0.4128505
6-9 months     MAL-ED      INDIA                          NA                   NA                0.2257708   0.2103479   0.2411937
6-9 months     MAL-ED      NEPAL                          NA                   NA                0.2707612   0.2558425   0.2856799
6-9 months     MAL-ED      PERU                           NA                   NA                0.2615943   0.2459743   0.2772143
6-9 months     MAL-ED      SOUTH AFRICA                   NA                   NA                0.2582981   0.2366643   0.2799319
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2452641   0.2182544   0.2722738
9-12 months    GMS-Nepal   NEPAL                          NA                   NA                0.1493494   0.1349712   0.1637275
9-12 months    JiVitA-4    BANGLADESH                     NA                   NA                0.1927867   0.1760286   0.2095447
9-12 months    MAL-ED      BANGLADESH                     NA                   NA                0.1742501   0.1603345   0.1881656
9-12 months    MAL-ED      BRAZIL                         NA                   NA                0.2870152   0.2525341   0.3214963
9-12 months    MAL-ED      INDIA                          NA                   NA                0.1750483   0.1600136   0.1900829
9-12 months    MAL-ED      NEPAL                          NA                   NA                0.1845885   0.1697713   0.1994057
9-12 months    MAL-ED      PERU                           NA                   NA                0.1859375   0.1706537   0.2012212
9-12 months    MAL-ED      SOUTH AFRICA                   NA                   NA                0.2134162   0.1908275   0.2360049
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1579518   0.1360310   0.1798726
12-15 months   GMS-Nepal   NEPAL                          NA                   NA                0.1715034   0.1574465   0.1855603
12-15 months   JiVitA-4    BANGLADESH                     NA                   NA                0.1088810   0.0873587   0.1304034
12-15 months   MAL-ED      BANGLADESH                     NA                   NA                0.1349541   0.1188584   0.1510499
12-15 months   MAL-ED      BRAZIL                         NA                   NA                0.2098691   0.1830086   0.2367295
12-15 months   MAL-ED      INDIA                          NA                   NA                0.1746076   0.1576725   0.1915427
12-15 months   MAL-ED      NEPAL                          NA                   NA                0.1530291   0.1359519   0.1701063
12-15 months   MAL-ED      PERU                           NA                   NA                0.1429995   0.1263204   0.1596787
12-15 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.1888436   0.1630039   0.2146833
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1670430   0.1409337   0.1931523
15-18 months   GMS-Nepal   NEPAL                          NA                   NA                0.2313498   0.2143055   0.2483941
15-18 months   JiVitA-4    BANGLADESH                     NA                   NA                0.1538108   0.1308637   0.1767579
15-18 months   MAL-ED      BANGLADESH                     NA                   NA                0.1419687   0.1260987   0.1578386
15-18 months   MAL-ED      BRAZIL                         NA                   NA                0.2081023   0.1789625   0.2372420
15-18 months   MAL-ED      INDIA                          NA                   NA                0.1670737   0.1513151   0.1828322
15-18 months   MAL-ED      NEPAL                          NA                   NA                0.1721904   0.1559804   0.1884004
15-18 months   MAL-ED      PERU                           NA                   NA                0.1444767   0.1256292   0.1633242
15-18 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.2221335   0.1931701   0.2510970
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1366378   0.1119409   0.1613347
18-21 months   GMS-Nepal   NEPAL                          NA                   NA                0.1478606   0.1308537   0.1648675
18-21 months   MAL-ED      BANGLADESH                     NA                   NA                0.1441563   0.1270864   0.1612262
18-21 months   MAL-ED      BRAZIL                         NA                   NA                0.1618510   0.1358468   0.1878551
18-21 months   MAL-ED      INDIA                          NA                   NA                0.1719770   0.1564970   0.1874571
18-21 months   MAL-ED      NEPAL                          NA                   NA                0.1511761   0.1334727   0.1688794
18-21 months   MAL-ED      PERU                           NA                   NA                0.1620790   0.1430444   0.1811137
18-21 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.1798838   0.1527878   0.2069798
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1578080   0.1309046   0.1847113
21-24 months   GMS-Nepal   NEPAL                          NA                   NA                0.1608641   0.1363372   0.1853911
21-24 months   MAL-ED      BANGLADESH                     NA                   NA                0.1485991   0.1337648   0.1634334
21-24 months   MAL-ED      BRAZIL                         NA                   NA                0.1369019   0.1132291   0.1605747
21-24 months   MAL-ED      INDIA                          NA                   NA                0.1590319   0.1452622   0.1728016
21-24 months   MAL-ED      NEPAL                          NA                   NA                0.1662354   0.1463078   0.1861631
21-24 months   MAL-ED      PERU                           NA                   NA                0.1814454   0.1615858   0.2013051
21-24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.1880230   0.1639514   0.2120945
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1380758   0.1082723   0.1678793


### Parameter: ATE


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL                          0                    1                 -0.0334885   -0.0851034    0.0181265
0-3 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH                     0                    1                  0.0016501   -0.0091859    0.0124861
0-3 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH                     0                    1                 -0.1628849   -0.2886997   -0.0370701
0-3 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH                     0                    1                 -0.0313353   -0.0953717    0.0327011
0-3 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL                         0                    1                 -0.0079655   -0.0828266    0.0668956
0-3 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA                          0                    1                 -0.0412712   -0.0931293    0.0105869
0-3 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL                          0                    1                  0.0092884   -0.0460383    0.0646150
0-3 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU                           0                    1                 -0.0271986   -0.0838001    0.0294029
0-3 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      SOUTH AFRICA                   0                    1                 -0.0056701   -0.0705555    0.0592153
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0859834   -0.1590354   -0.0129313
3-6 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL                          0                    1                  0.0445535   -0.0023977    0.0915048
3-6 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH                     0                    1                 -0.0012618   -0.0135784    0.0110549
3-6 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH                     0                    1                 -0.0066069   -0.0539199    0.0407060
3-6 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL                         0                    1                  0.0385143   -0.0314083    0.1084368
3-6 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA                          0                    1                  0.0441064    0.0011511    0.0870616
3-6 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL                          0                    1                  0.0437295    0.0025494    0.0849096
3-6 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU                           0                    1                  0.0393502   -0.0038968    0.0825971
3-6 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.0154506   -0.0418188    0.0727200
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0245130   -0.0776574    0.0286315
6-9 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL                          0                    1                  0.0135091   -0.0215143    0.0485325
6-9 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH                     0                    1                  0.0104584   -0.0285987    0.0495154
6-9 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL                         0                    1                  0.0513354   -0.0036699    0.1063407
6-9 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA                          0                    1                  0.0448652    0.0068969    0.0828334
6-9 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL                          0                    1                  0.0270486   -0.0033578    0.0574550
6-9 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU                           0                    1                  0.0350542   -0.0022342    0.0723426
6-9 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      SOUTH AFRICA                   0                    1                 -0.0547545   -0.1047923   -0.0047166
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0316197   -0.0212952    0.0845346
9-12 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL                          0                    1                  0.0312295   -0.0011233    0.0635824
9-12 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH                     0                    1                  0.0209308   -0.0920988    0.1339604
9-12 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH                     0                    1                  0.0445276    0.0102426    0.0788126
9-12 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL                         0                    1                  0.0620051   -0.0080640    0.1320742
9-12 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA                          0                    1                  0.0107777   -0.0260455    0.0476008
9-12 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL                          0                    1                  0.0348163    0.0037003    0.0659324
9-12 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU                           0                    1                 -0.0179814   -0.0481296    0.0121668
9-12 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      SOUTH AFRICA                   0                    1                  0.0185159   -0.0293700    0.0664019
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0255406   -0.0206852    0.0717664
12-15 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL                          0                    1                 -0.0109263   -0.0496787    0.0278261
12-15 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH                     0                    1                 -0.0032364   -0.0937016    0.0872288
12-15 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH                     0                    1                  0.0325128   -0.0056685    0.0706940
12-15 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL                         0                    1                  0.0388835   -0.0156410    0.0934080
12-15 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA                          0                    1                  0.0031879   -0.0373309    0.0437068
12-15 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL                          0                    1                  0.0079429   -0.0265671    0.0424529
12-15 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU                           0                    1                  0.0303987   -0.0056913    0.0664887
12-15 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0380674   -0.0338994    0.1100341
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0414752   -0.0149388    0.0978892
15-18 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL                          0                    1                  0.0578407    0.0028976    0.1127838
15-18 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH                     0                    1                  0.0196496   -0.0252698    0.0645690
15-18 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH                     0                    1                 -0.0498798   -0.0862551   -0.0135045
15-18 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL                         0                    1                  0.0367794   -0.0282127    0.1017715
15-18 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA                          0                    1                  0.0004953   -0.0303279    0.0313184
15-18 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL                          0                    1                 -0.0240536   -0.0565316    0.0084244
15-18 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU                           0                    1                  0.0092009   -0.0356852    0.0540870
15-18 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.0150613   -0.0906472    0.0605246
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0123447   -0.0412339    0.0659234
18-21 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL                          0                    1                 -0.0466934   -0.0911937   -0.0021932
18-21 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH                     0                    1                  0.0202031   -0.0159030    0.0563093
18-21 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL                         0                    1                  0.0437094   -0.0115230    0.0989418
18-21 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA                          0                    1                 -0.0131251   -0.0484925    0.0222423
18-21 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL                          0                    1                  0.0104594   -0.0254014    0.0463202
18-21 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU                           0                    1                 -0.0278388   -0.0686514    0.0129738
18-21 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0291133   -0.0331820    0.0914087
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0161360   -0.0808698    0.0485978
21-24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL                          0                    1                  0.0137443   -0.0553406    0.0828291
21-24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH                     0                    1                  0.0248146   -0.0087011    0.0583303
21-24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL                         0                    1                  0.0002092   -0.0476756    0.0480940
21-24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA                          0                    1                  0.0221901   -0.0070062    0.0513864
21-24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL                          0                    1                 -0.0147513   -0.0549092    0.0254067
21-24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU                           0                    1                  0.0236807   -0.0192986    0.0666600
21-24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.0115567   -0.0653719    0.0422585
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0243353   -0.0383633    0.0870339


### Parameter: PAR


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0066058   -0.0154860    0.0022745
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0001187   -0.0009263    0.0011638
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0058296   -0.0150679    0.0034087
0-3 months     MAL-ED      BANGLADESH                     1                    NA                -0.0063219   -0.0179825    0.0053388
0-3 months     MAL-ED      BRAZIL                         1                    NA                -0.0040676   -0.0412613    0.0331261
0-3 months     MAL-ED      INDIA                          1                    NA                -0.0119818   -0.0270213    0.0030576
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.0042577   -0.0240793    0.0325948
0-3 months     MAL-ED      PERU                           1                    NA                -0.0112268   -0.0311836    0.0087300
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                -0.0022928   -0.0521740    0.0475885
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0618500   -0.1142914   -0.0094087
3-6 months     GMS-Nepal   NEPAL                          1                    NA                 0.0076381   -0.0000137    0.0152899
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0001198   -0.0011866    0.0009470
3-6 months     MAL-ED      BANGLADESH                     1                    NA                -0.0003778   -0.0090753    0.0083198
3-6 months     MAL-ED      BRAZIL                         1                    NA                 0.0199998   -0.0152222    0.0552219
3-6 months     MAL-ED      INDIA                          1                    NA                 0.0125316    0.0000871    0.0249762
3-6 months     MAL-ED      NEPAL                          1                    NA                 0.0220467    0.0008983    0.0431951
3-6 months     MAL-ED      PERU                           1                    NA                 0.0133102   -0.0015002    0.0281207
3-6 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0109991   -0.0324915    0.0544898
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0187702   -0.0561360    0.0185956
6-9 months     GMS-Nepal   NEPAL                          1                    NA                 0.0015532   -0.0041452    0.0072515
6-9 months     MAL-ED      BANGLADESH                     1                    NA                 0.0014999   -0.0055417    0.0085415
6-9 months     MAL-ED      BRAZIL                         1                    NA                 0.0202641   -0.0067774    0.0473057
6-9 months     MAL-ED      INDIA                          1                    NA                 0.0128181    0.0011596    0.0244765
6-9 months     MAL-ED      NEPAL                          1                    NA                 0.0126284   -0.0026789    0.0279357
6-9 months     MAL-ED      PERU                           1                    NA                 0.0100726   -0.0026263    0.0227716
6-9 months     MAL-ED      SOUTH AFRICA                   1                    NA                -0.0377349   -0.0751437   -0.0003261
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0220191   -0.0150131    0.0590513
9-12 months    GMS-Nepal   NEPAL                          1                    NA                 0.0051396   -0.0001016    0.0103808
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                 0.0030386   -0.0050600    0.0111373
9-12 months    MAL-ED      BANGLADESH                     1                    NA                 0.0076839    0.0013095    0.0140583
9-12 months    MAL-ED      BRAZIL                         1                    NA                 0.0303995   -0.0042538    0.0650528
9-12 months    MAL-ED      INDIA                          1                    NA                 0.0026147   -0.0082196    0.0134490
9-12 months    MAL-ED      NEPAL                          1                    NA                 0.0178384    0.0017207    0.0339561
9-12 months    MAL-ED      PERU                           1                    NA                -0.0059839   -0.0161039    0.0041362
9-12 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.0091567   -0.0264123    0.0447257
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0178398   -0.0147137    0.0503934
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0016902   -0.0075588    0.0041785
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0004446   -0.0063223    0.0054331
12-15 months   MAL-ED      BANGLADESH                     1                    NA                 0.0064581   -0.0006530    0.0135692
12-15 months   MAL-ED      BRAZIL                         1                    NA                 0.0165577   -0.0100269    0.0431424
12-15 months   MAL-ED      INDIA                          1                    NA                 0.0007656   -0.0116214    0.0131526
12-15 months   MAL-ED      NEPAL                          1                    NA                 0.0032470   -0.0141769    0.0206709
12-15 months   MAL-ED      PERU                           1                    NA                 0.0118060   -0.0003857    0.0239977
12-15 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0275666   -0.0253979    0.0805310
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0314895   -0.0091818    0.0721609
15-18 months   GMS-Nepal   NEPAL                          1                    NA                 0.0103472    0.0012734    0.0194211
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0023508   -0.0020930    0.0067946
15-18 months   MAL-ED      BANGLADESH                     1                    NA                -0.0096906   -0.0168814   -0.0024998
15-18 months   MAL-ED      BRAZIL                         1                    NA                 0.0200984   -0.0111814    0.0513781
15-18 months   MAL-ED      INDIA                          1                    NA                -0.0012734   -0.0117079    0.0091611
15-18 months   MAL-ED      NEPAL                          1                    NA                -0.0103176   -0.0267995    0.0061643
15-18 months   MAL-ED      PERU                           1                    NA                 0.0034145   -0.0102183    0.0170474
15-18 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.0109775   -0.0673407    0.0453856
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0117089   -0.0261805    0.0495984
18-21 months   GMS-Nepal   NEPAL                          1                    NA                -0.0053891   -0.0122696    0.0014915
18-21 months   MAL-ED      BANGLADESH                     1                    NA                 0.0037273   -0.0032533    0.0107079
18-21 months   MAL-ED      BRAZIL                         1                    NA                 0.0191337   -0.0073748    0.0456423
18-21 months   MAL-ED      INDIA                          1                    NA                -0.0034901   -0.0144642    0.0074840
18-21 months   MAL-ED      NEPAL                          1                    NA                 0.0040095   -0.0141188    0.0221379
18-21 months   MAL-ED      PERU                           1                    NA                -0.0062567   -0.0198360    0.0073227
18-21 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0222833   -0.0259957    0.0705623
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0103406   -0.0561322    0.0354510
21-24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0018747   -0.0118082    0.0080588
21-24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0048730   -0.0013871    0.0111330
21-24 months   MAL-ED      BRAZIL                         1                    NA                 0.0006464   -0.0224644    0.0237572
21-24 months   MAL-ED      INDIA                          1                    NA                 0.0068499   -0.0023625    0.0160624
21-24 months   MAL-ED      NEPAL                          1                    NA                -0.0068698   -0.0269475    0.0132080
21-24 months   MAL-ED      PERU                           1                    NA                 0.0073469   -0.0070323    0.0217261
21-24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.0096525   -0.0497929    0.0304879
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0147192   -0.0291090    0.0585473
