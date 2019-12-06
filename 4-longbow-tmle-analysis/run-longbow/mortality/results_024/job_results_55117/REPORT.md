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

**Intervention Variable:** ever_swasted024

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

studyid                     country                        ever_swasted024    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                          0      240     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                          1        2     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          0       21     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          1        0     263  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                          0      223     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                          1        2     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                          0       26     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                          1        0     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                          0      296     302  dead0plus        
ki0047075b-MAL-ED           PERU                           0                          1        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                          0        4     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                          1        0     302  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          0      296     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          1        0     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          0       16     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          1        0     312  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          0      249     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          1        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          0        9     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          1        0     261  dead0plus        
ki1000109-EE                PAKISTAN                       0                          0      298     380  dead0plus        
ki1000109-EE                PAKISTAN                       0                          1        2     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                          0       78     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                          1        2     380  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                          0     3461    3904  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                          1       55    3904  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                          0      368    3904  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                          1       20    3904  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          0     1267    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          1       23    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          0      209    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          1       14    1513  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          0      344     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          1        3     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          0       68     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          1        3     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          0      653     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          0       42     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2237    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      158    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                          0     2323    2920  dead0plus        
ki1101329-Keneba            GAMBIA                         0                          1       71    2920  dead0plus        
ki1101329-Keneba            GAMBIA                         1                          0      500    2920  dead0plus        
ki1101329-Keneba            GAMBIA                         1                          1       26    2920  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          0     6821    7166  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          1       43    7166  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          0      297    7166  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          1        5    7166  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                          0      503     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                          1        6     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                          0      176     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                          1        1     686  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          0    11783   13946  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          1      877   13946  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          0     1101   13946  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          1      185   13946  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          0     1784    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          1      124    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          0       19    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          1        4    1931  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          0     1135    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          1       38    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          0       24    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          1        4    1201  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          0    24773   26956  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          1      538   26956  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          0     1580   26956  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          1       65   26956  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          0     5059    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          1       41    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          0      334    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          1        9    5443  dead0plus        


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/4a2a9e2b-1ba3-4fb4-91ff-1090595b2a0d/9bd79c2d-cbfc-4a93-b58d-73746f10c7b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a2a9e2b-1ba3-4fb4-91ff-1090595b2a0d/9bd79c2d-cbfc-4a93-b58d-73746f10c7b2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a2a9e2b-1ba3-4fb4-91ff-1090595b2a0d/9bd79c2d-cbfc-4a93-b58d-73746f10c7b2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a2a9e2b-1ba3-4fb4-91ff-1090595b2a0d/9bd79c2d-cbfc-4a93-b58d-73746f10c7b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0155916   0.0114944   0.0196888
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0531153   0.0307078   0.0755229
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0178502   0.0092046   0.0264958
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0599053   0.0112952   0.1085154
ki1101329-Keneba            GAMBIA         0                    NA                0.0296561   0.0228536   0.0364586
ki1101329-Keneba            GAMBIA         1                    NA                0.0494307   0.0308446   0.0680168
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0062646   0.0043979   0.0081313
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0165563   0.0021640   0.0309486
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0695123   0.0650933   0.0739312
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1401826   0.1211974   0.1591678
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0212765   0.0194802   0.0230727
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0393948   0.0292541   0.0495354
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0080392   0.0055796   0.0104989
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0262391   0.0077322   0.0447460


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba            GAMBIA         NA                   NA                0.0332192   0.0267180   0.0397203
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066983   0.0048096   0.0085870
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0761509   0.0717486   0.0805531
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0223698   0.0205726   0.0241670
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate   ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 3.406659   2.072595   5.599418
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 3.356004   1.431339   7.868686
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.666799   1.072950   2.589329
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.642846   1.054333   6.624698
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 2.016660   1.737377   2.340838
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.851563   1.414429   2.423795
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 3.263884   1.513196   7.040024


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0036194    0.0013694   0.0058695
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0066045   -0.0005475   0.0137566
ki1101329-Keneba            GAMBIA         0                    NA                0.0035631   -0.0000055   0.0071317
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004337   -0.0001798   0.0010472
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0066386    0.0048186   0.0084586
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0010933    0.0004834   0.0017032
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0011469   -0.0000345   0.0023283


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.1884041    0.0710204   0.2909555
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.2700716   -0.0083139   0.4715977
ki1101329-Keneba            GAMBIA         0                    NA                0.1072605   -0.0047386   0.2067750
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0647521   -0.0294726   0.1503527
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0871770    0.0634419   0.1103106
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0488742    0.0216198   0.0753694
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1248510   -0.0054813   0.2382893
