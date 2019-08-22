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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    15663   26900
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1535   26900
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0     8856   26900
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1      846   26900
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    16387   26793
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      725   26793
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0     9352   26793
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1      329   26793
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
![](/tmp/f479e0ca-005c-4b33-b844-d350b55a228f/56dc27df-97cf-4cce-9af1-05cc344c146e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f479e0ca-005c-4b33-b844-d350b55a228f/56dc27df-97cf-4cce-9af1-05cc344c146e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f479e0ca-005c-4b33-b844-d350b55a228f/56dc27df-97cf-4cce-9af1-05cc344c146e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f479e0ca-005c-4b33-b844-d350b55a228f/56dc27df-97cf-4cce-9af1-05cc344c146e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2269227   0.1379108   0.3159346
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1738810   0.1323481   0.2154139
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1247322   0.0961932   0.1532711
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1320473   0.0835625   0.1805321
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0809091   0.0578026   0.1040157
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1241815   0.0786536   0.1697094
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0550197   0.0427706   0.0672688
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0385595   0.0251633   0.0519557
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1059330   0.0734934   0.1383726
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1261609   0.1044743   0.1478474
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0386987   0.0195281   0.0578692
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0639433   0.0405571   0.0873296
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0855149   0.0805308   0.0904989
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0958927   0.0843485   0.1074368
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1155173   0.0501546   0.1808800
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.0467146   0.0236204   0.0698089
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0410156   0.0238245   0.0582067
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0478723   0.0173323   0.0784124
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0184843   0.0071267   0.0298419
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0322581   0.0087345   0.0557817
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0396191   0.0362496   0.0429887
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0398346   0.0301717   0.0494974
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1793494   0.1007127   0.2579861
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1479467   0.1091000   0.1867935
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1137080   0.0843567   0.1430593
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1414439   0.0882202   0.1946675
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0727680   0.0502801   0.0952559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1218380   0.0760144   0.1676617
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0616198   0.0472288   0.0760108
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0499449   0.0331599   0.0667298
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1065530   0.0726581   0.1404479
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1260093   0.1036365   0.1483820
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0393496   0.0199387   0.0587606
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0645162   0.0410446   0.0879878
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0801569   0.0738708   0.0864430
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0940812   0.0810370   0.1071254


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498952   0.0411552   0.0586351
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1201380   0.1003403   0.1399357
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0517241   0.0364818   0.0669665
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885130   0.0846366   0.0923894
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0224274   0.0118796   0.0329753
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393386   0.0368539   0.0418234
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
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.7662566   0.4838997   1.2133696
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.0586470   0.6873746   1.6304554
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5348269   0.9648802   2.4414366
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.7008310   0.4639666   1.0586197
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1909497   0.8927300   1.5887910
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.6523391   0.8924501   3.0592461
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1213567   0.9839061   1.2780090
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.4043952   0.1914295   0.8542858
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.1671733   0.5440406   2.5040289
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.7451613   0.6725110   4.5286812
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0054376   0.7808913   1.2945525
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8249078   0.4948240   1.3751818
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.2439217   0.7882709   1.9629561
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.6743348   1.0296124   2.7227693
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8105330   0.5382878   1.2204694
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1825972   0.8727873   1.6023791
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.6395634   0.8876970   3.0282497
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1737125   1.0009601   1.3762796


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0415569   -0.1190062    0.0358925
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0038393   -0.0111592    0.0188377
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0127584   -0.0015281    0.0270450
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0051245   -0.0126341    0.0023851
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0142050   -0.0080450    0.0364551
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0130255   -0.0027290    0.0287799
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0029981   -0.0004723    0.0064686
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0543926   -0.1087772   -0.0000080
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0018415   -0.0075736    0.0112566
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0039432   -0.0035482    0.0114345
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0002805   -0.0026146    0.0020536
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0232519   -0.0920653    0.0455616
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0084418   -0.0077994    0.0246831
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0135333   -0.0006442    0.0277108
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0053729   -0.0143864    0.0036406
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0135850   -0.0101873    0.0373573
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0131504   -0.0028554    0.0291561
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0066510    0.0021686    0.0111335


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2241883   -0.7200899    0.1287449
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0298610   -0.0940287    0.1397211
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1362096   -0.0280246    0.2742063
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1027053   -0.2624826    0.0368510
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1182393   -0.0935701    0.2890241
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2518257   -0.1113406    0.4963157
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0338724   -0.0060437    0.0722048
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.8898627   -1.9624982   -0.2055977
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0429687   -0.2033820    0.2388877
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1758182   -0.2211410    0.4437369
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0071303   -0.0682593    0.0505007
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1489572   -0.6860295    0.2170346
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0691105   -0.0732560    0.1925922
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1568149   -0.0209786    0.3036474
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0955233   -0.2664869    0.0523619
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1130785   -0.1143975    0.2941211
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2504831   -0.1124842    0.4950260
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0766178    0.0235756    0.1267787
