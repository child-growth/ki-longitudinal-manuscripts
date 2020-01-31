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

studyid                     country                        ever_swasted024    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      240     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                     1        2     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                     0       21     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                     1        0     263  dead             
ki0047075b-MAL-ED           INDIA                          0                     0      223     251  dead             
ki0047075b-MAL-ED           INDIA                          0                     1        2     251  dead             
ki0047075b-MAL-ED           INDIA                          1                     0       26     251  dead             
ki0047075b-MAL-ED           INDIA                          1                     1        0     251  dead             
ki0047075b-MAL-ED           PERU                           0                     0      296     302  dead             
ki0047075b-MAL-ED           PERU                           0                     1        2     302  dead             
ki0047075b-MAL-ED           PERU                           1                     0        4     302  dead             
ki0047075b-MAL-ED           PERU                           1                     1        0     302  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      296     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0       16     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        0     312  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      249     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        3     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        9     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0     261  dead             
ki1000109-EE                PAKISTAN                       0                     0      298     380  dead             
ki1000109-EE                PAKISTAN                       0                     1        2     380  dead             
ki1000109-EE                PAKISTAN                       1                     0       78     380  dead             
ki1000109-EE                PAKISTAN                       1                     1        2     380  dead             
ki1000304-VITAMIN-A         INDIA                          0                     0     3461    3904  dead             
ki1000304-VITAMIN-A         INDIA                          0                     1       55    3904  dead             
ki1000304-VITAMIN-A         INDIA                          1                     0      368    3904  dead             
ki1000304-VITAMIN-A         INDIA                          1                     1       20    3904  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                     0     1267    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                     1       23    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                     0      209    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                     1       14    1513  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0      344     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        3     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0       68     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        3     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                     0      654     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                     1        4     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                     0       42     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2237    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      158    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                     0     2349    2920  dead             
ki1101329-Keneba            GAMBIA                         0                     1       45    2920  dead             
ki1101329-Keneba            GAMBIA                         1                     0      509    2920  dead             
ki1101329-Keneba            GAMBIA                         1                     1       17    2920  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0     6829    7166  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1       35    7166  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0      298    7166  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1        4    7166  dead             
ki1113344-GMS-Nepal         NEPAL                          0                     0      503     686  dead             
ki1113344-GMS-Nepal         NEPAL                          0                     1        6     686  dead             
ki1113344-GMS-Nepal         NEPAL                          1                     0      176     686  dead             
ki1113344-GMS-Nepal         NEPAL                          1                     1        1     686  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0    11791   13946  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      869   13946  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0     1102   13946  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1      184   13946  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                     0     1784    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                     1      124    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                     0       19    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                     1        4    1931  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0     1138    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       35    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0       25    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        3    1201  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    24807   26956  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      504   26956  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                     0     1586   26956  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                     1       59   26956  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     5060    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       40    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                     0      334    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                     1        9    5443  dead             


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




# Results Detail

## Results Plots
![](/tmp/b9403c0e-1892-4311-a277-7057845d4409/2350bcc3-6606-44f4-ae77-81d38ee70f12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b9403c0e-1892-4311-a277-7057845d4409/2350bcc3-6606-44f4-ae77-81d38ee70f12/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b9403c0e-1892-4311-a277-7057845d4409/2350bcc3-6606-44f4-ae77-81d38ee70f12/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b9403c0e-1892-4311-a277-7057845d4409/2350bcc3-6606-44f4-ae77-81d38ee70f12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0156008   0.0114983   0.0197033
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0525939   0.0304786   0.0747093
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0178502   0.0092046   0.0264958
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0599053   0.0112952   0.1085154
ki1101329-Keneba          GAMBIA       0                    NA                0.0188050   0.0133678   0.0242422
ki1101329-Keneba          GAMBIA       1                    NA                0.0329383   0.0178357   0.0480409
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0688808   0.0644791   0.0732825
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1377267   0.1187306   0.1567228
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0199289   0.0181978   0.0216601
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0358364   0.0263101   0.0453628
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0078431   0.0054298   0.0102565
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0262391   0.0077322   0.0447460


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0192111   0.0149047   0.0235174
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba          GAMBIA       NA                   NA                0.0212329   0.0160032   0.0264626
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0755055   0.0711204   0.0798906
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0208859   0.0191395   0.0226323
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0090024   0.0064532   0.0115515


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.371230   2.052922   5.536104
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.356004   1.431339   7.868686
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.751572   1.018514   3.012234
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.999493   1.718430   2.326526
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.798211   1.364189   2.370319
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.345481   1.549953   7.221019


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0036102    0.0013611   0.0058594
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0066045   -0.0005475   0.0137566
ki1101329-Keneba          GAMBIA       0                    NA                0.0024279   -0.0004718   0.0053276
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0066247    0.0048066   0.0084428
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0009569    0.0003672   0.0015467
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0011593   -0.0000218   0.0023403


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.1879255    0.0704766   0.2905343
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2700716   -0.0083139   0.4715977
ki1101329-Keneba          GAMBIA       0                    NA                0.1143449   -0.0299598   0.2384316
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0877381    0.0638266   0.1110389
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0458180    0.0176657   0.0731634
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1287715   -0.0039238   0.2439276
