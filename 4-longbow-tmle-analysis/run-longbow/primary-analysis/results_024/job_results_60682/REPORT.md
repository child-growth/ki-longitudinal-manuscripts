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

**Intervention Variable:** ever_co024

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

studyid           country                        ever_co024    dead0plus   n_cell       n
----------------  -----------------------------  -----------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                     0     6311    7163
Burkina Faso Zn   BURKINA FASO                   0                     1       39    7163
Burkina Faso Zn   BURKINA FASO                   1                     0      804    7163
Burkina Faso Zn   BURKINA FASO                   1                     1        9    7163
EE                PAKISTAN                       0                     0      208     379
EE                PAKISTAN                       0                     1        1     379
EE                PAKISTAN                       1                     0      167     379
EE                PAKISTAN                       1                     1        3     379
GMS-Nepal         NEPAL                          0                     0      479     686
GMS-Nepal         NEPAL                          0                     1        5     686
GMS-Nepal         NEPAL                          1                     0      200     686
GMS-Nepal         NEPAL                          1                     1        2     686
iLiNS-DOSE        MALAWI                         0                     0     1709    1931
iLiNS-DOSE        MALAWI                         0                     1      115    1931
iLiNS-DOSE        MALAWI                         1                     0       94    1931
iLiNS-DOSE        MALAWI                         1                     1       13    1931
iLiNS-DYAD-M      MALAWI                         0                     0     1111    1201
iLiNS-DYAD-M      MALAWI                         0                     1       35    1201
iLiNS-DYAD-M      MALAWI                         1                     0       48    1201
iLiNS-DYAD-M      MALAWI                         1                     1        7    1201
JiVitA-3          BANGLADESH                     0                     0    24039   26923
JiVitA-3          BANGLADESH                     0                     1      492   26923
JiVitA-3          BANGLADESH                     1                     0     2290   26923
JiVitA-3          BANGLADESH                     1                     1      102   26923
JiVitA-4          BANGLADESH                     0                     0     4526    5442
JiVitA-4          BANGLADESH                     0                     1       38    5442
JiVitA-4          BANGLADESH                     1                     0      866    5442
JiVitA-4          BANGLADESH                     1                     1       12    5442
Keneba            GAMBIA                         0                     0     2413    2913
Keneba            GAMBIA                         0                     1       68    2913
Keneba            GAMBIA                         1                     0      403    2913
Keneba            GAMBIA                         1                     1       29    2913
MAL-ED            BANGLADESH                     0                     0      222     263
MAL-ED            BANGLADESH                     0                     1        2     263
MAL-ED            BANGLADESH                     1                     0       39     263
MAL-ED            BANGLADESH                     1                     1        0     263
MAL-ED            INDIA                          0                     0      195     251
MAL-ED            INDIA                          0                     1        2     251
MAL-ED            INDIA                          1                     0       54     251
MAL-ED            INDIA                          1                     1        0     251
MAL-ED            PERU                           0                     0      288     302
MAL-ED            PERU                           0                     1        2     302
MAL-ED            PERU                           1                     0       12     302
MAL-ED            PERU                           1                     1        0     302
MAL-ED            SOUTH AFRICA                   0                     0      289     312
MAL-ED            SOUTH AFRICA                   0                     1        0     312
MAL-ED            SOUTH AFRICA                   1                     0       23     312
MAL-ED            SOUTH AFRICA                   1                     1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0      235     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0       23     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        0     261
PROVIDE           BANGLADESH                     0                     0      605     700
PROVIDE           BANGLADESH                     0                     1        5     700
PROVIDE           BANGLADESH                     1                     0       90     700
PROVIDE           BANGLADESH                     1                     1        0     700
SAS-CompFeed      INDIA                          0                     0     1140    1513
SAS-CompFeed      INDIA                          0                     1       22    1513
SAS-CompFeed      INDIA                          1                     0      336    1513
SAS-CompFeed      INDIA                          1                     1       15    1513
SAS-FoodSuppl     INDIA                          0                     0      260     418
SAS-FoodSuppl     INDIA                          0                     1        3     418
SAS-FoodSuppl     INDIA                          1                     0      152     418
SAS-FoodSuppl     INDIA                          1                     1        3     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2276    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      119    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396
VITAMIN-A         INDIA                          0                     0     3145    3903
VITAMIN-A         INDIA                          0                     1       48    3903
VITAMIN-A         INDIA                          1                     0      683    3903
VITAMIN-A         INDIA                          1                     1       27    3903
ZVITAMBO          ZIMBABWE                       0                     0    12431   13942
ZVITAMBO          ZIMBABWE                       0                     1      920   13942
ZVITAMBO          ZIMBABWE                       1                     0      453   13942
ZVITAMBO          ZIMBABWE                       1                     1      138   13942


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
![](/tmp/3369ac65-9d28-4a5d-b4a2-e429a0ac4daf/6561c971-3297-449f-afb2-05ad4ff23b30/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3369ac65-9d28-4a5d-b4a2-e429a0ac4daf/6561c971-3297-449f-afb2-05ad4ff23b30/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3369ac65-9d28-4a5d-b4a2-e429a0ac4daf/6561c971-3297-449f-afb2-05ad4ff23b30/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3369ac65-9d28-4a5d-b4a2-e429a0ac4daf/6561c971-3297-449f-afb2-05ad4ff23b30/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0061417   0.0042200   0.0080635
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0110701   0.0038774   0.0182628
iLiNS-DOSE        MALAWI         0                    NA                0.0630710   0.0519133   0.0742286
iLiNS-DOSE        MALAWI         1                    NA                0.1154119   0.0542665   0.1765573
iLiNS-DYAD-M      MALAWI         0                    NA                0.0305410   0.0205745   0.0405075
iLiNS-DYAD-M      MALAWI         1                    NA                0.1272727   0.0391568   0.2153887
JiVitA-3          BANGLADESH     0                    NA                0.0202326   0.0184448   0.0220205
JiVitA-3          BANGLADESH     1                    NA                0.0448775   0.0352062   0.0545489
JiVitA-4          BANGLADESH     0                    NA                0.0083589   0.0056071   0.0111107
JiVitA-4          BANGLADESH     1                    NA                0.0136345   0.0063452   0.0209238
Keneba            GAMBIA         0                    NA                0.0275254   0.0210647   0.0339861
Keneba            GAMBIA         1                    NA                0.0647793   0.0408861   0.0886725
SAS-CompFeed      INDIA          0                    NA                0.0191664   0.0093860   0.0289468
SAS-CompFeed      INDIA          1                    NA                0.0420340   0.0228648   0.0612032
VITAMIN-A         INDIA          0                    NA                0.0149525   0.0107402   0.0191649
VITAMIN-A         INDIA          1                    NA                0.0386470   0.0245032   0.0527908
ZVITAMBO          ZIMBABWE       0                    NA                0.0693991   0.0650874   0.0737108
ZVITAMBO          ZIMBABWE       1                    NA                0.2189243   0.1841396   0.2537091


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067011   0.0048116   0.0085906
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0349709   0.0245769   0.0453648
JiVitA-3          BANGLADESH     NA                   NA                0.0220629   0.0202902   0.0238357
JiVitA-4          BANGLADESH     NA                   NA                0.0091878   0.0066008   0.0117748
Keneba            GAMBIA         NA                   NA                0.0332990   0.0267825   0.0398155
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192160   0.0149085   0.0235235
ZVITAMBO          ZIMBABWE       NA                   NA                0.0758858   0.0714899   0.0802817


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.802441   0.8763260   3.707289
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.829873   1.0469887   3.198160
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 4.167273   1.9384110   8.958968
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.218079   1.7549725   2.803391
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.631128   0.8714314   3.053112
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.353436   1.5197644   3.644420
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 2.193109   1.6518022   2.911804
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 2.584643   1.6288112   4.101384
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 3.154569   2.6604403   3.740473


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005594   -0.0002864   0.0014052
iLiNS-DOSE        MALAWI         0                    NA                0.0032159   -0.0003053   0.0067371
iLiNS-DYAD-M      MALAWI         0                    NA                0.0044298    0.0002107   0.0086489
JiVitA-3          BANGLADESH     0                    NA                0.0018303    0.0010510   0.0026097
JiVitA-4          BANGLADESH     0                    NA                0.0008289   -0.0004189   0.0020766
Keneba            GAMBIA         0                    NA                0.0057736    0.0020888   0.0094584
SAS-CompFeed      INDIA          0                    NA                0.0052883    0.0022546   0.0083221
VITAMIN-A         INDIA          0                    NA                0.0042634    0.0015807   0.0069462
ZVITAMBO          ZIMBABWE       0                    NA                0.0064867    0.0049342   0.0080391


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0834744   -0.0493385   0.1994774
iLiNS-DOSE        MALAWI         0                    NA                0.0485155   -0.0055506   0.0996746
iLiNS-DYAD-M      MALAWI         0                    NA                0.1266725    0.0037438   0.2344329
JiVitA-3          BANGLADESH     0                    NA                0.0829586    0.0476872   0.1169237
JiVitA-4          BANGLADESH     0                    NA                0.0902129   -0.0559191   0.2161211
Keneba            GAMBIA         0                    NA                0.1733860    0.0606963   0.2725562
SAS-CompFeed      INDIA          0                    NA                0.2162498    0.0998998   0.3175601
VITAMIN-A         INDIA          0                    NA                0.2218693    0.0792342   0.3424089
ZVITAMBO          ZIMBABWE       0                    NA                0.0854796    0.0653518   0.1051738
