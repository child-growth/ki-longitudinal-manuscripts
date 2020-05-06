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

**Outcome Variable:** dead

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

studyid           country                        ever_sstunted024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                      0     6268    7164  dead             
Burkina Faso Zn   BURKINA FASO                   0                      1       33    7164  dead             
Burkina Faso Zn   BURKINA FASO                   1                      0      857    7164  dead             
Burkina Faso Zn   BURKINA FASO                   1                      1        6    7164  dead             
EE                PAKISTAN                       0                      0      151     379  dead             
EE                PAKISTAN                       0                      1        0     379  dead             
EE                PAKISTAN                       1                      0      224     379  dead             
EE                PAKISTAN                       1                      1        4     379  dead             
GMS-Nepal         NEPAL                          0                      0      525     698  dead             
GMS-Nepal         NEPAL                          0                      1        4     698  dead             
GMS-Nepal         NEPAL                          1                      0      165     698  dead             
GMS-Nepal         NEPAL                          1                      1        4     698  dead             
iLiNS-DOSE        MALAWI                         0                      0     1487    1931  dead             
iLiNS-DOSE        MALAWI                         0                      1      102    1931  dead             
iLiNS-DOSE        MALAWI                         1                      0      316    1931  dead             
iLiNS-DOSE        MALAWI                         1                      1       26    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                      0      976    1204  dead             
iLiNS-DYAD-M      MALAWI                         0                      1       31    1204  dead             
iLiNS-DYAD-M      MALAWI                         1                      0      189    1204  dead             
iLiNS-DYAD-M      MALAWI                         1                      1        8    1204  dead             
JiVitA-3          BANGLADESH                     0                      0    21774   27227  dead             
JiVitA-3          BANGLADESH                     0                      1      431   27227  dead             
JiVitA-3          BANGLADESH                     1                      0     4651   27227  dead             
JiVitA-3          BANGLADESH                     1                      1      371   27227  dead             
JiVitA-4          BANGLADESH                     0                      0     4305    5442  dead             
JiVitA-4          BANGLADESH                     0                      1       31    5442  dead             
JiVitA-4          BANGLADESH                     1                      0     1088    5442  dead             
JiVitA-4          BANGLADESH                     1                      1       18    5442  dead             
Keneba            GAMBIA                         0                      0     2254    2915  dead             
Keneba            GAMBIA                         0                      1       42    2915  dead             
Keneba            GAMBIA                         1                      0      597    2915  dead             
Keneba            GAMBIA                         1                      1       22    2915  dead             
MAL-ED            BANGLADESH                     0                      0      205     265  dead             
MAL-ED            BANGLADESH                     0                      1        2     265  dead             
MAL-ED            BANGLADESH                     1                      0       57     265  dead             
MAL-ED            BANGLADESH                     1                      1        1     265  dead             
MAL-ED            INDIA                          0                      0      190     251  dead             
MAL-ED            INDIA                          0                      1        2     251  dead             
MAL-ED            INDIA                          1                      0       59     251  dead             
MAL-ED            INDIA                          1                      1        0     251  dead             
MAL-ED            PERU                           0                      0      237     303  dead             
MAL-ED            PERU                           0                      1        2     303  dead             
MAL-ED            PERU                           1                      0       64     303  dead             
MAL-ED            PERU                           1                      1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                      0      241     314  dead             
MAL-ED            SOUTH AFRICA                   0                      1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                      0       72     314  dead             
MAL-ED            SOUTH AFRICA                   1                      1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                      0      123     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                      1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                      0      136     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                      1        1     262  dead             
PROVIDE           BANGLADESH                     0                      0      601     700  dead             
PROVIDE           BANGLADESH                     0                      1        4     700  dead             
PROVIDE           BANGLADESH                     1                      0       95     700  dead             
PROVIDE           BANGLADESH                     1                      1        0     700  dead             
SAS-CompFeed      INDIA                          0                      0      999    1533  dead             
SAS-CompFeed      INDIA                          0                      1       27    1533  dead             
SAS-CompFeed      INDIA                          1                      0      484    1533  dead             
SAS-CompFeed      INDIA                          1                      1       23    1533  dead             
SAS-FoodSuppl     INDIA                          0                      0      215     418  dead             
SAS-FoodSuppl     INDIA                          0                      1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                      0      197     418  dead             
SAS-FoodSuppl     INDIA                          1                      1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      0     2156    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      0      239    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      1        0    2396  dead             
VITAMIN-A         INDIA                          0                      0     2897    3907  dead             
VITAMIN-A         INDIA                          0                      1       49    3907  dead             
VITAMIN-A         INDIA                          1                      0      933    3907  dead             
VITAMIN-A         INDIA                          1                      1       28    3907  dead             
ZVITAMBO          ZIMBABWE                       0                      0    10893   14074  dead             
ZVITAMBO          ZIMBABWE                       0                      1      815   14074  dead             
ZVITAMBO          ZIMBABWE                       1                      0     2075   14074  dead             
ZVITAMBO          ZIMBABWE                       1                      1      291   14074  dead             


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
![](/tmp/7eeb558d-4426-4a94-a69a-070f7b06a3d9/0760c17f-8450-42e3-99fe-bd6c5ac087a6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7eeb558d-4426-4a94-a69a-070f7b06a3d9/0760c17f-8450-42e3-99fe-bd6c5ac087a6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7eeb558d-4426-4a94-a69a-070f7b06a3d9/0760c17f-8450-42e3-99fe-bd6c5ac087a6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7eeb558d-4426-4a94-a69a-070f7b06a3d9/0760c17f-8450-42e3-99fe-bd6c5ac087a6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052373   0.0034549   0.0070196
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0069525   0.0014084   0.0124966
iLiNS-DOSE        MALAWI         0                    NA                0.0642492   0.0521780   0.0763205
iLiNS-DOSE        MALAWI         1                    NA                0.0772829   0.0482259   0.1063399
iLiNS-DYAD-M      MALAWI         0                    NA                0.0307845   0.0201114   0.0414576
iLiNS-DYAD-M      MALAWI         1                    NA                0.0406091   0.0130348   0.0681835
JiVitA-3          BANGLADESH     0                    NA                0.0198771   0.0179783   0.0217758
JiVitA-3          BANGLADESH     1                    NA                0.0742561   0.0648941   0.0836180
JiVitA-4          BANGLADESH     0                    NA                0.0071749   0.0045734   0.0097764
JiVitA-4          BANGLADESH     1                    NA                0.0161606   0.0090116   0.0233096
Keneba            GAMBIA         0                    NA                0.0183353   0.0128261   0.0238445
Keneba            GAMBIA         1                    NA                0.0347156   0.0200610   0.0493703
SAS-CompFeed      INDIA          0                    NA                0.0269067   0.0144685   0.0393449
SAS-CompFeed      INDIA          1                    NA                0.0448952   0.0279112   0.0618792
VITAMIN-A         INDIA          0                    NA                0.0165320   0.0119386   0.0211255
VITAMIN-A         INDIA          1                    NA                0.0288811   0.0183141   0.0394481
ZVITAMBO          ZIMBABWE       0                    NA                0.0705128   0.0658463   0.0751793
ZVITAMBO          ZIMBABWE       1                    NA                0.1196587   0.1060789   0.1332385


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054439   0.0037399   0.0071479
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0323920   0.0223878   0.0423963
JiVitA-3          BANGLADESH     NA                   NA                0.0294561   0.0273691   0.0315430
JiVitA-4          BANGLADESH     NA                   NA                0.0090040   0.0064549   0.0115532
Keneba            GAMBIA         NA                   NA                0.0219554   0.0166349   0.0272759
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0197082   0.0153493   0.0240672
ZVITAMBO          ZIMBABWE       NA                   NA                0.0785846   0.0741388   0.0830304


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.327505   0.5578291   3.159154
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.202861   0.7900785   1.831305
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.319142   0.6154336   2.827495
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.735762   3.1847651   4.382086
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.252371   1.2740528   3.981918
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.893378   1.1276348   3.179115
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.668551   1.1695299   2.380498
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.746975   1.1033015   2.766173
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.696978   1.4889609   1.934056


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0002066   -0.0004950   0.0009083
iLiNS-DOSE        MALAWI         0                    NA                0.0020377   -0.0034186   0.0074940
iLiNS-DYAD-M      MALAWI         0                    NA                0.0016075   -0.0032348   0.0064498
JiVitA-3          BANGLADESH     0                    NA                0.0095790    0.0080426   0.0111153
JiVitA-4          BANGLADESH     0                    NA                0.0018291    0.0002743   0.0033839
Keneba            GAMBIA         0                    NA                0.0036201    0.0002757   0.0069645
SAS-CompFeed      INDIA          0                    NA                0.0057091    0.0015636   0.0098545
VITAMIN-A         INDIA          0                    NA                0.0031762    0.0003266   0.0060257
ZVITAMBO          ZIMBABWE       0                    NA                0.0080718    0.0056494   0.0104942


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0379549   -0.0993426   0.1581052
iLiNS-DOSE        MALAWI         0                    NA                0.0307401   -0.0550092   0.1095199
iLiNS-DYAD-M      MALAWI         0                    NA                0.0496270   -0.1113989   0.1873225
JiVitA-3          BANGLADESH     0                    NA                0.3251952    0.2779486   0.3693504
JiVitA-4          BANGLADESH     0                    NA                0.2031434    0.0178950   0.3534495
Keneba            GAMBIA         0                    NA                0.1648846    0.0038934   0.2998563
SAS-CompFeed      INDIA          0                    NA                0.1750404    0.0256850   0.3015006
VITAMIN-A         INDIA          0                    NA                0.1611600    0.0084706   0.2903362
ZVITAMBO          ZIMBABWE       0                    NA                0.1027148    0.0718684   0.1325361
