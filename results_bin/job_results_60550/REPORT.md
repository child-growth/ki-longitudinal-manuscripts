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

agecat        studyid          country                        nchldlt5    ever_co   n_cell       n
------------  ---------------  -----------------------------  ---------  --------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                 0      956    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                 1      117    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                0     1849    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                1      266    3188
0-24 months   IRC              INDIA                          1                 0       69     410
0-24 months   IRC              INDIA                          1                 1       20     410
0-24 months   IRC              INDIA                          2+                0      265     410
0-24 months   IRC              INDIA                          2+                1       56     410
0-24 months   JiVitA-3         BANGLADESH                     1                 0    15656   26896
0-24 months   JiVitA-3         BANGLADESH                     1                 1     1540   26896
0-24 months   JiVitA-3         BANGLADESH                     2+                0     8851   26896
0-24 months   JiVitA-3         BANGLADESH                     2+                1      849   26896
0-24 months   LCNI-5           MALAWI                         1                 0      376     812
0-24 months   LCNI-5           MALAWI                         1                 1       15     812
0-24 months   LCNI-5           MALAWI                         2+                0      394     812
0-24 months   LCNI-5           MALAWI                         2+                1       27     812
0-24 months   NIH-Crypto       BANGLADESH                     1                 0      496     758
0-24 months   NIH-Crypto       BANGLADESH                     1                 1       45     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                0      191     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                1       26     758
0-24 months   PROVIDE          BANGLADESH                     1                 0      447     700
0-24 months   PROVIDE          BANGLADESH                     1                 1       65     700
0-24 months   PROVIDE          BANGLADESH                     2+                0      163     700
0-24 months   PROVIDE          BANGLADESH                     2+                1       25     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1552    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       85    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      714    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1       34    2385
0-6 months    IRC              INDIA                          1                 0       79     409
0-6 months    IRC              INDIA                          1                 1       10     409
0-6 months    IRC              INDIA                          2+                0      305     409
0-6 months    IRC              INDIA                          2+                1       15     409
0-6 months    JiVitA-3         BANGLADESH                     1                 0    16380   26789
0-6 months    JiVitA-3         BANGLADESH                     1                 1      730   26789
0-6 months    JiVitA-3         BANGLADESH                     2+                0     9347   26789
0-6 months    JiVitA-3         BANGLADESH                     2+                1      332   26789
0-6 months    LCNI-5           MALAWI                         1                 0      122     267
0-6 months    LCNI-5           MALAWI                         1                 1        0     267
0-6 months    LCNI-5           MALAWI                         2+                0      145     267
0-6 months    LCNI-5           MALAWI                         2+                1        0     267
0-6 months    NIH-Crypto       BANGLADESH                     1                 0      531     758
0-6 months    NIH-Crypto       BANGLADESH                     1                 1       10     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                0      210     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                1        7     758
0-6 months    PROVIDE          BANGLADESH                     1                 0      491     700
0-6 months    PROVIDE          BANGLADESH                     1                 1       21     700
0-6 months    PROVIDE          BANGLADESH                     2+                0      179     700
0-6 months    PROVIDE          BANGLADESH                     2+                1        9     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1622    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       15    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      744    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        4    2385
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                 0      956    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                 1      117    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                0     1849    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                1      266    3188
6-24 months   IRC              INDIA                          1                 0       73     410
6-24 months   IRC              INDIA                          1                 1       16     410
6-24 months   IRC              INDIA                          2+                0      273     410
6-24 months   IRC              INDIA                          2+                1       48     410
6-24 months   JiVitA-3         BANGLADESH                     1                 0    10266   17268
6-24 months   JiVitA-3         BANGLADESH                     1                 1      924   17268
6-24 months   JiVitA-3         BANGLADESH                     2+                0     5503   17268
6-24 months   JiVitA-3         BANGLADESH                     2+                1      575   17268
6-24 months   LCNI-5           MALAWI                         1                 0      369     800
6-24 months   LCNI-5           MALAWI                         1                 1       15     800
6-24 months   LCNI-5           MALAWI                         2+                0      389     800
6-24 months   LCNI-5           MALAWI                         2+                1       27     800
6-24 months   NIH-Crypto       BANGLADESH                     1                 0      481     730
6-24 months   NIH-Crypto       BANGLADESH                     1                 1       39     730
6-24 months   NIH-Crypto       BANGLADESH                     2+                0      186     730
6-24 months   NIH-Crypto       BANGLADESH                     2+                1       24     730
6-24 months   PROVIDE          BANGLADESH                     1                 0      396     614
6-24 months   PROVIDE          BANGLADESH                     1                 1       52     614
6-24 months   PROVIDE          BANGLADESH                     2+                0      143     614
6-24 months   PROVIDE          BANGLADESH                     2+                1       23     614
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1303    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       80    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      593    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1       33    2009


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/d7626ebc-41ae-48ce-84be-ddcde78b05ea/f3f616b5-b283-41b0-b479-dbb827f544a6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d7626ebc-41ae-48ce-84be-ddcde78b05ea/f3f616b5-b283-41b0-b479-dbb827f544a6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d7626ebc-41ae-48ce-84be-ddcde78b05ea/f3f616b5-b283-41b0-b479-dbb827f544a6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d7626ebc-41ae-48ce-84be-ddcde78b05ea/f3f616b5-b283-41b0-b479-dbb827f544a6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1053122   0.0755729   0.1350514
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1246367   0.1035328   0.1457405
0-24 months   IRC              INDIA                          1                    NA                0.2307648   0.1395756   0.3219540
0-24 months   IRC              INDIA                          2+                   NA                0.1738743   0.1323587   0.2153898
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0874170   0.0821813   0.0926528
0-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.0919773   0.0797752   0.1041795
0-24 months   LCNI-5           MALAWI                         1                    NA                0.0380065   0.0188999   0.0571131
0-24 months   LCNI-5           MALAWI                         2+                   NA                0.0590367   0.0372692   0.0808042
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0832126   0.0599417   0.1064834
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1188790   0.0755304   0.1622275
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1260565   0.0972301   0.1548830
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1303467   0.0814627   0.1792308
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0528597   0.0418648   0.0638546
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0457997   0.0307801   0.0608193
0-6 months    IRC              INDIA                          1                    NA                0.1121424   0.0434216   0.1808632
0-6 months    IRC              INDIA                          2+                   NA                0.0470580   0.0237499   0.0703661
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0405500   0.0369880   0.0441119
0-6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.0401467   0.0293694   0.0509240
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.0184843   0.0071267   0.0298419
0-6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.0322581   0.0087345   0.0557817
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0410156   0.0238245   0.0582067
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.0478723   0.0173323   0.0784124
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1047008   0.0741255   0.1352761
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1242141   0.1030286   0.1453996
6-24 months   IRC              INDIA                          1                    NA                0.1795307   0.1004456   0.2586158
6-24 months   IRC              INDIA                          2+                   NA                0.1491479   0.1101610   0.1881348
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0835078   0.0763899   0.0906257
6-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.0900697   0.0786433   0.1014961
6-24 months   LCNI-5           MALAWI                         1                    NA                0.0361807   0.0177551   0.0546063
6-24 months   LCNI-5           MALAWI                         2+                   NA                0.0666597   0.0426248   0.0906947
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0757583   0.0531067   0.0984099
6-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1138916   0.0709223   0.1568609
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1180446   0.0881136   0.1479756
6-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1300303   0.0791890   0.1808717
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0585320   0.0460387   0.0710254
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0527427   0.0352580   0.0702274


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1201380   0.1003403   0.1399357
0-24 months   IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0888236   0.0849161   0.0927312
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0517241   0.0364818   0.0669665
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498952   0.0411552   0.0586352
0-6 months    IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396431   0.0371403   0.0421459
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0224274   0.0118796   0.0329753
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1201380   0.1003403   0.1399357
6-24 months   IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0868080   0.0821488   0.0914672
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0525000   0.0370352   0.0679648
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0562469   0.0461696   0.0663242


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1834971   0.9051391   1.5474588
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          2+                   1                 0.7534698   0.4755041   1.1939261
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2+                   1                 1.0521671   0.9132202   1.2122550
0-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         2+                   1                 1.5533315   0.8329955   2.8965811
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.4286181   0.9029646   2.2602767
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.0340340   0.6670030   1.6030308
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8664379   0.5875197   1.2777695
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          2+                   1                 0.4196272   0.1906140   0.9237882
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.9900552   0.7472438   1.3117663
0-6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.7451613   0.6725110   4.5286814
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 1.1671733   0.5440406   2.5040289
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1863717   0.9034328   1.5579219
6-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          2+                   1                 0.8307655   0.4976915   1.3867453
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2+                   1                 1.0785787   0.9251605   1.2574381
6-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         2+                   1                 1.8424114   0.9883377   3.4345343
6-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.5033550   0.9297354   2.4308813
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.1015355   0.6922239   1.7528729
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9010909   0.6074009   1.3367855


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0148258   -0.0051540   0.0348057
0-24 months   IRC              INDIA                          1                    NA                -0.0453989   -0.1248254   0.0340276
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0014066   -0.0023243   0.0051375
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.0137176   -0.0021235   0.0295588
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0104550   -0.0035957   0.0245056
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0025149   -0.0125771   0.0176068
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0029645   -0.0089231   0.0029940
0-6 months    IRC              INDIA                          1                    NA                -0.0510177   -0.1086274   0.0065919
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0009068   -0.0034778   0.0016641
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0039432   -0.0035482   0.0114345
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0018415   -0.0075736   0.0112566
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0154372   -0.0050101   0.0358845
6-24 months   IRC              INDIA                          1                    NA                -0.0234331   -0.0925003   0.0456341
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0033002   -0.0021165   0.0087168
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.0163193    0.0009696   0.0316690
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0105431   -0.0034159   0.0245021
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0041052   -0.0123368   0.0205473
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0022852   -0.0090910   0.0045207


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1234068   -0.0640873    0.2778640
0-24 months   IRC              INDIA                          1                    NA                -0.2449152   -0.7535461    0.1161830
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0158356   -0.0270390    0.0569203
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.2652077   -0.1007333    0.5094909
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.1116180   -0.0498490    0.2482514
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0195603   -0.1051345    0.1301855
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0594153   -0.1853280    0.0531221
0-6 months    IRC              INDIA                          1                    NA                -0.8346498   -1.9838272   -0.1280612
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0228747   -0.0898670    0.0399997
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.1758182   -0.2211410    0.4437370
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0429687   -0.2033820    0.2388877
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1284956   -0.0649700    0.2868157
6-24 months   IRC              INDIA                          1                    NA                -0.1501184   -0.6891137    0.2168838
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0380169   -0.0264685    0.0984512
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.3108439   -0.0351595    0.5411953
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.1221659   -0.0525889    0.2679073
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0336081   -0.1105930    0.1590859
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0406272   -0.1686992    0.0734099
