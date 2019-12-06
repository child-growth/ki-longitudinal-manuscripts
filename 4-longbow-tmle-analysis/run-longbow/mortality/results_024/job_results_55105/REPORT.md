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

**Intervention Variable:** ever_co024

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

studyid                     country                        ever_co024    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -----------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                0      222     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                1        2     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                0       39     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                1        0     263  dead             
ki0047075b-MAL-ED           INDIA                          0                0      195     251  dead             
ki0047075b-MAL-ED           INDIA                          0                1        2     251  dead             
ki0047075b-MAL-ED           INDIA                          1                0       54     251  dead             
ki0047075b-MAL-ED           INDIA                          1                1        0     251  dead             
ki0047075b-MAL-ED           PERU                           0                0      288     302  dead             
ki0047075b-MAL-ED           PERU                           0                1        2     302  dead             
ki0047075b-MAL-ED           PERU                           1                0       12     302  dead             
ki0047075b-MAL-ED           PERU                           1                1        0     302  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                0      289     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                1        0     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                0       23     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                1        0     312  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      235     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        3     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       23     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     261  dead             
ki1000109-EE                PAKISTAN                       0                0      208     379  dead             
ki1000109-EE                PAKISTAN                       0                1        1     379  dead             
ki1000109-EE                PAKISTAN                       1                0      167     379  dead             
ki1000109-EE                PAKISTAN                       1                1        3     379  dead             
ki1000304-VITAMIN-A         INDIA                          0                0     3145    3903  dead             
ki1000304-VITAMIN-A         INDIA                          0                1       48    3903  dead             
ki1000304-VITAMIN-A         INDIA                          1                0      683    3903  dead             
ki1000304-VITAMIN-A         INDIA                          1                1       27    3903  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                0     1140    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                1       22    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                0      336    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                1       15    1513  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                0      260     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                1        3     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                0      152     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                1        3     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                0      606     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                1        4     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                0       90     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                1        0     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                0     2276    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                0      119    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                0     2435    2913  dead             
ki1101329-Keneba            GAMBIA                         0                1       46    2913  dead             
ki1101329-Keneba            GAMBIA                         1                0      416    2913  dead             
ki1101329-Keneba            GAMBIA                         1                1       16    2913  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                0     6318    7163  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                1       32    7163  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                0      806    7163  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                1        7    7163  dead             
ki1113344-GMS-Nepal         NEPAL                          0                0      479     686  dead             
ki1113344-GMS-Nepal         NEPAL                          0                1        5     686  dead             
ki1113344-GMS-Nepal         NEPAL                          1                0      200     686  dead             
ki1113344-GMS-Nepal         NEPAL                          1                1        2     686  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                0    12438   13942  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                1      913   13942  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                0      455   13942  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                1      136   13942  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                0     1709    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                1      115    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                0       94    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                1       13    1931  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                0     1112    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                1       33    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                0       51    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                1        5    1201  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                0    24068   26923  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                1      463   26923  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                0     2301   26923  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                1       91   26923  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                0     4527    5442  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                1       37    5442  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                0      866    5442  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                1       12    5442  dead             


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
![](/tmp/7b43e517-4626-4496-ac54-99b1eb867cf2/a20f711b-0458-4941-b6bd-1d990c86695a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7b43e517-4626-4496-ac54-99b1eb867cf2/a20f711b-0458-4941-b6bd-1d990c86695a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7b43e517-4626-4496-ac54-99b1eb867cf2/a20f711b-0458-4941-b6bd-1d990c86695a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7b43e517-4626-4496-ac54-99b1eb867cf2/a20f711b-0458-4941-b6bd-1d990c86695a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0150146   0.0107950   0.0192343
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0384761   0.0243846   0.0525676
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0191664   0.0093860   0.0289468
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0420340   0.0228648   0.0612032
ki1101329-Keneba            GAMBIA         0                    NA                0.0185187   0.0132105   0.0238268
ki1101329-Keneba            GAMBIA         1                    NA                0.0372154   0.0189363   0.0554946
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0050394   0.0032976   0.0067811
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0086101   0.0022588   0.0149613
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0689455   0.0646455   0.0732454
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.2232800   0.1879185   0.2586414
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0630835   0.0519255   0.0742415
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1157370   0.0548540   0.1766200
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0288210   0.0191264   0.0385156
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0892857   0.0145691   0.1640023
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0189194   0.0171952   0.0206437
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0419498   0.0324952   0.0514045
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0081185   0.0054165   0.0108205
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0132665   0.0061406   0.0203925


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0192160   0.0149085   0.0235235
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba            GAMBIA         NA                   NA                0.0212839   0.0160418   0.0265260
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054446   0.0037404   0.0071489
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0752403   0.0708616   0.0796189
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0316403   0.0217366   0.0415440
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0205772   0.0188498   0.0223046
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090040   0.0064549   0.0115532


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 2.562576   1.6148628   4.066472
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 2.193108   1.6518022   2.911804
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.009615   1.1378736   3.549208
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.708564   0.7565733   3.858438
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 3.238500   2.7321879   3.838640
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.834664   1.0533999   3.195359
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 3.097944   1.2571385   7.634207
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.217289   1.7390301   2.827075
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.634115   0.8697510   3.070225


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0042014    0.0015147   0.0068881
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0052883    0.0022546   0.0083221
ki1101329-Keneba            GAMBIA         0                    NA                0.0027652   -0.0000041   0.0055346
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004053   -0.0003427   0.0011532
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0062948    0.0047513   0.0078383
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0032034   -0.0003171   0.0067239
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0028193   -0.0007670   0.0064057
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0016578    0.0009218   0.0023938
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0008856   -0.0003629   0.0021340


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.2186392    0.0756919   0.3394793
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.2162498    0.0998997   0.3175600
ki1101329-Keneba            GAMBIA         0                    NA                0.1299202   -0.0060177   0.2474895
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0744357   -0.0713715   0.2003994
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0836626    0.0634619   0.1034277
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0483262   -0.0057289   0.0994759
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0891060   -0.0278942   0.1927885
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0805638    0.0449661   0.1148347
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0983504   -0.0509399   0.2264334
