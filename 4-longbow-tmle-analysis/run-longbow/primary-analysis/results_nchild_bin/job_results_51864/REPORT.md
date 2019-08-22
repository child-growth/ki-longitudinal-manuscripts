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

agecat        studyid                    country                        nchldlt5    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                   0       79     410
0-24 months   ki1000108-IRC              INDIA                          1                   1       10     410
0-24 months   ki1000108-IRC              INDIA                          2+                  0      283     410
0-24 months   ki1000108-IRC              INDIA                          2+                  1       38     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      459     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0      166     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        5     640
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9461   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      596   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0     5311   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1      301   15669
0-6 months    ki1000108-IRC              INDIA                          1                   0       69     402
0-6 months    ki1000108-IRC              INDIA                          1                   1       16     402
0-6 months    ki1000108-IRC              INDIA                          2+                  0      269     402
0-6 months    ki1000108-IRC              INDIA                          2+                  1       48     402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      458     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        9     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  0      165     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  1        5     637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      193     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        4     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0       52     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        1     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1372    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       36    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0      629    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1       16    2053
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0       28      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                  0       16      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                  1        1      46
6-24 months   ki1000108-IRC              INDIA                          1                   0       79     410
6-24 months   ki1000108-IRC              INDIA                          1                   1       10     410
6-24 months   ki1000108-IRC              INDIA                          2+                  0      283     410
6-24 months   ki1000108-IRC              INDIA                          2+                  1       38     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      459     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0      166     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        5     640
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9461   15669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      596   15669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0     5311   15669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1      301   15669


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
![](/tmp/8c73e57d-3567-48cc-8687-5ea30c28cac5/7f3784be-cae6-4691-aa42-ca33735f12cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c73e57d-3567-48cc-8687-5ea30c28cac5/7f3784be-cae6-4691-aa42-ca33735f12cb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8c73e57d-3567-48cc-8687-5ea30c28cac5/7f3784be-cae6-4691-aa42-ca33735f12cb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c73e57d-3567-48cc-8687-5ea30c28cac5/7f3784be-cae6-4691-aa42-ca33735f12cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1048938   0.0442981   0.1654895
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1197482   0.0839402   0.1555561
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0213220   0.0082381   0.0344058
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0292398   0.0039682   0.0545114
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0305411   0.0157355   0.0453466
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0492561   0.0202256   0.0782865
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0258589   0.0177902   0.0339276
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0288180   0.0160958   0.0415402
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1091949   0.0682391   0.1501506
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1215946   0.0888324   0.1543568
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0563443   0.0506564   0.0620322
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0525703   0.0428659   0.0622746
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1923848   0.1058622   0.2789075
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1508970   0.1112547   0.1905392
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0192719   0.0067933   0.0317506
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0294118   0.0039937   0.0548299
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0260471   0.0176289   0.0344654
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0246471   0.0123359   0.0369583
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1025617   0.0435509   0.1615724
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1194378   0.0835965   0.1552791
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0213220   0.0082381   0.0344058
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0292398   0.0039682   0.0545114
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0307925   0.0159258   0.0456592
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0487657   0.0199423   0.0775890
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0259826   0.0179115   0.0340538
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0291958   0.0165179   0.0418738
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1092252   0.0642564   0.1541940
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1202114   0.0872409   0.1531818
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0561653   0.0505131   0.0618176
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0515961   0.0429566   0.0602356


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1177547   0.0931926   0.1423168
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572468   0.0531533   0.0613403
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253288   0.0185306   0.0321270
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1177547   0.0931926   0.1423168
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572468   0.0531533   0.0613403


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.1416136   0.5956391   2.188039
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3713450   0.4751244   3.958094
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.6127819   0.7517614   3.459961
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1144345   0.6492626   1.912884
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1135563   0.7191351   1.724304
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9330183   0.7566279   1.150530
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.7843495   0.4658705   1.320548
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.5261438   0.5183367   4.493440
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9462495   0.5220489   1.715142
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.1645461   0.6086375   2.228203
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3713450   0.4751244   3.958094
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5836848   0.7386511   3.395457
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1236667   0.6593428   1.914978
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1005827   0.6773651   1.788226
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9186468   0.7565461   1.115480


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0121794   -0.0418266   0.0661854
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0021155   -0.0054928   0.0097239
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0050754   -0.0042304   0.0143812
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0010303   -0.0037077   0.0057683
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0085599   -0.0241983   0.0413180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0009025   -0.0028165   0.0046215
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0331809   -0.1090884   0.0427267
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0027061   -0.0048588   0.0102710
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0007184   -0.0054313   0.0039946
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0145115   -0.0382984   0.0673214
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0021155   -0.0054928   0.0097239
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0048239   -0.0045088   0.0141566
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0009066   -0.0038262   0.0056393
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0085295   -0.0298810   0.0469401
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0010815   -0.0025702   0.0047331


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1040321   -0.4977426   0.4640211
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0902630   -0.2955223   0.3611677
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1425011   -0.1563222   0.3641008
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0383173   -0.1546696   0.1990491
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0726924   -0.2523006   0.3133443
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0157650   -0.0514722   0.0787026
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2084173   -0.7907316   0.1845387
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1231263   -0.2899494   0.4039244
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0283613   -0.2321700   0.1417361
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1239524   -0.4634149   0.4755695
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0902630   -0.2955223   0.3611677
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1354407   -0.1643748   0.3580566
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0337147   -0.1589765   0.1943691
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0724347   -0.3183239   0.3473703
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0188912   -0.0471209   0.0807418
