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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        nchldlt5    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki1000108-IRC              INDIA                          1                     0       39    395
0-24 months   ki1000108-IRC              INDIA                          1                     1       56    395
0-24 months   ki1000108-IRC              INDIA                          2+                    0      123    395
0-24 months   ki1000108-IRC              INDIA                          2+                    1      177    395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       87    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      137    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0       41    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1       42    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       73    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      137    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0       44    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1       57    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      186    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      315    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       80    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1      130    711
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      241    787
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       10    787
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      512    787
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       24    787
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       25     78
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6     78
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       40     78
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        7     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2740   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2149   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     1629   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     1048   7566
0-6 months    ki1000108-IRC              INDIA                          1                     0       20    240
0-6 months    ki1000108-IRC              INDIA                          1                     1       37    240
0-6 months    ki1000108-IRC              INDIA                          2+                    0       67    240
0-6 months    ki1000108-IRC              INDIA                          2+                    1      116    240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       25    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      115    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0       14    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1       30    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       14    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      125    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        7    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1       52    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       66    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      170    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       35    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       68    339
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0      953   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2149   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      584   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     1048   4734
6-24 months   ki1000108-IRC              INDIA                          1                     0       19    155
6-24 months   ki1000108-IRC              INDIA                          1                     1       19    155
6-24 months   ki1000108-IRC              INDIA                          2+                    0       56    155
6-24 months   ki1000108-IRC              INDIA                          2+                    1       61    155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       62    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0       27    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1       12    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       59    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       12    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0       37    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        5    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      120    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      145    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       45    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       62    372
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      241    787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       10    787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      512    787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       24    787
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       24     74
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6     74
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       37     74
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        7     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1787   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     1045   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1        0   2832


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

* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/e67e7ea1-8df4-4c60-83cd-f87257e39d11/0024b015-4e7b-445a-a956-bae7391533df/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e67e7ea1-8df4-4c60-83cd-f87257e39d11/0024b015-4e7b-445a-a956-bae7391533df/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e67e7ea1-8df4-4c60-83cd-f87257e39d11/0024b015-4e7b-445a-a956-bae7391533df/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e67e7ea1-8df4-4c60-83cd-f87257e39d11/0024b015-4e7b-445a-a956-bae7391533df/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5986497   0.4975136   0.6997858
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.5900268   0.5290655   0.6509880
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.6146877   0.5485871   0.6807883
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.4989009   0.3880272   0.6097746
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.6501973   0.5841632   0.7162314
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.5674301   0.4695907   0.6652696
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6250531   0.5788416   0.6712646
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6101114   0.5353311   0.6848917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0391269   0.0141334   0.0641203
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0452290   0.0280669   0.0623912
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1935484   0.0643859   0.3227109
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1489362   0.0421700   0.2557024
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4371635   0.4205834   0.4537435
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.4211162   0.3897748   0.4524577
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6683584   0.5403192   0.7963976
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.6349954   0.5630832   0.7069076
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8239718   0.7620032   0.8859404
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.6941117   0.5502287   0.8379947
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8992806   0.8486502   0.9499109
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.8813559   0.7977878   0.9649240
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7184675   0.6601480   0.7767869
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6646198   0.5695607   0.7596790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6875231   0.6685762   0.7064699
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.6693607   0.6330560   0.7056655
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5014793   0.3146157   0.6883429
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.5182226   0.4203806   0.6160645
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2656250   0.1665603   0.3646897
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.3165549   0.1693971   0.4637126
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1690141   0.0805585   0.2574696
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1190476   0.0331409   0.2049543
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5519235   0.4868892   0.6169579
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6088720   0.5082508   0.7094931
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0390328   0.0142859   0.0637798
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0452234   0.0280732   0.0623735
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.2000000   0.0680734   0.3319266
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1590909   0.0462498   0.2719320


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258790   0.5881498   0.6636083
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0432020   0.0290622   0.0573419
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1666667   0.0842830   0.2490503
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4225482   0.4114219   0.4336746
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6753274   0.6619885   0.6886664
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1504425   0.0860251   0.2148599
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0432020   0.0290622   0.0573419
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1756757   0.0897916   0.2615597


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9855960   0.8082716   1.201823
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8116331   0.6336885   1.039546
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.8727045   0.7136879   1.067152
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9760954   0.8459050   1.126323
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1559576   0.5509518   2.425327
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.7695035   0.2889550   2.049231
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9632924   0.8863510   1.046913
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9500821   0.7597883   1.188036
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8423974   0.6758528   1.049982
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.9800678   0.8777383   1.094327
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9250521   0.7847507   1.090437
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9735829   0.9163589   1.034380
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0333878   0.6793771   1.571867
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.1917360   0.6536126   2.172900
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.7043651   0.2888063   1.717865
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1031818   0.9008149   1.351010
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1585980   0.5546389   2.420222
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.7954545   0.3019242   2.095718


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0087763   -0.0988922    0.0813396
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0316258   -0.0659018    0.0026501
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0264031   -0.0646564    0.0118501
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0008260   -0.0260320    0.0276839
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0040752   -0.0164745    0.0246249
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0268817   -0.1281436    0.0743802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0146152   -0.0265606   -0.0026699
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0308584   -0.1440021    0.0822852
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0359283   -0.0737910    0.0019344
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0053412   -0.0344810    0.0237986
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0164026   -0.0502526    0.0174475
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0121957   -0.0257170    0.0013257
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0146497   -0.1499763    0.1792758
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0107978   -0.0466005    0.0681960
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0185716   -0.0649036    0.0277604
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0045281   -0.0330250    0.0420812
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0041692   -0.0161570    0.0244954
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0243243   -0.1278155    0.0791669


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0148783   -0.1798542    0.1270295
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0542410   -0.1149906    0.0031988
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0423266   -0.1056207    0.0173440
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0013197   -0.0425276    0.0433229
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0943279   -0.5332308    0.4650238
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1612903   -0.9712387    0.3158641
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0345883   -0.0632333   -0.0067150
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0484054   -0.2419851    0.1150024
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0455918   -0.0956841    0.0022104
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0059749   -0.0391273    0.0261198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0233633   -0.0728570    0.0238471
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0180589   -0.0382841    0.0017723
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0283838   -0.3493932    0.3003982
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0390625   -0.1929715    0.2259657
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1234466   -0.4658052    0.1389496
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0081374   -0.0617205    0.0733989
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0965047   -0.5225598    0.4638610
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1384615   -0.9209109    0.3252708
