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

studyid                     country                        ever_swasted024    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                          0      219     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                          1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          0       21     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                          0      211     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                          1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                          0       24     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                          1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                          0      268     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                          1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                          0        4     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                          1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          0      246     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          0       15     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          0      236     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          0        9     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                          0      293     375  dead6plus        
ki1000109-EE                PAKISTAN                       0                          1        2     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                          0       78     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                          1        2     375  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                          0     3233    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                          1       21    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                          0      351    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                          1       10    3615  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          0     1172    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          1        5    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          0      205    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          1        7    1389  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          0      331     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          1        2     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          0       67     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          1        2     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          0      576     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          1        3     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          0       38     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          1        0     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1948    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      148    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                          0     2185    2752  dead6plus        
ki1101329-Keneba            GAMBIA                         0                          1       55    2752  dead6plus        
ki1101329-Keneba            GAMBIA                         1                          0      488    2752  dead6plus        
ki1101329-Keneba            GAMBIA                         1                          1       24    2752  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          0     6819    7164  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          1       43    7164  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          0      297    7164  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          1        5    7164  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                          0      419     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                          1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                          0      171     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                          1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          0    10288   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          1      319   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          0      994   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          1       93   11694  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          0     1728    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          1      123    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          0       19    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          1        4    1874  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          0     1109    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          1       24    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          0       24    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          1        4    1161  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          0    19442   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          1      266   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          0     1276   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          1       39   21023  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          0     5049    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          1       41    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          0      334    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          1        9    5433  dead6plus        


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
![](/tmp/7ff1bb5e-1683-4be7-b2d1-c282aefef6d5/05ff182b-6bc6-4617-a1fa-14fb4dcca608/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7ff1bb5e-1683-4be7-b2d1-c282aefef6d5/05ff182b-6bc6-4617-a1fa-14fb4dcca608/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7ff1bb5e-1683-4be7-b2d1-c282aefef6d5/05ff182b-6bc6-4617-a1fa-14fb4dcca608/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7ff1bb5e-1683-4be7-b2d1-c282aefef6d5/05ff182b-6bc6-4617-a1fa-14fb4dcca608/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0064804    0.0037191   0.0092416
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0318660    0.0128679   0.0508640
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0042481   -0.0009729   0.0094691
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0330189    0.0133675   0.0526703
ki1101329-Keneba            GAMBIA         0                    NA                0.0245883    0.0181927   0.0309839
ki1101329-Keneba            GAMBIA         1                    NA                0.0449641    0.0270769   0.0628514
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0062664    0.0043992   0.0081336
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0165563    0.0021640   0.0309486
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0301941    0.0269422   0.0334461
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0823490    0.0658182   0.0988799
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0135052    0.0118831   0.0151273
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0294550    0.0197205   0.0391895
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0080550    0.0055951   0.0105150
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0262391    0.0077658   0.0447123


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0086393   0.0042356   0.0130430
ki1101329-Keneba            GAMBIA         NA                   NA                0.0287064   0.0224666   0.0349461
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0352317   0.0318901   0.0385734
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0145079   0.0128686   0.0161473
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate   ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 4.917311   2.364489   10.226288
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 7.772641   1.672599   36.119813
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.828679   1.137055    2.940987
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.642076   1.054026    6.622767
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 2.727320   2.172139    3.424402
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.181016   1.535019    3.098872
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 3.257484   1.512352    7.016357


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0020950    0.0003686   0.0038215
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0043912    0.0008961   0.0078864
ki1101329-Keneba            GAMBIA         0                    NA                0.0041181    0.0005030   0.0077331
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004338   -0.0001799   0.0010474
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0050376    0.0034419   0.0066333
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0010027    0.0003834   0.0016220
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0011480   -0.0000335   0.0023295


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.2443059    0.0380024   0.4063670
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.5082838   -0.2242311   0.8025007
ki1101329-Keneba            GAMBIA         0                    NA                0.1434554    0.0122688   0.2572183
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0647406   -0.0294852   0.1503422
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1429853    0.0985854   0.1851982
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0691168    0.0264705   0.1098950
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1247426   -0.0053483   0.2379999
