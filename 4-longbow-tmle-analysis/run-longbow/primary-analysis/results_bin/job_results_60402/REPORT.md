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

agecat        studyid         country                        predfeed6    wast_rec90d   n_cell      n
------------  --------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   EE              PAKISTAN                       1                      0       15     34
0-24 months   EE              PAKISTAN                       1                      1       16     34
0-24 months   EE              PAKISTAN                       0                      0        0     34
0-24 months   EE              PAKISTAN                       0                      1        3     34
0-24 months   GMS-Nepal       NEPAL                          1                      0      192    594
0-24 months   GMS-Nepal       NEPAL                          1                      1      251    594
0-24 months   GMS-Nepal       NEPAL                          0                      0       70    594
0-24 months   GMS-Nepal       NEPAL                          0                      1       81    594
0-24 months   JiVitA-3        BANGLADESH                     1                      0     2004   4526
0-24 months   JiVitA-3        BANGLADESH                     1                      1     1506   4526
0-24 months   JiVitA-3        BANGLADESH                     0                      0      594   4526
0-24 months   JiVitA-3        BANGLADESH                     0                      1      422   4526
0-24 months   JiVitA-4        BANGLADESH                     1                      0      986   1841
0-24 months   JiVitA-4        BANGLADESH                     1                      1      372   1841
0-24 months   JiVitA-4        BANGLADESH                     0                      0      349   1841
0-24 months   JiVitA-4        BANGLADESH                     0                      1      134   1841
0-24 months   LCNI-5          MALAWI                         1                      0        5     34
0-24 months   LCNI-5          MALAWI                         1                      1        2     34
0-24 months   LCNI-5          MALAWI                         0                      0       22     34
0-24 months   LCNI-5          MALAWI                         0                      1        5     34
0-24 months   MAL-ED          BANGLADESH                     1                      0       15    114
0-24 months   MAL-ED          BANGLADESH                     1                      1       30    114
0-24 months   MAL-ED          BANGLADESH                     0                      0       25    114
0-24 months   MAL-ED          BANGLADESH                     0                      1       44    114
0-24 months   MAL-ED          BRAZIL                         1                      0        1     24
0-24 months   MAL-ED          BRAZIL                         1                      1        1     24
0-24 months   MAL-ED          BRAZIL                         0                      0        5     24
0-24 months   MAL-ED          BRAZIL                         0                      1       17     24
0-24 months   MAL-ED          INDIA                          1                      0        0    162
0-24 months   MAL-ED          INDIA                          1                      1        2    162
0-24 months   MAL-ED          INDIA                          0                      0       62    162
0-24 months   MAL-ED          INDIA                          0                      1       98    162
0-24 months   MAL-ED          NEPAL                          1                      0        1     94
0-24 months   MAL-ED          NEPAL                          1                      1        2     94
0-24 months   MAL-ED          NEPAL                          0                      0       18     94
0-24 months   MAL-ED          NEPAL                          0                      1       73     94
0-24 months   MAL-ED          PERU                           1                      0        2     34
0-24 months   MAL-ED          PERU                           1                      1        6     34
0-24 months   MAL-ED          PERU                           0                      0        4     34
0-24 months   MAL-ED          PERU                           0                      1       22     34
0-24 months   MAL-ED          SOUTH AFRICA                   1                      0        0     75
0-24 months   MAL-ED          SOUTH AFRICA                   1                      1        0     75
0-24 months   MAL-ED          SOUTH AFRICA                   0                      0       11     75
0-24 months   MAL-ED          SOUTH AFRICA                   0                      1       64     75
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        9     50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       41     50
0-24 months   SAS-FoodSuppl   INDIA                          1                      0        0    108
0-24 months   SAS-FoodSuppl   INDIA                          1                      1        0    108
0-24 months   SAS-FoodSuppl   INDIA                          0                      0      100    108
0-24 months   SAS-FoodSuppl   INDIA                          0                      1        8    108
0-6 months    EE              PAKISTAN                       1                      0        6     15
0-6 months    EE              PAKISTAN                       1                      1        7     15
0-6 months    EE              PAKISTAN                       0                      0        0     15
0-6 months    EE              PAKISTAN                       0                      1        2     15
0-6 months    GMS-Nepal       NEPAL                          1                      0       54    228
0-6 months    GMS-Nepal       NEPAL                          1                      1      116    228
0-6 months    GMS-Nepal       NEPAL                          0                      0       24    228
0-6 months    GMS-Nepal       NEPAL                          0                      1       34    228
0-6 months    JiVitA-3        BANGLADESH                     1                      0      702   2832
0-6 months    JiVitA-3        BANGLADESH                     1                      1     1506   2832
0-6 months    JiVitA-3        BANGLADESH                     0                      0      202   2832
0-6 months    JiVitA-3        BANGLADESH                     0                      1      422   2832
0-6 months    JiVitA-4        BANGLADESH                     1                      0      141    526
0-6 months    JiVitA-4        BANGLADESH                     1                      1      229    526
0-6 months    JiVitA-4        BANGLADESH                     0                      0       77    526
0-6 months    JiVitA-4        BANGLADESH                     0                      1       79    526
0-6 months    LCNI-5          MALAWI                         1                      0        0      4
0-6 months    LCNI-5          MALAWI                         1                      1        0      4
0-6 months    LCNI-5          MALAWI                         0                      0        4      4
0-6 months    LCNI-5          MALAWI                         0                      1        0      4
0-6 months    MAL-ED          BANGLADESH                     1                      0        4     58
0-6 months    MAL-ED          BANGLADESH                     1                      1       14     58
0-6 months    MAL-ED          BANGLADESH                     0                      0        8     58
0-6 months    MAL-ED          BANGLADESH                     0                      1       32     58
0-6 months    MAL-ED          BRAZIL                         1                      0        1     15
0-6 months    MAL-ED          BRAZIL                         1                      1        1     15
0-6 months    MAL-ED          BRAZIL                         0                      0        0     15
0-6 months    MAL-ED          BRAZIL                         0                      1       13     15
0-6 months    MAL-ED          INDIA                          1                      0        0     72
0-6 months    MAL-ED          INDIA                          1                      1        1     72
0-6 months    MAL-ED          INDIA                          0                      0       20     72
0-6 months    MAL-ED          INDIA                          0                      1       51     72
0-6 months    MAL-ED          NEPAL                          1                      0        0     44
0-6 months    MAL-ED          NEPAL                          1                      1        1     44
0-6 months    MAL-ED          NEPAL                          0                      0        8     44
0-6 months    MAL-ED          NEPAL                          0                      1       35     44
0-6 months    MAL-ED          PERU                           1                      0        0     10
0-6 months    MAL-ED          PERU                           1                      1        3     10
0-6 months    MAL-ED          PERU                           0                      0        0     10
0-6 months    MAL-ED          PERU                           0                      1        7     10
0-6 months    MAL-ED          SOUTH AFRICA                   1                      0        0     28
0-6 months    MAL-ED          SOUTH AFRICA                   1                      1        0     28
0-6 months    MAL-ED          SOUTH AFRICA                   0                      0        4     28
0-6 months    MAL-ED          SOUTH AFRICA                   0                      1       24     28
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       13     14
0-6 months    SAS-FoodSuppl   INDIA                          1                      0        0     48
0-6 months    SAS-FoodSuppl   INDIA                          1                      1        0     48
0-6 months    SAS-FoodSuppl   INDIA                          0                      0       48     48
0-6 months    SAS-FoodSuppl   INDIA                          0                      1        0     48
6-24 months   EE              PAKISTAN                       1                      0        9     19
6-24 months   EE              PAKISTAN                       1                      1        9     19
6-24 months   EE              PAKISTAN                       0                      0        0     19
6-24 months   EE              PAKISTAN                       0                      1        1     19
6-24 months   GMS-Nepal       NEPAL                          1                      0      138    366
6-24 months   GMS-Nepal       NEPAL                          1                      1      135    366
6-24 months   GMS-Nepal       NEPAL                          0                      0       46    366
6-24 months   GMS-Nepal       NEPAL                          0                      1       47    366
6-24 months   JiVitA-3        BANGLADESH                     1                      0     1302   1694
6-24 months   JiVitA-3        BANGLADESH                     1                      1        0   1694
6-24 months   JiVitA-3        BANGLADESH                     0                      0      392   1694
6-24 months   JiVitA-3        BANGLADESH                     0                      1        0   1694
6-24 months   JiVitA-4        BANGLADESH                     1                      0      845   1315
6-24 months   JiVitA-4        BANGLADESH                     1                      1      143   1315
6-24 months   JiVitA-4        BANGLADESH                     0                      0      272   1315
6-24 months   JiVitA-4        BANGLADESH                     0                      1       55   1315
6-24 months   LCNI-5          MALAWI                         1                      0        5     30
6-24 months   LCNI-5          MALAWI                         1                      1        2     30
6-24 months   LCNI-5          MALAWI                         0                      0       18     30
6-24 months   LCNI-5          MALAWI                         0                      1        5     30
6-24 months   MAL-ED          BANGLADESH                     1                      0       11     56
6-24 months   MAL-ED          BANGLADESH                     1                      1       16     56
6-24 months   MAL-ED          BANGLADESH                     0                      0       17     56
6-24 months   MAL-ED          BANGLADESH                     0                      1       12     56
6-24 months   MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   MAL-ED          BRAZIL                         1                      1        0      9
6-24 months   MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   MAL-ED          BRAZIL                         0                      1        4      9
6-24 months   MAL-ED          INDIA                          1                      0        0     90
6-24 months   MAL-ED          INDIA                          1                      1        1     90
6-24 months   MAL-ED          INDIA                          0                      0       42     90
6-24 months   MAL-ED          INDIA                          0                      1       47     90
6-24 months   MAL-ED          NEPAL                          1                      0        1     50
6-24 months   MAL-ED          NEPAL                          1                      1        1     50
6-24 months   MAL-ED          NEPAL                          0                      0       10     50
6-24 months   MAL-ED          NEPAL                          0                      1       38     50
6-24 months   MAL-ED          PERU                           1                      0        2     24
6-24 months   MAL-ED          PERU                           1                      1        3     24
6-24 months   MAL-ED          PERU                           0                      0        4     24
6-24 months   MAL-ED          PERU                           0                      1       15     24
6-24 months   MAL-ED          SOUTH AFRICA                   1                      0        0     47
6-24 months   MAL-ED          SOUTH AFRICA                   1                      1        0     47
6-24 months   MAL-ED          SOUTH AFRICA                   0                      0        7     47
6-24 months   MAL-ED          SOUTH AFRICA                   0                      1       40     47
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8     36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       28     36
6-24 months   SAS-FoodSuppl   INDIA                          1                      0        0     60
6-24 months   SAS-FoodSuppl   INDIA                          1                      1        0     60
6-24 months   SAS-FoodSuppl   INDIA                          0                      0       52     60
6-24 months   SAS-FoodSuppl   INDIA                          0                      1        8     60


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
![](/tmp/5b9f7f7c-e66e-483a-a511-aa526494d873/31cf9065-6325-44f9-9036-3429947e451a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5b9f7f7c-e66e-483a-a511-aa526494d873/31cf9065-6325-44f9-9036-3429947e451a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5b9f7f7c-e66e-483a-a511-aa526494d873/31cf9065-6325-44f9-9036-3429947e451a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5b9f7f7c-e66e-483a-a511-aa526494d873/31cf9065-6325-44f9-9036-3429947e451a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.5675692   0.5175354   0.6176031
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.5336037   0.4428185   0.6243888
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.4260675   0.4100706   0.4420644
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.4256690   0.3968280   0.4545099
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.2763136   0.2523285   0.3002988
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.2750250   0.2370683   0.3129818
0-24 months   MAL-ED      BANGLADESH   1                    NA                0.6543254   0.5237078   0.7849430
0-24 months   MAL-ED      BANGLADESH   0                    NA                0.6296298   0.5045577   0.7547019
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.6837854   0.6131425   0.7544283
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.5903424   0.4601696   0.7205152
0-6 months    JiVitA-3    BANGLADESH   1                    NA                0.6813242   0.6620082   0.7006401
0-6 months    JiVitA-3    BANGLADESH   0                    NA                0.6790575   0.6423794   0.7157357
0-6 months    JiVitA-4    BANGLADESH   1                    NA                0.5970828   0.5496930   0.6444725
0-6 months    JiVitA-4    BANGLADESH   0                    NA                0.5530505   0.4888612   0.6172397
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.4959763   0.4313453   0.5606072
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.4981018   0.3884448   0.6077588
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1450365   0.1235142   0.1665588
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1690667   0.1285609   0.2095724
6-24 months   MAL-ED      BANGLADESH   1                    NA                0.5732339   0.3792326   0.7672352
6-24 months   MAL-ED      BANGLADESH   0                    NA                0.3893367   0.1974318   0.5812417


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.5589226   0.5151400   0.6027051
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.4259832   0.4115786   0.4403878
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.2748506   0.2539041   0.2957971
0-24 months   MAL-ED      BANGLADESH   NA                   NA                0.6491228   0.5591034   0.7391422
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.6578947   0.5956613   0.7201282
0-6 months    JiVitA-3    BANGLADESH   NA                   NA                0.6807910   0.6636189   0.6979630
0-6 months    JiVitA-4    BANGLADESH   NA                   NA                0.5855513   0.5434121   0.6276905
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.4972678   0.4417121   0.5528234
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1505703   0.1316510   0.1694897
6-24 months   MAL-ED      BANGLADESH   NA                   NA                0.5000000   0.3630175   0.6369825


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 0.9401561   0.7764398   1.138393
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 0.9990647   0.9268855   1.076865
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 0.9953364   0.8515627   1.163384
0-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      BANGLADESH   0                    1                 0.9622579   0.7261149   1.275198
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 0.8633446   0.6765834   1.101659
0-6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3    BANGLADESH   0                    1                 0.9966732   0.9379889   1.059029
0-6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4    BANGLADESH   0                    1                 0.9262543   0.8188323   1.047769
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.0042855   0.7782872   1.295909
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.1656836   0.8792406   1.545445
6-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED      BANGLADESH   0                    1                 0.6791935   0.3734316   1.235310


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0086467   -0.0348355   0.0175421
0-24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0000843   -0.0072334   0.0070648
0-24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0014630   -0.0125272   0.0096012
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0052026   -0.1139975   0.1035924
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0258906   -0.0640419   0.0122607
0-6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0005332   -0.0095948   0.0085284
0-6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0115314   -0.0315857   0.0085228
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0012915   -0.0305103   0.0330933
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0055338   -0.0057710   0.0168387
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0732339   -0.2215709   0.0751031


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0154703   -0.0634953   0.0303861
0-24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0001978   -0.0171221   0.0164448
0-24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0053230   -0.0463844   0.0341272
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0080148   -0.1905541   0.1465371
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0393537   -0.0993974   0.0174106
0-6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0007832   -0.0141828   0.0124393
0-6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0196933   -0.0544948   0.0139597
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0025972   -0.0634584   0.0645499
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0367525   -0.0412219   0.1088876
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.1464678   -0.4925311   0.1193561
