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

studyid                     country                        ever_stunted024    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                          0       91     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                          1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          0      149     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                          0       89     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                          1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                          0      146     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                          1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                          0       92     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                          1        0     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                          0      180     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                          1        1     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          0       99     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          0      162     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          0       31     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          0      214     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                          0       39     374  dead6plus        
ki1000109-EE                PAKISTAN                       0                          1        0     374  dead6plus        
ki1000109-EE                PAKISTAN                       1                          0      331     374  dead6plus        
ki1000109-EE                PAKISTAN                       1                          1        4     374  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                          0     1494    3614  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                          1        9    3614  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                          0     2089    3614  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                          1       22    3614  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          0      404    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          1        0    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          0      973    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          1       12    1389  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          0       59     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          1        0     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          0      339     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          1        4     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          0      319     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          1        2     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          0      295     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          1        1     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1312    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      784    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                          0     1272    2748  dead6plus        
ki1101329-Keneba            GAMBIA                         0                          1       25    2748  dead6plus        
ki1101329-Keneba            GAMBIA                         1                          0     1397    2748  dead6plus        
ki1101329-Keneba            GAMBIA                         1                          1       54    2748  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          0     4563    7162  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          1       25    7162  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          0     2551    7162  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          1       23    7162  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                          0      174     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                          1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                          0      416     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                          1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          0     6237   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          1      133   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          0     5055   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          1      283   11708  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          0      864    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          1       62    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          0      883    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          1       65    1874  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          0      591    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          1       10    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          0      542    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          1       18    1161  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          0    10298   21039  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          1      112   21039  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          0    10430   21039  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          1      199   21039  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          0     2257    5432  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          1       15    5432  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          0     3125    5432  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          1       35    5432  dead6plus        


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




# Results Detail

## Results Plots
![](/tmp/457d6f71-dcbb-4595-8781-eae9c6e78e06/3b8cd548-bacd-4863-8722-4a7d3c86cd2d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/457d6f71-dcbb-4595-8781-eae9c6e78e06/3b8cd548-bacd-4863-8722-4a7d3c86cd2d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/457d6f71-dcbb-4595-8781-eae9c6e78e06/3b8cd548-bacd-4863-8722-4a7d3c86cd2d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/457d6f71-dcbb-4595-8781-eae9c6e78e06/3b8cd548-bacd-4863-8722-4a7d3c86cd2d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0059880   0.0020871   0.0098889
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0104216   0.0060889   0.0147543
ki1101329-Keneba            GAMBIA         0                    NA                0.0206393   0.0120466   0.0292320
ki1101329-Keneba            GAMBIA         1                    NA                0.0345135   0.0251809   0.0438460
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0055407   0.0033753   0.0077060
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0087321   0.0051213   0.0123428
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0220182   0.0182414   0.0257949
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0512972   0.0452710   0.0573234
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0681525   0.0514872   0.0848178
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0688768   0.0524724   0.0852813
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0161553   0.0059236   0.0263870
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0318846   0.0172142   0.0465550
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0117325   0.0093672   0.0140978
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0184508   0.0155212   0.0213804
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0066583   0.0026700   0.0106466
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0110386   0.0075853   0.0144919


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ki1101329-Keneba            GAMBIA         NA                   NA                0.0287482   0.0224995   0.0349969
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067020   0.0048123   0.0085918
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0147821   0.0131375   0.0164266
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0092047   0.0066177   0.0117917


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 1.740407   0.8035728   3.769437
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.672221   1.0179926   2.746899
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.575989   0.8921752   2.783916
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 2.329767   1.8926987   2.867764
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.010628   0.7184885   1.421553
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.973631   0.9020938   4.317977
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.572626   1.2142750   2.036733
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.657872   0.8394866   3.274071


### Parameter: PAR


studyid                     country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                 0.0025897   -0.0008164   0.0059959
ki1101329-Keneba            GAMBIA         0                    NA                 0.0081089    0.0005841   0.0156336
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0011613   -0.0003724   0.0026951
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.0135131    0.0101265   0.0168996
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                -0.0003830   -0.0125226   0.0117566
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                 0.0079618   -0.0006728   0.0165965
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                 0.0030496    0.0010544   0.0050447
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0025464   -0.0005683   0.0056611


### Parameter: PAF


studyid                     country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                 0.3019122   -0.2081567   0.5966363
ki1101329-Keneba            GAMBIA         0                    NA                 0.2820653   -0.0235177   0.4964131
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.1732823   -0.0834781   0.3691962
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.3803156    0.2852171   0.4627617
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                -0.0056514   -0.2017268   0.1584320
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                 0.3301318   -0.1129399   0.5968125
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                 0.2063027    0.0613974   0.3288369
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.2766421   -0.1652615   0.5509620
