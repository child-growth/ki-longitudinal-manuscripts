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

**Intervention Variable:** ever_sstunted624

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sstunted624    dead   n_cell       n
--------------------------  -----------------------------  -----------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                      0      146     159
ki0047075b-MAL-ED           BANGLADESH                     0                      1        0     159
ki0047075b-MAL-ED           BANGLADESH                     1                      0       13     159
ki0047075b-MAL-ED           BANGLADESH                     1                      1        0     159
ki0047075b-MAL-ED           INDIA                          0                      0      145     155
ki0047075b-MAL-ED           INDIA                          0                      1        0     155
ki0047075b-MAL-ED           INDIA                          1                      0       10     155
ki0047075b-MAL-ED           INDIA                          1                      1        0     155
ki0047075b-MAL-ED           PERU                           0                      0      146     149
ki0047075b-MAL-ED           PERU                           0                      1        0     149
ki0047075b-MAL-ED           PERU                           1                      0        3     149
ki0047075b-MAL-ED           PERU                           1                      1        0     149
ki0047075b-MAL-ED           SOUTH AFRICA                   0                      0      147     159
ki0047075b-MAL-ED           SOUTH AFRICA                   0                      1        0     159
ki0047075b-MAL-ED           SOUTH AFRICA                   1                      0       12     159
ki0047075b-MAL-ED           SOUTH AFRICA                   1                      1        0     159
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0       94     145
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        0     145
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       51     145
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     145
ki1000304-VITAMIN-A         INDIA                          0                      0     2374    2759
ki1000304-VITAMIN-A         INDIA                          0                      1       10    2759
ki1000304-VITAMIN-A         INDIA                          1                      0      374    2759
ki1000304-VITAMIN-A         INDIA                          1                      1        1    2759
ki1000304b-SAS-CompFeed     INDIA                          0                      0      716     813
ki1000304b-SAS-CompFeed     INDIA                          0                      1        2     813
ki1000304b-SAS-CompFeed     INDIA                          1                      0       95     813
ki1000304b-SAS-CompFeed     INDIA                          1                      1        0     813
ki1000304b-SAS-FoodSuppl    INDIA                          0                      0      179     243
ki1000304b-SAS-FoodSuppl    INDIA                          0                      1        0     243
ki1000304b-SAS-FoodSuppl    INDIA                          1                      0       63     243
ki1000304b-SAS-FoodSuppl    INDIA                          1                      1        1     243
ki1017093b-PROVIDE          BANGLADESH                     0                      0      442     457
ki1017093b-PROVIDE          BANGLADESH                     0                      1        0     457
ki1017093b-PROVIDE          BANGLADESH                     1                      0       15     457
ki1017093b-PROVIDE          BANGLADESH                     1                      1        0     457
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      0     1533    1602
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      1        1    1602
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      0       68    1602
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      1        0    1602
ki1101329-Keneba            GAMBIA                         0                      0     1802    1989
ki1101329-Keneba            GAMBIA                         0                      1       14    1989
ki1101329-Keneba            GAMBIA                         1                      0      171    1989
ki1101329-Keneba            GAMBIA                         1                      1        2    1989
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                      0     6262    7147
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                      1       33    7147
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                      0      846    7147
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                      1        6    7147
ki1113344-GMS-Nepal         NEPAL                          0                      0      374     426
ki1113344-GMS-Nepal         NEPAL                          0                      1        1     426
ki1113344-GMS-Nepal         NEPAL                          1                      0       51     426
ki1113344-GMS-Nepal         NEPAL                          1                      1        0     426
ki1126311-ZVITAMBO          ZIMBABWE                       0                      0     7090    7762
ki1126311-ZVITAMBO          ZIMBABWE                       0                      1      128    7762
ki1126311-ZVITAMBO          ZIMBABWE                       1                      0      504    7762
ki1126311-ZVITAMBO          ZIMBABWE                       1                      1       40    7762
ki1148112-iLiNS-DOSE        MALAWI                         0                      0     1211    1407
ki1148112-iLiNS-DOSE        MALAWI                         0                      1       20    1407
ki1148112-iLiNS-DOSE        MALAWI                         1                      0      172    1407
ki1148112-iLiNS-DOSE        MALAWI                         1                      1        4    1407
ki1148112-iLiNS-DYAD-M      MALAWI                         0                      0      862     972
ki1148112-iLiNS-DYAD-M      MALAWI                         0                      1       12     972
ki1148112-iLiNS-DYAD-M      MALAWI                         1                      0       95     972
ki1148112-iLiNS-DYAD-M      MALAWI                         1                      1        3     972
kiGH5241-JiVitA-3           BANGLADESH                     0                      0    10189   10514
kiGH5241-JiVitA-3           BANGLADESH                     0                      1       65   10514
kiGH5241-JiVitA-3           BANGLADESH                     1                      0      257   10514
kiGH5241-JiVitA-3           BANGLADESH                     1                      1        3   10514
kiGH5241-JiVitA-4           BANGLADESH                     0                      0     3394    3649
kiGH5241-JiVitA-4           BANGLADESH                     0                      1       25    3649
kiGH5241-JiVitA-4           BANGLADESH                     1                      0      226    3649
kiGH5241-JiVitA-4           BANGLADESH                     1                      1        4    3649


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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
![](/tmp/d0f63f2b-fcb4-48bb-9119-1e4264a95ef5/39c7144f-a738-4724-91e2-242f93d1b951/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d0f63f2b-fcb4-48bb-9119-1e4264a95ef5/39c7144f-a738-4724-91e2-242f93d1b951/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d0f63f2b-fcb4-48bb-9119-1e4264a95ef5/39c7144f-a738-4724-91e2-242f93d1b951/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d0f63f2b-fcb4-48bb-9119-1e4264a95ef5/39c7144f-a738-4724-91e2-242f93d1b951/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052423   0.0034582   0.0070263
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0070423   0.0014269   0.0126576
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0177334   0.0146885   0.0207784
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0735294   0.0515952   0.0954637


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054568   0.0037488   0.0071649
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0216439   0.0184064   0.0248814


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.343363   0.5645119   3.196788
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 4.146369   2.9389113   5.849914


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0002146   -0.0004879   0.0009171
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0039105    0.0023264   0.0054945


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0393230   -0.0977756   0.1592997
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1806726    0.1095452   0.2461186
