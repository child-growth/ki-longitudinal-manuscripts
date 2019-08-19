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
0-24 months   ki1000108-IRC              INDIA                          1                     0       39    295
0-24 months   ki1000108-IRC              INDIA                          1                     1       56    295
0-24 months   ki1000108-IRC              INDIA                          2+                    0       79    295
0-24 months   ki1000108-IRC              INDIA                          2+                    1      121    295
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       87    231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      137    231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        5    231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        2    231
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       73    213
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      137    213
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        1    213
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2    213
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      186    523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      315    523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0        8    523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       14    523
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      241    486
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       10    486
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      223    486
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       12    486
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       25     37
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6     37
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0        5     37
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        1     37
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2740   5066
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2149   5066
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      115   5066
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1       62   5066
0-6 months    ki1000108-IRC              INDIA                          1                     0       20    170
0-6 months    ki1000108-IRC              INDIA                          1                     1       37    170
0-6 months    ki1000108-IRC              INDIA                          2+                    0       40    170
0-6 months    ki1000108-IRC              INDIA                          2+                    1       73    170
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       25    144
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      115    144
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0        2    144
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1        2    144
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       14    141
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      125    141
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        0    141
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2    141
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       66    251
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      170    251
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0        6    251
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1        9    251
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0        1      1
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        0      1
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0      953   3211
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2149   3211
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0       47   3211
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1       62   3211
6-24 months   ki1000108-IRC              INDIA                          1                     0       19    125
6-24 months   ki1000108-IRC              INDIA                          1                     1       19    125
6-24 months   ki1000108-IRC              INDIA                          2+                    0       39    125
6-24 months   ki1000108-IRC              INDIA                          2+                    1       48    125
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       62     87
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       22     87
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        3     87
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        0     87
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       59     72
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       12     72
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        1     72
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        0     72
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      120    272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      145    272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0        2    272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1        5    272
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      241    486
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       10    486
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      223    486
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       12    486
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       24     36
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6     36
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0        5     36
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        1     36
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1787   1855
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0   1855
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0       68   1855
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1        0   1855


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

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/a09b49da-97d7-47e4-84cd-90c37ddbca9d/9cb23073-f155-44c3-a236-1709b26a586a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a09b49da-97d7-47e4-84cd-90c37ddbca9d/9cb23073-f155-44c3-a236-1709b26a586a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a09b49da-97d7-47e4-84cd-90c37ddbca9d/9cb23073-f155-44c3-a236-1709b26a586a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a09b49da-97d7-47e4-84cd-90c37ddbca9d/9cb23073-f155-44c3-a236-1709b26a586a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5808905   0.4762064   0.6855746
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6118300   0.5367436   0.6869165
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6287425   0.5840238   0.6734612
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6363636   0.4056097   0.8671176
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0402885   0.0156463   0.0649306
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0514641   0.0245461   0.0783821
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4396904   0.4254031   0.4539776
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2847950   0.2306727   0.3389173
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6417263   0.5062376   0.7772149
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.6497771   0.5578427   0.7417115
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7203390   0.6621405   0.7785374
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6000000   0.3454906   0.8545094
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6923691   0.6757611   0.7089771
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.5116241   0.4331622   0.5900859
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4931289   0.3132112   0.6730466
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.5693310   0.4546161   0.6840458
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0404426   0.0156942   0.0651910
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0516112   0.0247863   0.0784360


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6000000   0.5401100   0.6598900
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6290631   0.5851444   0.6729818
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0452675   0.0270667   0.0634683
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4364390   0.4227700   0.4501080
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6470588   0.5734270   0.7206907
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7131474   0.6562470   0.7700478
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6885705   0.6725523   0.7045888
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5360000   0.4424375   0.6295625
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0452675   0.0270667   0.0634683


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0532622   0.8467197   1.3101871
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0121212   0.6994313   1.4646033
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2773908   0.5708790   2.8582715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.6477172   0.5342324   0.7853093
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0125456   0.7847859   1.3064054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8329412   0.5408570   1.2827623
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.7389470   0.6327255   0.8630008
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.1545277   0.7603564   1.7530385
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2761566   0.5711318   2.8514884


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0191095   -0.0686481   0.1068670
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003206   -0.0095522   0.0101934
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0049790   -0.0126702   0.0226283
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0032514   -0.0065654   0.0000627
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0053325   -0.1070980   0.1177631
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0071916   -0.0232105   0.0088274
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0037985   -0.0077238   0.0001267
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0428711   -0.1109618   0.1967040
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0048248   -0.0129272   0.0225769


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0318491   -0.1259640   0.1675435
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0005096   -0.0153076   0.0160805
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1099915   -0.3793584   0.4257365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0074497   -0.0150591   0.0001026
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0082412   -0.1816883   0.1676438
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0100843   -0.0328613   0.0121904
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0055166   -0.0112309   0.0001655
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0799834   -0.2572574   0.3267643
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1065851   -0.3858903   0.4240597
