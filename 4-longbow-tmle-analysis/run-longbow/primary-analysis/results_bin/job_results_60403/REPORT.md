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

**Outcome Variable:** wast_rec90d

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

agecat        studyid         country                        predfeed36    wast_rec90d   n_cell      n
------------  --------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   EE              PAKISTAN                       1                       0        1      4
0-24 months   EE              PAKISTAN                       1                       1        0      4
0-24 months   EE              PAKISTAN                       0                       0        0      4
0-24 months   EE              PAKISTAN                       0                       1        3      4
0-24 months   GMS-Nepal       NEPAL                          1                       0      190    559
0-24 months   GMS-Nepal       NEPAL                          1                       1      257    559
0-24 months   GMS-Nepal       NEPAL                          0                       0       52    559
0-24 months   GMS-Nepal       NEPAL                          0                       1       60    559
0-24 months   JiVitA-3        BANGLADESH                     1                       0     1676   3743
0-24 months   JiVitA-3        BANGLADESH                     1                       1     1227   3743
0-24 months   JiVitA-3        BANGLADESH                     0                       0      495   3743
0-24 months   JiVitA-3        BANGLADESH                     0                       1      345   3743
0-24 months   JiVitA-4        BANGLADESH                     1                       0      949   1787
0-24 months   JiVitA-4        BANGLADESH                     1                       1      360   1787
0-24 months   JiVitA-4        BANGLADESH                     0                       0      344   1787
0-24 months   JiVitA-4        BANGLADESH                     0                       1      134   1787
0-24 months   LCNI-5          MALAWI                         1                       0        5     34
0-24 months   LCNI-5          MALAWI                         1                       1        2     34
0-24 months   LCNI-5          MALAWI                         0                       0       22     34
0-24 months   LCNI-5          MALAWI                         0                       1        5     34
0-24 months   MAL-ED          BANGLADESH                     1                       0       13    121
0-24 months   MAL-ED          BANGLADESH                     1                       1       30    121
0-24 months   MAL-ED          BANGLADESH                     0                       0       30    121
0-24 months   MAL-ED          BANGLADESH                     0                       1       48    121
0-24 months   MAL-ED          BRAZIL                         1                       0        0     24
0-24 months   MAL-ED          BRAZIL                         1                       1        1     24
0-24 months   MAL-ED          BRAZIL                         0                       0        6     24
0-24 months   MAL-ED          BRAZIL                         0                       1       17     24
0-24 months   MAL-ED          INDIA                          1                       0        2    178
0-24 months   MAL-ED          INDIA                          1                       1        6    178
0-24 months   MAL-ED          INDIA                          0                       0       68    178
0-24 months   MAL-ED          INDIA                          0                       1      102    178
0-24 months   MAL-ED          NEPAL                          1                       0        1     98
0-24 months   MAL-ED          NEPAL                          1                       1        1     98
0-24 months   MAL-ED          NEPAL                          0                       0       19     98
0-24 months   MAL-ED          NEPAL                          0                       1       77     98
0-24 months   MAL-ED          PERU                           1                       0        1     34
0-24 months   MAL-ED          PERU                           1                       1        4     34
0-24 months   MAL-ED          PERU                           0                       0        5     34
0-24 months   MAL-ED          PERU                           0                       1       24     34
0-24 months   MAL-ED          SOUTH AFRICA                   1                       0        0     80
0-24 months   MAL-ED          SOUTH AFRICA                   1                       1        0     80
0-24 months   MAL-ED          SOUTH AFRICA                   0                       0       14     80
0-24 months   MAL-ED          SOUTH AFRICA                   0                       1       66     80
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        9     50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       41     50
0-24 months   SAS-FoodSuppl   INDIA                          1                       0        0    108
0-24 months   SAS-FoodSuppl   INDIA                          1                       1        0    108
0-24 months   SAS-FoodSuppl   INDIA                          0                       0      100    108
0-24 months   SAS-FoodSuppl   INDIA                          0                       1        8    108
0-6 months    EE              PAKISTAN                       1                       0        1      3
0-6 months    EE              PAKISTAN                       1                       1        0      3
0-6 months    EE              PAKISTAN                       0                       0        0      3
0-6 months    EE              PAKISTAN                       0                       1        2      3
0-6 months    GMS-Nepal       NEPAL                          1                       0       54    216
0-6 months    GMS-Nepal       NEPAL                          1                       1      117    216
0-6 months    GMS-Nepal       NEPAL                          0                       0       18    216
0-6 months    GMS-Nepal       NEPAL                          0                       1       27    216
0-6 months    JiVitA-3        BANGLADESH                     1                       0      542   2265
0-6 months    JiVitA-3        BANGLADESH                     1                       1     1227   2265
0-6 months    JiVitA-3        BANGLADESH                     0                       0      151   2265
0-6 months    JiVitA-3        BANGLADESH                     0                       1      345   2265
0-6 months    JiVitA-4        BANGLADESH                     1                       0      136    516
0-6 months    JiVitA-4        BANGLADESH                     1                       1      226    516
0-6 months    JiVitA-4        BANGLADESH                     0                       0       75    516
0-6 months    JiVitA-4        BANGLADESH                     0                       1       79    516
0-6 months    LCNI-5          MALAWI                         1                       0        0      4
0-6 months    LCNI-5          MALAWI                         1                       1        0      4
0-6 months    LCNI-5          MALAWI                         0                       0        4      4
0-6 months    LCNI-5          MALAWI                         0                       1        0      4
0-6 months    MAL-ED          BANGLADESH                     1                       0        3     60
0-6 months    MAL-ED          BANGLADESH                     1                       1       15     60
0-6 months    MAL-ED          BANGLADESH                     0                       0        9     60
0-6 months    MAL-ED          BANGLADESH                     0                       1       33     60
0-6 months    MAL-ED          BRAZIL                         1                       0        0     15
0-6 months    MAL-ED          BRAZIL                         1                       1        1     15
0-6 months    MAL-ED          BRAZIL                         0                       0        1     15
0-6 months    MAL-ED          BRAZIL                         0                       1       13     15
0-6 months    MAL-ED          INDIA                          1                       0        2     83
0-6 months    MAL-ED          INDIA                          1                       1        4     83
0-6 months    MAL-ED          INDIA                          0                       0       24     83
0-6 months    MAL-ED          INDIA                          0                       1       53     83
0-6 months    MAL-ED          NEPAL                          1                       0        1     48
0-6 months    MAL-ED          NEPAL                          1                       1        1     48
0-6 months    MAL-ED          NEPAL                          0                       0        8     48
0-6 months    MAL-ED          NEPAL                          0                       1       38     48
0-6 months    MAL-ED          PERU                           1                       0        0     10
0-6 months    MAL-ED          PERU                           1                       1        2     10
0-6 months    MAL-ED          PERU                           0                       0        0     10
0-6 months    MAL-ED          PERU                           0                       1        8     10
0-6 months    MAL-ED          SOUTH AFRICA                   1                       0        0     29
0-6 months    MAL-ED          SOUTH AFRICA                   1                       1        0     29
0-6 months    MAL-ED          SOUTH AFRICA                   0                       0        5     29
0-6 months    MAL-ED          SOUTH AFRICA                   0                       1       24     29
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        1     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       13     14
0-6 months    SAS-FoodSuppl   INDIA                          1                       0        0     48
0-6 months    SAS-FoodSuppl   INDIA                          1                       1        0     48
0-6 months    SAS-FoodSuppl   INDIA                          0                       0       48     48
0-6 months    SAS-FoodSuppl   INDIA                          0                       1        0     48
6-24 months   EE              PAKISTAN                       1                       0        0      1
6-24 months   EE              PAKISTAN                       1                       1        0      1
6-24 months   EE              PAKISTAN                       0                       0        0      1
6-24 months   EE              PAKISTAN                       0                       1        1      1
6-24 months   GMS-Nepal       NEPAL                          1                       0      136    343
6-24 months   GMS-Nepal       NEPAL                          1                       1      140    343
6-24 months   GMS-Nepal       NEPAL                          0                       0       34    343
6-24 months   GMS-Nepal       NEPAL                          0                       1       33    343
6-24 months   JiVitA-3        BANGLADESH                     1                       0     1134   1478
6-24 months   JiVitA-3        BANGLADESH                     1                       1        0   1478
6-24 months   JiVitA-3        BANGLADESH                     0                       0      344   1478
6-24 months   JiVitA-3        BANGLADESH                     0                       1        0   1478
6-24 months   JiVitA-4        BANGLADESH                     1                       0      813   1271
6-24 months   JiVitA-4        BANGLADESH                     1                       1      134   1271
6-24 months   JiVitA-4        BANGLADESH                     0                       0      269   1271
6-24 months   JiVitA-4        BANGLADESH                     0                       1       55   1271
6-24 months   LCNI-5          MALAWI                         1                       0        5     30
6-24 months   LCNI-5          MALAWI                         1                       1        2     30
6-24 months   LCNI-5          MALAWI                         0                       0       18     30
6-24 months   LCNI-5          MALAWI                         0                       1        5     30
6-24 months   MAL-ED          BANGLADESH                     1                       0       10     61
6-24 months   MAL-ED          BANGLADESH                     1                       1       15     61
6-24 months   MAL-ED          BANGLADESH                     0                       0       21     61
6-24 months   MAL-ED          BANGLADESH                     0                       1       15     61
6-24 months   MAL-ED          BRAZIL                         1                       0        0      9
6-24 months   MAL-ED          BRAZIL                         1                       1        0      9
6-24 months   MAL-ED          BRAZIL                         0                       0        5      9
6-24 months   MAL-ED          BRAZIL                         0                       1        4      9
6-24 months   MAL-ED          INDIA                          1                       0        0     95
6-24 months   MAL-ED          INDIA                          1                       1        2     95
6-24 months   MAL-ED          INDIA                          0                       0       44     95
6-24 months   MAL-ED          INDIA                          0                       1       49     95
6-24 months   MAL-ED          NEPAL                          1                       0        0     50
6-24 months   MAL-ED          NEPAL                          1                       1        0     50
6-24 months   MAL-ED          NEPAL                          0                       0       11     50
6-24 months   MAL-ED          NEPAL                          0                       1       39     50
6-24 months   MAL-ED          PERU                           1                       0        1     24
6-24 months   MAL-ED          PERU                           1                       1        2     24
6-24 months   MAL-ED          PERU                           0                       0        5     24
6-24 months   MAL-ED          PERU                           0                       1       16     24
6-24 months   MAL-ED          SOUTH AFRICA                   1                       0        0     51
6-24 months   MAL-ED          SOUTH AFRICA                   1                       1        0     51
6-24 months   MAL-ED          SOUTH AFRICA                   0                       0        9     51
6-24 months   MAL-ED          SOUTH AFRICA                   0                       1       42     51
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        8     36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       28     36
6-24 months   SAS-FoodSuppl   INDIA                          1                       0        0     60
6-24 months   SAS-FoodSuppl   INDIA                          1                       1        0     60
6-24 months   SAS-FoodSuppl   INDIA                          0                       0       52     60
6-24 months   SAS-FoodSuppl   INDIA                          0                       1        8     60


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
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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
![](/tmp/87a0c166-da91-4436-8199-e22289d46681/74807517-d02e-4579-85e2-e671a6805c96/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/87a0c166-da91-4436-8199-e22289d46681/74807517-d02e-4579-85e2-e671a6805c96/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/87a0c166-da91-4436-8199-e22289d46681/74807517-d02e-4579-85e2-e671a6805c96/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/87a0c166-da91-4436-8199-e22289d46681/74807517-d02e-4579-85e2-e671a6805c96/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.5737723   0.5237734   0.6237712
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.5309886   0.4256106   0.6363667
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.4198392   0.4022198   0.4374587
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.4179120   0.3865005   0.4493235
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.2781198   0.2536248   0.3026148
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.2738876   0.2349912   0.3127841
0-24 months   MAL-ED      BANGLADESH   1                    NA                0.6778217   0.5462020   0.8094415
0-24 months   MAL-ED      BANGLADESH   0                    NA                0.6052661   0.4905307   0.7200014
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.6825490   0.6123787   0.7527194
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.6004779   0.4526137   0.7483422
0-6 months    JiVitA-3    BANGLADESH   1                    NA                0.6933254   0.6719568   0.7146941
0-6 months    JiVitA-3    BANGLADESH   0                    NA                0.6982472   0.6576753   0.7388192
0-6 months    JiVitA-4    BANGLADESH   1                    NA                0.6000439   0.5522453   0.6478426
0-6 months    JiVitA-4    BANGLADESH   0                    NA                0.5536829   0.4883535   0.6190123
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.5079763   0.4429307   0.5730219
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.4964078   0.3714897   0.6213259
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1418055   0.1199616   0.1636494
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1693402   0.1291731   0.2095073
6-24 months   MAL-ED      BANGLADESH   1                    NA                0.6197437   0.4018267   0.8376606
6-24 months   MAL-ED      BANGLADESH   0                    NA                0.4059460   0.2442416   0.5676505


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.5670841   0.5219813   0.6121868
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.4199840   0.4041851   0.4357828
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.2764410   0.2550939   0.2977881
0-24 months   MAL-ED      BANGLADESH   NA                   NA                0.6446281   0.5577732   0.7314830
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.6666667   0.6030996   0.7302337
0-6 months    JiVitA-3    BANGLADESH   NA                   NA                0.6940397   0.6750581   0.7130214
0-6 months    JiVitA-4    BANGLADESH   NA                   NA                0.5910853   0.5486247   0.6335459
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1487018   0.1295178   0.1678858
6-24 months   MAL-ED      BANGLADESH   NA                   NA                0.4918033   0.3610932   0.6225134


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 0.9254344   0.7453646   1.149007
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 0.9954097   0.9157151   1.082040
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 0.9847830   0.8384699   1.156628
0-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      BANGLADESH   0                    1                 0.8929576   0.6775221   1.176896
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 0.8797580   0.6737223   1.148803
0-6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3    BANGLADESH   0                    1                 1.0070989   0.9432633   1.075255
0-6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4    BANGLADESH   0                    1                 0.9227373   0.8130304   1.047248
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 0.9772263   0.7373446   1.295149
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.1941722   0.8998733   1.584720
6-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED      BANGLADESH   0                    1                 0.6550225   0.3855771   1.112759


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0066882   -0.0298964   0.0165199
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0001447   -0.0076621   0.0079516
0-24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0016788   -0.0133280   0.0099703
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0331936   -0.1479757   0.0815884
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0158824   -0.0499665   0.0182017
0-6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0007143   -0.0092140   0.0106426
0-6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0089587   -0.0298423   0.0119250
6-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0036031   -0.0308812   0.0236749
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0068963   -0.0047489   0.0185415
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.1279404   -0.2967144   0.0408336


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0117940   -0.0536037   0.0283564
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0003447   -0.0184177   0.0187614
0-24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0060730   -0.0491021   0.0351912
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0514927   -0.2470711   0.1134132
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0238235   -0.0764539   0.0262336
0-6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0010292   -0.0133786   0.0152322
0-6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0151563   -0.0510977   0.0195561
6-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0071438   -0.0626689   0.0454800
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0463768   -0.0351040   0.1214437
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.2601455   -0.6597714   0.0432619
