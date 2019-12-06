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

**Outcome Variable:** dead624

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

studyid                     country                        ever_swasted06_noBW    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                            0      232     239  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                            1        0     239  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                            0        7     239  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                            1        0     239  dead624          
ki0047075b-MAL-ED           INDIA                          0                            0      223     229  dead624          
ki0047075b-MAL-ED           INDIA                          0                            1        0     229  dead624          
ki0047075b-MAL-ED           INDIA                          1                            0        6     229  dead624          
ki0047075b-MAL-ED           INDIA                          1                            1        0     229  dead624          
ki0047075b-MAL-ED           PERU                           0                            0      271     273  dead624          
ki0047075b-MAL-ED           PERU                           0                            1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                            0        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                            1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            0      257     260  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            1        0     260  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            0        3     260  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            1        0     260  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      242     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0        3     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                            0      347     371  dead624          
ki1000109-EE                PAKISTAN                       0                            1        4     371  dead624          
ki1000109-EE                PAKISTAN                       1                            0       20     371  dead624          
ki1000109-EE                PAKISTAN                       1                            1        0     371  dead624          
ki1000304-VITAMIN-A         INDIA                          0                            0     3052    3076  dead624          
ki1000304-VITAMIN-A         INDIA                          0                            1       22    3076  dead624          
ki1000304-VITAMIN-A         INDIA                          1                            0        2    3076  dead624          
ki1000304-VITAMIN-A         INDIA                          1                            1        0    3076  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                            0     1307    1357  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                            1        8    1357  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                            0       39    1357  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                            1        3    1357  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                            0      328     329  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                            1        1     329  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                            0        0     329  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                            1        0     329  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                            0      603     609  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                            1        2     609  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                            0        4     609  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                            1        0     609  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     2044    2080  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2080  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0       36    2080  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2080  dead624          
ki1101329-Keneba            GAMBIA                         0                            0     2139    2262  dead624          
ki1101329-Keneba            GAMBIA                         0                            1       33    2262  dead624          
ki1101329-Keneba            GAMBIA                         1                            0       85    2262  dead624          
ki1101329-Keneba            GAMBIA                         1                            1        5    2262  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            0       39      39  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            1        0      39  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            0        0      39  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            1        0      39  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                            0      535     568  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                            1        2     568  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                            0       31     568  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                            1        0     568  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                            0    10894   11378  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                            1      374   11378  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                            0      105   11378  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                            1        5   11378  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                            0     1058    1128  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                            1       70    1128  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                            0        0    1128  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                            1        0    1128  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            0     1033    1055  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            1       22    1055  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            0        0    1055  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            1        0    1055  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                            0    19960   20497  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                            1      235   20497  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                            0      292   20497  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                            1       10   20497  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                            0     4889    4948  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                            1       38    4948  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                            0       20    4948  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                            1        1    4948  dead624          


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
![](/tmp/c743fc9f-7195-40e2-9774-ebfc6a3b9fc0/83af4487-e17d-44df-b22c-b9c98d8becfe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c743fc9f-7195-40e2-9774-ebfc6a3b9fc0/83af4487-e17d-44df-b22c-b9c98d8becfe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c743fc9f-7195-40e2-9774-ebfc6a3b9fc0/83af4487-e17d-44df-b22c-b9c98d8becfe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c743fc9f-7195-40e2-9774-ebfc6a3b9fc0/83af4487-e17d-44df-b22c-b9c98d8becfe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0151934   0.0100480   0.0203387
ki1101329-Keneba     GAMBIA       1                    NA                0.0555556   0.0082214   0.1028897
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0331913   0.0298316   0.0365511
ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0454545   0.0304008   0.0605083
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0116360   0.0101310   0.0131409
kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0330928   0.0177155   0.0484700


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       NA                   NA                0.0167993   0.0115019   0.0220967
ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0333099   0.0300126   0.0366072
kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0119530   0.0104197   0.0134862


### Parameter: RR


studyid              country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1101329-Keneba     GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba     GAMBIA       1                    0                 3.656566   1.4618039   9.146557
ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 1.369470   0.9686208   1.936205
kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3    BANGLADESH   1                    0                 2.844006   1.7657849   4.580608


### Parameter: PAR


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0016059   -0.0003162   0.0035280
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0001186   -0.0002677   0.0005048
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0003170   -0.0000713   0.0007053


### Parameter: PAF


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0955946   -0.0219413   0.1996125
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0035592   -0.0081462   0.0151288
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0265205   -0.0059955   0.0579855
