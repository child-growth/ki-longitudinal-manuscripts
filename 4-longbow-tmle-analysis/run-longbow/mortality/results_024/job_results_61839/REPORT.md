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

**Intervention Variable:** ever_sstunted024

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

studyid           country                        ever_sstunted024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                           0     6264    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                           1       37    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                           0      852    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                           1       11    7164  dead0plus        
EE                PAKISTAN                       0                           0      151     379  dead0plus        
EE                PAKISTAN                       0                           1        0     379  dead0plus        
EE                PAKISTAN                       1                           0      224     379  dead0plus        
EE                PAKISTAN                       1                           1        4     379  dead0plus        
GMS-Nepal         NEPAL                          0                           0      525     698  dead0plus        
GMS-Nepal         NEPAL                          0                           1        4     698  dead0plus        
GMS-Nepal         NEPAL                          1                           0      165     698  dead0plus        
GMS-Nepal         NEPAL                          1                           1        4     698  dead0plus        
iLiNS-DOSE        MALAWI                         0                           0     1487    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                           1      102    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                           0      316    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                           1       26    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                           0      973    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                           1       34    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                           0      188    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                           1        9    1204  dead0plus        
JiVitA-3          BANGLADESH                     0                           0    21747   27227  dead0plus        
JiVitA-3          BANGLADESH                     0                           1      458   27227  dead0plus        
JiVitA-3          BANGLADESH                     1                           0     4637   27227  dead0plus        
JiVitA-3          BANGLADESH                     1                           1      385   27227  dead0plus        
JiVitA-4          BANGLADESH                     0                           0     4305    5442  dead0plus        
JiVitA-4          BANGLADESH                     0                           1       31    5442  dead0plus        
JiVitA-4          BANGLADESH                     1                           0     1087    5442  dead0plus        
JiVitA-4          BANGLADESH                     1                           1       19    5442  dead0plus        
Keneba            GAMBIA                         0                           0     2233    2915  dead0plus        
Keneba            GAMBIA                         0                           1       63    2915  dead0plus        
Keneba            GAMBIA                         1                           0      583    2915  dead0plus        
Keneba            GAMBIA                         1                           1       36    2915  dead0plus        
MAL-ED            BANGLADESH                     0                           0      205     265  dead0plus        
MAL-ED            BANGLADESH                     0                           1        2     265  dead0plus        
MAL-ED            BANGLADESH                     1                           0       57     265  dead0plus        
MAL-ED            BANGLADESH                     1                           1        1     265  dead0plus        
MAL-ED            INDIA                          0                           0      190     251  dead0plus        
MAL-ED            INDIA                          0                           1        2     251  dead0plus        
MAL-ED            INDIA                          1                           0       59     251  dead0plus        
MAL-ED            INDIA                          1                           1        0     251  dead0plus        
MAL-ED            PERU                           0                           0      237     303  dead0plus        
MAL-ED            PERU                           0                           1        2     303  dead0plus        
MAL-ED            PERU                           1                           0       64     303  dead0plus        
MAL-ED            PERU                           1                           1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                           0      241     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                           1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                           0       72     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                           1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           0      123     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           0      136     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                           0      601     700  dead0plus        
PROVIDE           BANGLADESH                     0                           1        4     700  dead0plus        
PROVIDE           BANGLADESH                     1                           0       94     700  dead0plus        
PROVIDE           BANGLADESH                     1                           1        1     700  dead0plus        
SAS-CompFeed      INDIA                          0                           0      999    1533  dead0plus        
SAS-CompFeed      INDIA                          0                           1       27    1533  dead0plus        
SAS-CompFeed      INDIA                          1                           0      484    1533  dead0plus        
SAS-CompFeed      INDIA                          1                           1       23    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                           0      215     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                           1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                           0      197     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                           1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     2156    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      239    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                           0     2897    3907  dead0plus        
VITAMIN-A         INDIA                          0                           1       49    3907  dead0plus        
VITAMIN-A         INDIA                          1                           0      933    3907  dead0plus        
VITAMIN-A         INDIA                          1                           1       28    3907  dead0plus        
ZVITAMBO          ZIMBABWE                       0                           0    10885   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       0                           1      823   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       1                           0     2073   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       1                           1      293   14074  dead0plus        


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7fe8b3a1-0c9e-4299-b780-36c87d72682c/8c884942-1f1b-4efd-a635-02dcba7096d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7fe8b3a1-0c9e-4299-b780-36c87d72682c/8c884942-1f1b-4efd-a635-02dcba7096d9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7fe8b3a1-0c9e-4299-b780-36c87d72682c/8c884942-1f1b-4efd-a635-02dcba7096d9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7fe8b3a1-0c9e-4299-b780-36c87d72682c/8c884942-1f1b-4efd-a635-02dcba7096d9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0059127   0.0040155   0.0078099
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0117819   0.0046453   0.0189185
iLiNS-DOSE        MALAWI         0                    NA                0.0643957   0.0522862   0.0765052
iLiNS-DOSE        MALAWI         1                    NA                0.0773752   0.0477329   0.1070176
iLiNS-DYAD-M      MALAWI         0                    NA                0.0337637   0.0226032   0.0449241
iLiNS-DYAD-M      MALAWI         1                    NA                0.0456853   0.0165158   0.0748548
JiVitA-3          BANGLADESH     0                    NA                0.0209873   0.0190653   0.0229093
JiVitA-3          BANGLADESH     1                    NA                0.0773004   0.0676398   0.0869610
JiVitA-4          BANGLADESH     0                    NA                0.0071703   0.0045697   0.0097710
JiVitA-4          BANGLADESH     1                    NA                0.0171729   0.0096406   0.0247052
Keneba            GAMBIA         0                    NA                0.0273985   0.0207079   0.0340891
Keneba            GAMBIA         1                    NA                0.0575069   0.0386540   0.0763597
SAS-CompFeed      INDIA          0                    NA                0.0269067   0.0144685   0.0393449
SAS-CompFeed      INDIA          1                    NA                0.0448952   0.0279112   0.0618792
VITAMIN-A         INDIA          0                    NA                0.0165618   0.0119553   0.0211683
VITAMIN-A         INDIA          1                    NA                0.0292819   0.0186279   0.0399359
ZVITAMBO          ZIMBABWE       0                    NA                0.0708464   0.0661834   0.0755095
ZVITAMBO          ZIMBABWE       1                    NA                0.1197824   0.1062291   0.1333356


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
Burkina Faso Zn   BURKINA FASO   1                    0                 1.992648   1.0040521   3.954623
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.201559   0.7841326   1.841199
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.353090   0.6592941   2.776991
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.683194   3.1508069   4.305537
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.394989   1.3571464   4.226494
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.098908   1.3944371   3.159278
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.668551   1.1695299   2.380498
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.768040   1.1184066   2.795018
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.690732   1.4840111   1.926249


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0007875   -0.0001465   0.0017216
iLiNS-DOSE        MALAWI         0                    NA                0.0018912   -0.0036052   0.0073876
iLiNS-DYAD-M      MALAWI         0                    NA                0.0019506   -0.0031656   0.0070669
JiVitA-3          BANGLADESH     0                    NA                0.0099746    0.0084019   0.0115472
JiVitA-4          BANGLADESH     0                    NA                0.0020175    0.0003951   0.0036398
Keneba            GAMBIA         0                    NA                0.0065638    0.0023482   0.0107794
SAS-CompFeed      INDIA          0                    NA                0.0057091    0.0015636   0.0098545
VITAMIN-A         INDIA          0                    NA                0.0031464    0.0002932   0.0059997
ZVITAMBO          ZIMBABWE       0                    NA                0.0084487    0.0060299   0.0108676


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1175350   -0.0287808   0.2430414
iLiNS-DOSE        MALAWI         0                    NA                0.0285305   -0.0578902   0.1078913
iLiNS-DYAD-M      MALAWI         0                    NA                0.0546177   -0.0990865   0.1868267
JiVitA-3          BANGLADESH     0                    NA                0.3221567    0.2765524   0.3648861
JiVitA-4          BANGLADESH     0                    NA                0.2195804    0.0316976   0.3710076
Keneba            GAMBIA         0                    NA                0.1932674    0.0654202   0.3036256
SAS-CompFeed      INDIA          0                    NA                0.1750404    0.0256850   0.3015006
VITAMIN-A         INDIA          0                    NA                0.1596505    0.0065870   0.2891303
ZVITAMBO          ZIMBABWE       0                    NA                0.1065478    0.0760709   0.1360194
