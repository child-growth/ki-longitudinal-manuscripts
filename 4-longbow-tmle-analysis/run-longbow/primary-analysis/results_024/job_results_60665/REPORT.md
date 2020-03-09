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

studyid           country                        pers_wasted024    dead624   n_cell       n
----------------  -----------------------------  ---------------  --------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                       0     6023    7164
Burkina Faso Zn   BURKINA FASO                   0                       1       25    7164
Burkina Faso Zn   BURKINA FASO                   1                       0     1102    7164
Burkina Faso Zn   BURKINA FASO                   1                       1       14    7164
EE                PAKISTAN                       0                       0      338     375
EE                PAKISTAN                       0                       1        4     375
EE                PAKISTAN                       1                       0       33     375
EE                PAKISTAN                       1                       1        0     375
GMS-Nepal         NEPAL                          0                       0      511     592
GMS-Nepal         NEPAL                          0                       1        1     592
GMS-Nepal         NEPAL                          1                       0       79     592
GMS-Nepal         NEPAL                          1                       1        1     592
iLiNS-DOSE        MALAWI                         0                       0     1690    1874
iLiNS-DOSE        MALAWI                         0                       1      119    1874
iLiNS-DOSE        MALAWI                         1                       0       57    1874
iLiNS-DOSE        MALAWI                         1                       1        8    1874
iLiNS-DYAD-M      MALAWI                         0                       0     1115    1161
iLiNS-DYAD-M      MALAWI                         0                       1       21    1161
iLiNS-DYAD-M      MALAWI                         1                       0       22    1161
iLiNS-DYAD-M      MALAWI                         1                       1        3    1161
JiVitA-3          BANGLADESH                     0                       0    19478   21023
JiVitA-3          BANGLADESH                     0                       1      221   21023
JiVitA-3          BANGLADESH                     1                       0     1280   21023
JiVitA-3          BANGLADESH                     1                       1       44   21023
JiVitA-4          BANGLADESH                     0                       0     4948    5433
JiVitA-4          BANGLADESH                     0                       1       39    5433
JiVitA-4          BANGLADESH                     1                       0      436    5433
JiVitA-4          BANGLADESH                     1                       1       10    5433
Keneba            GAMBIA                         0                       0     2523    2752
Keneba            GAMBIA                         0                       1       38    2752
Keneba            GAMBIA                         1                       0      185    2752
Keneba            GAMBIA                         1                       1        6    2752
MAL-ED            BANGLADESH                     0                       0      227     240
MAL-ED            BANGLADESH                     0                       1        0     240
MAL-ED            BANGLADESH                     1                       0       13     240
MAL-ED            BANGLADESH                     1                       1        0     240
MAL-ED            INDIA                          0                       0      215     235
MAL-ED            INDIA                          0                       1        0     235
MAL-ED            INDIA                          1                       0       20     235
MAL-ED            INDIA                          1                       1        0     235
MAL-ED            PERU                           0                       0      271     273
MAL-ED            PERU                           0                       1        1     273
MAL-ED            PERU                           1                       0        1     273
MAL-ED            PERU                           1                       1        0     273
MAL-ED            SOUTH AFRICA                   0                       0      259     261
MAL-ED            SOUTH AFRICA                   0                       1        0     261
MAL-ED            SOUTH AFRICA                   1                       0        2     261
MAL-ED            SOUTH AFRICA                   1                       1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       0      245     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       0        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       1        0     245
PROVIDE           BANGLADESH                     0                       0      601     617
PROVIDE           BANGLADESH                     0                       1        2     617
PROVIDE           BANGLADESH                     1                       0       14     617
PROVIDE           BANGLADESH                     1                       1        0     617
SAS-CompFeed      INDIA                          0                       0     1266    1389
SAS-CompFeed      INDIA                          0                       1        4    1389
SAS-CompFeed      INDIA                          1                       0      111    1389
SAS-CompFeed      INDIA                          1                       1        8    1389
SAS-FoodSuppl     INDIA                          0                       0      327     402
SAS-FoodSuppl     INDIA                          0                       1        1     402
SAS-FoodSuppl     INDIA                          1                       0       71     402
SAS-FoodSuppl     INDIA                          1                       1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     2038    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0       58    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096
VITAMIN-A         INDIA                          0                       0     3029    3615
VITAMIN-A         INDIA                          0                       1       13    3615
VITAMIN-A         INDIA                          1                       0      555    3615
VITAMIN-A         INDIA                          1                       1       18    3615
ZVITAMBO          ZIMBABWE                       0                       0    11000   11694
ZVITAMBO          ZIMBABWE                       0                       1      340   11694
ZVITAMBO          ZIMBABWE                       1                       0      291   11694
ZVITAMBO          ZIMBABWE                       1                       1       63   11694


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
![](/tmp/cdf8d2b0-dd65-4644-bff0-e1ecb3e61b94/54786fe1-f16d-49b4-964a-12fe59195b10/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cdf8d2b0-dd65-4644-bff0-e1ecb3e61b94/54786fe1-f16d-49b4-964a-12fe59195b10/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cdf8d2b0-dd65-4644-bff0-e1ecb3e61b94/54786fe1-f16d-49b4-964a-12fe59195b10/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cdf8d2b0-dd65-4644-bff0-e1ecb3e61b94/54786fe1-f16d-49b4-964a-12fe59195b10/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0041231   0.0025073   0.0057389
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0122812   0.0056636   0.0188988
iLiNS-DOSE        MALAWI         0                    NA                0.0657822   0.0543554   0.0772090
iLiNS-DOSE        MALAWI         1                    NA                0.1230769   0.0431899   0.2029640
JiVitA-3          BANGLADESH     0                    NA                0.0112575   0.0097700   0.0127450
JiVitA-3          BANGLADESH     1                    NA                0.0315081   0.0211197   0.0418965
JiVitA-4          BANGLADESH     0                    NA                0.0078332   0.0053194   0.0103470
JiVitA-4          BANGLADESH     1                    NA                0.0221745   0.0082259   0.0361232
Keneba            GAMBIA         0                    NA                0.0148380   0.0101545   0.0195214
Keneba            GAMBIA         1                    NA                0.0314136   0.0066714   0.0561558
VITAMIN-A         INDIA          0                    NA                0.0042754   0.0019525   0.0065983
VITAMIN-A         INDIA          1                    NA                0.0320773   0.0175217   0.0466330
ZVITAMBO          ZIMBABWE       0                    NA                0.0301371   0.0269743   0.0332999
ZVITAMBO          ZIMBABWE       1                    NA                0.1930375   0.1541416   0.2319334


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
Burkina Faso Zn   BURKINA FASO   1                    0                 2.978628   1.5300284    5.798732
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.870976   0.9555545    3.663372
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.798864   1.9609827    3.994752
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.830846   1.3921000    5.756549
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.117112   0.9062270    4.945961
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 7.502795   3.6975444   15.224140
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 6.405309   5.1032679    8.039551


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0013208    0.0002705   0.0023710
iLiNS-DOSE        MALAWI         0                    NA                0.0019873   -0.0008518   0.0048264
JiVitA-3          BANGLADESH     0                    NA                0.0013478    0.0006764   0.0020192
JiVitA-4          BANGLADESH     0                    NA                0.0011858    0.0000545   0.0023171
Keneba            GAMBIA         0                    NA                0.0011504   -0.0006044   0.0029052
VITAMIN-A         INDIA          0                    NA                0.0043000    0.0019833   0.0066167
ZVITAMBO          ZIMBABWE       0                    NA                0.0043250    0.0030310   0.0056190


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2426167    0.0424096   0.4009657
iLiNS-DOSE        MALAWI         0                    NA                0.0293241   -0.0132259   0.0700872
JiVitA-3          BANGLADESH     0                    NA                0.1069224    0.0545400   0.1564025
JiVitA-4          BANGLADESH     0                    NA                0.1314755    0.0010908   0.2448414
Keneba            GAMBIA         0                    NA                0.0719534   -0.0423229   0.1737010
VITAMIN-A         INDIA          0                    NA                0.5014352    0.2462707   0.6702174
ZVITAMBO          ZIMBABWE       0                    NA                0.1255005    0.0889839   0.1605533
