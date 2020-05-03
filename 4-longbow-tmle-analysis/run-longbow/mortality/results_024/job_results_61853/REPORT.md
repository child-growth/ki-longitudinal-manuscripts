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

**Intervention Variable:** ever_sunderweight024

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

studyid           country                        ever_sunderweight024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                               0     6325    7163  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                               1       37    7163  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                               0      790    7163  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                               1       11    7163  dead6plus        
EE                PAKISTAN                       0                               0      172     375  dead6plus        
EE                PAKISTAN                       0                               1        1     375  dead6plus        
EE                PAKISTAN                       1                               0      199     375  dead6plus        
EE                PAKISTAN                       1                               1        3     375  dead6plus        
GMS-Nepal         NEPAL                          0                               0      372     592  dead6plus        
GMS-Nepal         NEPAL                          0                               1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                               0      218     592  dead6plus        
GMS-Nepal         NEPAL                          1                               1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                               0     1523    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                               1       99    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                               0      224    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                               1       28    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                               0      993    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                               1       21    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                               0      140    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                               1        7    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                               0    16927   21046  dead6plus        
JiVitA-3          BANGLADESH                     0                               1      188   21046  dead6plus        
JiVitA-3          BANGLADESH                     1                               0     3807   21046  dead6plus        
JiVitA-3          BANGLADESH                     1                               1      124   21046  dead6plus        
JiVitA-4          BANGLADESH                     0                               0     4468    5433  dead6plus        
JiVitA-4          BANGLADESH                     0                               1       29    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                               0      915    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                               1       21    5433  dead6plus        
Keneba            GAMBIA                         0                               0     2216    2761  dead6plus        
Keneba            GAMBIA                         0                               1       49    2761  dead6plus        
Keneba            GAMBIA                         1                               0      466    2761  dead6plus        
Keneba            GAMBIA                         1                               1       30    2761  dead6plus        
MAL-ED            BANGLADESH                     0                               0      204     240  dead6plus        
MAL-ED            BANGLADESH                     0                               1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                               0       36     240  dead6plus        
MAL-ED            BANGLADESH                     1                               1        0     240  dead6plus        
MAL-ED            INDIA                          0                               0      184     235  dead6plus        
MAL-ED            INDIA                          0                               1        0     235  dead6plus        
MAL-ED            INDIA                          1                               0       51     235  dead6plus        
MAL-ED            INDIA                          1                               1        0     235  dead6plus        
MAL-ED            PERU                           0                               0      258     273  dead6plus        
MAL-ED            PERU                           0                               1        1     273  dead6plus        
MAL-ED            PERU                           1                               0       14     273  dead6plus        
MAL-ED            PERU                           1                               1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                               0      236     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                               1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                               0       25     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                               1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               0      211     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               0       34     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                               0      525     617  dead6plus        
PROVIDE           BANGLADESH                     0                               1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                               0       89     617  dead6plus        
PROVIDE           BANGLADESH                     1                               1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                               0     1017    1389  dead6plus        
SAS-CompFeed      INDIA                          0                               1        2    1389  dead6plus        
SAS-CompFeed      INDIA                          1                               0      360    1389  dead6plus        
SAS-CompFeed      INDIA                          1                               1       10    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                               0      217     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                               1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                               0      181     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                               1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               0     1951    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               0      145    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                               0     2427    3615  dead6plus        
VITAMIN-A         INDIA                          0                               1       11    3615  dead6plus        
VITAMIN-A         INDIA                          1                               0     1156    3615  dead6plus        
VITAMIN-A         INDIA                          1                               1       21    3615  dead6plus        
ZVITAMBO          ZIMBABWE                       0                               0    10419   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       0                               1      219   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                               0      873   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                               1      197   11708  dead6plus        


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




# Results Detail

