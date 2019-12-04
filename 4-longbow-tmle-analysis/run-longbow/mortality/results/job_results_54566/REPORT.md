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

**Intervention Variable:** pers_wasted06

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

studyid                     country                        pers_wasted06    dead   n_cell       n
--------------------------  -----------------------------  --------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      251     263
ki0047075b-MAL-ED           BANGLADESH                     0                   1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                   0       10     263
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     263
ki0047075b-MAL-ED           INDIA                          0                   0      231     251
ki0047075b-MAL-ED           INDIA                          0                   1        2     251
ki0047075b-MAL-ED           INDIA                          1                   0       18     251
ki0047075b-MAL-ED           INDIA                          1                   1        0     251
ki0047075b-MAL-ED           PERU                           0                   0      300     302
ki0047075b-MAL-ED           PERU                           0                   1        2     302
ki0047075b-MAL-ED           PERU                           1                   0        0     302
ki0047075b-MAL-ED           PERU                           1                   1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      305     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0        7     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      258     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     261
ki1000109-EE                PAKISTAN                       0                   0      349     380
ki1000109-EE                PAKISTAN                       0                   1        4     380
ki1000109-EE                PAKISTAN                       1                   0       27     380
ki1000109-EE                PAKISTAN                       1                   1        0     380
ki1000304-VITAMIN-A         INDIA                          0                   0     2967    3895
ki1000304-VITAMIN-A         INDIA                          0                   1       36    3895
ki1000304-VITAMIN-A         INDIA                          1                   0      853    3895
ki1000304-VITAMIN-A         INDIA                          1                   1       39    3895
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1340    1508
ki1000304b-SAS-CompFeed     INDIA                          0                   1       24    1508
ki1000304b-SAS-CompFeed     INDIA                          1                   0      132    1508
ki1000304b-SAS-CompFeed     INDIA                          1                   1       12    1508
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      316     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0       96     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                   0      669     700
ki1017093b-PROVIDE          BANGLADESH                     0                   1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1                   0       27     700
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2327    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0       68    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396
ki1101329-Keneba            GAMBIA                         0                   0     2331    2480
ki1101329-Keneba            GAMBIA                         0                   1       51    2480
ki1101329-Keneba            GAMBIA                         1                   0       92    2480
ki1101329-Keneba            GAMBIA                         1                   1        6    2480
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0      296     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0       40     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                   0      592     686
ki1113344-GMS-Nepal         NEPAL                          0                   1        5     686
ki1113344-GMS-Nepal         NEPAL                          1                   0       87     686
ki1113344-GMS-Nepal         NEPAL                          1                   1        2     686
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0    12019   13862
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      846   13862
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0      796   13862
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1      201   13862
ki1148112-iLiNS-DOSE        MALAWI                         0                   0     1675    1814
ki1148112-iLiNS-DOSE        MALAWI                         0                   1      110    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       25    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        4    1814
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1091    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       33    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       53    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        5    1182
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    24564   26918
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      446   26918
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     1793   26918
kiGH5241-JiVitA-3           BANGLADESH                     1                   1      115   26918
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4866    5252
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       42    5252
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      339    5252
kiGH5241-JiVitA-4           BANGLADESH                     1                   1        5    5252


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
![](/tmp/e5a3df92-b55e-46d2-a695-83cde1630a96/43c709ee-6e1c-43f7-b91f-c0c7d2f641ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e5a3df92-b55e-46d2-a695-83cde1630a96/43c709ee-6e1c-43f7-b91f-c0c7d2f641ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e5a3df92-b55e-46d2-a695-83cde1630a96/43c709ee-6e1c-43f7-b91f-c0c7d2f641ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e5a3df92-b55e-46d2-a695-83cde1630a96/43c709ee-6e1c-43f7-b91f-c0c7d2f641ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0120547   0.0081611   0.0159484
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0424306   0.0290682   0.0557930
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0175383   0.0097705   0.0253061
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0960108   0.0436683   0.1483533
ki1101329-Keneba          GAMBIA       0                    NA                0.0214106   0.0155965   0.0272246
ki1101329-Keneba          GAMBIA       1                    NA                0.0612245   0.0137494   0.1086996
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0660244   0.0617281   0.0703207
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2269623   0.1964897   0.2574348
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0293594   0.0194864   0.0392325
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0862069   0.0139444   0.1584694
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0178594   0.0162408   0.0194779
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0594286   0.0476907   0.0711664
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0085575   0.0057769   0.0113380
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0145349   0.0031924   0.0258774


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1101329-Keneba          GAMBIA       NA                   NA                0.0229839   0.0170850   0.0288828
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0755302   0.0711312   0.0799293
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0321489   0.0220886   0.0422092
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0208411   0.0190926   0.0225895
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089490   0.0062382   0.0116597


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.519824   2.241593   5.526946
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 5.474342   3.293463   9.099365
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.859544   1.257420   6.502991
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 3.437553   2.962403   3.988914
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 2.936259   1.190000   7.245058
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.327586   2.693696   4.110644
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.698505   0.732828   3.936693


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0072007    0.0039756   0.0104258
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0063344    0.0008249   0.0118438
ki1101329-Keneba          GAMBIA       0                    NA                0.0015733   -0.0003413   0.0034878
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0095059    0.0076274   0.0113843
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0027895   -0.0008572   0.0064362
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0029817    0.0021839   0.0037795
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0003915   -0.0003701   0.0011531


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.3739570    0.2105065   0.5035680
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2653393    0.0789971   0.4139798
ki1101329-Keneba          GAMBIA       0                    NA                0.0684520   -0.0167295   0.1464969
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1258550    0.1015506   0.1495020
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0867672   -0.0305119   0.1906991
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1430688    0.1068892   0.1777828
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0437497   -0.0456966   0.1255450
