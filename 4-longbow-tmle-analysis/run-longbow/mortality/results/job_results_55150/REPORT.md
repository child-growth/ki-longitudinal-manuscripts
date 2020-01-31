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

studyid                     country                        ever_underweight06    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -------------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                           0      161     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                           1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                           0       79     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                           1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                           0      134     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                           1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                           0      101     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                           1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                           0      225     273  dead624          
ki0047075b-MAL-ED           PERU                           0                           1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                           0       47     273  dead624          
ki0047075b-MAL-ED           PERU                           1                           1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           0      216     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           0       45     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      203     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0       42     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                           0      102     375  dead624          
ki1000109-EE                PAKISTAN                       0                           1        0     375  dead624          
ki1000109-EE                PAKISTAN                       1                           0      269     375  dead624          
ki1000109-EE                PAKISTAN                       1                           1        4     375  dead624          
ki1000304-VITAMIN-A         INDIA                          0                           0     1579    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          0                           1        7    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                           0     2004    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                           1       25    3615  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                           0      805    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                           1        1    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                           0      572    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                           1       11    1389  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                           0      187     400  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                           1        1     400  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                           0      209     400  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                           1        3     400  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                           0      414     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                           1        1     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                           0      201     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                           1        1     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     1843    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      253    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                           0     1921    2464  dead624          
ki1101329-Keneba            GAMBIA                         0                           1       26    2464  dead624          
ki1101329-Keneba            GAMBIA                         1                           0      502    2464  dead624          
ki1101329-Keneba            GAMBIA                         1                           1       15    2464  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           0      260     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           1        2     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           0       74     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           1        0     336  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                           0      319     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                           1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                           0      271     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                           1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                           0     9484   11707  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                           1      207   11707  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                           0     1817   11707  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                           1      199   11707  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                           0     1415    1759  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                           1       89    1759  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                           0      231    1759  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                           1       24    1759  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           0      906    1158  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           1       16    1158  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           0      228    1158  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           1        8    1158  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                           0    11458   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                           1      104   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                           0     9295   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                           1      166   21023  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                           0     3463    5266  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                           1       17    5266  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                           0     1756    5266  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                           1       30    5266  dead624          


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
![](/tmp/4efc86c1-2efb-430a-a8dc-450d095a77a5/3fb942e4-f850-41bf-878e-1c8f7db85f34/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4efc86c1-2efb-430a-a8dc-450d095a77a5/3fb942e4-f850-41bf-878e-1c8f7db85f34/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4efc86c1-2efb-430a-a8dc-450d095a77a5/3fb942e4-f850-41bf-878e-1c8f7db85f34/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4efc86c1-2efb-430a-a8dc-450d095a77a5/3fb942e4-f850-41bf-878e-1c8f7db85f34/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.0044136   0.0011508   0.0076764
ki1000304-VITAMIN-A      INDIA        1                    NA                0.0123213   0.0075206   0.0171220
ki1101329-Keneba         GAMBIA       0                    NA                0.0133751   0.0082621   0.0184881
ki1101329-Keneba         GAMBIA       1                    NA                0.0292905   0.0144062   0.0441748
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.0215943   0.0186938   0.0244947
ki1126311-ZVITAMBO       ZIMBABWE     1                    NA                0.0914444   0.0785990   0.1042898
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0592239   0.0472848   0.0711630
ki1148112-iLiNS-DOSE     MALAWI       1                    NA                0.0880191   0.0518668   0.1241713
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.0173536   0.0089209   0.0257862
ki1148112-iLiNS-DYAD-M   MALAWI       1                    NA                0.0338983   0.0108000   0.0569966
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.0091014   0.0073730   0.0108297
kiGH5241-JiVitA-3        BANGLADESH   1                    NA                0.0167196   0.0139809   0.0194583
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.0048757   0.0021550   0.0075963
kiGH5241-JiVitA-4        BANGLADESH   1                    NA                0.0166112   0.0107639   0.0224584


### Parameter: E(Y)


studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A      INDIA        NA                   NA                0.0088520   0.0057982   0.0119058
ki1101329-Keneba         GAMBIA       NA                   NA                0.0166396   0.0115878   0.0216914
ki1126311-ZVITAMBO       ZIMBABWE     NA                   NA                0.0346801   0.0313656   0.0379946
ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.0642410   0.0527799   0.0757022
ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.0207254   0.0125165   0.0289343
kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.0128431   0.0112928   0.0143934
kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.0089252   0.0062212   0.0116291


### Parameter: RR


studyid                  country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A      INDIA        1                    0                 2.791664   1.2104410   6.438469
ki1101329-Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba         GAMBIA       1                    0                 2.189923   1.1592787   4.136851
ki1126311-ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO       ZIMBABWE     1                    0                 4.234660   3.4871538   5.142402
ki1148112-iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE     MALAWI       1                    0                 1.486209   0.9403081   2.349035
ki1148112-iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M   MALAWI       1                    0                 1.953390   0.8459005   4.510851
kiGH5241-JiVitA-3        BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3        BANGLADESH   1                    0                 1.837042   1.4372646   2.348019
kiGH5241-JiVitA-4        BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4        BANGLADESH   1                    0                 3.406956   1.7655996   6.574170


### Parameter: PAR


studyid                  country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.0044384    0.0011779   0.0076988
ki1101329-Keneba         GAMBIA       0                    NA                0.0032645    0.0000276   0.0065014
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.0130858    0.0107235   0.0154481
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0050172   -0.0004933   0.0105276
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.0033718   -0.0016542   0.0083978
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.0037417    0.0022373   0.0052462
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.0040495    0.0018508   0.0062483


### Parameter: PAF


studyid                  country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.5013990    0.0420265   0.7404907
ki1101329-Keneba         GAMBIA       0                    NA                0.1961884   -0.0124468   0.3618301
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.3773298    0.3163695   0.4328541
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0780992   -0.0107100   0.1591049
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.1626898   -0.1074136   0.3669137
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.2913417    0.1729200   0.3928077
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.4537189    0.1688336   0.6409587
