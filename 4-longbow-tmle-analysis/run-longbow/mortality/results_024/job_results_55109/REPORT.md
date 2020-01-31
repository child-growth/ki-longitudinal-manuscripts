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

**Intervention Variable:** ever_stunted024

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

studyid                     country                        ever_stunted024    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                        0       91     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                        1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                        0      149     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                        1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                        0       89     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                        1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                        0      146     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                        1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                        0       92     273  dead624          
ki0047075b-MAL-ED           PERU                           0                        1        0     273  dead624          
ki0047075b-MAL-ED           PERU                           1                        0      180     273  dead624          
ki0047075b-MAL-ED           PERU                           1                        1        1     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0       99     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0      162     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0       31     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0      214     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                        0       39     374  dead624          
ki1000109-EE                PAKISTAN                       0                        1        0     374  dead624          
ki1000109-EE                PAKISTAN                       1                        0      331     374  dead624          
ki1000109-EE                PAKISTAN                       1                        1        4     374  dead624          
ki1000304-VITAMIN-A         INDIA                          0                        0     1494    3614  dead624          
ki1000304-VITAMIN-A         INDIA                          0                        1        9    3614  dead624          
ki1000304-VITAMIN-A         INDIA                          1                        0     2089    3614  dead624          
ki1000304-VITAMIN-A         INDIA                          1                        1       22    3614  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                        0      404    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                        1        0    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                        0      973    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                        1       12    1389  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0       59     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        0     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0      339     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        4     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                        0      319     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                        1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                        0      296     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                        1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1312    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      784    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                        0     1281    2748  dead624          
ki1101329-Keneba            GAMBIA                         0                        1       16    2748  dead624          
ki1101329-Keneba            GAMBIA                         1                        0     1423    2748  dead624          
ki1101329-Keneba            GAMBIA                         1                        1       28    2748  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0     4566    7162  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1       22    7162  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0     2557    7162  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1       17    7162  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                        0      174     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                        1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                        0      416     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                        1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0     6242   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      128   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0     5060   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1      278   11708  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                        0      864    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                        1       62    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                        0      883    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                        1       65    1874  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0      592    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1        9    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0      545    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1       15    1161  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    10313   21039  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                        1       97   21039  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                        0    10456   21039  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                        1      173   21039  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     2257    5432  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       15    5432  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                        0     3126    5432  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                        1       34    5432  dead624          


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
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

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
![](/tmp/f8f7f5f5-bf37-49f9-905e-d826de9dbe94/7afd7230-37e0-4a38-a30a-0b2a48471768/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f8f7f5f5-bf37-49f9-905e-d826de9dbe94/7afd7230-37e0-4a38-a30a-0b2a48471768/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f8f7f5f5-bf37-49f9-905e-d826de9dbe94/7afd7230-37e0-4a38-a30a-0b2a48471768/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f8f7f5f5-bf37-49f9-905e-d826de9dbe94/7afd7230-37e0-4a38-a30a-0b2a48471768/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0059880   0.0020871   0.0098889
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0104216   0.0060889   0.0147543
ki1101329-Keneba            GAMBIA         0                    NA                0.0123210   0.0062493   0.0183927
ki1101329-Keneba            GAMBIA         1                    NA                0.0191957   0.0120791   0.0263123
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048564   0.0028325   0.0068804
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0065102   0.0034320   0.0095884
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0209183   0.0172859   0.0245507
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0502093   0.0442973   0.0561212
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0669553   0.0505915   0.0833192
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0696802   0.0531695   0.0861908
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0149750   0.0052609   0.0246892
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0267857   0.0134075   0.0401639
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0099195   0.0078168   0.0120222
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0160552   0.0132471   0.0188634
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0066934   0.0026905   0.0106964
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0107233   0.0073531   0.0140935


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ki1101329-Keneba            GAMBIA         NA                   NA                0.0160116   0.0113178   0.0207055
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054454   0.0037409   0.0071499
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0346771   0.0313629   0.0379914
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0128333   0.0112834   0.0143832
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090206   0.0064715   0.0115698


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 1.740407   0.8035728   3.769437
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.557961   0.8407617   2.886957
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.340529   0.7137279   2.517791
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 2.400256   1.9460992   2.960399
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.040696   0.7404161   1.462757
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.788690   0.7888293   4.055901
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.618555   1.2331955   2.124335
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.602070   0.8115092   3.162784


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0025897   -0.0008164   0.0059959
ki1101329-Keneba            GAMBIA         0                    NA                0.0036906   -0.0012597   0.0086409
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005890   -0.0007594   0.0019373
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0137588    0.0104635   0.0170542
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0008141   -0.0110648   0.0126930
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0056968   -0.0022850   0.0136786
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0029138    0.0011223   0.0047054
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0023272   -0.0007641   0.0054185


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.3019122   -0.2081567   0.5966363
ki1101329-Keneba            GAMBIA         0                    NA                0.2304958   -0.1399580   0.4805627
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1081571   -0.1741959   0.3226141
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.3967697    0.3028806   0.4780137
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0120133   -0.1797693   0.1726199
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.2755824   -0.2087142   0.5658354
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.2270516    0.0779022   0.3520760
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.2579878   -0.1895753   0.5371608
