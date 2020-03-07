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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        nchldlt5    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  ---------  --------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                       0      977    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                       1       96    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                      0     1879    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                      1      236    3188
0-24 months   IRC              INDIA                          1                       0       64     410
0-24 months   IRC              INDIA                          1                       1       25     410
0-24 months   IRC              INDIA                          2+                      0      244     410
0-24 months   IRC              INDIA                          2+                      1       77     410
0-24 months   JiVitA-3         BANGLADESH                     1                       0    13936   27200
0-24 months   JiVitA-3         BANGLADESH                     1                       1     3474   27200
0-24 months   JiVitA-3         BANGLADESH                     2+                      0     8244   27200
0-24 months   JiVitA-3         BANGLADESH                     2+                      1     1546   27200
0-24 months   LCNI-5           MALAWI                         1                       0      327     812
0-24 months   LCNI-5           MALAWI                         1                       1       64     812
0-24 months   LCNI-5           MALAWI                         2+                      0      315     812
0-24 months   LCNI-5           MALAWI                         2+                      1      106     812
0-24 months   NIH-Crypto       BANGLADESH                     1                       0      475     758
0-24 months   NIH-Crypto       BANGLADESH                     1                       1       66     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                      0      184     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                      1       33     758
0-24 months   PROVIDE          BANGLADESH                     1                       0      442     700
0-24 months   PROVIDE          BANGLADESH                     1                       1       70     700
0-24 months   PROVIDE          BANGLADESH                     2+                      0      163     700
0-24 months   PROVIDE          BANGLADESH                     2+                      1       25     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0     1479    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1      158    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      0      669    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      1       79    2385
0-6 months    IRC              INDIA                          1                       0       68     410
0-6 months    IRC              INDIA                          1                       1       21     410
0-6 months    IRC              INDIA                          2+                      0      280     410
0-6 months    IRC              INDIA                          2+                      1       41     410
0-6 months    JiVitA-3         BANGLADESH                     1                       0    14467   27134
0-6 months    JiVitA-3         BANGLADESH                     1                       1     2892   27134
0-6 months    JiVitA-3         BANGLADESH                     2+                      0     8665   27134
0-6 months    JiVitA-3         BANGLADESH                     2+                      1     1110   27134
0-6 months    LCNI-5           MALAWI                         1                       0      111     267
0-6 months    LCNI-5           MALAWI                         1                       1       11     267
0-6 months    LCNI-5           MALAWI                         2+                      0      137     267
0-6 months    LCNI-5           MALAWI                         2+                      1        8     267
0-6 months    NIH-Crypto       BANGLADESH                     1                       0      506     758
0-6 months    NIH-Crypto       BANGLADESH                     1                       1       35     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                      0      205     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                      1       12     758
0-6 months    PROVIDE          BANGLADESH                     1                       0      488     700
0-6 months    PROVIDE          BANGLADESH                     1                       1       24     700
0-6 months    PROVIDE          BANGLADESH                     2+                      0      181     700
0-6 months    PROVIDE          BANGLADESH                     2+                      1        7     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0     1564    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       73    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      0      718    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      1       30    2385


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
![](/tmp/174da81b-956e-459c-bd97-d60a57eee896/4ac4983f-9fbf-4a71-8d81-7bb07a628e82/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/174da81b-956e-459c-bd97-d60a57eee896/4ac4983f-9fbf-4a71-8d81-7bb07a628e82/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/174da81b-956e-459c-bd97-d60a57eee896/4ac4983f-9fbf-4a71-8d81-7bb07a628e82/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/174da81b-956e-459c-bd97-d60a57eee896/4ac4983f-9fbf-4a71-8d81-7bb07a628e82/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0894688   0.0580976   0.1208400
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1115839   0.0897094   0.1334585
0-24 months   IRC              INDIA                          1                    NA                0.2808989   0.1874114   0.3743863
0-24 months   IRC              INDIA                          2+                   NA                0.2398754   0.1931061   0.2866447
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1995405   0.1925866   0.2064944
0-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.1579162   0.1499577   0.1658748
0-24 months   LCNI-5           MALAWI                         1                    NA                0.1636829   0.1269872   0.2003785
0-24 months   LCNI-5           MALAWI                         2+                   NA                0.2517815   0.2102956   0.2932674
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1219963   0.0943996   0.1495930
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1520737   0.1042646   0.1998829
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1367187   0.1069395   0.1664980
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1329787   0.0844068   0.1815507
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0965180   0.0822100   0.1108260
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1056150   0.0835850   0.1276449
0-6 months    IRC              INDIA                          1                    NA                0.2359551   0.1476354   0.3242747
0-6 months    IRC              INDIA                          2+                   NA                0.1277259   0.0911671   0.1642846
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.1665995   0.1601089   0.1730900
0-6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.1135550   0.1068339   0.1202761
0-6 months    LCNI-5           MALAWI                         1                    NA                0.0901639   0.0392448   0.1410831
0-6 months    LCNI-5           MALAWI                         2+                   NA                0.0551724   0.0179404   0.0924044
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.0646950   0.0439531   0.0854369
0-6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.0552995   0.0248688   0.0857303
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0468750   0.0285532   0.0651968
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.0372340   0.0101502   0.0643179
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0445938   0.0345927   0.0545948
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0401070   0.0260429   0.0541710


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1041405   0.0842158   0.1240653
0-24 months   IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1845588   0.1789526   0.1901651
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.2093596   0.1813586   0.2373606
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993711   0.0873623   0.1113798
0-6 months    IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1474902   0.1424375   0.1525429
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.0711610   0.0402653   0.1020568
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0431866   0.0350267   0.0513464


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2471828   0.8641056   1.8000866
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          2+                   1                 0.8539564   0.5806564   1.2558917
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.7913995   0.7473755   0.8380166
0-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         2+                   1                 1.5382274   1.1646330   2.0316646
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.2465438   0.8462573   1.8361691
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 0.9726444   0.6357109   1.4881563
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0942513   0.8471915   1.4133593
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          2+                   1                 0.5413143   0.3379158   0.8671427
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.6816048   0.6374641   0.7288019
0-6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    LCNI-5           MALAWI                         2+                   1                 0.6119122   0.2538214   1.4751968
0-6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     2+                   1                 0.8547729   0.4521261   1.6160020
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 0.7943262   0.3478373   1.8139348
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8993847   0.5931597   1.3637015


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0146717   -0.0079278    0.0372713
0-24 months   IRC              INDIA                          1                    NA                -0.0321184   -0.1139770    0.0497402
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0149817   -0.0185292   -0.0114341
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.0456767    0.0168010    0.0745524
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0086106   -0.0072224    0.0244435
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0010045   -0.0163065    0.0142976
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0028530   -0.0053872    0.0110933
0-6 months    IRC              INDIA                          1                    NA                -0.0847355   -0.1596981   -0.0097730
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0191092   -0.0222944   -0.0159241
0-6 months    LCNI-5           MALAWI                         1                    NA                -0.0190029   -0.0533233    0.0153176
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0026897   -0.0132370    0.0078575
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0025893   -0.0113770    0.0061984
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0014072   -0.0068202    0.0040058


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1408841   -0.1110611    0.3356980
0-24 months   IRC              INDIA                          1                    NA                -0.1291033   -0.5108613    0.1561937
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0811756   -0.1004558   -0.0622331
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.2181736    0.0695052    0.3430887
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0659273   -0.0630201    0.1792330
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0074013   -0.1266990    0.0992648
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0287111   -0.0577938    0.1081417
0-6 months    IRC              INDIA                          1                    NA                -0.5603480   -1.1336207   -0.1411053
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.1295626   -0.1509194   -0.1086022
0-6 months    LCNI-5           MALAWI                         1                    NA                -0.2670406   -0.8374155    0.1262772
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0433791   -0.2277019    0.1132702
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0584677   -0.2756059    0.1217084
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0325839   -0.1656942    0.0853266
