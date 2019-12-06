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

**Intervention Variable:** ever_underweight06

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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_underweight06    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                             0      161     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                             1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                             0       79     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                             1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                             0      134     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                             1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                             0      101     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                             1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                             0      225     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                             1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                             0       47     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                             1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             0      216     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             0       45     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      203     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       42     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                             0      102     375  dead6plus        
ki1000109-EE                PAKISTAN                       0                             1        0     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                             0      269     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                             1        4     375  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                             0     1579    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                             1        7    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                             0     2004    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                             1       25    3615  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                             0      805    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                             1        1    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                             0      572    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                             1       11    1389  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                             0      187     400  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                             1        1     400  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                             0      209     400  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                             1        3     400  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                             0      414     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                             1        1     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                             0      200     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                             1        2     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     1843    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      253    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                             0     1900    2464  dead6plus        
ki1101329-Keneba            GAMBIA                         0                             1       47    2464  dead6plus        
ki1101329-Keneba            GAMBIA                         1                             0      489    2464  dead6plus        
ki1101329-Keneba            GAMBIA                         1                             1       28    2464  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             0      260     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             1        2     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             0       74     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             1        0     336  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                             0      319     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                             1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                             0      271     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                             1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                             0     9476   11707  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                             1      215   11707  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                             0     1815   11707  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                             1      201   11707  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                             0     1415    1759  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                             1       89    1759  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                             0      231    1759  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                             1       24    1759  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             0      904    1158  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             1       18    1158  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             0      226    1158  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             1       10    1158  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                             0    11447   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                             1      115   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                             0     9265   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                             1      196   21023  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                             0     3463    5266  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                             1       17    5266  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                             0     1755    5266  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                             1       31    5266  dead6plus        


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
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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




# Results Detail

## Results Plots
![](/tmp/e3cad08b-c5c4-4ed8-9b65-0980c5fbc90a/1c705df0-6e0f-4378-a226-ddb53549e52f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3cad08b-c5c4-4ed8-9b65-0980c5fbc90a/1c705df0-6e0f-4378-a226-ddb53549e52f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3cad08b-c5c4-4ed8-9b65-0980c5fbc90a/1c705df0-6e0f-4378-a226-ddb53549e52f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3cad08b-c5c4-4ed8-9b65-0980c5fbc90a/1c705df0-6e0f-4378-a226-ddb53549e52f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.0044136   0.0011508   0.0076764
ki1000304-VITAMIN-A      INDIA        1                    NA                0.0123213   0.0075206   0.0171220
ki1101329-Keneba         GAMBIA       0                    NA                0.0245499   0.0176346   0.0314652
ki1101329-Keneba         GAMBIA       1                    NA                0.0517251   0.0323153   0.0711349
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.0224876   0.0195352   0.0254401
ki1126311-ZVITAMBO       ZIMBABWE     1                    NA                0.0921627   0.0792747   0.1050506
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0594323   0.0475071   0.0713576
ki1148112-iLiNS-DOSE     MALAWI       1                    NA                0.1017620   0.0661390   0.1373849
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.0196921   0.0107634   0.0286209
ki1148112-iLiNS-DYAD-M   MALAWI       1                    NA                0.0423906   0.0174402   0.0673410
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.0102654   0.0083085   0.0122224
kiGH5241-JiVitA-3        BANGLADESH   1                    NA                0.0198522   0.0168729   0.0228315
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.0048833   0.0021511   0.0076155
kiGH5241-JiVitA-4        BANGLADESH   1                    NA                0.0171559   0.0111465   0.0231654


### Parameter: E(Y)


studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A      INDIA        NA                   NA                0.0088520   0.0057982   0.0119058
ki1101329-Keneba         GAMBIA       NA                   NA                0.0304383   0.0236539   0.0372227
ki1126311-ZVITAMBO       ZIMBABWE     NA                   NA                0.0355343   0.0321807   0.0388879
ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.0642410   0.0527799   0.0757022
ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.0241796   0.0153286   0.0330306
kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.0147933   0.0131485   0.0164382
kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.0091151   0.0063755   0.0118547


### Parameter: RR


studyid                  country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-----------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A      INDIA        1                    0                 2.791664   1.210441   6.438469
ki1101329-Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba         GAMBIA       1                    0                 2.106938   1.317763   3.368730
ki1126311-ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO       ZIMBABWE     1                    0                 4.098370   3.383738   4.963928
ki1148112-iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE     MALAWI       1                    0                 1.712233   1.143462   2.563916
ki1148112-iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M   MALAWI       1                    0                 2.152667   1.022185   4.533400
kiGH5241-JiVitA-3        BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3        BANGLADESH   1                    0                 1.933886   1.519390   2.461458
kiGH5241-JiVitA-4        BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4        BANGLADESH   1                    0                 3.513186   1.818542   6.787018


### Parameter: PAR


studyid                  country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.0044384    0.0011779   0.0076988
ki1101329-Keneba         GAMBIA       0                    NA                0.0058884    0.0014718   0.0103051
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.0130467    0.0106763   0.0154171
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0048087   -0.0007009   0.0103183
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.0044875   -0.0011074   0.0100824
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.0045279    0.0028298   0.0062260
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.0042318    0.0019794   0.0064842


### Parameter: PAF


studyid                  country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.5013990    0.0420265   0.7404907
ki1101329-Keneba         GAMBIA       0                    NA                0.1934549    0.0422124   0.3208149
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.3671567    0.3072024   0.4219227
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0748545   -0.0138834   0.1558257
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.1855893   -0.0677617   0.3788269
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.3060763    0.1880862   0.4069197
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.4642616    0.1801508   0.6499166
