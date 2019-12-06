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

studyid                     country                        ever_swasted06_noBW    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                              0      232     239  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                              1        0     239  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                              0        7     239  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                              1        0     239  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                              0      223     229  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                              1        0     229  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                              0        6     229  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                              1        0     229  dead6plus        
ki0047075b-MAL-ED           PERU                           0                              0      271     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                              1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                              0        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                              1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              0      257     260  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              1        0     260  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              0        3     260  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              1        0     260  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      242     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0        3     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                              0      347     371  dead6plus        
ki1000109-EE                PAKISTAN                       0                              1        4     371  dead6plus        
ki1000109-EE                PAKISTAN                       1                              0       20     371  dead6plus        
ki1000109-EE                PAKISTAN                       1                              1        0     371  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                              0     3052    3076  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                              1       22    3076  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                              0        2    3076  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                              1        0    3076  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                              0     1307    1357  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                              1        8    1357  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                              0       39    1357  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                              1        3    1357  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                              0      328     329  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                              1        1     329  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                              0        0     329  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                              1        0     329  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                              0      602     609  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                              1        3     609  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                              0        4     609  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                              1        0     609  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     2044    2080  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        0    2080  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       36    2080  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2080  dead6plus        
ki1101329-Keneba            GAMBIA                         0                              0     2114    2262  dead6plus        
ki1101329-Keneba            GAMBIA                         0                              1       58    2262  dead6plus        
ki1101329-Keneba            GAMBIA                         1                              0       82    2262  dead6plus        
ki1101329-Keneba            GAMBIA                         1                              1        8    2262  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              0       39      39  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              1        0      39  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              0        0      39  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              1        0      39  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                              0      535     568  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                              1        2     568  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                              0       31     568  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                              1        0     568  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                              0    10885   11378  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                              1      383   11378  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                              0      105   11378  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                              1        5   11378  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                              0     1058    1128  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                              1       70    1128  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                              0        0    1128  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                              1        0    1128  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              0     1029    1055  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              1       26    1055  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              0        0    1055  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              1        0    1055  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                              0    19925   20497  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                              1      270   20497  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                              0      290   20497  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                              1       12   20497  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                              0     4888    4948  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                              1       39    4948  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                              0       20    4948  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                              1        1    4948  dead6plus        


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
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
![](/tmp/a39d69da-6cf8-4199-a7b1-abbf30e446e7/d0ca7e6e-c19e-4fc9-ac6d-801f0b711959/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a39d69da-6cf8-4199-a7b1-abbf30e446e7/d0ca7e6e-c19e-4fc9-ac6d-801f0b711959/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a39d69da-6cf8-4199-a7b1-abbf30e446e7/d0ca7e6e-c19e-4fc9-ac6d-801f0b711959/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a39d69da-6cf8-4199-a7b1-abbf30e446e7/d0ca7e6e-c19e-4fc9-ac6d-801f0b711959/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0267035   0.0199221   0.0334849
ki1101329-Keneba     GAMBIA       1                    NA                0.0888889   0.0300815   0.1476963
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0339901   0.0305916   0.0373886
ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0454545   0.0304008   0.0605083
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0133668   0.0117641   0.0149696
kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0444518   0.0283242   0.0605793


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       NA                   NA                0.0291777   0.0222404   0.0361151
ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0341009   0.0307660   0.0374358
kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0137581   0.0121339   0.0153823


### Parameter: RR


studyid              country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1101329-Keneba     GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba     GAMBIA       1                    0                 3.328736   1.6387643   6.761485
ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 1.337289   0.9461998   1.890027
kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3    BANGLADESH   1                    0                 3.325531   2.2775441   4.855737


### Parameter: PAR


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0024742    0.0000662   0.0048822
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0001108   -0.0002755   0.0004972
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0003913   -0.0000164   0.0007990


### Parameter: PAF


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0847983    0.0010138   0.1615557
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0032502   -0.0081837   0.0145545
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0284403   -0.0012279   0.0572294
