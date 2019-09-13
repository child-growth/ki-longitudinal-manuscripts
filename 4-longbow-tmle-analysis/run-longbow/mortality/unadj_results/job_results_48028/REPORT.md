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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sunderweight06    dead   n_cell       n
--------------------------  -----------------------------  --------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      227     239
ki0047075b-MAL-ED           BANGLADESH                     0                         1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                         0       12     239
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     239
ki0047075b-MAL-ED           INDIA                          0                         0      206     235
ki0047075b-MAL-ED           INDIA                          0                         1        0     235
ki0047075b-MAL-ED           INDIA                          1                         0       29     235
ki0047075b-MAL-ED           INDIA                          1                         1        0     235
ki0047075b-MAL-ED           PERU                           0                         0      261     270
ki0047075b-MAL-ED           PERU                           0                         1        1     270
ki0047075b-MAL-ED           PERU                           1                         0        8     270
ki0047075b-MAL-ED           PERU                           1                         1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      251     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0        8     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      238     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        7     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     245
ki1000304-VITAMIN-A         INDIA                          0                         0     2678    3496
ki1000304-VITAMIN-A         INDIA                          0                         1       10    3496
ki1000304-VITAMIN-A         INDIA                          1                         0      803    3496
ki1000304-VITAMIN-A         INDIA                          1                         1        5    3496
ki1000304b-SAS-CompFeed     INDIA                          0                         0     1168    1387
ki1000304b-SAS-CompFeed     INDIA                          0                         1        6    1387
ki1000304b-SAS-CompFeed     INDIA                          1                         0      207    1387
ki1000304b-SAS-CompFeed     INDIA                          1                         1        6    1387
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      309     385
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        1     385
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0       74     385
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        1     385
ki1017093b-PROVIDE          BANGLADESH                     0                         0      572     613
ki1017093b-PROVIDE          BANGLADESH                     0                         1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                         0       41     613
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1959    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       57    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2017
ki1101329-Keneba            GAMBIA                         0                         0     2069    2228
ki1101329-Keneba            GAMBIA                         0                         1       24    2228
ki1101329-Keneba            GAMBIA                         1                         0      128    2228
ki1101329-Keneba            GAMBIA                         1                         1        7    2228
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0       40      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0        3      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                         0      519     588
ki1113344-GMS-Nepal         NEPAL                          0                         1        1     588
ki1113344-GMS-Nepal         NEPAL                          1                         0       67     588
ki1113344-GMS-Nepal         NEPAL                          1                         1        1     588
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0     9951   10683
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      247   10683
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0      432   10683
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1       53   10683
ki1148112-iLiNS-DOSE        MALAWI                         0                         0      970    1003
ki1148112-iLiNS-DOSE        MALAWI                         0                         1        4    1003
ki1148112-iLiNS-DOSE        MALAWI                         1                         0       27    1003
ki1148112-iLiNS-DOSE        MALAWI                         1                         1        2    1003
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1069    1129
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       15    1129
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0       44    1129
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        1    1129
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    14777   17182
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      110   17182
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     2253   17182
kiGH5241-JiVitA-3           BANGLADESH                     1                         1       42   17182
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     4643    5119
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       28    5119
kiGH5241-JiVitA-4           BANGLADESH                     1                         0      435    5119
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       13    5119


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/8dfa743d-51b4-4358-8b5b-902ded3875e2/170385fb-f56f-4069-8db1-f184bc4a1c1f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8dfa743d-51b4-4358-8b5b-902ded3875e2/170385fb-f56f-4069-8db1-f184bc4a1c1f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8dfa743d-51b4-4358-8b5b-902ded3875e2/170385fb-f56f-4069-8db1-f184bc4a1c1f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8dfa743d-51b4-4358-8b5b-902ded3875e2/170385fb-f56f-4069-8db1-f184bc4a1c1f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0037202   0.0014184   0.0060221
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0061881   0.0007801   0.0115961
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0051107   0.0008729   0.0093486
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0281690   0.0121540   0.0441840
ki1101329-Keneba          GAMBIA       0                    NA                0.0114668   0.0069046   0.0160290
ki1101329-Keneba          GAMBIA       1                    NA                0.0518519   0.0144409   0.0892628
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0242204   0.0212366   0.0272043
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1092784   0.0815109   0.1370458
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0073890   0.0060104   0.0087676
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0183007   0.0124945   0.0241068
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0059944   0.0035762   0.0084127
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0290179   0.0114475   0.0465882


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0042906   0.0021237   0.0064576
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0086518   0.0042509   0.0130526
ki1101329-Keneba          GAMBIA       NA                   NA                0.0139138   0.0090490   0.0187787
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0280820   0.0249491   0.0312149
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0088465   0.0074260   0.0102669
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0080094   0.0053317   0.0106871


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 1.663366   0.5701007    4.853156
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 5.511737   2.1816571   13.924849
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 4.521914   1.9837895   10.307395
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 4.511824   3.4018297    5.984003
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.476744   1.7125949    3.581851
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.840800   2.3269503   10.070412


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0005704   -0.0007885   0.0019292
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0035410    0.0009348   0.0061472
ki1101329-Keneba          GAMBIA       0                    NA                0.0024470    0.0001286   0.0047654
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0038616    0.0025500   0.0051732
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0014575    0.0006588   0.0022562
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0020149    0.0004563   0.0035736


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.1329365   -0.2390885   0.3932644
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4092845    0.0204803   0.6437593
ki1101329-Keneba          GAMBIA       0                    NA                0.1758704    0.0051564   0.3172901
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1375103    0.0921086   0.1806416
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1647517    0.0750406   0.2457617
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2515730    0.0558438   0.4067264
