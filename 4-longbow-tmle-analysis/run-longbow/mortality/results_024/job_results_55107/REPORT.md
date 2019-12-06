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

studyid                     country                        ever_swasted024    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      219     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                        1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                        0       21     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                        1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                        0      211     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                        1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                        0       24     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                        1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                        0      268     273  dead624          
ki0047075b-MAL-ED           PERU                           0                        1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                        0        4     273  dead624          
ki0047075b-MAL-ED           PERU                           1                        1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      246     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       15     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      236     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        9     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                        0      293     375  dead624          
ki1000109-EE                PAKISTAN                       0                        1        2     375  dead624          
ki1000109-EE                PAKISTAN                       1                        0       78     375  dead624          
ki1000109-EE                PAKISTAN                       1                        1        2     375  dead624          
ki1000304-VITAMIN-A         INDIA                          0                        0     3233    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          0                        1       21    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                        0      351    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                        1       10    3615  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                        0     1172    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                        1        5    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                        0      205    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                        1        7    1389  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      331     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        2     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0       67     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        2     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                        0      577     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                        1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                        0       38     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                        1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1948    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      148    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                        0     2211    2752  dead624          
ki1101329-Keneba            GAMBIA                         0                        1       29    2752  dead624          
ki1101329-Keneba            GAMBIA                         1                        0      497    2752  dead624          
ki1101329-Keneba            GAMBIA                         1                        1       15    2752  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0     6827    7164  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1       35    7164  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0      298    7164  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        4    7164  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                        0      419     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                        1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                        0      171     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                        1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0    10296   11694  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      311   11694  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0      995   11694  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1       92   11694  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1728    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                        1      123    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                        0       19    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                        1        4    1874  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0     1112    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       21    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0       25    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1        3    1161  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    19476   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      232   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                        0     1282   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                        1       33   21023  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     5050    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       40    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                        0      334    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                        1        9    5433  dead624          


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
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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
![](/tmp/34aefb0b-a3ea-4334-bb4b-e3f2b95ec899/a360412b-f27d-4cc9-be4e-f9358bf9fe13/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34aefb0b-a3ea-4334-bb4b-e3f2b95ec899/a360412b-f27d-4cc9-be4e-f9358bf9fe13/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/34aefb0b-a3ea-4334-bb4b-e3f2b95ec899/a360412b-f27d-4cc9-be4e-f9358bf9fe13/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/34aefb0b-a3ea-4334-bb4b-e3f2b95ec899/a360412b-f27d-4cc9-be4e-f9358bf9fe13/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0064946    0.0037305   0.0092588
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0308677    0.0119485   0.0497868
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0042481   -0.0009729   0.0094691
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0330189    0.0133675   0.0526703
ki1101329-Keneba          GAMBIA       0                    NA                0.0129468    0.0082707   0.0176229
ki1101329-Keneba          GAMBIA       1                    NA                0.0300530    0.0153207   0.0447853
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0294318    0.0262207   0.0326429
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0819493    0.0654700   0.0984286
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0117798    0.0102642   0.0132955
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0251601    0.0159080   0.0344122
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0078585    0.0054449   0.0102722
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0262391    0.0077658   0.0447123


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0085754   0.0055692   0.0115815
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0086393   0.0042356   0.0130430
ki1101329-Keneba          GAMBIA       NA                   NA                0.0159884   0.0113013   0.0206755
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0344621   0.0311558   0.0377684
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0126052   0.0110619   0.0141486
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0090190   0.0064698   0.0115681


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 4.752788   2.254177   10.020950
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 7.772641   1.672599   36.119813
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.321274   1.262481    4.268034
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.784381   2.215420    3.499462
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.135859   1.450115    3.145882
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.338921   1.549091    7.196735


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0020807    0.0003535   0.0038080
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0043912    0.0008961   0.0078864
ki1101329-Keneba          GAMBIA       0                    NA                0.0030416    0.0001786   0.0059046
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0050303    0.0034429   0.0066178
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0008254    0.0002369   0.0014139
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0011604   -0.0000207   0.0023415


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2426408    0.0361144   0.4049160
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5082838   -0.2242311   0.8025007
ki1101329-Keneba          GAMBIA       0                    NA                0.1902385    0.0007196   0.3438142
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1459672    0.1008614   0.1888101
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0654804    0.0188975   0.1098515
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1286636   -0.0037856   0.2436362
