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

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* impfloor
* earlybf
* hfoodsec
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_impfloor
* delta_earlybf
* delta_hfoodsec
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

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




# Results Detail

## Results Plots
![](/tmp/c9fa5be3-278c-4ee0-a663-a077436c263f/f9830d62-fa89-4903-ac6a-db3f77e8ce50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c9fa5be3-278c-4ee0-a663-a077436c263f/f9830d62-fa89-4903-ac6a-db3f77e8ce50/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c9fa5be3-278c-4ee0-a663-a077436c263f/f9830d62-fa89-4903-ac6a-db3f77e8ce50/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c9fa5be3-278c-4ee0-a663-a077436c263f/f9830d62-fa89-4903-ac6a-db3f77e8ce50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0243843   0.0213586   0.0274100
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1166139   0.0859921   0.1472357
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0072917   0.0058413   0.0087420
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0244755   0.0104195   0.0385314
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0058702   0.0035212   0.0082191
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0393364   0.0043865   0.0742864


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
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 4.782336   3.5768360    6.394125
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.356637   1.8368987    6.133713
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 6.701081   2.5151693   17.853467


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0005704   -0.0007885   0.0019292
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0035410    0.0009348   0.0061472
ki1101329-Keneba          GAMBIA       0                    NA                0.0024470    0.0001286   0.0047654
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0036977    0.0023622   0.0050332
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0015548    0.0006919   0.0024177
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0021392    0.0005859   0.0036926


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.1329365   -0.2390885   0.3932644
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4092845    0.0204803   0.6437593
ki1101329-Keneba          GAMBIA       0                    NA                0.1758704    0.0051564   0.3172901
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1316754    0.0849734   0.1759937
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1757532    0.0762064   0.2645729
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2670886    0.0766497   0.4182500
