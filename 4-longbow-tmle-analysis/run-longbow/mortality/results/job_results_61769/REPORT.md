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

**Intervention Variable:** ever_sunderweight06

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

studyid           country                        ever_sunderweight06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0      315     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                         1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                         0       21     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                         1        0     338  dead             
EE                PAKISTAN                       0                         0      218     380  dead             
EE                PAKISTAN                       0                         1        1     380  dead             
EE                PAKISTAN                       1                         0      158     380  dead             
EE                PAKISTAN                       1                         1        3     380  dead             
GMS-Nepal         NEPAL                          0                         0      600     697  dead             
GMS-Nepal         NEPAL                          0                         1        3     697  dead             
GMS-Nepal         NEPAL                          1                         0       90     697  dead             
GMS-Nepal         NEPAL                          1                         1        4     697  dead             
iLiNS-DOSE        MALAWI                         0                         0     1646    1816  dead             
iLiNS-DOSE        MALAWI                         0                         1      106    1816  dead             
iLiNS-DOSE        MALAWI                         1                         0       56    1816  dead             
iLiNS-DOSE        MALAWI                         1                         1        8    1816  dead             
iLiNS-DYAD-M      MALAWI                         0                         0     1084    1202  dead             
iLiNS-DYAD-M      MALAWI                         0                         1       26    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                         0       78    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                         1       14    1202  dead             
JiVitA-3          BANGLADESH                     0                         0    22238   27237  dead             
JiVitA-3          BANGLADESH                     0                         1      414   27237  dead             
JiVitA-3          BANGLADESH                     1                         0     4174   27237  dead             
JiVitA-3          BANGLADESH                     1                         1      411   27237  dead             
JiVitA-4          BANGLADESH                     0                         0     4717    5276  dead             
JiVitA-4          BANGLADESH                     0                         1       31    5276  dead             
JiVitA-4          BANGLADESH                     1                         0      512    5276  dead             
JiVitA-4          BANGLADESH                     1                         1       16    5276  dead             
Keneba            GAMBIA                         0                         0     2407    2632  dead             
Keneba            GAMBIA                         0                         1       43    2632  dead             
Keneba            GAMBIA                         1                         0      164    2632  dead             
Keneba            GAMBIA                         1                         1       18    2632  dead             
MAL-ED            BANGLADESH                     0                         0      243     265  dead             
MAL-ED            BANGLADESH                     0                         1        2     265  dead             
MAL-ED            BANGLADESH                     1                         0       19     265  dead             
MAL-ED            BANGLADESH                     1                         1        1     265  dead             
MAL-ED            INDIA                          0                         0      217     251  dead             
MAL-ED            INDIA                          0                         1        1     251  dead             
MAL-ED            INDIA                          1                         0       32     251  dead             
MAL-ED            INDIA                          1                         1        1     251  dead             
MAL-ED            PERU                           0                         0      290     303  dead             
MAL-ED            PERU                           0                         1        2     303  dead             
MAL-ED            PERU                           1                         0       11     303  dead             
MAL-ED            PERU                           1                         1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                         0      300     314  dead             
MAL-ED            SOUTH AFRICA                   0                         1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                         0       13     314  dead             
MAL-ED            SOUTH AFRICA                   1                         1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      251     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        8     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        1     262  dead             
PROVIDE           BANGLADESH                     0                         0      648     700  dead             
PROVIDE           BANGLADESH                     0                         1        4     700  dead             
PROVIDE           BANGLADESH                     1                         0       48     700  dead             
PROVIDE           BANGLADESH                     1                         1        0     700  dead             
SAS-CompFeed      INDIA                          0                         0     1247    1533  dead             
SAS-CompFeed      INDIA                          0                         1       26    1533  dead             
SAS-CompFeed      INDIA                          1                         0      236    1533  dead             
SAS-CompFeed      INDIA                          1                         1       24    1533  dead             
SAS-FoodSuppl     INDIA                          0                         0      304     416  dead             
SAS-FoodSuppl     INDIA                          0                         1        2     416  dead             
SAS-FoodSuppl     INDIA                          1                         0      106     416  dead             
SAS-FoodSuppl     INDIA                          1                         1        4     416  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2325    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       70    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead             
VITAMIN-A         INDIA                          0                         0     2858    3906  dead             
VITAMIN-A         INDIA                          0                         1       30    3906  dead             
VITAMIN-A         INDIA                          1                         0      970    3906  dead             
VITAMIN-A         INDIA                          1                         1       48    3906  dead             
ZVITAMBO          ZIMBABWE                       0                         0    12420   14085  dead             
ZVITAMBO          ZIMBABWE                       0                         1      807   14085  dead             
ZVITAMBO          ZIMBABWE                       1                         0      557   14085  dead             
ZVITAMBO          ZIMBABWE                       1                         1      301   14085  dead             


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
![](/tmp/b4f7d619-2dce-480c-94b1-97a61e6a8cfb/41d21769-9be0-42ff-a798-d71fbd4891da/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b4f7d619-2dce-480c-94b1-97a61e6a8cfb/41d21769-9be0-42ff-a798-d71fbd4891da/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b4f7d619-2dce-480c-94b1-97a61e6a8cfb/41d21769-9be0-42ff-a798-d71fbd4891da/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b4f7d619-2dce-480c-94b1-97a61e6a8cfb/41d21769-9be0-42ff-a798-d71fbd4891da/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
iLiNS-DOSE     MALAWI       1                    NA                0.1250000   0.0439530   0.2060470
iLiNS-DYAD-M   MALAWI       0                    NA                0.0234678   0.0145621   0.0323735
iLiNS-DYAD-M   MALAWI       1                    NA                0.1341061   0.0628415   0.2053706
JiVitA-3       BANGLADESH   0                    NA                0.0186169   0.0168646   0.0203691
JiVitA-3       BANGLADESH   1                    NA                0.0846032   0.0750141   0.0941923
JiVitA-4       BANGLADESH   0                    NA                0.0065509   0.0040840   0.0090178
JiVitA-4       BANGLADESH   1                    NA                0.0286421   0.0133371   0.0439470
Keneba         GAMBIA       0                    NA                0.0175591   0.0123537   0.0227645
Keneba         GAMBIA       1                    NA                0.0996266   0.0541139   0.1451393
SAS-CompFeed   INDIA        0                    NA                0.0211192   0.0084969   0.0337415
SAS-CompFeed   INDIA        1                    NA                0.0893510   0.0574175   0.1212846
VITAMIN-A      INDIA        0                    NA                0.0103225   0.0066329   0.0140120
VITAMIN-A      INDIA        1                    NA                0.0462917   0.0333473   0.0592361
ZVITAMBO       ZIMBABWE     0                    NA                0.0614103   0.0573240   0.0654966
ZVITAMBO       ZIMBABWE     1                    NA                0.3321453   0.2991466   0.3651440


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0332779   0.0231340   0.0434218
JiVitA-3       BANGLADESH   NA                   NA                0.0302897   0.0281334   0.0324460
JiVitA-4       BANGLADESH   NA                   NA                0.0089083   0.0062043   0.0116122
Keneba         GAMBIA       NA                   NA                0.0231763   0.0174270   0.0289256
SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A      INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO       ZIMBABWE     NA                   NA                0.0786652   0.0742191   0.0831114


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 2.066038   1.052847    4.054256
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 5.714462   2.974463   10.978481
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 4.544437   3.935691    5.247338
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.372246   2.265631    8.437620
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 5.673787   3.289570    9.786038
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.230803   2.234010    8.012361
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.484555   2.848909    7.059276
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 5.408625   4.800430    6.093875


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0022730   -0.0006617   0.0052078
iLiNS-DYAD-M   MALAWI       0                    NA                0.0098100    0.0038315   0.0157885
JiVitA-3       BANGLADESH   0                    NA                0.0116728    0.0100834   0.0132622
JiVitA-4       BANGLADESH   0                    NA                0.0023574    0.0007648   0.0039499
Keneba         GAMBIA       0                    NA                0.0056172    0.0024906   0.0087438
SAS-CompFeed   INDIA        0                    NA                0.0114966    0.0051202   0.0178731
VITAMIN-A      INDIA        0                    NA                0.0096468    0.0060877   0.0132059
ZVITAMBO       ZIMBABWE     0                    NA                0.0172549    0.0150093   0.0195006


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0362092   -0.0112860   0.0814739
iLiNS-DYAD-M   MALAWI       0                    NA                0.2947915    0.1193092   0.4353081
JiVitA-3       BANGLADESH   0                    NA                0.3853723    0.3416800   0.4261648
JiVitA-4       BANGLADESH   0                    NA                0.2646284    0.0848543   0.4090871
Keneba         GAMBIA       0                    NA                0.2423683    0.1108107   0.3544616
SAS-CompFeed   INDIA        0                    NA                0.3524864    0.0981394   0.5351013
VITAMIN-A      INDIA        0                    NA                0.4830823    0.3164771   0.6090784
ZVITAMBO       ZIMBABWE     0                    NA                0.2193464    0.1928090   0.2450113
