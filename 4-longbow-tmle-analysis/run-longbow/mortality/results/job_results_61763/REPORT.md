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

**Intervention Variable:** ever_wasted06

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
* W_nchldlt5
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
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_wasted06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                   0      296     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                   1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                   0       40     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                   1        0     338  dead             
EE                PAKISTAN                       0                   0      248     380  dead             
EE                PAKISTAN                       0                   1        2     380  dead             
EE                PAKISTAN                       1                   0      128     380  dead             
EE                PAKISTAN                       1                   1        2     380  dead             
GMS-Nepal         NEPAL                          0                   0      422     686  dead             
GMS-Nepal         NEPAL                          0                   1        5     686  dead             
GMS-Nepal         NEPAL                          1                   0      257     686  dead             
GMS-Nepal         NEPAL                          1                   1        2     686  dead             
iLiNS-DOSE        MALAWI                         0                   0     1675    1814  dead             
iLiNS-DOSE        MALAWI                         0                   1      110    1814  dead             
iLiNS-DOSE        MALAWI                         1                   0       25    1814  dead             
iLiNS-DOSE        MALAWI                         1                   1        4    1814  dead             
iLiNS-DYAD-M      MALAWI                         0                   0     1091    1182  dead             
iLiNS-DYAD-M      MALAWI                         0                   1       33    1182  dead             
iLiNS-DYAD-M      MALAWI                         1                   0       53    1182  dead             
iLiNS-DYAD-M      MALAWI                         1                   1        5    1182  dead             
JiVitA-3          BANGLADESH                     0                   0    21075   26918  dead             
JiVitA-3          BANGLADESH                     0                   1      399   26918  dead             
JiVitA-3          BANGLADESH                     1                   0     5282   26918  dead             
JiVitA-3          BANGLADESH                     1                   1      162   26918  dead             
JiVitA-4          BANGLADESH                     0                   0     4521    5252  dead             
JiVitA-4          BANGLADESH                     0                   1       37    5252  dead             
JiVitA-4          BANGLADESH                     1                   0      684    5252  dead             
JiVitA-4          BANGLADESH                     1                   1       10    5252  dead             
Keneba            GAMBIA                         0                   0     1763    2480  dead             
Keneba            GAMBIA                         0                   1       33    2480  dead             
Keneba            GAMBIA                         1                   0      660    2480  dead             
Keneba            GAMBIA                         1                   1       24    2480  dead             
MAL-ED            BANGLADESH                     0                   0      201     263  dead             
MAL-ED            BANGLADESH                     0                   1        2     263  dead             
MAL-ED            BANGLADESH                     1                   0       60     263  dead             
MAL-ED            BANGLADESH                     1                   1        0     263  dead             
MAL-ED            INDIA                          0                   0      166     251  dead             
MAL-ED            INDIA                          0                   1        1     251  dead             
MAL-ED            INDIA                          1                   0       83     251  dead             
MAL-ED            INDIA                          1                   1        1     251  dead             
MAL-ED            PERU                           0                   0      289     302  dead             
MAL-ED            PERU                           0                   1        2     302  dead             
MAL-ED            PERU                           1                   0       11     302  dead             
MAL-ED            PERU                           1                   1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                   0      276     312  dead             
MAL-ED            SOUTH AFRICA                   0                   1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1                   0       36     312  dead             
MAL-ED            SOUTH AFRICA                   1                   1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   0      244     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   0       14     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   1        0     261  dead             
PROVIDE           BANGLADESH                     0                   0      515     700  dead             
PROVIDE           BANGLADESH                     0                   1        4     700  dead             
PROVIDE           BANGLADESH                     1                   0      181     700  dead             
PROVIDE           BANGLADESH                     1                   1        0     700  dead             
SAS-CompFeed      INDIA                          0                   0     1142    1508  dead             
SAS-CompFeed      INDIA                          0                   1       22    1508  dead             
SAS-CompFeed      INDIA                          1                   0      330    1508  dead             
SAS-CompFeed      INDIA                          1                   1       14    1508  dead             
SAS-FoodSuppl     INDIA                          0                   0      316     418  dead             
SAS-FoodSuppl     INDIA                          0                   1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                   0       96     418  dead             
SAS-FoodSuppl     INDIA                          1                   1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2038    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      357    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396  dead             
VITAMIN-A         INDIA                          0                   0     2967    3895  dead             
VITAMIN-A         INDIA                          0                   1       36    3895  dead             
VITAMIN-A         INDIA                          1                   0      853    3895  dead             
VITAMIN-A         INDIA                          1                   1       39    3895  dead             
ZVITAMBO          ZIMBABWE                       0                   0    10499   13862  dead             
ZVITAMBO          ZIMBABWE                       0                   1      728   13862  dead             
ZVITAMBO          ZIMBABWE                       1                   0     2316   13862  dead             
ZVITAMBO          ZIMBABWE                       1                   1      319   13862  dead             


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
![](/tmp/16802814-7147-40d9-a041-8f1b65bb66ec/cea830cf-c76f-4bc2-9209-b745ff03ba42/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/16802814-7147-40d9-a041-8f1b65bb66ec/cea830cf-c76f-4bc2-9209-b745ff03ba42/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/16802814-7147-40d9-a041-8f1b65bb66ec/cea830cf-c76f-4bc2-9209-b745ff03ba42/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/16802814-7147-40d9-a041-8f1b65bb66ec/cea830cf-c76f-4bc2-9209-b745ff03ba42/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0293594   0.0194864   0.0392325
iLiNS-DYAD-M   MALAWI       1                    NA                0.0862069   0.0139444   0.1584694
JiVitA-3       BANGLADESH   0                    NA                0.0186070   0.0168301   0.0203839
JiVitA-3       BANGLADESH   1                    NA                0.0296298   0.0250134   0.0342461
JiVitA-4       BANGLADESH   0                    NA                0.0080869   0.0053668   0.0108071
JiVitA-4       BANGLADESH   1                    NA                0.0140528   0.0041650   0.0239406
Keneba         GAMBIA       0                    NA                0.0183009   0.0121105   0.0244914
Keneba         GAMBIA       1                    NA                0.0357443   0.0216378   0.0498508
SAS-CompFeed   INDIA        0                    NA                0.0187983   0.0093151   0.0282815
SAS-CompFeed   INDIA        1                    NA                0.0415199   0.0177784   0.0652614
VITAMIN-A      INDIA        0                    NA                0.0121181   0.0081948   0.0160413
VITAMIN-A      INDIA        1                    NA                0.0426575   0.0289980   0.0563170
ZVITAMBO       ZIMBABWE     0                    NA                0.0652804   0.0607292   0.0698315
ZVITAMBO       ZIMBABWE     1                    NA                0.1178621   0.1055499   0.1301743


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0321489   0.0220886   0.0422092
JiVitA-3       BANGLADESH   NA                   NA                0.0208411   0.0190926   0.0225895
JiVitA-4       BANGLADESH   NA                   NA                0.0089490   0.0062382   0.0116597
Keneba         GAMBIA       NA                   NA                0.0229839   0.0170850   0.0288828
SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
VITAMIN-A      INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ZVITAMBO       ZIMBABWE     NA                   NA                0.0755302   0.0711312   0.0799293


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.936259   1.1899998   7.245058
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.592398   1.3347085   1.899840
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.737717   0.7956667   3.795130
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.953143   1.1613692   3.284716
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.208708   1.1698388   4.170140
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.520163   2.2321502   5.551395
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.805476   1.5933948   2.045785


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0027895   -0.0008572   0.0064362
JiVitA-3       BANGLADESH   0                    NA                0.0022341    0.0012580   0.0032101
JiVitA-4       BANGLADESH   0                    NA                0.0008620   -0.0005253   0.0022493
Keneba         GAMBIA       0                    NA                0.0046829    0.0005051   0.0088607
SAS-CompFeed   INDIA        0                    NA                0.0050744   -0.0003482   0.0104970
VITAMIN-A      INDIA        0                    NA                0.0071374    0.0039011   0.0103738
ZVITAMBO       ZIMBABWE     0                    NA                0.0102499    0.0077357   0.0127640


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0867672   -0.0305119   0.1906991
JiVitA-3       BANGLADESH   0                    NA                0.1071957    0.0605916   0.1514877
JiVitA-4       BANGLADESH   0                    NA                0.0963274   -0.0673519   0.2349064
Keneba         GAMBIA       0                    NA                0.2037491    0.0088218   0.3603416
SAS-CompFeed   INDIA        0                    NA                0.2125608   -0.0155611   0.3894406
VITAMIN-A      INDIA        0                    NA                0.3706691    0.2057893   0.5013196
ZVITAMBO       ZIMBABWE     0                    NA                0.1357055    0.1026466   0.1675466
