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

**Outcome Variable:** dead6plus

## Predictor Variables

**Intervention Variable:** ever_wasted06_noBW

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
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
* delta_impfloor
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

studyid           country                        ever_wasted06_noBW    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                             0       39      39  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                             1        0      39  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                             0        0      39  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                             1        0      39  dead6plus        
EE                PAKISTAN                       0                             0      288     371  dead6plus        
EE                PAKISTAN                       0                             1        2     371  dead6plus        
EE                PAKISTAN                       1                             0       79     371  dead6plus        
EE                PAKISTAN                       1                             1        2     371  dead6plus        
GMS-Nepal         NEPAL                          0                             0      446     568  dead6plus        
GMS-Nepal         NEPAL                          0                             1        1     568  dead6plus        
GMS-Nepal         NEPAL                          1                             0      120     568  dead6plus        
GMS-Nepal         NEPAL                          1                             1        1     568  dead6plus        
iLiNS-DOSE        MALAWI                         0                             0     1058    1128  dead6plus        
iLiNS-DOSE        MALAWI                         0                             1       70    1128  dead6plus        
iLiNS-DOSE        MALAWI                         1                             0        0    1128  dead6plus        
iLiNS-DOSE        MALAWI                         1                             1        0    1128  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                             0     1029    1055  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                             1       26    1055  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                             0        0    1055  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                             1        0    1055  dead6plus        
JiVitA-3          BANGLADESH                     0                             0    18870   20497  dead6plus        
JiVitA-3          BANGLADESH                     0                             1      240   20497  dead6plus        
JiVitA-3          BANGLADESH                     1                             0     1345   20497  dead6plus        
JiVitA-3          BANGLADESH                     1                             1       42   20497  dead6plus        
JiVitA-4          BANGLADESH                     0                             0     4785    4948  dead6plus        
JiVitA-4          BANGLADESH                     0                             1       37    4948  dead6plus        
JiVitA-4          BANGLADESH                     1                             0      123    4948  dead6plus        
JiVitA-4          BANGLADESH                     1                             1        3    4948  dead6plus        
Keneba            GAMBIA                         0                             0     1952    2262  dead6plus        
Keneba            GAMBIA                         0                             1       53    2262  dead6plus        
Keneba            GAMBIA                         1                             0      244    2262  dead6plus        
Keneba            GAMBIA                         1                             1       13    2262  dead6plus        
MAL-ED            BANGLADESH                     0                             0      221     239  dead6plus        
MAL-ED            BANGLADESH                     0                             1        0     239  dead6plus        
MAL-ED            BANGLADESH                     1                             0       18     239  dead6plus        
MAL-ED            BANGLADESH                     1                             1        0     239  dead6plus        
MAL-ED            INDIA                          0                             0      193     229  dead6plus        
MAL-ED            INDIA                          0                             1        0     229  dead6plus        
MAL-ED            INDIA                          1                             0       36     229  dead6plus        
MAL-ED            INDIA                          1                             1        0     229  dead6plus        
MAL-ED            PERU                           0                             0      267     273  dead6plus        
MAL-ED            PERU                           0                             1        1     273  dead6plus        
MAL-ED            PERU                           1                             0        5     273  dead6plus        
MAL-ED            PERU                           1                             1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                             0      247     260  dead6plus        
MAL-ED            SOUTH AFRICA                   0                             1        0     260  dead6plus        
MAL-ED            SOUTH AFRICA                   1                             0       13     260  dead6plus        
MAL-ED            SOUTH AFRICA                   1                             1        0     260  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      235     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       10     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                             0      573     609  dead6plus        
PROVIDE           BANGLADESH                     0                             1        3     609  dead6plus        
PROVIDE           BANGLADESH                     1                             0       33     609  dead6plus        
PROVIDE           BANGLADESH                     1                             1        0     609  dead6plus        
SAS-CompFeed      INDIA                          0                             0     1177    1357  dead6plus        
SAS-CompFeed      INDIA                          0                             1        5    1357  dead6plus        
SAS-CompFeed      INDIA                          1                             0      169    1357  dead6plus        
SAS-CompFeed      INDIA                          1                             1        6    1357  dead6plus        
SAS-FoodSuppl     INDIA                          0                             0      328     329  dead6plus        
SAS-FoodSuppl     INDIA                          0                             1        1     329  dead6plus        
SAS-FoodSuppl     INDIA                          1                             0        0     329  dead6plus        
SAS-FoodSuppl     INDIA                          1                             1        0     329  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2080  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        0    2080  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      186    2080  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2080  dead6plus        
VITAMIN-A         INDIA                          0                             0     3013    3076  dead6plus        
VITAMIN-A         INDIA                          0                             1       21    3076  dead6plus        
VITAMIN-A         INDIA                          1                             0       41    3076  dead6plus        
VITAMIN-A         INDIA                          1                             1        1    3076  dead6plus        
ZVITAMBO          ZIMBABWE                       0                             0    10636   11378  dead6plus        
ZVITAMBO          ZIMBABWE                       0                             1      362   11378  dead6plus        
ZVITAMBO          ZIMBABWE                       1                             0      354   11378  dead6plus        
ZVITAMBO          ZIMBABWE                       1                             1       26   11378  dead6plus        


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

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-4, country: BANGLADESH
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/0f44b389-8551-4016-96d5-b7fd68dc60e5/5dd7579d-2036-4496-a6b9-0d01d5f4db9d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f44b389-8551-4016-96d5-b7fd68dc60e5/5dd7579d-2036-4496-a6b9-0d01d5f4db9d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0f44b389-8551-4016-96d5-b7fd68dc60e5/5dd7579d-2036-4496-a6b9-0d01d5f4db9d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0f44b389-8551-4016-96d5-b7fd68dc60e5/5dd7579d-2036-4496-a6b9-0d01d5f4db9d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0125613    0.0109493   0.0141733
JiVitA-3       BANGLADESH   1                    NA                0.0304265    0.0211497   0.0397034
Keneba         GAMBIA       0                    NA                0.0267887    0.0196706   0.0339069
Keneba         GAMBIA       1                    NA                0.0487709    0.0223187   0.0752232
SAS-CompFeed   INDIA        0                    NA                0.0042301   -0.0001967   0.0086569
SAS-CompFeed   INDIA        1                    NA                0.0342857    0.0129503   0.0556212
ZVITAMBO       ZIMBABWE     0                    NA                0.0328905    0.0295560   0.0362249
ZVITAMBO       ZIMBABWE     1                    NA                0.0680357    0.0424778   0.0935936


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0137581   0.0121339   0.0153823
Keneba         GAMBIA       NA                   NA                0.0291777   0.0222404   0.0361151
SAS-CompFeed   INDIA        NA                   NA                0.0081061   0.0043373   0.0118750
ZVITAMBO       ZIMBABWE     NA                   NA                0.0341009   0.0307660   0.0374358


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.422247   1.7402231    3.371568
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 1.820576   0.9950676    3.330926
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 8.105143   1.9878557   33.047338
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.068554   1.4018339    3.052371


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0011968    0.0005413   0.0018523
Keneba         GAMBIA       0                    NA                0.0023890   -0.0008233   0.0056013
SAS-CompFeed   INDIA        0                    NA                0.0038760    0.0009881   0.0067638
ZVITAMBO       ZIMBABWE     0                    NA                0.0012104    0.0003471   0.0020738


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0869912    0.0393151   0.1323014
Keneba         GAMBIA       0                    NA                0.0818771   -0.0331885   0.1841279
SAS-CompFeed   INDIA        0                    NA                0.4781572   -0.1093728   0.7545281
ZVITAMBO       ZIMBABWE     0                    NA                0.0354960    0.0100631   0.0602754
