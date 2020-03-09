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

studyid           country                        ever_sstunted024    dead   n_cell       n
----------------  -----------------------------  -----------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                      0     6268    7164
Burkina Faso Zn   BURKINA FASO                   0                      1       33    7164
Burkina Faso Zn   BURKINA FASO                   1                      0      857    7164
Burkina Faso Zn   BURKINA FASO                   1                      1        6    7164
EE                PAKISTAN                       0                      0      151     379
EE                PAKISTAN                       0                      1        0     379
EE                PAKISTAN                       1                      0      224     379
EE                PAKISTAN                       1                      1        4     379
GMS-Nepal         NEPAL                          0                      0      525     698
GMS-Nepal         NEPAL                          0                      1        4     698
GMS-Nepal         NEPAL                          1                      0      165     698
GMS-Nepal         NEPAL                          1                      1        4     698
iLiNS-DOSE        MALAWI                         0                      0     1487    1931
iLiNS-DOSE        MALAWI                         0                      1      102    1931
iLiNS-DOSE        MALAWI                         1                      0      316    1931
iLiNS-DOSE        MALAWI                         1                      1       26    1931
iLiNS-DYAD-M      MALAWI                         0                      0      976    1204
iLiNS-DYAD-M      MALAWI                         0                      1       31    1204
iLiNS-DYAD-M      MALAWI                         1                      0      189    1204
iLiNS-DYAD-M      MALAWI                         1                      1        8    1204
JiVitA-3          BANGLADESH                     0                      0    21774   27227
JiVitA-3          BANGLADESH                     0                      1      431   27227
JiVitA-3          BANGLADESH                     1                      0     4651   27227
JiVitA-3          BANGLADESH                     1                      1      371   27227
JiVitA-4          BANGLADESH                     0                      0     4305    5442
JiVitA-4          BANGLADESH                     0                      1       31    5442
JiVitA-4          BANGLADESH                     1                      0     1088    5442
JiVitA-4          BANGLADESH                     1                      1       18    5442
Keneba            GAMBIA                         0                      0     2254    2915
Keneba            GAMBIA                         0                      1       42    2915
Keneba            GAMBIA                         1                      0      597    2915
Keneba            GAMBIA                         1                      1       22    2915
MAL-ED            BANGLADESH                     0                      0      205     265
MAL-ED            BANGLADESH                     0                      1        2     265
MAL-ED            BANGLADESH                     1                      0       57     265
MAL-ED            BANGLADESH                     1                      1        1     265
MAL-ED            INDIA                          0                      0      190     251
MAL-ED            INDIA                          0                      1        2     251
MAL-ED            INDIA                          1                      0       59     251
MAL-ED            INDIA                          1                      1        0     251
MAL-ED            PERU                           0                      0      237     303
MAL-ED            PERU                           0                      1        2     303
MAL-ED            PERU                           1                      0       64     303
MAL-ED            PERU                           1                      1        0     303
MAL-ED            SOUTH AFRICA                   0                      0      241     314
MAL-ED            SOUTH AFRICA                   0                      1        0     314
MAL-ED            SOUTH AFRICA                   1                      0       72     314
MAL-ED            SOUTH AFRICA                   1                      1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                      0      123     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                      1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                      0      136     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                      1        1     262
PROVIDE           BANGLADESH                     0                      0      601     700
PROVIDE           BANGLADESH                     0                      1        4     700
PROVIDE           BANGLADESH                     1                      0       95     700
PROVIDE           BANGLADESH                     1                      1        0     700
SAS-CompFeed      INDIA                          0                      0      999    1533
SAS-CompFeed      INDIA                          0                      1       27    1533
SAS-CompFeed      INDIA                          1                      0      484    1533
SAS-CompFeed      INDIA                          1                      1       23    1533
SAS-FoodSuppl     INDIA                          0                      0      215     418
SAS-FoodSuppl     INDIA                          0                      1        2     418
SAS-FoodSuppl     INDIA                          1                      0      197     418
SAS-FoodSuppl     INDIA                          1                      1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      0     2156    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      0      239    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      1        0    2396
VITAMIN-A         INDIA                          0                      0     2897    3907
VITAMIN-A         INDIA                          0                      1       49    3907
VITAMIN-A         INDIA                          1                      0      933    3907
VITAMIN-A         INDIA                          1                      1       28    3907
ZVITAMBO          ZIMBABWE                       0                      0    10893   14074
ZVITAMBO          ZIMBABWE                       0                      1      815   14074
ZVITAMBO          ZIMBABWE                       1                      0     2075   14074
ZVITAMBO          ZIMBABWE                       1                      1      291   14074


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
![](/tmp/440390e2-1256-4e0d-a2d4-68ddc921fd5d/1b177bca-0594-4013-b84b-7b90c04510b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/440390e2-1256-4e0d-a2d4-68ddc921fd5d/1b177bca-0594-4013-b84b-7b90c04510b6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/440390e2-1256-4e0d-a2d4-68ddc921fd5d/1b177bca-0594-4013-b84b-7b90c04510b6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/440390e2-1256-4e0d-a2d4-68ddc921fd5d/1b177bca-0594-4013-b84b-7b90c04510b6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052373   0.0034549   0.0070196
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0069525   0.0014084   0.0124966
iLiNS-DOSE        MALAWI         0                    NA                0.0643965   0.0523066   0.0764863
iLiNS-DOSE        MALAWI         1                    NA                0.0736249   0.0456117   0.1016381
iLiNS-DYAD-M      MALAWI         0                    NA                0.0307845   0.0201114   0.0414576
iLiNS-DYAD-M      MALAWI         1                    NA                0.0406091   0.0130348   0.0681835
JiVitA-3          BANGLADESH     0                    NA                0.0197648   0.0178781   0.0216516
JiVitA-3          BANGLADESH     1                    NA                0.0752703   0.0658240   0.0847166
JiVitA-4          BANGLADESH     0                    NA                0.0071723   0.0045722   0.0097724
JiVitA-4          BANGLADESH     1                    NA                0.0163442   0.0091521   0.0235364
Keneba            GAMBIA         0                    NA                0.0183030   0.0128067   0.0237992
Keneba            GAMBIA         1                    NA                0.0362350   0.0211825   0.0512876
SAS-CompFeed      INDIA          0                    NA                0.0269067   0.0144685   0.0393449
SAS-CompFeed      INDIA          1                    NA                0.0448952   0.0279112   0.0618792
VITAMIN-A         INDIA          0                    NA                0.0164688   0.0118859   0.0210517
VITAMIN-A         INDIA          1                    NA                0.0290611   0.0184814   0.0396408
ZVITAMBO          ZIMBABWE       0                    NA                0.0705932   0.0659247   0.0752616
ZVITAMBO          ZIMBABWE       1                    NA                0.1194263   0.1058685   0.1329841


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
iLiNS-DOSE        MALAWI         1                    0                 1.143307   0.7479881   1.747554
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.319142   0.6154336   2.827495
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.808293   3.2470553   4.466538
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.278805   1.2912596   4.021616
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.979733   1.1855784   3.305848
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.668551   1.1695299   2.380498
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.764616   1.1158096   2.790682
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.691755   1.4841985   1.928337


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0002066   -0.0004950   0.0009083
iLiNS-DOSE        MALAWI         0                    NA                0.0018904   -0.0035673   0.0073482
iLiNS-DYAD-M      MALAWI         0                    NA                0.0016075   -0.0032348   0.0064498
JiVitA-3          BANGLADESH     0                    NA                0.0096912    0.0081660   0.0112165
JiVitA-4          BANGLADESH     0                    NA                0.0018318    0.0002781   0.0033854
Keneba            GAMBIA         0                    NA                0.0036524    0.0003186   0.0069862
SAS-CompFeed      INDIA          0                    NA                0.0057091    0.0015636   0.0098545
VITAMIN-A         INDIA          0                    NA                0.0032394    0.0003949   0.0060840
ZVITAMBO          ZIMBABWE       0                    NA                0.0079915    0.0055647   0.0104183


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0379549   -0.0993426   0.1581052
iLiNS-DOSE        MALAWI         0                    NA                0.0285189   -0.0572646   0.1073422
iLiNS-DYAD-M      MALAWI         0                    NA                0.0496270   -0.1113989   0.1873225
JiVitA-3          BANGLADESH     0                    NA                0.3290060    0.2822751   0.3726943
JiVitA-4          BANGLADESH     0                    NA                0.2034386    0.0183703   0.3536157
Keneba            GAMBIA         0                    NA                0.1663559    0.0060322   0.3008199
SAS-CompFeed      INDIA          0                    NA                0.1750404    0.0256850   0.3015006
VITAMIN-A         INDIA          0                    NA                0.1643692    0.0120565   0.2931996
ZVITAMBO          ZIMBABWE       0                    NA                0.1016926    0.0707890   0.1315684
