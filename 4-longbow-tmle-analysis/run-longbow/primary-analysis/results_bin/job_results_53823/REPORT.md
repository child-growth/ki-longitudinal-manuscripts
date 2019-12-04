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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        nchldlt5    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                 0       69     410
0-24 months   ki1000108-IRC              INDIA                          1                 1       20     410
0-24 months   ki1000108-IRC              INDIA                          2+                0      265     410
0-24 months   ki1000108-IRC              INDIA                          2+                1       56     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      447     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       65     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0      163     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1       25     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      496     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       45     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      191     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       26     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1552    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       85    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      714    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1       34    2385
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 0      956    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 1      117    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                0     1849    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                1      266    3188
0-24 months   ki1148112-LCNI-5           MALAWI                         1                 0      376     812
0-24 months   ki1148112-LCNI-5           MALAWI                         1                 1       15     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                0      394     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                1       27     812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    15656   26896
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1540   26896
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0     8851   26896
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1      849   26896
0-6 months    ki1000108-IRC              INDIA                          1                 0       79     409
0-6 months    ki1000108-IRC              INDIA                          1                 1       10     409
0-6 months    ki1000108-IRC              INDIA                          2+                0      305     409
0-6 months    ki1000108-IRC              INDIA                          2+                1       15     409
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      491     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       21     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0      179     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1        9     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      531     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      210     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        7     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1622    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       15    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      744    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        4    2385
0-6 months    ki1148112-LCNI-5           MALAWI                         1                 0      122     267
0-6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                0      145     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    16380   26789
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      730   26789
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0     9347   26789
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1      332   26789
6-24 months   ki1000108-IRC              INDIA                          1                 0       73     410
6-24 months   ki1000108-IRC              INDIA                          1                 1       16     410
6-24 months   ki1000108-IRC              INDIA                          2+                0      273     410
6-24 months   ki1000108-IRC              INDIA                          2+                1       48     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      396     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       52     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0      143     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1       23     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      481     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       39     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      186     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       24     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1303    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       80    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      593    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1       33    2009
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 0      956    3188
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 1      117    3188
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                0     1849    3188
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                1      266    3188
6-24 months   ki1148112-LCNI-5           MALAWI                         1                 0      369     800
6-24 months   ki1148112-LCNI-5           MALAWI                         1                 1       15     800
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                0      389     800
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                1       27     800
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10266   17268
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      924   17268
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0     5503   17268
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1      575   17268


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

* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/9dc32aac-6bf5-4914-af3b-5c63ae19ec49/718236ce-2c2d-47aa-a8ae-fe5c4692a697/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9dc32aac-6bf5-4914-af3b-5c63ae19ec49/718236ce-2c2d-47aa-a8ae-fe5c4692a697/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9dc32aac-6bf5-4914-af3b-5c63ae19ec49/718236ce-2c2d-47aa-a8ae-fe5c4692a697/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9dc32aac-6bf5-4914-af3b-5c63ae19ec49/718236ce-2c2d-47aa-a8ae-fe5c4692a697/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2332144   0.1459585   0.3204703
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1753014   0.1337297   0.2168730
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1265911   0.0977809   0.1554013
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1351313   0.0862200   0.1840425
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0813756   0.0581022   0.1046489
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1249135   0.0800711   0.1697558
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0523509   0.0415319   0.0631698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0451771   0.0300821   0.0602721
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1069572   0.0750906   0.1388239
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1245589   0.1036471   0.1454707
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0389657   0.0197081   0.0582232
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0640112   0.0408345   0.0871879
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0865807   0.0814472   0.0917141
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0960225   0.0839697   0.1080752
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1114346   0.0462113   0.1766579
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.0469852   0.0238307   0.0701397
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0410156   0.0238245   0.0582067
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0478723   0.0173323   0.0784124
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0184843   0.0071267   0.0298419
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0322581   0.0087345   0.0557817
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0405917   0.0370049   0.0441785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0394952   0.0298632   0.0491271
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1851563   0.1038902   0.2664223
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1474513   0.1086095   0.1862932
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1177847   0.0881101   0.1474593
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1526096   0.1002662   0.2049529
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0727758   0.0506548   0.0948968
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1102742   0.0666912   0.1538573
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0581904   0.0457480   0.0706328
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0522668   0.0346629   0.0698707
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1055780   0.0738123   0.1373437
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1252386   0.1033086   0.1471686
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0398393   0.0200702   0.0596085
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0640789   0.0406255   0.0875323
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0813387   0.0748843   0.0877931
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0918356   0.0803190   0.1033522


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498952   0.0411552   0.0586352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1201380   0.1003403   0.1399357
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0517241   0.0364818   0.0669665
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0888236   0.0849161   0.0927312
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0224274   0.0118796   0.0329753
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0396431   0.0371403   0.0421459
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0562469   0.0461696   0.0663242
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1201380   0.1003403   0.1399357
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0525000   0.0370352   0.0679648
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0868080   0.0821488   0.0914672


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.7516746   0.4823203   1.1714512
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.0674628   0.6967335   1.6354557
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5350238   0.9700563   2.4290325
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8629685   0.5826144   1.2782289
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1645676   0.8692020   1.5603021
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.6427600   0.8899230   3.0324652
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1090521   0.9693317   1.2689120
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.4216391   0.1965842   0.9043429
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.1671733   0.5440406   2.5040289
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.7451613   0.6725110   4.5286812
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9729861   0.7519874   1.2589334
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.7963615   0.4771196   1.3292090
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.2956657   0.8456235   1.9852212
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5152597   0.9203403   2.4947424
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8982031   0.6027311   1.3385219
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1862190   0.8962813   1.5699486
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.6084334   0.8680407   2.9803419
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1290511   0.9734151   1.3095713


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0478486   -0.1238472   0.0281501
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0019803   -0.0130884   0.0170491
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0122920   -0.0020113   0.0265953
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0024557   -0.0082952   0.0033838
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0131808   -0.0095822   0.0359438
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0127585   -0.0030826   0.0285996
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0022429   -0.0014051   0.0058910
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0503099   -0.1045566   0.0039368
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0018415   -0.0075736   0.0112566
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0039432   -0.0035482   0.0114345
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0009486   -0.0035710   0.0016739
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0290587   -0.1001229   0.0420054
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0043652   -0.0120950   0.0208253
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0135256   -0.0004706   0.0275217
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0019435   -0.0087431   0.0048561
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0145600   -0.0074983   0.0366183
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0126607   -0.0035518   0.0288731
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0054692    0.0007819   0.0101565


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2581304   -0.7421368    0.0914078
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0154026   -0.1090449    0.1258856
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1312298   -0.0335325    0.2697262
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0492167   -0.1727643    0.0613155
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1097137   -0.1050920    0.2827658
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2466641   -0.1186593    0.4926829
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0252515   -0.0166222    0.0654005
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.8230703   -1.8996185   -0.1462147
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0429687   -0.2033820    0.2388877
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1758182   -0.2211410    0.4437369
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0239273   -0.0923149    0.0401786
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1861574   -0.7400487    0.1914195
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0357362   -0.1084957    0.1612013
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1567248   -0.0175772    0.3011704
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0345530   -0.1626085    0.0793977
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1211942   -0.0879772    0.2901508
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2411557   -0.1284806    0.4897168
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0630037    0.0074747    0.1154261
