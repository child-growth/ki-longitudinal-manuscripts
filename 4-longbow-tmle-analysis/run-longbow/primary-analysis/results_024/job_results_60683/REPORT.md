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

**Intervention Variable:** ever_wasted024

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

studyid           country                        ever_wasted024    dead6plus   n_cell       n
----------------  -----------------------------  ---------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                         0     5728    7164
Burkina Faso Zn   BURKINA FASO                   0                         1       30    7164
Burkina Faso Zn   BURKINA FASO                   1                         0     1388    7164
Burkina Faso Zn   BURKINA FASO                   1                         1       18    7164
EE                PAKISTAN                       0                         0      149     375
EE                PAKISTAN                       0                         1        1     375
EE                PAKISTAN                       1                         0      222     375
EE                PAKISTAN                       1                         1        3     375
GMS-Nepal         NEPAL                          0                         0      208     592
GMS-Nepal         NEPAL                          0                         1        1     592
GMS-Nepal         NEPAL                          1                         0      382     592
GMS-Nepal         NEPAL                          1                         1        1     592
iLiNS-DOSE        MALAWI                         0                         0     1606    1874
iLiNS-DOSE        MALAWI                         0                         1      112    1874
iLiNS-DOSE        MALAWI                         1                         0      141    1874
iLiNS-DOSE        MALAWI                         1                         1       15    1874
iLiNS-DYAD-M      MALAWI                         0                         0     1032    1161
iLiNS-DYAD-M      MALAWI                         0                         1       21    1161
iLiNS-DYAD-M      MALAWI                         1                         0      101    1161
iLiNS-DYAD-M      MALAWI                         1                         1        7    1161
JiVitA-3          BANGLADESH                     0                         0    15064   21023
JiVitA-3          BANGLADESH                     0                         1      201   21023
JiVitA-3          BANGLADESH                     1                         0     5654   21023
JiVitA-3          BANGLADESH                     1                         1      104   21023
JiVitA-4          BANGLADESH                     0                         0     3716    5433
JiVitA-4          BANGLADESH                     0                         1       31    5433
JiVitA-4          BANGLADESH                     1                         0     1667    5433
JiVitA-4          BANGLADESH                     1                         1       19    5433
Keneba            GAMBIA                         0                         0     1467    2752
Keneba            GAMBIA                         0                         1       39    2752
Keneba            GAMBIA                         1                         0     1206    2752
Keneba            GAMBIA                         1                         1       40    2752
MAL-ED            BANGLADESH                     0                         0      157     240
MAL-ED            BANGLADESH                     0                         1        0     240
MAL-ED            BANGLADESH                     1                         0       83     240
MAL-ED            BANGLADESH                     1                         1        0     240
MAL-ED            INDIA                          0                         0      121     235
MAL-ED            INDIA                          0                         1        0     235
MAL-ED            INDIA                          1                         0      114     235
MAL-ED            INDIA                          1                         1        0     235
MAL-ED            PERU                           0                         0      246     273
MAL-ED            PERU                           0                         1        1     273
MAL-ED            PERU                           1                         0       26     273
MAL-ED            PERU                           1                         1        0     273
MAL-ED            SOUTH AFRICA                   0                         0      204     261
MAL-ED            SOUTH AFRICA                   0                         1        0     261
MAL-ED            SOUTH AFRICA                   1                         0       57     261
MAL-ED            SOUTH AFRICA                   1                         1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      209     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0       36     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245
PROVIDE           BANGLADESH                     0                         0      391     617
PROVIDE           BANGLADESH                     0                         1        3     617
PROVIDE           BANGLADESH                     1                         0      223     617
PROVIDE           BANGLADESH                     1                         1        0     617
SAS-CompFeed      INDIA                          0                         0      783    1389
SAS-CompFeed      INDIA                          0                         1        2    1389
SAS-CompFeed      INDIA                          1                         0      594    1389
SAS-CompFeed      INDIA                          1                         1       10    1389
SAS-FoodSuppl     INDIA                          0                         0      208     402
SAS-FoodSuppl     INDIA                          0                         1        1     402
SAS-FoodSuppl     INDIA                          1                         0      190     402
SAS-FoodSuppl     INDIA                          1                         1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1560    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      536    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096
VITAMIN-A         INDIA                          0                         0     2357    3615
VITAMIN-A         INDIA                          0                         1       12    3615
VITAMIN-A         INDIA                          1                         0     1227    3615
VITAMIN-A         INDIA                          1                         1       19    3615
ZVITAMBO          ZIMBABWE                       0                         0     8634   11694
ZVITAMBO          ZIMBABWE                       0                         1      231   11694
ZVITAMBO          ZIMBABWE                       1                         0     2648   11694
ZVITAMBO          ZIMBABWE                       1                         1      181   11694


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
![](/tmp/4cbbe94b-b84c-4e96-a7dc-ca33820c1aa1/9ec92ab4-f4ac-4758-8393-7a3dc314be3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4cbbe94b-b84c-4e96-a7dc-ca33820c1aa1/9ec92ab4-f4ac-4758-8393-7a3dc314be3c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4cbbe94b-b84c-4e96-a7dc-ca33820c1aa1/9ec92ab4-f4ac-4758-8393-7a3dc314be3c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4cbbe94b-b84c-4e96-a7dc-ca33820c1aa1/9ec92ab4-f4ac-4758-8393-7a3dc314be3c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052309   0.0033644   0.0070973
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0124913   0.0067168   0.0182658
iLiNS-DOSE        MALAWI         0                    NA                0.0652517   0.0535735   0.0769299
iLiNS-DOSE        MALAWI         1                    NA                0.0893069   0.0435774   0.1350364
iLiNS-DYAD-M      MALAWI         0                    NA                0.0199430   0.0114952   0.0283908
iLiNS-DYAD-M      MALAWI         1                    NA                0.0648148   0.0183623   0.1112673
JiVitA-3          BANGLADESH     0                    NA                0.0133352   0.0114684   0.0152021
JiVitA-3          BANGLADESH     1                    NA                0.0175691   0.0141163   0.0210219
JiVitA-4          BANGLADESH     0                    NA                0.0082439   0.0053330   0.0111548
JiVitA-4          BANGLADESH     1                    NA                0.0111887   0.0058888   0.0164887
Keneba            GAMBIA         0                    NA                0.0267184   0.0184036   0.0350332
Keneba            GAMBIA         1                    NA                0.0324739   0.0224502   0.0424975
VITAMIN-A         INDIA          0                    NA                0.0051075   0.0022309   0.0079841
VITAMIN-A         INDIA          1                    NA                0.0154461   0.0085317   0.0223605
ZVITAMBO          ZIMBABWE       0                    NA                0.0266713   0.0232898   0.0300528
ZVITAMBO          ZIMBABWE       1                    NA                0.0617684   0.0527692   0.0707677


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0145079   0.0128686   0.0161473
JiVitA-4          BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900
Keneba            GAMBIA         NA                   NA                0.0287064   0.0224666   0.0349461
VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ZVITAMBO          ZIMBABWE       NA                   NA                0.0352317   0.0318901   0.0385734


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.388000   1.3318071   4.281809
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.368652   0.7957183   2.354111
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 3.250000   1.4135962   7.472077
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.317495   1.0350285   1.677048
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.357218   0.7507722   2.453527
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.215411   0.7839254   1.884392
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 3.024190   1.4730265   6.208799
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.315912   1.9093689   2.809017


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014693    0.0002554   0.0026831
iLiNS-DOSE        MALAWI         0                    NA                0.0025178   -0.0014630   0.0064985
iLiNS-DYAD-M      MALAWI         0                    NA                0.0041741   -0.0002815   0.0086297
JiVitA-3          BANGLADESH     0                    NA                0.0011727    0.0000945   0.0022508
JiVitA-4          BANGLADESH     0                    NA                0.0009591   -0.0009177   0.0028360
Keneba            GAMBIA         0                    NA                0.0019880   -0.0039754   0.0079513
VITAMIN-A         INDIA          0                    NA                0.0034679    0.0009112   0.0060245
ZVITAMBO          ZIMBABWE       0                    NA                0.0085604    0.0061866   0.0109343


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2192925    0.0288925   0.3723618
iLiNS-DOSE        MALAWI         0                    NA                0.0371520   -0.0231064   0.0938613
iLiNS-DYAD-M      MALAWI         0                    NA                0.1730769   -0.0206061   0.3300042
JiVitA-3          BANGLADESH     0                    NA                0.0808298    0.0038414   0.1518682
JiVitA-4          BANGLADESH     0                    NA                0.1042201   -0.1208215   0.2840772
Keneba            GAMBIA         0                    NA                0.0692520   -0.1628174   0.2550061
VITAMIN-A         INDIA          0                    NA                0.4043972    0.0747032   0.6166174
ZVITAMBO          ZIMBABWE       0                    NA                0.2429749    0.1768379   0.3037981
