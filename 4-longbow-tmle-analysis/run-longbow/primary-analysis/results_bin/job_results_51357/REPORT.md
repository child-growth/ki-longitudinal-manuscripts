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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        nchldlt5    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                     0       25     291
0-24 months   ki1000108-IRC              INDIA                          1                     1       64     291
0-24 months   ki1000108-IRC              INDIA                          2+                    0       69     291
0-24 months   ki1000108-IRC              INDIA                          2+                    1      133     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      327     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      185     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        6     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        6     524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      368     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      173     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2     547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1242    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      395    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       61    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       18    1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      838    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      235    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      620    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1      224    1917
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      366     454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       25     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       58     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        5     454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    12740   17858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4486   17858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      467   17858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1      165   17858
0-6 months    ki1000108-IRC              INDIA                          1                     0       37     291
0-6 months    ki1000108-IRC              INDIA                          1                     1       52     291
0-6 months    ki1000108-IRC              INDIA                          2+                    0       95     291
0-6 months    ki1000108-IRC              INDIA                          2+                    1      107     291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      375     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      137     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0        8     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1        4     524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      404     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      137     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2     547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1407    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      230    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       64    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       15    1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0      121     145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        1     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0       23     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        0     145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    14046   17777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     3101   17777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      521   17777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1      109   17777
6-24 months   ki1000108-IRC              INDIA                          1                     0       56     291
6-24 months   ki1000108-IRC              INDIA                          1                     1       33     291
6-24 months   ki1000108-IRC              INDIA                          2+                    0      134     291
6-24 months   ki1000108-IRC              INDIA                          2+                    1       68     291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      380     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       68     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        8     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        2     458
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      460     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       60     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        1     525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1154    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      229    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       58    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1        6    1447
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      838    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      235    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      620    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1      224    1917
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      360     446
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       24     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       57     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        5     446
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     9417   11579
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1787   11579
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      307   11579
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1       68   11579


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

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
![](/tmp/caa30170-57d9-443f-9e2c-3bbeeb5f8950/14d29692-b831-4cfc-aba7-937db850f6f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/caa30170-57d9-443f-9e2c-3bbeeb5f8950/14d29692-b831-4cfc-aba7-937db850f6f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/caa30170-57d9-443f-9e2c-3bbeeb5f8950/14d29692-b831-4cfc-aba7-937db850f6f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/caa30170-57d9-443f-9e2c-3bbeeb5f8950/14d29692-b831-4cfc-aba7-937db850f6f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7208607   0.6249626   0.8167587
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6603432   0.5945357   0.7261507
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3613281   0.3195882   0.4030681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.5000000   0.2406106   0.7593894
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2412928   0.2205580   0.2620276
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2243627   0.1303828   0.3183426
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2181543   0.1771403   0.2591682
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2557647   0.2127088   0.2988205
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0639386   0.0396629   0.0882144
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0793651   0.0125438   0.1461864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2593891   0.2515992   0.2671790
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.3122442   0.2871517   0.3373368
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.5928400   0.4895656   0.6961144
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.5297464   0.4602514   0.5992414
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1404788   0.1236379   0.1573197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1825060   0.0945607   0.2704512
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1803988   0.1735634   0.1872341
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2065682   0.1868412   0.2262952
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3803317   0.2758142   0.4848493
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.3293658   0.2642348   0.3944968
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1655821   0.1459852   0.1851789
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0937500   0.0223139   0.1651861
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2196308   0.1800639   0.2591977
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2569335   0.2141160   0.2997510
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0625000   0.0382621   0.0867379
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0806452   0.0127919   0.1484984
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1586481   0.1511595   0.1661368
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1957498   0.1662443   0.2252553


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6769759   0.6231548   0.7307971
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3645038   0.3232556   0.4057520
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2406760   0.2204437   0.2609083
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2394366   0.2104280   0.2684452
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0660793   0.0432029   0.0889556
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2604435   0.2529356   0.2679514
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5463918   0.4890935   0.6036900
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1427739   0.1262166   0.1593311
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1805704   0.1739574   0.1871834
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3470790   0.2922900   0.4018681
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1624050   0.1433950   0.1814149
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2394366   0.2104280   0.2684452
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0650224   0.0421137   0.0879311
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1602038   0.1529875   0.1674201


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9160483   0.7754731   1.082107
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3837838   0.8132937   2.354448
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9298358   0.6063402   1.425923
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1724027   0.9056987   1.517644
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2412698   0.4928942   3.125926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.2037678   1.1072810   1.308662
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.8935740   0.7182134   1.111751
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2991708   0.7906579   2.134735
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1450641   1.0371078   1.264258
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8659960   0.6172350   1.215014
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.5661845   0.2618570   1.224198
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1698428   0.9085266   1.506320
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2903226   0.5109108   3.258753
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.2338615   1.0535279   1.445063


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0438847   -0.1260988   0.0383294
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0031757   -0.0036288   0.0099802
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0006168   -0.0049764   0.0037428
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0212823   -0.0059294   0.0484941
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0021407   -0.0077370   0.0120184
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0010544   -0.0006183   0.0027271
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0464483   -0.1336520   0.0407555
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0022951   -0.0017938   0.0063840
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0001716   -0.0011575   0.0015007
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0332527   -0.1207446   0.0542392
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0031771   -0.0065407   0.0001865
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0198058   -0.0074823   0.0470939
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0025224   -0.0075108   0.0125556
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0015557   -0.0001159   0.0032273


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0648246   -0.1938859   0.0502848
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0087124   -0.0101490   0.0272216
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025629   -0.0208407   0.0153877
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0888851   -0.0335020   0.1967792
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0323956   -0.1288281   0.1705926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0040485   -0.0024029   0.0104584
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0850091   -0.2574610   0.0637923
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0160749   -0.0129447   0.0442632
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0009504   -0.0064399   0.0082865
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0958073   -0.3792799   0.1294055
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0195628   -0.0404074   0.0008642
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0827185   -0.0389829   0.1901644
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0387931   -0.1279697   0.1809011
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0097107   -0.0008100   0.0201209
