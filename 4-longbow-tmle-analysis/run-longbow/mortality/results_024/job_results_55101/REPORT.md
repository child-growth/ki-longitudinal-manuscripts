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

**Intervention Variable:** ever_wasted06_noBW

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

studyid                     country                        ever_wasted06_noBW    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -------------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      241     262  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                        1        2     262  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                        0       19     262  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                        1        0     262  dead             
ki0047075b-MAL-ED           INDIA                          0                        0      203     244  dead             
ki0047075b-MAL-ED           INDIA                          0                        1        2     244  dead             
ki0047075b-MAL-ED           INDIA                          1                        0       39     244  dead             
ki0047075b-MAL-ED           INDIA                          1                        1        0     244  dead             
ki0047075b-MAL-ED           PERU                           0                        0      295     302  dead             
ki0047075b-MAL-ED           PERU                           0                        1        2     302  dead             
ki0047075b-MAL-ED           PERU                           1                        0        5     302  dead             
ki0047075b-MAL-ED           PERU                           1                        1        0     302  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      293     307  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     307  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       14     307  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        0     307  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      248     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        3     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0       10     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     261  dead             
ki1000109-EE                PAKISTAN                       0                        0      292     375  dead             
ki1000109-EE                PAKISTAN                       0                        1        2     375  dead             
ki1000109-EE                PAKISTAN                       1                        0       79     375  dead             
ki1000109-EE                PAKISTAN                       1                        1        2     375  dead             
ki1000304-VITAMIN-A         INDIA                          0                        0     3213    3301  dead             
ki1000304-VITAMIN-A         INDIA                          0                        1       44    3301  dead             
ki1000304-VITAMIN-A         INDIA                          1                        0       43    3301  dead             
ki1000304-VITAMIN-A         INDIA                          1                        1        1    3301  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                        0     1265    1473  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                        1       23    1473  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                        0      176    1473  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                        1        9    1473  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      339     341  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        2     341  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0        0     341  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        0     341  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                        0      642     683  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                        1        4     683  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                        0       37     683  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                        1        0     683  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2171    2376  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2376  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      204    2376  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2376  dead             
ki1101329-Keneba            GAMBIA                         0                        0     2109    2424  dead             
ki1101329-Keneba            GAMBIA                         0                        1       44    2424  dead             
ki1101329-Keneba            GAMBIA                         1                        0      259    2424  dead             
ki1101329-Keneba            GAMBIA                         1                        1       12    2424  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0       41      41  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        0      41  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0        0      41  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0      41  dead             
ki1113344-GMS-Nepal         NEPAL                          0                        0      514     642  dead             
ki1113344-GMS-Nepal         NEPAL                          0                        1        5     642  dead             
ki1113344-GMS-Nepal         NEPAL                          1                        0      122     642  dead             
ki1113344-GMS-Nepal         NEPAL                          1                        1        1     642  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0    12070   13376  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      878   13376  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0      367   13376  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1       61   13376  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1112    1182  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                        1       70    1182  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                        0        0    1182  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                        1        0    1182  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0     1059    1093  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       34    1093  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0        0    1093  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1        0    1093  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    23917   26234  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      436   26234  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                        0     1832   26234  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                        1       49   26234  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     4794    4957  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       36    4957  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                        0      124    4957  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                        1        3    4957  dead             


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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/9906ced8-1218-4ee6-a067-4a51f7365c33/e3ce61d6-664f-4fee-bd1c-27db0063c9ed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9906ced8-1218-4ee6-a067-4a51f7365c33/e3ce61d6-664f-4fee-bd1c-27db0063c9ed/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9906ced8-1218-4ee6-a067-4a51f7365c33/e3ce61d6-664f-4fee-bd1c-27db0063c9ed/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9906ced8-1218-4ee6-a067-4a51f7365c33/e3ce61d6-664f-4fee-bd1c-27db0063c9ed/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0178571   0.0085714   0.0271429
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0486486   0.0231136   0.0741837
ki1101329-Keneba          GAMBIA       0                    NA                0.0203839   0.0144198   0.0263481
ki1101329-Keneba          GAMBIA       1                    NA                0.0446498   0.0197150   0.0695846
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0679872   0.0636443   0.0723300
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1435080   0.1103078   0.1767083
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0178880   0.0162434   0.0195325
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0262356   0.0187108   0.0337604


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0217244   0.0135627   0.0298860
ki1101329-Keneba          GAMBIA       NA                   NA                0.0231023   0.0171206   0.0290840
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0702004   0.0658706   0.0745301
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0184875   0.0168427   0.0201323


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.724324   1.242277   5.974465
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.190441   1.165905   4.115285
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.110811   1.660433   2.683349
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.466661   1.091483   1.970800


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0038672    0.0003615   0.0073729
ki1101329-Keneba          GAMBIA       0                    NA                0.0027184   -0.0001170   0.0055538
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0022132    0.0011169   0.0033095
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0005995    0.0000767   0.0011222


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1780134   -0.0262276   0.3416061
ki1101329-Keneba          GAMBIA       0                    NA                0.1176665   -0.0097876   0.2290336
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0315268    0.0158872   0.0469179
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0324262    0.0040559   0.0599883
