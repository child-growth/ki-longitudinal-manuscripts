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

**Intervention Variable:** pers_wasted024

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

studyid           country                        pers_wasted024    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                       0     6023    7164  dead624          
Burkina Faso Zn   BURKINA FASO                   0                       1       25    7164  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       0     1102    7164  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       1       14    7164  dead624          
EE                PAKISTAN                       0                       0      338     375  dead624          
EE                PAKISTAN                       0                       1        4     375  dead624          
EE                PAKISTAN                       1                       0       33     375  dead624          
EE                PAKISTAN                       1                       1        0     375  dead624          
GMS-Nepal         NEPAL                          0                       0      511     592  dead624          
GMS-Nepal         NEPAL                          0                       1        1     592  dead624          
GMS-Nepal         NEPAL                          1                       0       79     592  dead624          
GMS-Nepal         NEPAL                          1                       1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                       0     1690    1874  dead624          
iLiNS-DOSE        MALAWI                         0                       1      119    1874  dead624          
iLiNS-DOSE        MALAWI                         1                       0       57    1874  dead624          
iLiNS-DOSE        MALAWI                         1                       1        8    1874  dead624          
iLiNS-DYAD-M      MALAWI                         0                       0     1115    1161  dead624          
iLiNS-DYAD-M      MALAWI                         0                       1       21    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                       0       22    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                       1        3    1161  dead624          
JiVitA-3          BANGLADESH                     0                       0    19478   21023  dead624          
JiVitA-3          BANGLADESH                     0                       1      221   21023  dead624          
JiVitA-3          BANGLADESH                     1                       0     1280   21023  dead624          
JiVitA-3          BANGLADESH                     1                       1       44   21023  dead624          
JiVitA-4          BANGLADESH                     0                       0     4948    5433  dead624          
JiVitA-4          BANGLADESH                     0                       1       39    5433  dead624          
JiVitA-4          BANGLADESH                     1                       0      436    5433  dead624          
JiVitA-4          BANGLADESH                     1                       1       10    5433  dead624          
Keneba            GAMBIA                         0                       0     2523    2752  dead624          
Keneba            GAMBIA                         0                       1       38    2752  dead624          
Keneba            GAMBIA                         1                       0      185    2752  dead624          
Keneba            GAMBIA                         1                       1        6    2752  dead624          
MAL-ED            BANGLADESH                     0                       0      227     240  dead624          
MAL-ED            BANGLADESH                     0                       1        0     240  dead624          
MAL-ED            BANGLADESH                     1                       0       13     240  dead624          
MAL-ED            BANGLADESH                     1                       1        0     240  dead624          
MAL-ED            INDIA                          0                       0      215     235  dead624          
MAL-ED            INDIA                          0                       1        0     235  dead624          
MAL-ED            INDIA                          1                       0       20     235  dead624          
MAL-ED            INDIA                          1                       1        0     235  dead624          
MAL-ED            PERU                           0                       0      271     273  dead624          
MAL-ED            PERU                           0                       1        1     273  dead624          
MAL-ED            PERU                           1                       0        1     273  dead624          
MAL-ED            PERU                           1                       1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                       0      259     261  dead624          
MAL-ED            SOUTH AFRICA                   0                       1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       0        2     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       0      245     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       0        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       1        0     245  dead624          
PROVIDE           BANGLADESH                     0                       0      601     617  dead624          
PROVIDE           BANGLADESH                     0                       1        2     617  dead624          
PROVIDE           BANGLADESH                     1                       0       14     617  dead624          
PROVIDE           BANGLADESH                     1                       1        0     617  dead624          
SAS-CompFeed      INDIA                          0                       0     1266    1389  dead624          
SAS-CompFeed      INDIA                          0                       1        4    1389  dead624          
SAS-CompFeed      INDIA                          1                       0      111    1389  dead624          
SAS-CompFeed      INDIA                          1                       1        8    1389  dead624          
SAS-FoodSuppl     INDIA                          0                       0      327     402  dead624          
SAS-FoodSuppl     INDIA                          0                       1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                       0       71     402  dead624          
SAS-FoodSuppl     INDIA                          1                       1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     2038    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0       58    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096  dead624          
VITAMIN-A         INDIA                          0                       0     3029    3615  dead624          
VITAMIN-A         INDIA                          0                       1       13    3615  dead624          
VITAMIN-A         INDIA                          1                       0      555    3615  dead624          
VITAMIN-A         INDIA                          1                       1       18    3615  dead624          
ZVITAMBO          ZIMBABWE                       0                       0    11000   11694  dead624          
ZVITAMBO          ZIMBABWE                       0                       1      340   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                       0      291   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                       1       63   11694  dead624          


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
* studyid: iLiNS-DYAD-M, country: MALAWI
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
![](/tmp/2ca2f2b9-4a07-4a88-81ec-354a23b29ed2/f0b7e1d3-d6dd-439e-8462-d435968592bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2ca2f2b9-4a07-4a88-81ec-354a23b29ed2/f0b7e1d3-d6dd-439e-8462-d435968592bf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2ca2f2b9-4a07-4a88-81ec-354a23b29ed2/f0b7e1d3-d6dd-439e-8462-d435968592bf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2ca2f2b9-4a07-4a88-81ec-354a23b29ed2/f0b7e1d3-d6dd-439e-8462-d435968592bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0041238   0.0025084   0.0057392
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0123926   0.0057932   0.0189920
iLiNS-DOSE        MALAWI         0                    NA                0.0657822   0.0543554   0.0772090
iLiNS-DOSE        MALAWI         1                    NA                0.1230769   0.0431899   0.2029640
JiVitA-3          BANGLADESH     0                    NA                0.0112612   0.0097668   0.0127555
JiVitA-3          BANGLADESH     1                    NA                0.0318365   0.0212971   0.0423759
JiVitA-4          BANGLADESH     0                    NA                0.0078340   0.0053205   0.0103475
JiVitA-4          BANGLADESH     1                    NA                0.0225385   0.0088761   0.0362009
Keneba            GAMBIA         0                    NA                0.0148380   0.0101545   0.0195214
Keneba            GAMBIA         1                    NA                0.0314136   0.0066714   0.0561558
VITAMIN-A         INDIA          0                    NA                0.0042868   0.0019599   0.0066136
VITAMIN-A         INDIA          1                    NA                0.0316072   0.0171948   0.0460196
ZVITAMBO          ZIMBABWE       0                    NA                0.0301121   0.0269529   0.0332714
ZVITAMBO          ZIMBABWE       1                    NA                0.2001815   0.1607797   0.2395833


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054439   0.0037399   0.0071479
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
JiVitA-3          BANGLADESH     NA                   NA                0.0126052   0.0110619   0.0141486
JiVitA-4          BANGLADESH     NA                   NA                0.0090190   0.0064698   0.0115681
Keneba            GAMBIA         NA                   NA                0.0159884   0.0113013   0.0206755
VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ZVITAMBO          ZIMBABWE       NA                   NA                0.0344621   0.0311558   0.0377684


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 3.005148   1.5516588    5.820168
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.870976   0.9555545    3.663372
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.827102   1.9788397    4.038985
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.877009   1.4438257    5.732812
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.117112   0.9062270    4.945961
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 7.373224   3.6296087   14.978043
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 6.647868   5.3182708    8.309871


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0013201    0.0002700   0.0023702
iLiNS-DOSE        MALAWI         0                    NA                0.0019873   -0.0008518   0.0048264
JiVitA-3          BANGLADESH     0                    NA                0.0013441    0.0006699   0.0020182
JiVitA-4          BANGLADESH     0                    NA                0.0011850    0.0000536   0.0023164
Keneba            GAMBIA         0                    NA                0.0011504   -0.0006044   0.0029052
VITAMIN-A         INDIA          0                    NA                0.0042886    0.0019712   0.0066060
ZVITAMBO          ZIMBABWE       0                    NA                0.0043500    0.0030557   0.0056443


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2424924    0.0423493   0.4008069
iLiNS-DOSE        MALAWI         0                    NA                0.0293241   -0.0132259   0.0700872
JiVitA-3          BANGLADESH     0                    NA                0.1066275    0.0538843   0.1564304
JiVitA-4          BANGLADESH     0                    NA                0.1313857    0.0010037   0.2447512
Keneba            GAMBIA         0                    NA                0.0719534   -0.0423229   0.1737010
VITAMIN-A         INDIA          0                    NA                0.5001091    0.2445576   0.6692125
ZVITAMBO          ZIMBABWE       0                    NA                0.1262250    0.0897324   0.1612547
