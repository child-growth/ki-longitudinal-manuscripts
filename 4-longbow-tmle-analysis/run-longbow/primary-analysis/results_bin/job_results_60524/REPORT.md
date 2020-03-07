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

**Outcome Variable:** pers_wast

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

agecat        studyid         country                        predfeed6    pers_wast   n_cell      n
------------  --------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   EE              PAKISTAN                       1                    0       42     48
0-24 months   EE              PAKISTAN                       1                    1        1     48
0-24 months   EE              PAKISTAN                       0                    0        5     48
0-24 months   EE              PAKISTAN                       0                    1        0     48
0-24 months   GMS-Nepal       NEPAL                          1                    0      366    564
0-24 months   GMS-Nepal       NEPAL                          1                    1       54    564
0-24 months   GMS-Nepal       NEPAL                          0                    0      121    564
0-24 months   GMS-Nepal       NEPAL                          0                    1       23    564
0-24 months   JiVitA-3        BANGLADESH                     1                    0     6861   9436
0-24 months   JiVitA-3        BANGLADESH                     1                    1      410   9436
0-24 months   JiVitA-3        BANGLADESH                     0                    0     2040   9436
0-24 months   JiVitA-3        BANGLADESH                     0                    1      125   9436
0-24 months   JiVitA-4        BANGLADESH                     1                    0     3378   4657
0-24 months   JiVitA-4        BANGLADESH                     1                    1      262   4657
0-24 months   JiVitA-4        BANGLADESH                     0                    0      912   4657
0-24 months   JiVitA-4        BANGLADESH                     0                    1      105   4657
0-24 months   LCNI-5          MALAWI                         1                    0       42    240
0-24 months   LCNI-5          MALAWI                         1                    1        0    240
0-24 months   LCNI-5          MALAWI                         0                    0      195    240
0-24 months   LCNI-5          MALAWI                         0                    1        3    240
0-24 months   MAL-ED          BANGLADESH                     1                    0       81    233
0-24 months   MAL-ED          BANGLADESH                     1                    1        4    233
0-24 months   MAL-ED          BANGLADESH                     0                    0      139    233
0-24 months   MAL-ED          BANGLADESH                     0                    1        9    233
0-24 months   MAL-ED          BRAZIL                         1                    0       29    210
0-24 months   MAL-ED          BRAZIL                         1                    1        1    210
0-24 months   MAL-ED          BRAZIL                         0                    0      179    210
0-24 months   MAL-ED          BRAZIL                         0                    1        1    210
0-24 months   MAL-ED          INDIA                          1                    0       11    219
0-24 months   MAL-ED          INDIA                          1                    1        0    219
0-24 months   MAL-ED          INDIA                          0                    0      190    219
0-24 months   MAL-ED          INDIA                          0                    1       18    219
0-24 months   MAL-ED          NEPAL                          1                    0       12    225
0-24 months   MAL-ED          NEPAL                          1                    1        0    225
0-24 months   MAL-ED          NEPAL                          0                    0      210    225
0-24 months   MAL-ED          NEPAL                          0                    1        3    225
0-24 months   MAL-ED          PERU                           1                    0       91    271
0-24 months   MAL-ED          PERU                           1                    1        1    271
0-24 months   MAL-ED          PERU                           0                    0      179    271
0-24 months   MAL-ED          PERU                           0                    1        0    271
0-24 months   MAL-ED          SOUTH AFRICA                   1                    0        3    237
0-24 months   MAL-ED          SOUTH AFRICA                   1                    1        0    237
0-24 months   MAL-ED          SOUTH AFRICA                   0                    0      232    237
0-24 months   MAL-ED          SOUTH AFRICA                   0                    1        2    237
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
0-24 months   SAS-FoodSuppl   INDIA                          1                    0        0    166
0-24 months   SAS-FoodSuppl   INDIA                          1                    1        0    166
0-24 months   SAS-FoodSuppl   INDIA                          0                    0      136    166
0-24 months   SAS-FoodSuppl   INDIA                          0                    1       30    166
0-6 months    EE              PAKISTAN                       1                    0       39     47
0-6 months    EE              PAKISTAN                       1                    1        3     47
0-6 months    EE              PAKISTAN                       0                    0        5     47
0-6 months    EE              PAKISTAN                       0                    1        0     47
0-6 months    GMS-Nepal       NEPAL                          1                    0      375    553
0-6 months    GMS-Nepal       NEPAL                          1                    1       39    553
0-6 months    GMS-Nepal       NEPAL                          0                    0      118    553
0-6 months    GMS-Nepal       NEPAL                          0                    1       21    553
0-6 months    JiVitA-3        BANGLADESH                     1                    0       18     26
0-6 months    JiVitA-3        BANGLADESH                     1                    1        2     26
0-6 months    JiVitA-3        BANGLADESH                     0                    0        6     26
0-6 months    JiVitA-3        BANGLADESH                     0                    1        0     26
0-6 months    MAL-ED          BANGLADESH                     1                    0       82    233
0-6 months    MAL-ED          BANGLADESH                     1                    1        3    233
0-6 months    MAL-ED          BANGLADESH                     0                    0      144    233
0-6 months    MAL-ED          BANGLADESH                     0                    1        4    233
0-6 months    MAL-ED          BRAZIL                         1                    0       29    210
0-6 months    MAL-ED          BRAZIL                         1                    1        1    210
0-6 months    MAL-ED          BRAZIL                         0                    0      180    210
0-6 months    MAL-ED          BRAZIL                         0                    1        0    210
0-6 months    MAL-ED          INDIA                          1                    0       11    218
0-6 months    MAL-ED          INDIA                          1                    1        0    218
0-6 months    MAL-ED          INDIA                          0                    0      192    218
0-6 months    MAL-ED          INDIA                          0                    1       15    218
0-6 months    MAL-ED          NEPAL                          1                    0       12    225
0-6 months    MAL-ED          NEPAL                          1                    1        0    225
0-6 months    MAL-ED          NEPAL                          0                    0      208    225
0-6 months    MAL-ED          NEPAL                          0                    1        5    225
0-6 months    MAL-ED          PERU                           1                    0       92    271
0-6 months    MAL-ED          PERU                           1                    1        0    271
0-6 months    MAL-ED          PERU                           0                    0      179    271
0-6 months    MAL-ED          PERU                           0                    1        0    271
0-6 months    MAL-ED          SOUTH AFRICA                   1                    0        3    236
0-6 months    MAL-ED          SOUTH AFRICA                   1                    1        0    236
0-6 months    MAL-ED          SOUTH AFRICA                   0                    0      231    236
0-6 months    MAL-ED          SOUTH AFRICA                   0                    1        2    236
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
6-24 months   EE              PAKISTAN                       1                    0       42     48
6-24 months   EE              PAKISTAN                       1                    1        1     48
6-24 months   EE              PAKISTAN                       0                    0        5     48
6-24 months   EE              PAKISTAN                       0                    1        0     48
6-24 months   GMS-Nepal       NEPAL                          1                    0      366    564
6-24 months   GMS-Nepal       NEPAL                          1                    1       54    564
6-24 months   GMS-Nepal       NEPAL                          0                    0      121    564
6-24 months   GMS-Nepal       NEPAL                          0                    1       23    564
6-24 months   JiVitA-3        BANGLADESH                     1                    0     6861   9436
6-24 months   JiVitA-3        BANGLADESH                     1                    1      410   9436
6-24 months   JiVitA-3        BANGLADESH                     0                    0     2040   9436
6-24 months   JiVitA-3        BANGLADESH                     0                    1      125   9436
6-24 months   JiVitA-4        BANGLADESH                     1                    0     3378   4657
6-24 months   JiVitA-4        BANGLADESH                     1                    1      262   4657
6-24 months   JiVitA-4        BANGLADESH                     0                    0      912   4657
6-24 months   JiVitA-4        BANGLADESH                     0                    1      105   4657
6-24 months   LCNI-5          MALAWI                         1                    0       42    240
6-24 months   LCNI-5          MALAWI                         1                    1        0    240
6-24 months   LCNI-5          MALAWI                         0                    0      195    240
6-24 months   LCNI-5          MALAWI                         0                    1        3    240
6-24 months   MAL-ED          BANGLADESH                     1                    0       81    233
6-24 months   MAL-ED          BANGLADESH                     1                    1        4    233
6-24 months   MAL-ED          BANGLADESH                     0                    0      139    233
6-24 months   MAL-ED          BANGLADESH                     0                    1        9    233
6-24 months   MAL-ED          BRAZIL                         1                    0       29    210
6-24 months   MAL-ED          BRAZIL                         1                    1        1    210
6-24 months   MAL-ED          BRAZIL                         0                    0      179    210
6-24 months   MAL-ED          BRAZIL                         0                    1        1    210
6-24 months   MAL-ED          INDIA                          1                    0       11    219
6-24 months   MAL-ED          INDIA                          1                    1        0    219
6-24 months   MAL-ED          INDIA                          0                    0      190    219
6-24 months   MAL-ED          INDIA                          0                    1       18    219
6-24 months   MAL-ED          NEPAL                          1                    0       12    225
6-24 months   MAL-ED          NEPAL                          1                    1        0    225
6-24 months   MAL-ED          NEPAL                          0                    0      210    225
6-24 months   MAL-ED          NEPAL                          0                    1        3    225
6-24 months   MAL-ED          PERU                           1                    0       91    271
6-24 months   MAL-ED          PERU                           1                    1        1    271
6-24 months   MAL-ED          PERU                           0                    0      179    271
6-24 months   MAL-ED          PERU                           0                    1        0    271
6-24 months   MAL-ED          SOUTH AFRICA                   1                    0        3    237
6-24 months   MAL-ED          SOUTH AFRICA                   1                    1        0    237
6-24 months   MAL-ED          SOUTH AFRICA                   0                    0      232    237
6-24 months   MAL-ED          SOUTH AFRICA                   0                    1        2    237
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
6-24 months   SAS-FoodSuppl   INDIA                          1                    0        0    166
6-24 months   SAS-FoodSuppl   INDIA                          1                    1        0    166
6-24 months   SAS-FoodSuppl   INDIA                          0                    0      136    166
6-24 months   SAS-FoodSuppl   INDIA                          0                    1       30    166


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e04ac54d-7661-4fb3-97d9-bb3eea51ced3/7f40f0c2-e171-404c-b961-184889a00086/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e04ac54d-7661-4fb3-97d9-bb3eea51ced3/7f40f0c2-e171-404c-b961-184889a00086/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e04ac54d-7661-4fb3-97d9-bb3eea51ced3/7f40f0c2-e171-404c-b961-184889a00086/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e04ac54d-7661-4fb3-97d9-bb3eea51ced3/7f40f0c2-e171-404c-b961-184889a00086/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.1290310   0.0967580   0.1613041
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.1575005   0.0966430   0.2183580
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0564770   0.0501932   0.0627609
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0582208   0.0483515   0.0680901
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0747411   0.0644790   0.0850033
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.0900149   0.0711393   0.1088904
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0946377   0.0662920   0.1229835
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1501829   0.0891985   0.2111674
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.1290724   0.0968253   0.1613195
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.1582877   0.0983148   0.2182606
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0564094   0.0501252   0.0626936
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0573798   0.0475054   0.0672541
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0746628   0.0643397   0.0849859
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.0899419   0.0712046   0.1086793


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1365248   0.1081636   0.1648860
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0566978   0.0514863   0.0619092
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0788061   0.0697217   0.0878905
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.1084991   0.0825542   0.1344440
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1365248   0.1081636   0.1648860
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0566978   0.0514863   0.0619092
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0788061   0.0697217   0.0878905


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.220641   0.7700508   1.934889
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.030876   0.8369280   1.269770
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.204355   0.9426880   1.538655
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 1.586925   0.9570758   2.631275
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.226348   0.7786056   1.931567
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.017202   0.8236865   1.256181
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.204642   0.9432310   1.538501


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0074938   -0.0100385   0.0250261
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0002207   -0.0025342   0.0029757
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0040650   -0.0006458   0.0087757
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0138614   -0.0029793   0.0307020
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0074524   -0.0100855   0.0249903
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0002883   -0.0024737   0.0030504
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0041433   -0.0006461   0.0089327


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0548895   -0.0823200   0.1747045
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0038931   -0.0459648   0.0513745
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0515819   -0.0104767   0.1098292
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.1277557   -0.0392987   0.2679581
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0545864   -0.0826414   0.1744202
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0050857   -0.0449248   0.0527026
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0525756   -0.0105930   0.1117958
