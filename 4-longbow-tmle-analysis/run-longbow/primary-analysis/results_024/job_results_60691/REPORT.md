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

studyid           country                        ever_sunderweight024    dead6plus   n_cell       n
----------------  -----------------------------  ---------------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                               0     6325    7163
Burkina Faso Zn   BURKINA FASO                   0                               1       37    7163
Burkina Faso Zn   BURKINA FASO                   1                               0      790    7163
Burkina Faso Zn   BURKINA FASO                   1                               1       11    7163
EE                PAKISTAN                       0                               0      172     375
EE                PAKISTAN                       0                               1        1     375
EE                PAKISTAN                       1                               0      199     375
EE                PAKISTAN                       1                               1        3     375
GMS-Nepal         NEPAL                          0                               0      372     592
GMS-Nepal         NEPAL                          0                               1        1     592
GMS-Nepal         NEPAL                          1                               0      218     592
GMS-Nepal         NEPAL                          1                               1        1     592
iLiNS-DOSE        MALAWI                         0                               0     1523    1874
iLiNS-DOSE        MALAWI                         0                               1       99    1874
iLiNS-DOSE        MALAWI                         1                               0      224    1874
iLiNS-DOSE        MALAWI                         1                               1       28    1874
iLiNS-DYAD-M      MALAWI                         0                               0      993    1161
iLiNS-DYAD-M      MALAWI                         0                               1       21    1161
iLiNS-DYAD-M      MALAWI                         1                               0      140    1161
iLiNS-DYAD-M      MALAWI                         1                               1        7    1161
JiVitA-3          BANGLADESH                     0                               0    16927   21046
JiVitA-3          BANGLADESH                     0                               1      188   21046
JiVitA-3          BANGLADESH                     1                               0     3807   21046
JiVitA-3          BANGLADESH                     1                               1      124   21046
JiVitA-4          BANGLADESH                     0                               0     4468    5433
JiVitA-4          BANGLADESH                     0                               1       29    5433
JiVitA-4          BANGLADESH                     1                               0      915    5433
JiVitA-4          BANGLADESH                     1                               1       21    5433
Keneba            GAMBIA                         0                               0     2216    2761
Keneba            GAMBIA                         0                               1       49    2761
Keneba            GAMBIA                         1                               0      466    2761
Keneba            GAMBIA                         1                               1       30    2761
MAL-ED            BANGLADESH                     0                               0      204     240
MAL-ED            BANGLADESH                     0                               1        0     240
MAL-ED            BANGLADESH                     1                               0       36     240
MAL-ED            BANGLADESH                     1                               1        0     240
MAL-ED            INDIA                          0                               0      184     235
MAL-ED            INDIA                          0                               1        0     235
MAL-ED            INDIA                          1                               0       51     235
MAL-ED            INDIA                          1                               1        0     235
MAL-ED            PERU                           0                               0      258     273
MAL-ED            PERU                           0                               1        1     273
MAL-ED            PERU                           1                               0       14     273
MAL-ED            PERU                           1                               1        0     273
MAL-ED            SOUTH AFRICA                   0                               0      236     261
MAL-ED            SOUTH AFRICA                   0                               1        0     261
MAL-ED            SOUTH AFRICA                   1                               0       25     261
MAL-ED            SOUTH AFRICA                   1                               1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               0      211     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               0       34     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               1        0     245
PROVIDE           BANGLADESH                     0                               0      525     617
PROVIDE           BANGLADESH                     0                               1        3     617
PROVIDE           BANGLADESH                     1                               0       89     617
PROVIDE           BANGLADESH                     1                               1        0     617
SAS-CompFeed      INDIA                          0                               0     1017    1389
SAS-CompFeed      INDIA                          0                               1        2    1389
SAS-CompFeed      INDIA                          1                               0      360    1389
SAS-CompFeed      INDIA                          1                               1       10    1389
SAS-FoodSuppl     INDIA                          0                               0      217     402
SAS-FoodSuppl     INDIA                          0                               1        1     402
SAS-FoodSuppl     INDIA                          1                               0      181     402
SAS-FoodSuppl     INDIA                          1                               1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               0     1951    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               0      145    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               1        0    2096
VITAMIN-A         INDIA                          0                               0     2427    3615
VITAMIN-A         INDIA                          0                               1       11    3615
VITAMIN-A         INDIA                          1                               0     1156    3615
VITAMIN-A         INDIA                          1                               1       21    3615
ZVITAMBO          ZIMBABWE                       0                               0    10419   11708
ZVITAMBO          ZIMBABWE                       0                               1      219   11708
ZVITAMBO          ZIMBABWE                       1                               0      873   11708
ZVITAMBO          ZIMBABWE                       1                               1      197   11708


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
![](/tmp/ae0ad2bf-101b-4dc0-ad15-8ce893765acf/f1b47d1b-6a66-4275-b981-1181505f5205/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae0ad2bf-101b-4dc0-ad15-8ce893765acf/f1b47d1b-6a66-4275-b981-1181505f5205/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae0ad2bf-101b-4dc0-ad15-8ce893765acf/f1b47d1b-6a66-4275-b981-1181505f5205/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae0ad2bf-101b-4dc0-ad15-8ce893765acf/f1b47d1b-6a66-4275-b981-1181505f5205/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0058467   0.0039701   0.0077233
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0129118   0.0051591   0.0206645
iLiNS-DOSE        MALAWI         0                    NA                0.0612115   0.0495575   0.0728655
iLiNS-DOSE        MALAWI         1                    NA                0.1116628   0.0733641   0.1499615
iLiNS-DYAD-M      MALAWI         0                    NA                0.0207101   0.0119408   0.0294793
iLiNS-DYAD-M      MALAWI         1                    NA                0.0476190   0.0131783   0.0820598
JiVitA-3          BANGLADESH     0                    NA                0.0112746   0.0096395   0.0129097
JiVitA-3          BANGLADESH     1                    NA                0.0288540   0.0230410   0.0346671
JiVitA-4          BANGLADESH     0                    NA                0.0064734   0.0040258   0.0089210
JiVitA-4          BANGLADESH     1                    NA                0.0216888   0.0123212   0.0310563
Keneba            GAMBIA         0                    NA                0.0219226   0.0158534   0.0279919
Keneba            GAMBIA         1                    NA                0.0544722   0.0342458   0.0746986
VITAMIN-A         INDIA          0                    NA                0.0045389   0.0018638   0.0072141
VITAMIN-A         INDIA          1                    NA                0.0175208   0.0100501   0.0249916
ZVITAMBO          ZIMBABWE       0                    NA                0.0208673   0.0181447   0.0235900
ZVITAMBO          ZIMBABWE       1                    NA                0.1713779   0.1478420   0.1949137


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


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.208387   1.1179972   4.362241
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.824214   1.2322239   2.700611
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.299320   0.9945408   5.315892
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.559203   1.9935449   3.285363
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 3.350444   1.8803182   5.969988
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.484746   1.5633653   3.949149
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 3.860126   1.8654390   7.987702
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 8.212741   6.7959513   9.924898


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0008544   -0.0000743   0.0017831
iLiNS-DOSE        MALAWI         0                    NA                0.0065580    0.0010545   0.0120615
iLiNS-DYAD-M      MALAWI         0                    NA                0.0034071   -0.0011221   0.0079363
JiVitA-3          BANGLADESH     0                    NA                0.0035501    0.0024249   0.0046752
JiVitA-4          BANGLADESH     0                    NA                0.0027296    0.0010305   0.0044287
Keneba            GAMBIA         0                    NA                0.0066902    0.0026827   0.0106977
VITAMIN-A         INDIA          0                    NA                0.0043131    0.0016890   0.0069372
ZVITAMBO          ZIMBABWE       0                    NA                0.0146639    0.0123627   0.0169652


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1275000   -0.0171459   0.2515761
iLiNS-DOSE        MALAWI         0                    NA                0.0967693    0.0134447   0.1730563
iLiNS-DYAD-M      MALAWI         0                    NA                0.1412722   -0.0600369   0.3043512
JiVitA-3          BANGLADESH     0                    NA                0.2394694    0.1649245   0.3073599
JiVitA-4          BANGLADESH     0                    NA                0.2966002    0.1059135   0.4466181
Keneba            GAMBIA         0                    NA                0.2338176    0.0912948   0.3539868
VITAMIN-A         INDIA          0                    NA                0.4872430    0.1738175   0.6817655
ZVITAMBO          ZIMBABWE       0                    NA                0.4127055    0.3580830   0.4626800