## Results Plots
![](/tmp/3cd79881-8886-4ad8-ab64-a3cc55bc2241/cccaa4f9-86ff-47f6-8bd2-5c65e3ccabeb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3cd79881-8886-4ad8-ab64-a3cc55bc2241/cccaa4f9-86ff-47f6-8bd2-5c65e3ccabeb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3cd79881-8886-4ad8-ab64-a3cc55bc2241/cccaa4f9-86ff-47f6-8bd2-5c65e3ccabeb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3cd79881-8886-4ad8-ab64-a3cc55bc2241/cccaa4f9-86ff-47f6-8bd2-5c65e3ccabeb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0058366   0.0039617   0.0077115
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0131800   0.0053516   0.0210083
iLiNS-DOSE        MALAWI         0                    NA                0.0610480   0.0494090   0.0726870
iLiNS-DOSE        MALAWI         1                    NA                0.1109426   0.0719508   0.1499343
iLiNS-DYAD-M      MALAWI         0                    NA                0.0207101   0.0119408   0.0294793
iLiNS-DYAD-M      MALAWI         1                    NA                0.0476190   0.0131783   0.0820598
JiVitA-3          BANGLADESH     0                    NA                0.0111232   0.0095211   0.0127253
JiVitA-3          BANGLADESH     1                    NA                0.0284846   0.0226427   0.0343264
JiVitA-4          BANGLADESH     0                    NA                0.0064664   0.0040244   0.0089084
JiVitA-4          BANGLADESH     1                    NA                0.0215939   0.0122018   0.0309859
Keneba            GAMBIA         0                    NA                0.0217742   0.0157421   0.0278063
Keneba            GAMBIA         1                    NA                0.0547476   0.0340258   0.0754693
VITAMIN-A         INDIA          0                    NA                0.0045016   0.0018419   0.0071613
VITAMIN-A         INDIA          1                    NA                0.0171553   0.0097375   0.0245730
ZVITAMBO          ZIMBABWE       0                    NA                0.0207959   0.0180807   0.0235111
ZVITAMBO          ZIMBABWE       1                    NA                0.1735367   0.1498633   0.1972101


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067011   0.0048116   0.0085906
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0148247   0.0131816   0.0164677
JiVitA-4          BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900
Keneba            GAMBIA         NA                   NA                0.0286128   0.0223931   0.0348325
VITAMIN-A         INDIA          NA                   NA                0.0088520   0.0057982   0.0119058
ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.258165   1.1495351    4.435977
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.817301   1.2182303    2.710967
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.299320   0.9945408    5.315892
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.560823   1.9902725    3.294932
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 3.339389   1.8697644    5.964129
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.514334   1.5725194    4.020222
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 3.810934   1.8331057    7.922741
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 8.344741   6.9095559   10.078029


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0008645   -0.0000639   0.0017929
iLiNS-DOSE        MALAWI         0                    NA                0.0067215    0.0012257   0.0122173
iLiNS-DYAD-M      MALAWI         0                    NA                0.0034071   -0.0011221   0.0079363
JiVitA-3          BANGLADESH     0                    NA                0.0037015    0.0025897   0.0048132
JiVitA-4          BANGLADESH     0                    NA                0.0027366    0.0010384   0.0044348
Keneba            GAMBIA         0                    NA                0.0068386    0.0028428   0.0108345
VITAMIN-A         INDIA          0                    NA                0.0043504    0.0017315   0.0069694
ZVITAMBO          ZIMBABWE       0                    NA                0.0147353    0.0124351   0.0170356


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1290115   -0.0155271   0.2529781
iLiNS-DOSE        MALAWI         0                    NA                0.0991816    0.0160078   0.1753249
iLiNS-DYAD-M      MALAWI         0                    NA                0.1412722   -0.0600369   0.3043512
JiVitA-3          BANGLADESH     0                    NA                0.2496827    0.1768295   0.3160881
JiVitA-4          BANGLADESH     0                    NA                0.2973598    0.1070907   0.4470847
Keneba            GAMBIA         0                    NA                0.2390063    0.0973790   0.3584113
VITAMIN-A         INDIA          0                    NA                0.4914610    0.1796450   0.6847562
ZVITAMBO          ZIMBABWE       0                    NA                0.4147143    0.3602414   0.4645490
