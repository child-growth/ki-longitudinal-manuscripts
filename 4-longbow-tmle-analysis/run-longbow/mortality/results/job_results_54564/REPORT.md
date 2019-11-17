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

**Intervention Variable:** ever_wasted06

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

studyid                     country                        ever_wasted06    dead   n_cell       n
--------------------------  -----------------------------  --------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      201     263
ki0047075b-MAL-ED           BANGLADESH                     0                   1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                   0       60     263
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     263
ki0047075b-MAL-ED           INDIA                          0                   0      166     251
ki0047075b-MAL-ED           INDIA                          0                   1        1     251
ki0047075b-MAL-ED           INDIA                          1                   0       83     251
ki0047075b-MAL-ED           INDIA                          1                   1        1     251
ki0047075b-MAL-ED           PERU                           0                   0      289     302
ki0047075b-MAL-ED           PERU                           0                   1        2     302
ki0047075b-MAL-ED           PERU                           1                   0       11     302
ki0047075b-MAL-ED           PERU                           1                   1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      276     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0       36     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      244     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       14     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     261
ki1000109-EE                PAKISTAN                       0                   0      248     380
ki1000109-EE                PAKISTAN                       0                   1        2     380
ki1000109-EE                PAKISTAN                       1                   0      128     380
ki1000109-EE                PAKISTAN                       1                   1        2     380
ki1000304-VITAMIN-A         INDIA                          0                   0     2967    3895
ki1000304-VITAMIN-A         INDIA                          0                   1       36    3895
ki1000304-VITAMIN-A         INDIA                          1                   0      853    3895
ki1000304-VITAMIN-A         INDIA                          1                   1       39    3895
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1142    1508
ki1000304b-SAS-CompFeed     INDIA                          0                   1       22    1508
ki1000304b-SAS-CompFeed     INDIA                          1                   0      330    1508
ki1000304b-SAS-CompFeed     INDIA                          1                   1       14    1508
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      316     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0       96     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                   0      515     700
ki1017093b-PROVIDE          BANGLADESH                     0                   1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1                   0      181     700
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2038    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      357    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396
ki1101329-Keneba            GAMBIA                         0                   0     1763    2480
ki1101329-Keneba            GAMBIA                         0                   1       33    2480
ki1101329-Keneba            GAMBIA                         1                   0      660    2480
ki1101329-Keneba            GAMBIA                         1                   1       24    2480
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0      296     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0       40     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                   0      422     686
ki1113344-GMS-Nepal         NEPAL                          0                   1        5     686
ki1113344-GMS-Nepal         NEPAL                          1                   0      257     686
ki1113344-GMS-Nepal         NEPAL                          1                   1        2     686
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0    10499   13862
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      728   13862
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0     2316   13862
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1      319   13862
ki1148112-iLiNS-DOSE        MALAWI                         0                   0     1675    1814
ki1148112-iLiNS-DOSE        MALAWI                         0                   1      110    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       25    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        4    1814
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1091    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       33    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       53    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        5    1182
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    21075   26918
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      399   26918
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     5282   26918
kiGH5241-JiVitA-3           BANGLADESH                     1                   1      162   26918
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4521    5252
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       37    5252
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      684    5252
kiGH5241-JiVitA-4           BANGLADESH                     1                   1       10    5252


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




# Results Detail

## Results Plots
![](/tmp/8cabafe5-59b1-4395-8e88-f22b962c68ef/13a061ec-ec3b-4fde-b774-60c24e8d6433/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8cabafe5-59b1-4395-8e88-f22b962c68ef/13a061ec-ec3b-4fde-b774-60c24e8d6433/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8cabafe5-59b1-4395-8e88-f22b962c68ef/13a061ec-ec3b-4fde-b774-60c24e8d6433/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8cabafe5-59b1-4395-8e88-f22b962c68ef/13a061ec-ec3b-4fde-b774-60c24e8d6433/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0120076   0.0081199   0.0158953
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0422808   0.0289943   0.0555673
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0187983   0.0093151   0.0282815
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0415199   0.0177784   0.0652614
ki1101329-Keneba          GAMBIA       0                    NA                0.0183381   0.0121412   0.0245349
ki1101329-Keneba          GAMBIA       1                    NA                0.0356389   0.0214953   0.0497825
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0652805   0.0607291   0.0698319
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1187701   0.1064296   0.1311105
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0293594   0.0194864   0.0392325
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0862069   0.0139444   0.1584694
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0186202   0.0168440   0.0203964
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0295290   0.0248439   0.0342142
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0080917   0.0053684   0.0108149
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0141825   0.0041871   0.0241780


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


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.521175   2.2421583   5.529793
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.208708   1.1698388   4.170140
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.943439   1.1539291   3.273126
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.819380   1.6064590   2.060523
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 2.936259   1.1899998   7.245058
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.585858   1.3268496   1.895427
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.752737   0.8013796   3.833500


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0072479    0.0040217   0.0104741
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0050744   -0.0003482   0.0104970
ki1101329-Keneba          GAMBIA       0                    NA                0.0046458    0.0004641   0.0088275
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0102497    0.0077368   0.0127626
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0027895   -0.0008572   0.0064362
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0022209    0.0012441   0.0031976
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0008573   -0.0005302   0.0022448


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.3764058    0.2130278   0.5058660
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2125608   -0.0155611   0.3894406
ki1101329-Keneba          GAMBIA       0                    NA                0.2021336    0.0069688   0.3589418
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1357037    0.1026592   0.1675313
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0867672   -0.0305119   0.1906991
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1065620    0.0599267   0.1508837
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0958010   -0.0679873   0.2344704
