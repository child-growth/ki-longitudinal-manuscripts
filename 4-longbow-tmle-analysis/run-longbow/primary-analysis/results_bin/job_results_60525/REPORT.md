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

**Intervention Variable:** predfeed36

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

agecat        studyid         country                        predfeed36    pers_wast   n_cell      n
------------  --------------  -----------------------------  -----------  ----------  -------  -----
0-24 months   EE              PAKISTAN                       1                     0        4      9
0-24 months   EE              PAKISTAN                       1                     1        0      9
0-24 months   EE              PAKISTAN                       0                     0        5      9
0-24 months   EE              PAKISTAN                       0                     1        0      9
0-24 months   GMS-Nepal       NEPAL                          1                     0      369    528
0-24 months   GMS-Nepal       NEPAL                          1                     1       54    528
0-24 months   GMS-Nepal       NEPAL                          0                     0       90    528
0-24 months   GMS-Nepal       NEPAL                          0                     1       15    528
0-24 months   JiVitA-3        BANGLADESH                     1                     0     5971   8221
0-24 months   JiVitA-3        BANGLADESH                     1                     1      363   8221
0-24 months   JiVitA-3        BANGLADESH                     0                     0     1774   8221
0-24 months   JiVitA-3        BANGLADESH                     0                     1      113   8221
0-24 months   JiVitA-4        BANGLADESH                     1                     0     3243   4495
0-24 months   JiVitA-4        BANGLADESH                     1                     1      252   4495
0-24 months   JiVitA-4        BANGLADESH                     0                     0      896   4495
0-24 months   JiVitA-4        BANGLADESH                     0                     1      104   4495
0-24 months   LCNI-5          MALAWI                         1                     0       42    240
0-24 months   LCNI-5          MALAWI                         1                     1        0    240
0-24 months   LCNI-5          MALAWI                         0                     0      195    240
0-24 months   LCNI-5          MALAWI                         0                     1        3    240
0-24 months   MAL-ED          BANGLADESH                     1                     0       81    247
0-24 months   MAL-ED          BANGLADESH                     1                     1        3    247
0-24 months   MAL-ED          BANGLADESH                     0                     0      153    247
0-24 months   MAL-ED          BANGLADESH                     0                     1       10    247
0-24 months   MAL-ED          BRAZIL                         1                     0       27    217
0-24 months   MAL-ED          BRAZIL                         1                     1        0    217
0-24 months   MAL-ED          BRAZIL                         0                     0      188    217
0-24 months   MAL-ED          BRAZIL                         0                     1        2    217
0-24 months   MAL-ED          INDIA                          1                     0       16    238
0-24 months   MAL-ED          INDIA                          1                     1        1    238
0-24 months   MAL-ED          INDIA                          0                     0      201    238
0-24 months   MAL-ED          INDIA                          0                     1       20    238
0-24 months   MAL-ED          NEPAL                          1                     0        8    236
0-24 months   MAL-ED          NEPAL                          1                     1        1    236
0-24 months   MAL-ED          NEPAL                          0                     0      224    236
0-24 months   MAL-ED          NEPAL                          0                     1        3    236
0-24 months   MAL-ED          PERU                           1                     0       78    282
0-24 months   MAL-ED          PERU                           1                     1        0    282
0-24 months   MAL-ED          PERU                           0                     0      203    282
0-24 months   MAL-ED          PERU                           0                     1        1    282
0-24 months   MAL-ED          SOUTH AFRICA                   1                     0        5    271
0-24 months   MAL-ED          SOUTH AFRICA                   1                     1        0    271
0-24 months   MAL-ED          SOUTH AFRICA                   0                     0      264    271
0-24 months   MAL-ED          SOUTH AFRICA                   0                     1        2    271
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        5    249
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      244    249
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
0-24 months   SAS-FoodSuppl   INDIA                          1                     0        0    166
0-24 months   SAS-FoodSuppl   INDIA                          1                     1        0    166
0-24 months   SAS-FoodSuppl   INDIA                          0                     0      136    166
0-24 months   SAS-FoodSuppl   INDIA                          0                     1       30    166
0-6 months    EE              PAKISTAN                       1                     0        4      9
0-6 months    EE              PAKISTAN                       1                     1        0      9
0-6 months    EE              PAKISTAN                       0                     0        5      9
0-6 months    EE              PAKISTAN                       0                     1        0      9
0-6 months    GMS-Nepal       NEPAL                          1                     0      380    520
0-6 months    GMS-Nepal       NEPAL                          1                     1       37    520
0-6 months    GMS-Nepal       NEPAL                          0                     0       86    520
0-6 months    GMS-Nepal       NEPAL                          0                     1       17    520
0-6 months    JiVitA-3        BANGLADESH                     1                     0       11     19
0-6 months    JiVitA-3        BANGLADESH                     1                     1        2     19
0-6 months    JiVitA-3        BANGLADESH                     0                     0        6     19
0-6 months    JiVitA-3        BANGLADESH                     0                     1        0     19
0-6 months    MAL-ED          BANGLADESH                     1                     0       81    247
0-6 months    MAL-ED          BANGLADESH                     1                     1        3    247
0-6 months    MAL-ED          BANGLADESH                     0                     0      159    247
0-6 months    MAL-ED          BANGLADESH                     0                     1        4    247
0-6 months    MAL-ED          BRAZIL                         1                     0       27    217
0-6 months    MAL-ED          BRAZIL                         1                     1        0    217
0-6 months    MAL-ED          BRAZIL                         0                     0      189    217
0-6 months    MAL-ED          BRAZIL                         0                     1        1    217
0-6 months    MAL-ED          INDIA                          1                     0       16    237
0-6 months    MAL-ED          INDIA                          1                     1        1    237
0-6 months    MAL-ED          INDIA                          0                     0      202    237
0-6 months    MAL-ED          INDIA                          0                     1       18    237
0-6 months    MAL-ED          NEPAL                          1                     0        8    236
0-6 months    MAL-ED          NEPAL                          1                     1        1    236
0-6 months    MAL-ED          NEPAL                          0                     0      221    236
0-6 months    MAL-ED          NEPAL                          0                     1        6    236
0-6 months    MAL-ED          PERU                           1                     0       78    282
0-6 months    MAL-ED          PERU                           1                     1        0    282
0-6 months    MAL-ED          PERU                           0                     0      204    282
0-6 months    MAL-ED          PERU                           0                     1        0    282
0-6 months    MAL-ED          SOUTH AFRICA                   1                     0        5    270
0-6 months    MAL-ED          SOUTH AFRICA                   1                     1        0    270
0-6 months    MAL-ED          SOUTH AFRICA                   0                     0      263    270
0-6 months    MAL-ED          SOUTH AFRICA                   0                     1        2    270
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        5    249
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      244    249
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
6-24 months   EE              PAKISTAN                       1                     0        4      9
6-24 months   EE              PAKISTAN                       1                     1        0      9
6-24 months   EE              PAKISTAN                       0                     0        5      9
6-24 months   EE              PAKISTAN                       0                     1        0      9
6-24 months   GMS-Nepal       NEPAL                          1                     0      369    528
6-24 months   GMS-Nepal       NEPAL                          1                     1       54    528
6-24 months   GMS-Nepal       NEPAL                          0                     0       90    528
6-24 months   GMS-Nepal       NEPAL                          0                     1       15    528
6-24 months   JiVitA-3        BANGLADESH                     1                     0     5971   8221
6-24 months   JiVitA-3        BANGLADESH                     1                     1      363   8221
6-24 months   JiVitA-3        BANGLADESH                     0                     0     1774   8221
6-24 months   JiVitA-3        BANGLADESH                     0                     1      113   8221
6-24 months   JiVitA-4        BANGLADESH                     1                     0     3243   4495
6-24 months   JiVitA-4        BANGLADESH                     1                     1      252   4495
6-24 months   JiVitA-4        BANGLADESH                     0                     0      896   4495
6-24 months   JiVitA-4        BANGLADESH                     0                     1      104   4495
6-24 months   LCNI-5          MALAWI                         1                     0       42    240
6-24 months   LCNI-5          MALAWI                         1                     1        0    240
6-24 months   LCNI-5          MALAWI                         0                     0      195    240
6-24 months   LCNI-5          MALAWI                         0                     1        3    240
6-24 months   MAL-ED          BANGLADESH                     1                     0       81    247
6-24 months   MAL-ED          BANGLADESH                     1                     1        3    247
6-24 months   MAL-ED          BANGLADESH                     0                     0      153    247
6-24 months   MAL-ED          BANGLADESH                     0                     1       10    247
6-24 months   MAL-ED          BRAZIL                         1                     0       27    217
6-24 months   MAL-ED          BRAZIL                         1                     1        0    217
6-24 months   MAL-ED          BRAZIL                         0                     0      188    217
6-24 months   MAL-ED          BRAZIL                         0                     1        2    217
6-24 months   MAL-ED          INDIA                          1                     0       16    238
6-24 months   MAL-ED          INDIA                          1                     1        1    238
6-24 months   MAL-ED          INDIA                          0                     0      201    238
6-24 months   MAL-ED          INDIA                          0                     1       20    238
6-24 months   MAL-ED          NEPAL                          1                     0        8    236
6-24 months   MAL-ED          NEPAL                          1                     1        1    236
6-24 months   MAL-ED          NEPAL                          0                     0      224    236
6-24 months   MAL-ED          NEPAL                          0                     1        3    236
6-24 months   MAL-ED          PERU                           1                     0       78    282
6-24 months   MAL-ED          PERU                           1                     1        0    282
6-24 months   MAL-ED          PERU                           0                     0      203    282
6-24 months   MAL-ED          PERU                           0                     1        1    282
6-24 months   MAL-ED          SOUTH AFRICA                   1                     0        5    271
6-24 months   MAL-ED          SOUTH AFRICA                   1                     1        0    271
6-24 months   MAL-ED          SOUTH AFRICA                   0                     0      264    271
6-24 months   MAL-ED          SOUTH AFRICA                   0                     1        2    271
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        5    249
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      244    249
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
6-24 months   SAS-FoodSuppl   INDIA                          1                     0        0    166
6-24 months   SAS-FoodSuppl   INDIA                          1                     1        0    166
6-24 months   SAS-FoodSuppl   INDIA                          0                     0      136    166
6-24 months   SAS-FoodSuppl   INDIA                          0                     1       30    166


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
![](/tmp/2c707124-1794-4c79-b987-37f6a64bf4c4/b603dfa0-3eb8-4d02-9e83-4c62b6fd04e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2c707124-1794-4c79-b987-37f6a64bf4c4/b603dfa0-3eb8-4d02-9e83-4c62b6fd04e6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2c707124-1794-4c79-b987-37f6a64bf4c4/b603dfa0-3eb8-4d02-9e83-4c62b6fd04e6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2c707124-1794-4c79-b987-37f6a64bf4c4/b603dfa0-3eb8-4d02-9e83-4c62b6fd04e6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.1280091   0.0961264   0.1598918
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.1451277   0.0774267   0.2128288
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0572434   0.0503635   0.0641233
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0602745   0.0489369   0.0716122
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0744528   0.0640562   0.0848494
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.0915473   0.0725908   0.1105038
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0891277   0.0617865   0.1164688
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1713949   0.1011626   0.2416273
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.1269888   0.0950927   0.1588849
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.1371853   0.0683957   0.2059749
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0571537   0.0502721   0.0640353
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0601195   0.0487727   0.0714663
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0741123   0.0637289   0.0844958
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.0925037   0.0733411   0.1116664


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.1038462   0.0776009   0.1300914
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.133730   0.6680216   1.924105
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.052952   0.8374720   1.323875
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.229601   0.9637434   1.568798
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 1.923027   1.1518970   3.210387
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.080295   0.6165175   1.892950
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.051892   0.8361619   1.323281
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.248156   0.9780359   1.592880


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0026727   -0.0121351   0.0174806
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0006571   -0.0024632   0.0037774
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0047463   -0.0001280   0.0096206
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0147185   -0.0007920   0.0302289
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0036930   -0.0111476   0.0185337
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0007468   -0.0023764   0.0038700
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0050868    0.0002137   0.0099599


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0204522   -0.0995913   0.1273905
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0113491   -0.0441948   0.0639384
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0599284   -0.0040521   0.1198319
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.1417336   -0.0169540   0.2756593
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0282598   -0.0921432   0.1353890
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0128984   -0.0427234   0.0655531
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0642278    0.0002171   0.1241403
