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

**Intervention Variable:** ever_swasted06_noBW

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

studyid                     country                        ever_swasted06_noBW    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                              0      253     262  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                              1        2     262  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                              0        7     262  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                              1        0     262  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                              0      235     244  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                              1        2     244  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                              0        7     244  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                              1        0     244  dead0plus        
ki0047075b-MAL-ED           PERU                           0                              0      299     302  dead0plus        
ki0047075b-MAL-ED           PERU                           0                              1        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                              0        1     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                              1        0     302  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              0      304     307  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              1        0     307  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              0        3     307  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              1        0     307  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      255     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     261  dead0plus        
ki1000109-EE                PAKISTAN                       0                              0      351     375  dead0plus        
ki1000109-EE                PAKISTAN                       0                              1        4     375  dead0plus        
ki1000109-EE                PAKISTAN                       1                              0       20     375  dead0plus        
ki1000109-EE                PAKISTAN                       1                              1        0     375  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                              0     3253    3301  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                              1       45    3301  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                              0        3    3301  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                              1        0    3301  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                              0     1401    1473  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                              1       26    1473  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                              0       40    1473  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                              1        6    1473  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                              0      339     341  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                              1        2     341  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                              0        0     341  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                              1        0     341  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                              0      672     683  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                              1        5     683  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                              0        6     683  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                              1        0     683  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     2333    2376  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        1    2376  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       42    2376  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2376  dead0plus        
ki1101329-Keneba            GAMBIA                         0                              0     2253    2424  dead0plus        
ki1101329-Keneba            GAMBIA                         0                              1       76    2424  dead0plus        
ki1101329-Keneba            GAMBIA                         1                              0       87    2424  dead0plus        
ki1101329-Keneba            GAMBIA                         1                              1        8    2424  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              0       41      41  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              1        0      41  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              0        0      41  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              1        0      41  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                              0      605     642  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                              1        6     642  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                              0       31     642  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                              1        0     642  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                              0    12319   13376  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                              1      925   13376  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                              0      109   13376  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                              1       23   13376  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                              0     1112    1182  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                              1       70    1182  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                              0        0    1182  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                              1        0    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              0     1055    1093  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              1       38    1093  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              0        0    1093  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              1        0    1093  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                              0    25294   26234  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                              1      505   26234  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                              0      418   26234  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                              1       17   26234  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                              0     4897    4957  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                              1       39    4957  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                              0       20    4957  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                              1        1    4957  dead0plus        


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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/b4d35dca-0575-4330-bd7b-525c82ae6b81/14f06a64-52d6-4837-9899-55b22383b0c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b4d35dca-0575-4330-bd7b-525c82ae6b81/14f06a64-52d6-4837-9899-55b22383b0c7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b4d35dca-0575-4330-bd7b-525c82ae6b81/14f06a64-52d6-4837-9899-55b22383b0c7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b4d35dca-0575-4330-bd7b-525c82ae6b81/14f06a64-52d6-4837-9899-55b22383b0c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0182200   0.0089631   0.0274770
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1304348   0.0352161   0.2256534
ki1101329-Keneba          GAMBIA       0                    NA                0.0326320   0.0254148   0.0398493
ki1101329-Keneba          GAMBIA       1                    NA                0.0842105   0.0283562   0.1400649
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0698223   0.0654131   0.0742316
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1804886   0.1544297   0.2065474
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0195715   0.0178518   0.0212913
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0390974   0.0262960   0.0518987


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0217244   0.0135627   0.0298860
ki1101329-Keneba          GAMBIA       NA                   NA                0.0346535   0.0273709   0.0419361
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0708732   0.0665243   0.0752221
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0198978   0.0181880   0.0216077


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 7.158863   2.590290   19.785165
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.580609   1.282552    5.192416
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.584969   2.208058    3.026218
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.997665   1.424403    2.801642


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0035043    0.0009152   0.0060935
ki1101329-Keneba          GAMBIA       0                    NA                0.0020214   -0.0002215   0.0042643
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0010509    0.0003782   0.0017235
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0003263    0.0000043   0.0006483


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1613087   -0.0013692   0.2975587
ki1101329-Keneba          GAMBIA       0                    NA                0.0583328   -0.0074983   0.1198625
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0148275    0.0052347   0.0243277
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0163995    0.0001122   0.0324214
