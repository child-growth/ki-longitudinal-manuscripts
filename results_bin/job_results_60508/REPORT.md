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

agecat        studyid          country                        nchldlt5    pers_wast   n_cell       n
------------  ---------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                   0      488    1639
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                   1       62    1639
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                  0      958    1639
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                  1      131    1639
0-24 months   IRC              INDIA                          1                   0       79     410
0-24 months   IRC              INDIA                          1                   1       10     410
0-24 months   IRC              INDIA                          2+                  0      283     410
0-24 months   IRC              INDIA                          2+                  1       38     410
0-24 months   JiVitA-3         BANGLADESH                     1                   0     9569   15793
0-24 months   JiVitA-3         BANGLADESH                     1                   1      596   15793
0-24 months   JiVitA-3         BANGLADESH                     2+                  0     5327   15793
0-24 months   JiVitA-3         BANGLADESH                     2+                  1      301   15793
0-24 months   LCNI-5           MALAWI                         1                   0      337     711
0-24 months   LCNI-5           MALAWI                         1                   1        4     711
0-24 months   LCNI-5           MALAWI                         2+                  0      368     711
0-24 months   LCNI-5           MALAWI                         2+                  1        2     711
0-24 months   NIH-Crypto       BANGLADESH                     1                   0      504     730
0-24 months   NIH-Crypto       BANGLADESH                     1                   1       16     730
0-24 months   NIH-Crypto       BANGLADESH                     2+                  0      200     730
0-24 months   NIH-Crypto       BANGLADESH                     2+                  1       10     730
0-24 months   PROVIDE          BANGLADESH                     1                   0      460     641
0-24 months   PROVIDE          BANGLADESH                     1                   1       10     641
0-24 months   PROVIDE          BANGLADESH                     2+                  0      166     641
0-24 months   PROVIDE          BANGLADESH                     2+                  1        5     641
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440    2157
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38    2157
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0      659    2157
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1       20    2157
0-6 months    IRC              INDIA                          1                   0       69     402
0-6 months    IRC              INDIA                          1                   1       16     402
0-6 months    IRC              INDIA                          2+                  0      269     402
0-6 months    IRC              INDIA                          2+                  1       48     402
0-6 months    JiVitA-3         BANGLADESH                     1                   0       31      50
0-6 months    JiVitA-3         BANGLADESH                     1                   1        1      50
0-6 months    JiVitA-3         BANGLADESH                     2+                  0       17      50
0-6 months    JiVitA-3         BANGLADESH                     2+                  1        1      50
0-6 months    NIH-Crypto       BANGLADESH                     1                   0      193     250
0-6 months    NIH-Crypto       BANGLADESH                     1                   1        4     250
0-6 months    NIH-Crypto       BANGLADESH                     2+                  0       52     250
0-6 months    NIH-Crypto       BANGLADESH                     2+                  1        1     250
0-6 months    PROVIDE          BANGLADESH                     1                   0      459     638
0-6 months    PROVIDE          BANGLADESH                     1                   1        9     638
0-6 months    PROVIDE          BANGLADESH                     2+                  0      165     638
0-6 months    PROVIDE          BANGLADESH                     2+                  1        5     638
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1372    2053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       36    2053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0      629    2053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1       16    2053
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                   0      488    1639
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                   1       62    1639
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                  0      958    1639
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                  1      131    1639
6-24 months   IRC              INDIA                          1                   0       79     410
6-24 months   IRC              INDIA                          1                   1       10     410
6-24 months   IRC              INDIA                          2+                  0      283     410
6-24 months   IRC              INDIA                          2+                  1       38     410
6-24 months   JiVitA-3         BANGLADESH                     1                   0     9569   15793
6-24 months   JiVitA-3         BANGLADESH                     1                   1      596   15793
6-24 months   JiVitA-3         BANGLADESH                     2+                  0     5327   15793
6-24 months   JiVitA-3         BANGLADESH                     2+                  1      301   15793
6-24 months   LCNI-5           MALAWI                         1                   0      337     711
6-24 months   LCNI-5           MALAWI                         1                   1        4     711
6-24 months   LCNI-5           MALAWI                         2+                  0      368     711
6-24 months   LCNI-5           MALAWI                         2+                  1        2     711
6-24 months   NIH-Crypto       BANGLADESH                     1                   0      504     730
6-24 months   NIH-Crypto       BANGLADESH                     1                   1       16     730
6-24 months   NIH-Crypto       BANGLADESH                     2+                  0      200     730
6-24 months   NIH-Crypto       BANGLADESH                     2+                  1       10     730
6-24 months   PROVIDE          BANGLADESH                     1                   0      460     641
6-24 months   PROVIDE          BANGLADESH                     1                   1       10     641
6-24 months   PROVIDE          BANGLADESH                     2+                  0      166     641
6-24 months   PROVIDE          BANGLADESH                     2+                  1        5     641
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440    2157
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38    2157
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0      659    2157
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1       20    2157


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

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/3e721832-a426-4694-b651-11d6216d75ca/c851685c-913b-4ccf-8603-c085745ce5e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3e721832-a426-4694-b651-11d6216d75ca/c851685c-913b-4ccf-8603-c085745ce5e4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3e721832-a426-4694-b651-11d6216d75ca/c851685c-913b-4ccf-8603-c085745ce5e4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3e721832-a426-4694-b651-11d6216d75ca/c851685c-913b-4ccf-8603-c085745ce5e4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1088588   0.0713308   0.1463869
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1191204   0.0872196   0.1510213
0-24 months   IRC              INDIA                          1                    NA                0.1069282   0.0454566   0.1683998
0-24 months   IRC              INDIA                          2+                   NA                0.1190942   0.0834250   0.1547635
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0567276   0.0508233   0.0626318
0-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.0485060   0.0415101   0.0555018
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0313346   0.0164094   0.0462598
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.0482513   0.0197209   0.0767818
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.0212766   0.0082203   0.0343329
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.0292398   0.0039682   0.0545113
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0255900   0.0175111   0.0336688
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0284130   0.0156345   0.0411916
0-6 months    IRC              INDIA                          1                    NA                0.1888893   0.1028240   0.2749546
0-6 months    IRC              INDIA                          2+                   NA                0.1511310   0.1115528   0.1907091
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0192308   0.0067785   0.0316830
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.0294118   0.0039937   0.0548298
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0259205   0.0175526   0.0342884
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0254614   0.0127252   0.0381977
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1138485   0.0759958   0.1517013
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1163188   0.0860883   0.1465493
6-24 months   IRC              INDIA                          1                    NA                0.1050949   0.0432990   0.1668908
6-24 months   IRC              INDIA                          2+                   NA                0.1199764   0.0841569   0.1557959
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0569550   0.0510443   0.0628657
6-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.0500635   0.0422842   0.0578427
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0310181   0.0160890   0.0459471
6-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.0459538   0.0173719   0.0745356
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.0212766   0.0082203   0.0343329
6-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.0292398   0.0039682   0.0545113
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0256088   0.0175250   0.0336925
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0279020   0.0151379   0.0406660


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1177547   0.0931926   0.1423168
0-24 months   IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567973   0.0526805   0.0609141
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0234009   0.0116889   0.0351130
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
0-6 months    IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0219436   0.0105669   0.0333202
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253288   0.0185306   0.0321270
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1177547   0.0931926   0.1423168
6-24 months   IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567973   0.0526805   0.0609141
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0234009   0.0116889   0.0351130
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0942653   0.7335534   1.632351
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          2+                   1                 1.1137778   0.5825132   2.129567
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.8550692   0.7169470   1.019801
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.5398729   0.7225430   3.281754
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.3742690   0.4761342   3.966561
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1103202   0.6409675   1.923360
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          2+                   1                 0.8001033   0.4728150   1.353945
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 1.5294118   0.5194431   4.503092
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9822886   0.5417489   1.781067
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0216979   0.6985289   1.494379
6-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA                          2+                   1                 1.1416004   0.5901901   2.208189
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.8790004   0.7311757   1.056712
6-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.4815160   0.6764331   3.244799
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.3742690   0.4761342   3.966561
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0895471   0.6251322   1.898979


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0088959   -0.0215361   0.0393278
0-24 months   IRC              INDIA                          1                    NA                 0.0101450   -0.0446666   0.0649566
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0000698   -0.0038255   0.0039650
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0042818   -0.0050412   0.0136049
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0021243   -0.0054689   0.0097175
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0012992   -0.0034511   0.0060495
0-6 months    IRC              INDIA                          1                    NA                -0.0296853   -0.1051535   0.0457828
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0027128   -0.0048372   0.0102628
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0005917   -0.0052740   0.0040905
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0039062   -0.0269683   0.0347807
6-24 months   IRC              INDIA                          1                    NA                 0.0119783   -0.0430381   0.0669946
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0001577   -0.0040129   0.0036975
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0045984   -0.0047279   0.0139246
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0021243   -0.0054689   0.0097175
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0012804   -0.0034687   0.0060296


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0755460   -0.2215743   0.3003985
0-24 months   IRC              INDIA                          1                    NA                 0.0866551   -0.5236815   0.4525109
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0012283   -0.0697714   0.0675159
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.1202206   -0.1789157   0.3434545
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0907801   -0.2947917   0.3615338
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0483183   -0.1454239   0.2092900
0-6 months    IRC              INDIA                          1                    NA                -0.1864609   -0.7669667   0.2033299
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.1236264   -0.2892206   0.4042674
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0233626   -0.2258741   0.1456944
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0331724   -0.2673964   0.2624599
6-24 months   IRC              INDIA                          1                    NA                 0.1023144   -0.5141471   0.4677931
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0027763   -0.0729813   0.0628352
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.1291077   -0.1706332   0.3520999
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0907801   -0.2947917   0.3615338
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0476188   -0.1460772   0.2085786
