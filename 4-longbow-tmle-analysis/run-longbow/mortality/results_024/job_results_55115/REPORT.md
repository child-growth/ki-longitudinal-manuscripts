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

studyid                     country                        ever_co024    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -----------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      201     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                   1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                   0       39     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                   0      182     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                   1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                   0       53     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                   1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                   0      261     273  dead624          
ki0047075b-MAL-ED           PERU                           0                   1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                   0       11     273  dead624          
ki0047075b-MAL-ED           PERU                           1                   1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      239     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0       22     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      222     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       23     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                   0      204     374  dead624          
ki1000109-EE                PAKISTAN                       0                   1        1     374  dead624          
ki1000109-EE                PAKISTAN                       1                   0      166     374  dead624          
ki1000109-EE                PAKISTAN                       1                   1        3     374  dead624          
ki1000304-VITAMIN-A         INDIA                          0                   0     2919    3614  dead624          
ki1000304-VITAMIN-A         INDIA                          0                   1       17    3614  dead624          
ki1000304-VITAMIN-A         INDIA                          1                   0      664    3614  dead624          
ki1000304-VITAMIN-A         INDIA                          1                   1       14    3614  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1047    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                   1        2    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                   0      330    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                   1       10    1389  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      246     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        1     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0      152     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        3     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                   0      527     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                   1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                   0       88     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     1979    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      117    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                   0     2292    2748  dead624          
ki1101329-Keneba            GAMBIA                         0                   1       31    2748  dead624          
ki1101329-Keneba            GAMBIA                         1                   0      412    2748  dead624          
ki1101329-Keneba            GAMBIA                         1                   1       13    2748  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0     6316    7161  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1       32    7161  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0      806    7161  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        7    7161  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                   0      391     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                   1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                   0      199     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                   1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0    10848   11692  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      310   11692  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0      443   11692  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1       91   11692  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                   0     1654    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                   1      114    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       93    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                   1       13    1874  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1086    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       21    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       51    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        3    1161  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    18708   21006  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      214   21006  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     2037   21006  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                   1       47   21006  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4517    5432  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       37    5432  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      866    5432  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                   1       12    5432  dead624          


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




# Results Detail

## Results Plots
![](/tmp/a16c86cc-0307-4c5d-9ad6-b3b5fe42caec/ad92c43e-5dfe-445b-bbae-337a990a6088/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a16c86cc-0307-4c5d-9ad6-b3b5fe42caec/ad92c43e-5dfe-445b-bbae-337a990a6088/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a16c86cc-0307-4c5d-9ad6-b3b5fe42caec/ad92c43e-5dfe-445b-bbae-337a990a6088/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a16c86cc-0307-4c5d-9ad6-b3b5fe42caec/ad92c43e-5dfe-445b-bbae-337a990a6088/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0057919   0.0030430   0.0085408
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0207341   0.0099089   0.0315592
ki1101329-Keneba            GAMBIA         0                    NA                0.0133358   0.0086681   0.0180035
ki1101329-Keneba            GAMBIA         1                    NA                0.0307371   0.0140174   0.0474569
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0050410   0.0032987   0.0067832
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0086101   0.0022588   0.0149613
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0281612   0.0250806   0.0312418
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1564116   0.1229647   0.1898584
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0644981   0.0530447   0.0759516
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1176702   0.0557318   0.1796086
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0113884   0.0098349   0.0129418
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0237989   0.0167769   0.0308209
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0081261   0.0054250   0.0108271
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0133662   0.0062452   0.0204871


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ki1101329-Keneba            GAMBIA         NA                   NA                0.0160116   0.0113178   0.0207055
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054462   0.0037415   0.0071509
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0342970   0.0309980   0.0375959
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0124250   0.0108829   0.0139672
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090206   0.0064715   0.0115698


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 3.579840   1.7681882   7.247676
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.304858   1.2069102   4.401630
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.708026   0.7563350   3.857222
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 5.554143   4.3681199   7.062193
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.824397   1.0468110   3.179585
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.089750   1.5085792   2.894814
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.644851   0.8794808   3.076286


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0027859    0.0007034   0.0048683
ki1101329-Keneba            GAMBIA         0                    NA                0.0026758    0.0000301   0.0053216
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004052   -0.0003430   0.0011534
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0061357    0.0045735   0.0076980
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0032713   -0.0003625   0.0069052
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0010366    0.0003517   0.0017215
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0008945   -0.0003524   0.0021415


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.3247773    0.0716731   0.5088737
ki1101329-Keneba            GAMBIA         0                    NA                0.1671190   -0.0069274   0.3110817
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0744026   -0.0714097   0.2003707
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1788997    0.1355079   0.2201136
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0482716   -0.0063323   0.0999127
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0834318    0.0278580   0.1358287
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0991670   -0.0496553   0.2268890
