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

**Outcome Variable:** dead0plus

## Predictor Variables

**Intervention Variable:** ever_stunted024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_stunted024    dead0plus   n_cell       n
----------------  -----------------------------  ----------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                          0     4565    7164
Burkina Faso Zn   BURKINA FASO                   0                          1       25    7164
Burkina Faso Zn   BURKINA FASO                   1                          0     2551    7164
Burkina Faso Zn   BURKINA FASO                   1                          1       23    7164
EE                PAKISTAN                       0                          0       41     379
EE                PAKISTAN                       0                          1        0     379
EE                PAKISTAN                       1                          0      334     379
EE                PAKISTAN                       1                          1        4     379
GMS-Nepal         NEPAL                          0                          0      249     698
GMS-Nepal         NEPAL                          0                          1        3     698
GMS-Nepal         NEPAL                          1                          0      441     698
GMS-Nepal         NEPAL                          1                          1        5     698
iLiNS-DOSE        MALAWI                         0                          0      902    1931
iLiNS-DOSE        MALAWI                         0                          1       62    1931
iLiNS-DOSE        MALAWI                         1                          0      901    1931
iLiNS-DOSE        MALAWI                         1                          1       66    1931
iLiNS-DYAD-M      MALAWI                         0                          0      612    1204
iLiNS-DYAD-M      MALAWI                         0                          1       20    1204
iLiNS-DYAD-M      MALAWI                         1                          0      549    1204
iLiNS-DYAD-M      MALAWI                         1                          1       23    1204
JiVitA-3          BANGLADESH                     0                          0    13473   27227
JiVitA-3          BANGLADESH                     0                          1      268   27227
JiVitA-3          BANGLADESH                     1                          0    12911   27227
JiVitA-3          BANGLADESH                     1                          1      575   27227
JiVitA-4          BANGLADESH                     0                          0     2264    5442
JiVitA-4          BANGLADESH                     0                          1       15    5442
JiVitA-4          BANGLADESH                     1                          0     3128    5442
JiVitA-4          BANGLADESH                     1                          1       35    5442
Keneba            GAMBIA                         0                          0     1384    2915
Keneba            GAMBIA                         0                          1       37    2915
Keneba            GAMBIA                         1                          0     1432    2915
Keneba            GAMBIA                         1                          1       62    2915
MAL-ED            BANGLADESH                     0                          0      103     265
MAL-ED            BANGLADESH                     0                          1        0     265
MAL-ED            BANGLADESH                     1                          0      159     265
MAL-ED            BANGLADESH                     1                          1        3     265
MAL-ED            INDIA                          0                          0       98     251
MAL-ED            INDIA                          0                          1        1     251
MAL-ED            INDIA                          1                          0      151     251
MAL-ED            INDIA                          1                          1        1     251
MAL-ED            PERU                           0                          0      114     303
MAL-ED            PERU                           0                          1        1     303
MAL-ED            PERU                           1                          0      187     303
MAL-ED            PERU                           1                          1        1     303
MAL-ED            SOUTH AFRICA                   0                          0      138     314
MAL-ED            SOUTH AFRICA                   0                          1        0     314
MAL-ED            SOUTH AFRICA                   1                          0      175     314
MAL-ED            SOUTH AFRICA                   1                          1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0       39     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        1     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0      220     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        2     262
PROVIDE           BANGLADESH                     0                          0      391     700
PROVIDE           BANGLADESH                     0                          1        4     700
PROVIDE           BANGLADESH                     1                          0      304     700
PROVIDE           BANGLADESH                     1                          1        1     700
SAS-CompFeed      INDIA                          0                          0      461    1533
SAS-CompFeed      INDIA                          0                          1       12    1533
SAS-CompFeed      INDIA                          1                          0     1022    1533
SAS-CompFeed      INDIA                          1                          1       38    1533
SAS-FoodSuppl     INDIA                          0                          0       71     418
SAS-FoodSuppl     INDIA                          0                          1        1     418
SAS-FoodSuppl     INDIA                          1                          0      341     418
SAS-FoodSuppl     INDIA                          1                          1        5     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1566    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      829    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396
VITAMIN-A         INDIA                          0                          0     1665    3907
VITAMIN-A         INDIA                          0                          1       27    3907
VITAMIN-A         INDIA                          1                          0     2165    3907
VITAMIN-A         INDIA                          1                          1       50    3907
ZVITAMBO          ZIMBABWE                       0                          0     7637   14074
ZVITAMBO          ZIMBABWE                       0                          1      566   14074
ZVITAMBO          ZIMBABWE                       1                          0     5321   14074
ZVITAMBO          ZIMBABWE                       1                          1      550   14074


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/93356f55-7f03-4c16-85c4-f4744d3d7fda/97920aec-7122-4092-bf34-f5866be07c60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/93356f55-7f03-4c16-85c4-f4744d3d7fda/97920aec-7122-4092-bf34-f5866be07c60/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/93356f55-7f03-4c16-85c4-f4744d3d7fda/97920aec-7122-4092-bf34-f5866be07c60/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/93356f55-7f03-4c16-85c4-f4744d3d7fda/97920aec-7122-4092-bf34-f5866be07c60/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0055296   0.0033679   0.0076913
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0088590   0.0052247   0.0124934
iLiNS-DOSE        MALAWI         0                    NA                0.0653635   0.0494063   0.0813207
iLiNS-DOSE        MALAWI         1                    NA                0.0686092   0.0523994   0.0848191
iLiNS-DYAD-M      MALAWI         0                    NA                0.0311812   0.0175381   0.0448242
iLiNS-DYAD-M      MALAWI         1                    NA                0.0405676   0.0244564   0.0566789
JiVitA-3          BANGLADESH     0                    NA                0.0211236   0.0184612   0.0237860
JiVitA-3          BANGLADESH     1                    NA                0.0411480   0.0373826   0.0449135
JiVitA-4          BANGLADESH     0                    NA                0.0066558   0.0026812   0.0106304
JiVitA-4          BANGLADESH     1                    NA                0.0109640   0.0075152   0.0144129
Keneba            GAMBIA         0                    NA                0.0281717   0.0188799   0.0374635
Keneba            GAMBIA         1                    NA                0.0395355   0.0296279   0.0494431
SAS-CompFeed      INDIA          0                    NA                0.0262402   0.0150429   0.0374375
SAS-CompFeed      INDIA          1                    NA                0.0356867   0.0179198   0.0534537
VITAMIN-A         INDIA          0                    NA                0.0159734   0.0100081   0.0219388
VITAMIN-A         INDIA          1                    NA                0.0225169   0.0163233   0.0287104
ZVITAMBO          ZIMBABWE       0                    NA                0.0707377   0.0650122   0.0764632
ZVITAMBO          ZIMBABWE       1                    NA                0.0916625   0.0841371   0.0991879


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0357143   0.0252276   0.0462010
JiVitA-3          BANGLADESH     NA                   NA                0.0309619   0.0288229   0.0331009
JiVitA-4          BANGLADESH     NA                   NA                0.0091878   0.0066008   0.0117748
Keneba            GAMBIA         NA                   NA                0.0339623   0.0273857   0.0405388
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0197082   0.0153493   0.0240672
ZVITAMBO          ZIMBABWE       NA                   NA                0.0792952   0.0748310   0.0837593


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.602103   0.9089762   2.823764
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.049657   0.7473538   1.474241
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.301031   0.7206507   2.348823
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.947966   1.6685941   2.274112
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.647293   0.8346947   3.250980
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.403378   0.9272790   2.123924
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.360002   0.6736292   2.745734
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.409644   0.8865382   2.241410
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.295808   1.1556428   1.452975


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0011705   -0.0003615   0.0027026
iLiNS-DOSE        MALAWI         0                    NA                0.0009234   -0.0106832   0.0125300
iLiNS-DYAD-M      MALAWI         0                    NA                0.0045331   -0.0054922   0.0145585
JiVitA-3          BANGLADESH     0                    NA                0.0098383    0.0074753   0.0122014
JiVitA-4          BANGLADESH     0                    NA                0.0025320   -0.0005711   0.0056351
Keneba            GAMBIA         0                    NA                0.0057906   -0.0017880   0.0133691
SAS-CompFeed      INDIA          0                    NA                0.0063756   -0.0089958   0.0217469
VITAMIN-A         INDIA          0                    NA                0.0037348   -0.0011364   0.0086060
ZVITAMBO          ZIMBABWE       0                    NA                0.0085574    0.0044221   0.0126928


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1747036   -0.0817481   0.3703579
iLiNS-DOSE        MALAWI         0                    NA                0.0139305   -0.1776574   0.1743498
iLiNS-DYAD-M      MALAWI         0                    NA                0.1269276   -0.2016155   0.3656411
JiVitA-3          BANGLADESH     0                    NA                0.3177554    0.2410125   0.3867387
JiVitA-4          BANGLADESH     0                    NA                0.2755833   -0.1648123   0.5494729
Keneba            GAMBIA         0                    NA                0.1705005   -0.0825083   0.3643749
SAS-CompFeed      INDIA          0                    NA                0.1954752   -0.3632458   0.5252065
VITAMIN-A         INDIA          0                    NA                0.1895035   -0.0947259   0.3999370
ZVITAMBO          ZIMBABWE       0                    NA                0.1079188    0.0545799   0.1582484
