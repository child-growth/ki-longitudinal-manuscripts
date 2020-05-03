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

studyid           country                        ever_stunted024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0     4565    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                          1       25    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          0     2551    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          1       23    7164  dead0plus        
EE                PAKISTAN                       0                          0       41     379  dead0plus        
EE                PAKISTAN                       0                          1        0     379  dead0plus        
EE                PAKISTAN                       1                          0      334     379  dead0plus        
EE                PAKISTAN                       1                          1        4     379  dead0plus        
GMS-Nepal         NEPAL                          0                          0      249     698  dead0plus        
GMS-Nepal         NEPAL                          0                          1        3     698  dead0plus        
GMS-Nepal         NEPAL                          1                          0      441     698  dead0plus        
GMS-Nepal         NEPAL                          1                          1        5     698  dead0plus        
iLiNS-DOSE        MALAWI                         0                          0      902    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                          1       62    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                          0      901    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                          1       66    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          0      612    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          1       20    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          0      549    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          1       23    1204  dead0plus        
JiVitA-3          BANGLADESH                     0                          0    13473   27227  dead0plus        
JiVitA-3          BANGLADESH                     0                          1      268   27227  dead0plus        
JiVitA-3          BANGLADESH                     1                          0    12911   27227  dead0plus        
JiVitA-3          BANGLADESH                     1                          1      575   27227  dead0plus        
JiVitA-4          BANGLADESH                     0                          0     2264    5442  dead0plus        
JiVitA-4          BANGLADESH                     0                          1       15    5442  dead0plus        
JiVitA-4          BANGLADESH                     1                          0     3128    5442  dead0plus        
JiVitA-4          BANGLADESH                     1                          1       35    5442  dead0plus        
Keneba            GAMBIA                         0                          0     1384    2915  dead0plus        
Keneba            GAMBIA                         0                          1       37    2915  dead0plus        
Keneba            GAMBIA                         1                          0     1432    2915  dead0plus        
Keneba            GAMBIA                         1                          1       62    2915  dead0plus        
MAL-ED            BANGLADESH                     0                          0      103     265  dead0plus        
MAL-ED            BANGLADESH                     0                          1        0     265  dead0plus        
MAL-ED            BANGLADESH                     1                          0      159     265  dead0plus        
MAL-ED            BANGLADESH                     1                          1        3     265  dead0plus        
MAL-ED            INDIA                          0                          0       98     251  dead0plus        
MAL-ED            INDIA                          0                          1        1     251  dead0plus        
MAL-ED            INDIA                          1                          0      151     251  dead0plus        
MAL-ED            INDIA                          1                          1        1     251  dead0plus        
MAL-ED            PERU                           0                          0      114     303  dead0plus        
MAL-ED            PERU                           0                          1        1     303  dead0plus        
MAL-ED            PERU                           1                          0      187     303  dead0plus        
MAL-ED            PERU                           1                          1        1     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          0      138     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          0      175     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0       39     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        1     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0      220     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        2     262  dead0plus        
PROVIDE           BANGLADESH                     0                          0      391     700  dead0plus        
PROVIDE           BANGLADESH                     0                          1        4     700  dead0plus        
PROVIDE           BANGLADESH                     1                          0      304     700  dead0plus        
PROVIDE           BANGLADESH                     1                          1        1     700  dead0plus        
SAS-CompFeed      INDIA                          0                          0      461    1533  dead0plus        
SAS-CompFeed      INDIA                          0                          1       12    1533  dead0plus        
SAS-CompFeed      INDIA                          1                          0     1022    1533  dead0plus        
SAS-CompFeed      INDIA                          1                          1       38    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                          0       71     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                          1        1     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          0      341     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          1        5     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1566    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      829    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                          0     1665    3907  dead0plus        
VITAMIN-A         INDIA                          0                          1       27    3907  dead0plus        
VITAMIN-A         INDIA                          1                          0     2165    3907  dead0plus        
VITAMIN-A         INDIA                          1                          1       50    3907  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          0     7637   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          1      566   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          0     5321   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          1      550   14074  dead0plus        


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
![](/tmp/31bff7b0-9fd6-4a2e-a609-4693756a813a/f16cb332-d015-4093-96a7-93b4cb021af0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/31bff7b0-9fd6-4a2e-a609-4693756a813a/f16cb332-d015-4093-96a7-93b4cb021af0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/31bff7b0-9fd6-4a2e-a609-4693756a813a/f16cb332-d015-4093-96a7-93b4cb021af0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/31bff7b0-9fd6-4a2e-a609-4693756a813a/f16cb332-d015-4093-96a7-93b4cb021af0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0055219   0.0033637   0.0076800
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0087546   0.0051490   0.0123602
iLiNS-DOSE        MALAWI         0                    NA                0.0654125   0.0494766   0.0813485
iLiNS-DOSE        MALAWI         1                    NA                0.0682242   0.0521181   0.0843303
iLiNS-DYAD-M      MALAWI         0                    NA                0.0306345   0.0169778   0.0442913
iLiNS-DYAD-M      MALAWI         1                    NA                0.0401041   0.0239431   0.0562652
JiVitA-3          BANGLADESH     0                    NA                0.0210719   0.0184045   0.0237393
JiVitA-3          BANGLADESH     1                    NA                0.0409052   0.0371721   0.0446383
JiVitA-4          BANGLADESH     0                    NA                0.0066789   0.0026967   0.0106612
JiVitA-4          BANGLADESH     1                    NA                0.0110055   0.0075516   0.0144595
Keneba            GAMBIA         0                    NA                0.0283145   0.0188856   0.0377434
Keneba            GAMBIA         1                    NA                0.0410014   0.0307836   0.0512192
SAS-CompFeed      INDIA          0                    NA                0.0262402   0.0150429   0.0374375
SAS-CompFeed      INDIA          1                    NA                0.0356867   0.0179198   0.0534537
VITAMIN-A         INDIA          0                    NA                0.0160154   0.0100557   0.0219751
VITAMIN-A         INDIA          1                    NA                0.0225710   0.0163854   0.0287567
ZVITAMBO          ZIMBABWE       0                    NA                0.0707356   0.0649912   0.0764800
ZVITAMBO          ZIMBABWE       1                    NA                0.0919382   0.0844123   0.0994641


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
Burkina Faso Zn   BURKINA FASO   1                    0                 1.585438   0.8984956   2.797582
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.042983   0.7428941   1.464291
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.309116   0.7178846   2.387271
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.941220   1.6619850   2.267371
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.647796   0.8358533   3.248455
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.448069   0.9551632   2.195336
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.360002   0.6736292   2.745734
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.409334   0.8877853   2.237277
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.299745   1.1592212   1.457305


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0011783   -0.0003519   0.0027085
iLiNS-DOSE        MALAWI         0                    NA                0.0008743   -0.0107022   0.0124509
iLiNS-DYAD-M      MALAWI         0                    NA                0.0050798   -0.0049609   0.0151205
JiVitA-3          BANGLADESH     0                    NA                0.0098900    0.0075086   0.0122714
JiVitA-4          BANGLADESH     0                    NA                0.0025089   -0.0006017   0.0056194
Keneba            GAMBIA         0                    NA                0.0056477   -0.0020537   0.0133491
SAS-CompFeed      INDIA          0                    NA                0.0063756   -0.0089958   0.0217469
VITAMIN-A         INDIA          0                    NA                0.0036928   -0.0011756   0.0085613
ZVITAMBO          ZIMBABWE       0                    NA                0.0085596    0.0044066   0.0127126


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1758622   -0.0801713   0.3712080
iLiNS-DOSE        MALAWI         0                    NA                0.0131904   -0.1778437   0.1732407
iLiNS-DYAD-M      MALAWI         0                    NA                0.1422335   -0.1880708   0.3807075
JiVitA-3          BANGLADESH     0                    NA                0.3194248    0.2421353   0.3888321
JiVitA-4          BANGLADESH     0                    NA                0.2730639   -0.1681098   0.5476144
Keneba            GAMBIA         0                    NA                0.1662944   -0.0915987   0.3632596
SAS-CompFeed      INDIA          0                    NA                0.1954752   -0.3632458   0.5252065
VITAMIN-A         INDIA          0                    NA                0.1873748   -0.0964903   0.3977514
ZVITAMBO          ZIMBABWE       0                    NA                0.1079460    0.0543570   0.1584982
