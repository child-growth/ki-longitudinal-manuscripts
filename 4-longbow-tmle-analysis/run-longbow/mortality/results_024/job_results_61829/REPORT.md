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

**Outcome Variable:** dead624

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

studyid           country                        ever_sstunted024    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0     6266    7162  dead624          
Burkina Faso Zn   BURKINA FASO                   0                         1       33    7162  dead624          
Burkina Faso Zn   BURKINA FASO                   1                         0      857    7162  dead624          
Burkina Faso Zn   BURKINA FASO                   1                         1        6    7162  dead624          
EE                PAKISTAN                       0                         0      147     374  dead624          
EE                PAKISTAN                       0                         1        0     374  dead624          
EE                PAKISTAN                       1                         0      223     374  dead624          
EE                PAKISTAN                       1                         1        4     374  dead624          
GMS-Nepal         NEPAL                          0                         0      434     592  dead624          
GMS-Nepal         NEPAL                          0                         1        1     592  dead624          
GMS-Nepal         NEPAL                          1                         0      156     592  dead624          
GMS-Nepal         NEPAL                          1                         1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                         0     1433    1874  dead624          
iLiNS-DOSE        MALAWI                         0                         1      102    1874  dead624          
iLiNS-DOSE        MALAWI                         1                         0      314    1874  dead624          
iLiNS-DOSE        MALAWI                         1                         1       25    1874  dead624          
iLiNS-DYAD-M      MALAWI                         0                         0      951    1161  dead624          
iLiNS-DYAD-M      MALAWI                         0                         1       18    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                         0      186    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                         1        6    1161  dead624          
JiVitA-3          BANGLADESH                     0                         0    17066   21039  dead624          
JiVitA-3          BANGLADESH                     0                         1      175   21039  dead624          
JiVitA-3          BANGLADESH                     1                         0     3703   21039  dead624          
JiVitA-3          BANGLADESH                     1                         1       95   21039  dead624          
JiVitA-4          BANGLADESH                     0                         0     4296    5432  dead624          
JiVitA-4          BANGLADESH                     0                         1       31    5432  dead624          
JiVitA-4          BANGLADESH                     1                         0     1087    5432  dead624          
JiVitA-4          BANGLADESH                     1                         1       18    5432  dead624          
Keneba            GAMBIA                         0                         0     2122    2748  dead624          
Keneba            GAMBIA                         0                         1       25    2748  dead624          
Keneba            GAMBIA                         1                         0      582    2748  dead624          
Keneba            GAMBIA                         1                         1       19    2748  dead624          
MAL-ED            BANGLADESH                     0                         0      187     240  dead624          
MAL-ED            BANGLADESH                     0                         1        0     240  dead624          
MAL-ED            BANGLADESH                     1                         0       53     240  dead624          
MAL-ED            BANGLADESH                     1                         1        0     240  dead624          
MAL-ED            INDIA                          0                         0      177     235  dead624          
MAL-ED            INDIA                          0                         1        0     235  dead624          
MAL-ED            INDIA                          1                         0       58     235  dead624          
MAL-ED            INDIA                          1                         1        0     235  dead624          
MAL-ED            PERU                           0                         0      213     273  dead624          
MAL-ED            PERU                           0                         1        1     273  dead624          
MAL-ED            PERU                           1                         0       59     273  dead624          
MAL-ED            PERU                           1                         1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                         0      191     261  dead624          
MAL-ED            SOUTH AFRICA                   0                         1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                         0       70     261  dead624          
MAL-ED            SOUTH AFRICA                   1                         1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      112     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      133     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead624          
PROVIDE           BANGLADESH                     0                         0      522     617  dead624          
PROVIDE           BANGLADESH                     0                         1        2     617  dead624          
PROVIDE           BANGLADESH                     1                         0       93     617  dead624          
PROVIDE           BANGLADESH                     1                         1        0     617  dead624          
SAS-CompFeed      INDIA                          0                         0      909    1389  dead624          
SAS-CompFeed      INDIA                          0                         1        3    1389  dead624          
SAS-CompFeed      INDIA                          1                         0      468    1389  dead624          
SAS-CompFeed      INDIA                          1                         1        9    1389  dead624          
SAS-FoodSuppl     INDIA                          0                         0      201     402  dead624          
SAS-FoodSuppl     INDIA                          0                         1        0     402  dead624          
SAS-FoodSuppl     INDIA                          1                         0      197     402  dead624          
SAS-FoodSuppl     INDIA                          1                         1        4     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1867    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      229    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead624          
VITAMIN-A         INDIA                          0                         0     2682    3614  dead624          
VITAMIN-A         INDIA                          0                         1       19    3614  dead624          
VITAMIN-A         INDIA                          1                         0      901    3614  dead624          
VITAMIN-A         INDIA                          1                         1       12    3614  dead624          
ZVITAMBO          ZIMBABWE                       0                         0     9311   11708  dead624          
ZVITAMBO          ZIMBABWE                       0                         1      243   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                         0     1991   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                         1      163   11708  dead624          


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
* studyid: SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/ebba6531-3e69-4a5c-98da-6782e881950a/00090f06-ec07-4d53-a3e4-79de4c5b398e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ebba6531-3e69-4a5c-98da-6782e881950a/00090f06-ec07-4d53-a3e4-79de4c5b398e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ebba6531-3e69-4a5c-98da-6782e881950a/00090f06-ec07-4d53-a3e4-79de4c5b398e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ebba6531-3e69-4a5c-98da-6782e881950a/00090f06-ec07-4d53-a3e4-79de4c5b398e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052389   0.0034560   0.0070218
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0069525   0.0014084   0.0124966
iLiNS-DOSE        MALAWI         0                    NA                0.0667423   0.0541946   0.0792899
iLiNS-DOSE        MALAWI         1                    NA                0.0743973   0.0455312   0.1032633
iLiNS-DYAD-M      MALAWI         0                    NA                0.0185759   0.0100708   0.0270809
iLiNS-DYAD-M      MALAWI         1                    NA                0.0312500   0.0066284   0.0558716
JiVitA-3          BANGLADESH     0                    NA                0.0103322   0.0087819   0.0118825
JiVitA-3          BANGLADESH     1                    NA                0.0261695   0.0199018   0.0324371
JiVitA-4          BANGLADESH     0                    NA                0.0071854   0.0045815   0.0097894
JiVitA-4          BANGLADESH     1                    NA                0.0163153   0.0091587   0.0234720
Keneba            GAMBIA         0                    NA                0.0116097   0.0070683   0.0161510
Keneba            GAMBIA         1                    NA                0.0313337   0.0170200   0.0456475
VITAMIN-A         INDIA          0                    NA                0.0070890   0.0039142   0.0102638
VITAMIN-A         INDIA          1                    NA                0.0129310   0.0056359   0.0202261
ZVITAMBO          ZIMBABWE       0                    NA                0.0261930   0.0229505   0.0294356
ZVITAMBO          ZIMBABWE       1                    NA                0.0738461   0.0623293   0.0853628


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054454   0.0037409   0.0071499
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
JiVitA-3          BANGLADESH     NA                   NA                0.0128333   0.0112834   0.0143832
JiVitA-4          BANGLADESH     NA                   NA                0.0090206   0.0064715   0.0115698
Keneba            GAMBIA         NA                   NA                0.0160116   0.0113178   0.0207055
VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ZVITAMBO          ZIMBABWE       NA                   NA                0.0346771   0.0313629   0.0379914


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.327083   0.5576521   3.158151
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.114695   0.7242776   1.715564
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.682292   0.6763082   4.184638
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.532808   1.9101578   3.358424
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.270610   1.2883930   4.001627
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.698935   1.4788118   4.925745
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.824089   0.8878767   3.747482
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.819300   2.3108141   3.439676


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0002065   -0.0004954   0.0009083
iLiNS-DOSE        MALAWI         0                    NA                0.0010272   -0.0045954   0.0066498
iLiNS-DYAD-M      MALAWI         0                    NA                0.0020960   -0.0022204   0.0064124
JiVitA-3          BANGLADESH     0                    NA                0.0025011    0.0015358   0.0034664
JiVitA-4          BANGLADESH     0                    NA                0.0018352    0.0002797   0.0033907
Keneba            GAMBIA         0                    NA                0.0044020    0.0011650   0.0076389
VITAMIN-A         INDIA          0                    NA                0.0014887   -0.0005518   0.0035293
ZVITAMBO          ZIMBABWE       0                    NA                0.0084841    0.0062849   0.0106833


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0379181   -0.0993846   0.1580730
iLiNS-DOSE        MALAWI         0                    NA                0.0151574   -0.0713660   0.0946932
iLiNS-DYAD-M      MALAWI         0                    NA                0.1013932   -0.1289443   0.2847351
JiVitA-3          BANGLADESH     0                    NA                0.1948918    0.1201317   0.2632997
JiVitA-4          BANGLADESH     0                    NA                0.2034429    0.0183567   0.3536316
Keneba            GAMBIA         0                    NA                0.2749235    0.0628106   0.4390291
VITAMIN-A         INDIA          0                    NA                0.1735573   -0.0916895   0.3743573
ZVITAMBO          ZIMBABWE       0                    NA                0.2446597    0.1832208   0.3014771
