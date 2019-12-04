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

**Outcome Variable:** pers_wast

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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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

agecat        studyid                    country                        nchldlt5    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                   0       79     410
0-24 months   ki1000108-IRC              INDIA                          1                   1       10     410
0-24 months   ki1000108-IRC              INDIA                          2+                  0      283     410
0-24 months   ki1000108-IRC              INDIA                          2+                  1       38     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      460     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0      166     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        5     641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      504     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       16     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0      200     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1       10     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0      659    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1       20    2157
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      488    1639
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       62    1639
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  0      958    1639
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  1      131    1639
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0      337     711
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     711
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                  0      368     711
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                  1        2     711
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9569   15793
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      596   15793
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0     5327   15793
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1      301   15793
0-6 months    ki1000108-IRC              INDIA                          1                   0       69     402
0-6 months    ki1000108-IRC              INDIA                          1                   1       16     402
0-6 months    ki1000108-IRC              INDIA                          2+                  0      269     402
0-6 months    ki1000108-IRC              INDIA                          2+                  1       48     402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      459     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        9     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  0      165     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  1        5     638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      193     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        4     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0       52     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        1     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1372    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       36    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0      629    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1       16    2053
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0       31      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                  0       17      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                  1        1      50
6-24 months   ki1000108-IRC              INDIA                          1                   0       79     410
6-24 months   ki1000108-IRC              INDIA                          1                   1       10     410
6-24 months   ki1000108-IRC              INDIA                          2+                  0      283     410
6-24 months   ki1000108-IRC              INDIA                          2+                  1       38     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      460     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0      166     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        5     641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      504     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       16     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0      200     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1       10     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0      659    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1       20    2157
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      488    1639
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       62    1639
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  0      958    1639
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  1      131    1639
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0      337     711
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     711
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                  0      368     711
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                  1        2     711
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9569   15793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      596   15793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0     5327   15793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1      301   15793


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

* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/39f92502-38b6-4fa9-ac73-e6c3bd40ea36/6c0e112e-9151-489d-9ab4-670cb4dc24f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/39f92502-38b6-4fa9-ac73-e6c3bd40ea36/6c0e112e-9151-489d-9ab4-670cb4dc24f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/39f92502-38b6-4fa9-ac73-e6c3bd40ea36/6c0e112e-9151-489d-9ab4-670cb4dc24f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/39f92502-38b6-4fa9-ac73-e6c3bd40ea36/6c0e112e-9151-489d-9ab4-670cb4dc24f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1103717   0.0470796   0.1736638
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1184475   0.0829533   0.1539416
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0212766   0.0082203   0.0343329
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0292398   0.0039682   0.0545113
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0305107   0.0157130   0.0453085
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0484060   0.0192777   0.0775342
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0258494   0.0177758   0.0339230
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0294900   0.0167824   0.0421975
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1115487   0.0731384   0.1499590
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1189336   0.0874497   0.1504175
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0554633   0.0497426   0.0611840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0516548   0.0433874   0.0599221
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1890050   0.1036080   0.2744019
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1517168   0.1120745   0.1913591
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0192308   0.0067785   0.0316830
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0294118   0.0039937   0.0548298
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0259383   0.0175475   0.0343292
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0254814   0.0128480   0.0381148
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1083856   0.0464337   0.1703375
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1197359   0.0838774   0.1555945
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0212766   0.0082203   0.0343329
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0292398   0.0039682   0.0545113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0307526   0.0158542   0.0456510
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0476030   0.0187186   0.0764875
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0259547   0.0178826   0.0340267
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0291353   0.0164501   0.0418205
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1133745   0.0733520   0.1533969
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1167273   0.0865169   0.1469377
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0556245   0.0499377   0.0613112
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0509185   0.0430576   0.0587794


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234009   0.0116889   0.0351130
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1177547   0.0931926   0.1423168
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567973   0.0526805   0.0609141
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0219436   0.0105669   0.0333202
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253288   0.0185306   0.0321270
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234009   0.0116889   0.0351130
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1177547   0.0931926   0.1423168
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567973   0.0526805   0.0609141


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0731687   0.5616261   2.050637
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3742690   0.4761342   3.966561
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5865221   0.7325591   3.435972
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1408398   0.6701814   1.942035
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0662031   0.6951553   1.635302
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9313324   0.7710252   1.124970
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.8027131   0.4759250   1.353886
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.5294117   0.5194431   4.503092
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9823825   0.5437224   1.774941
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.1047217   0.5794126   2.106288
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3742690   0.4761342   3.966561
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5479333   0.7121333   3.364675
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1225446   0.6578778   1.915411
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0295728   0.6766575   1.566553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9153970   0.7604883   1.101860


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0067015   -0.0497133   0.0631162
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0021243   -0.0054689   0.0097175
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0051057   -0.0042000   0.0144114
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0010398   -0.0037025   0.0057822
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0062060   -0.0273132   0.0397252
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0013340   -0.0023281   0.0049962
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0298010   -0.1046942   0.0450923
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0027128   -0.0048372   0.0102628
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0006096   -0.0053071   0.0040880
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0086876   -0.0465946   0.0639697
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0021243   -0.0054689   0.0097175
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0048638   -0.0044919   0.0142195
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0009345   -0.0037968   0.0056658
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0043803   -0.0299796   0.0387402
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0011729   -0.0024874   0.0048331


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0572418   -0.5710839   0.4342803
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0907801   -0.2947917   0.3615338
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1433523   -0.1554512   0.3648843
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0386712   -0.1545215   0.1995359
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0527029   -0.2773588   0.2974788
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0234872   -0.0433333   0.0860282
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1871874   -0.7625637   0.2003613
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1236264   -0.2892206   0.4042674
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0240656   -0.2272612   0.1454872
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0742063   -0.5406784   0.4436905
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0907801   -0.2947917   0.3615338
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1365603   -0.1643507   0.3597049
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0347548   -0.1578931   0.1953503
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0371983   -0.3026423   0.2883794
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0206499   -0.0460865   0.0831287
