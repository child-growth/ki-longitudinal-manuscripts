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

**Intervention Variable:** ever_underweight06

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

studyid                     country                        ever_underweight06    dead624   n_cell       n
--------------------------  -----------------------------  -------------------  --------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                           0      166     239
ki0047075b-MAL-ED           BANGLADESH                     0                           1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                           0       73     239
ki0047075b-MAL-ED           BANGLADESH                     1                           1        0     239
ki0047075b-MAL-ED           INDIA                          0                           0      144     235
ki0047075b-MAL-ED           INDIA                          0                           1        0     235
ki0047075b-MAL-ED           INDIA                          1                           0       91     235
ki0047075b-MAL-ED           INDIA                          1                           1        0     235
ki0047075b-MAL-ED           PERU                           0                           0      228     270
ki0047075b-MAL-ED           PERU                           0                           1        1     270
ki0047075b-MAL-ED           PERU                           1                           0       41     270
ki0047075b-MAL-ED           PERU                           1                           1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           0      219     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           0       40     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      207     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0       38     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0     245
ki1000304-VITAMIN-A         INDIA                          0                           0     1649    3496
ki1000304-VITAMIN-A         INDIA                          0                           1        7    3496
ki1000304-VITAMIN-A         INDIA                          1                           0     1832    3496
ki1000304-VITAMIN-A         INDIA                          1                           1        8    3496
ki1000304b-SAS-CompFeed     INDIA                          0                           0      811    1387
ki1000304b-SAS-CompFeed     INDIA                          0                           1        3    1387
ki1000304b-SAS-CompFeed     INDIA                          1                           0      564    1387
ki1000304b-SAS-CompFeed     INDIA                          1                           1        9    1387
ki1000304b-SAS-FoodSuppl    INDIA                          0                           0      204     385
ki1000304b-SAS-FoodSuppl    INDIA                          0                           1        1     385
ki1000304b-SAS-FoodSuppl    INDIA                          1                           0      179     385
ki1000304b-SAS-FoodSuppl    INDIA                          1                           1        1     385
ki1017093b-PROVIDE          BANGLADESH                     0                           0      416     613
ki1017093b-PROVIDE          BANGLADESH                     0                           1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                           0      197     613
ki1017093b-PROVIDE          BANGLADESH                     1                           1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     1790    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        0    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      226    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2016
ki1101329-Keneba            GAMBIA                         0                           0     1777    2228
ki1101329-Keneba            GAMBIA                         0                           1       22    2228
ki1101329-Keneba            GAMBIA                         1                           0      420    2228
ki1101329-Keneba            GAMBIA                         1                           1        9    2228
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           0       35      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           0        8      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                           0      372     588
ki1113344-GMS-Nepal         NEPAL                          0                           1        1     588
ki1113344-GMS-Nepal         NEPAL                          1                           0      214     588
ki1113344-GMS-Nepal         NEPAL                          1                           1        1     588
ki1126311-ZVITAMBO          ZIMBABWE                       0                           0     8816   10682
ki1126311-ZVITAMBO          ZIMBABWE                       0                           1      185   10682
ki1126311-ZVITAMBO          ZIMBABWE                       1                           0     1567   10682
ki1126311-ZVITAMBO          ZIMBABWE                       1                           1      114   10682
ki1148112-iLiNS-DOSE        MALAWI                         0                           0      873    1003
ki1148112-iLiNS-DOSE        MALAWI                         0                           1        4    1003
ki1148112-iLiNS-DOSE        MALAWI                         1                           0      124    1003
ki1148112-iLiNS-DOSE        MALAWI                         1                           1        2    1003
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           0      973    1129
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           1       14    1129
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           0      140    1129
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           1        2    1129
kiGH5241-JiVitA-3           BANGLADESH                     0                           0    10076   17181
kiGH5241-JiVitA-3           BANGLADESH                     0                           1       68   17181
kiGH5241-JiVitA-3           BANGLADESH                     1                           0     6954   17181
kiGH5241-JiVitA-3           BANGLADESH                     1                           1       83   17181
kiGH5241-JiVitA-4           BANGLADESH                     0                           0     3512    5119
kiGH5241-JiVitA-4           BANGLADESH                     0                           1       17    5119
kiGH5241-JiVitA-4           BANGLADESH                     1                           0     1566    5119
kiGH5241-JiVitA-4           BANGLADESH                     1                           1       24    5119


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
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
![](/tmp/cc75fe75-7001-4fdd-8b7f-0a827164978b/02a3445b-fdea-417b-a8b6-85fdadd42b24/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cc75fe75-7001-4fdd-8b7f-0a827164978b/02a3445b-fdea-417b-a8b6-85fdadd42b24/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cc75fe75-7001-4fdd-8b7f-0a827164978b/02a3445b-fdea-417b-a8b6-85fdadd42b24/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cc75fe75-7001-4fdd-8b7f-0a827164978b/02a3445b-fdea-417b-a8b6-85fdadd42b24/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A   INDIA        0                    NA                0.0042271   0.0011018   0.0073523
ki1000304-VITAMIN-A   INDIA        1                    NA                0.0043478   0.0013411   0.0073545
ki1101329-Keneba      GAMBIA       0                    NA                0.0122290   0.0071491   0.0173089
ki1101329-Keneba      GAMBIA       1                    NA                0.0209790   0.0074145   0.0345436
ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0228325   0.0201102   0.0255548
ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                0.0969438   0.0694844   0.1244033
kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0061711   0.0050011   0.0073410
kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0140565   0.0080171   0.0200959
kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0044271   0.0019055   0.0069486
kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0162912   0.0051634   0.0274190


### Parameter: E(Y)


studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A   INDIA        NA                   NA                0.0042906   0.0021237   0.0064576
ki1101329-Keneba      GAMBIA       NA                   NA                0.0139138   0.0090490   0.0187787
ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0279910   0.0248629   0.0311192
kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0087888   0.0073712   0.0102064
kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0080094   0.0053317   0.0106871


### Parameter: RR


studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A   INDIA        1                    0                 1.028571   0.3737468   2.830685
ki1101329-Keneba      GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba      GAMBIA       1                    0                 1.715512   0.7954845   3.699608
ki1126311-ZVITAMBO    ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO    ZIMBABWE     1                    0                 4.245877   3.1224271   5.773545
kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3     BANGLADESH   1                    0                 2.277804   1.4180806   3.658744
kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4     BANGLADESH   1                    0                 3.679910   1.5083803   8.977668


### Parameter: PAR


studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A   INDIA        0                    NA                0.0000636   -0.0022189   0.0023461
ki1101329-Keneba      GAMBIA       0                    NA                0.0016848   -0.0011079   0.0044775
ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0051585    0.0031969   0.0071202
kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0026177    0.0014267   0.0038088
kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0035823    0.0015284   0.0056363


### Parameter: PAF


studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A   INDIA        0                    NA                0.0148148   -0.6904476   0.4258385
ki1101329-Keneba      GAMBIA       0                    NA                0.1210888   -0.0988713   0.2970196
ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.1842929    0.1196320   0.2442046
kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2978469    0.1754370   0.4020844
kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4472663    0.1615407   0.6356239
