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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country        cleanck    wasted   n_cell     n
----------  ---------------  -------------  --------  -------  -------  ----
Birth       CMC-V-BCS-2002   INDIA          1               0       34    86
Birth       CMC-V-BCS-2002   INDIA          1               1        3    86
Birth       CMC-V-BCS-2002   INDIA          0               0       41    86
Birth       CMC-V-BCS-2002   INDIA          0               1        8    86
Birth       GMS-Nepal        NEPAL          1               0        5   570
Birth       GMS-Nepal        NEPAL          1               1        4   570
Birth       GMS-Nepal        NEPAL          0               0      448   570
Birth       GMS-Nepal        NEPAL          0               1      113   570
Birth       IRC              INDIA          1               0      157   337
Birth       IRC              INDIA          1               1       41   337
Birth       IRC              INDIA          0               0       91   337
Birth       IRC              INDIA          0               1       48   337
Birth       MAL-ED           PERU           1               0        1     2
Birth       MAL-ED           PERU           1               1        0     2
Birth       MAL-ED           PERU           0               0        1     2
Birth       MAL-ED           PERU           0               1        0     2
Birth       NIH-Crypto       BANGLADESH     1               0      275   543
Birth       NIH-Crypto       BANGLADESH     1               1       61   543
Birth       NIH-Crypto       BANGLADESH     0               0      146   543
Birth       NIH-Crypto       BANGLADESH     0               1       61   543
Birth       PROVIDE          BANGLADESH     1               0      341   532
Birth       PROVIDE          BANGLADESH     1               1       92   532
Birth       PROVIDE          BANGLADESH     0               0       74   532
Birth       PROVIDE          BANGLADESH     0               1       25   532
6 months    CMC-V-BCS-2002   INDIA          1               0      146   368
6 months    CMC-V-BCS-2002   INDIA          1               1       16   368
6 months    CMC-V-BCS-2002   INDIA          0               0      176   368
6 months    CMC-V-BCS-2002   INDIA          0               1       30   368
6 months    GMS-Nepal        NEPAL          1               0        8   505
6 months    GMS-Nepal        NEPAL          1               1        0   505
6 months    GMS-Nepal        NEPAL          0               0      451   505
6 months    GMS-Nepal        NEPAL          0               1       46   505
6 months    IRC              INDIA          1               0      195   398
6 months    IRC              INDIA          1               1       34   398
6 months    IRC              INDIA          0               0      150   398
6 months    IRC              INDIA          0               1       19   398
6 months    MAL-ED           SOUTH AFRICA   1               0        1     1
6 months    MAL-ED           SOUTH AFRICA   1               1        0     1
6 months    MAL-ED           SOUTH AFRICA   0               0        0     1
6 months    MAL-ED           SOUTH AFRICA   0               1        0     1
6 months    NIH-Crypto       BANGLADESH     1               0      321   545
6 months    NIH-Crypto       BANGLADESH     1               1        8   545
6 months    NIH-Crypto       BANGLADESH     0               0      211   545
6 months    NIH-Crypto       BANGLADESH     0               1        5   545
6 months    PROVIDE          BANGLADESH     1               0      481   603
6 months    PROVIDE          BANGLADESH     1               1       16   603
6 months    PROVIDE          BANGLADESH     0               0       97   603
6 months    PROVIDE          BANGLADESH     0               1        9   603
24 months   CMC-V-BCS-2002   INDIA          1               0      157   372
24 months   CMC-V-BCS-2002   INDIA          1               1        6   372
24 months   CMC-V-BCS-2002   INDIA          0               0      192   372
24 months   CMC-V-BCS-2002   INDIA          0               1       17   372
24 months   GMS-Nepal        NEPAL          1               0        4   434
24 months   GMS-Nepal        NEPAL          1               1        1   434
24 months   GMS-Nepal        NEPAL          0               0      350   434
24 months   GMS-Nepal        NEPAL          0               1       79   434
24 months   IRC              INDIA          1               0      216   400
24 months   IRC              INDIA          1               1       15   400
24 months   IRC              INDIA          0               0      153   400
24 months   IRC              INDIA          0               1       16   400
24 months   MAL-ED           SOUTH AFRICA   1               0        1     1
24 months   MAL-ED           SOUTH AFRICA   1               1        0     1
24 months   MAL-ED           SOUTH AFRICA   0               0        0     1
24 months   MAL-ED           SOUTH AFRICA   0               1        0     1
24 months   NIH-Crypto       BANGLADESH     1               0      185   410
24 months   NIH-Crypto       BANGLADESH     1               1       14   410
24 months   NIH-Crypto       BANGLADESH     0               0      193   410
24 months   NIH-Crypto       BANGLADESH     0               1       18   410
24 months   PROVIDE          BANGLADESH     1               0      438   579
24 months   PROVIDE          BANGLADESH     1               1       42   579
24 months   PROVIDE          BANGLADESH     0               0       79   579
24 months   PROVIDE          BANGLADESH     0               1       20   579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/e862f7f2-c87d-446a-b1af-6b0fc7b1872d/016538eb-f880-4079-b283-e9e799a9bfdf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e862f7f2-c87d-446a-b1af-6b0fc7b1872d/016538eb-f880-4079-b283-e9e799a9bfdf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e862f7f2-c87d-446a-b1af-6b0fc7b1872d/016538eb-f880-4079-b283-e9e799a9bfdf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e862f7f2-c87d-446a-b1af-6b0fc7b1872d/016538eb-f880-4079-b283-e9e799a9bfdf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        1                    NA                0.2070707   0.1505461   0.2635953
Birth       IRC              INDIA        0                    NA                0.3453237   0.2661625   0.4244850
Birth       NIH-Crypto       BANGLADESH   1                    NA                0.1815476   0.1402932   0.2228021
Birth       NIH-Crypto       BANGLADESH   0                    NA                0.2946860   0.2325227   0.3568493
Birth       PROVIDE          BANGLADESH   1                    NA                0.2124711   0.1739059   0.2510364
Birth       PROVIDE          BANGLADESH   0                    NA                0.2525253   0.1668630   0.3381876
6 months    CMC-V-BCS-2002   INDIA        1                    NA                0.0987654   0.0527607   0.1447702
6 months    CMC-V-BCS-2002   INDIA        0                    NA                0.1456311   0.0973969   0.1938653
6 months    IRC              INDIA        1                    NA                0.1484716   0.1023613   0.1945819
6 months    IRC              INDIA        0                    NA                0.1124260   0.0647405   0.1601116
6 months    NIH-Crypto       BANGLADESH   1                    NA                0.0243161   0.0076570   0.0409752
6 months    NIH-Crypto       BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
6 months    PROVIDE          BANGLADESH   1                    NA                0.0321932   0.0166619   0.0477244
6 months    PROVIDE          BANGLADESH   0                    NA                0.0849057   0.0317980   0.1380133
24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078646   0.0657550
24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.0813397   0.0442299   0.1184495
24 months   IRC              INDIA        1                    NA                0.0649351   0.0331190   0.0967511
24 months   IRC              INDIA        0                    NA                0.0946746   0.0504802   0.1388690
24 months   NIH-Crypto       BANGLADESH   1                    NA                0.0703518   0.0347765   0.1059271
24 months   NIH-Crypto       BANGLADESH   0                    NA                0.0853081   0.0475709   0.1230452
24 months   PROVIDE          BANGLADESH   1                    NA                0.0875000   0.0621998   0.1128002
24 months   PROVIDE          BANGLADESH   0                    NA                0.2020202   0.1228614   0.2811790


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        NA                   NA                0.2640950   0.2169571   0.3112328
Birth       NIH-Crypto       BANGLADESH   NA                   NA                0.2246777   0.1895403   0.2598151
Birth       PROVIDE          BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
6 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.1250000   0.0911644   0.1588356
6 months    IRC              INDIA        NA                   NA                0.1331658   0.0997450   0.1665867
6 months    NIH-Crypto       BANGLADESH   NA                   NA                0.0238532   0.0110305   0.0366759
6 months    PROVIDE          BANGLADESH   NA                   NA                0.0414594   0.0255348   0.0573839
24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.0618280   0.0373207   0.0863352
24 months   IRC              INDIA        NA                   NA                0.0775000   0.0512641   0.1037359
24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.0780488   0.0520518   0.1040458
24 months   PROVIDE          BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       IRC              INDIA        0                    1                 1.6676610   1.1676134   2.381861
Birth       NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH   0                    1                 1.6231884   1.1904538   2.213224
Birth       PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH   0                    1                 1.1885156   0.8089445   1.746188
6 months    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 1.4745146   0.8325858   2.611374
6 months    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    IRC              INDIA        0                    1                 0.7572224   0.4476279   1.280943
6 months    NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH   0                    1                 0.9519676   0.3152693   2.874502
6 months    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH   0                    1                 2.6373821   1.1970491   5.810776
24 months   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 2.2097289   0.8902591   5.484809
24 months   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   IRC              INDIA        0                    1                 1.4579882   0.7410556   2.868515
24 months   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH   0                    1                 1.2125931   0.6193414   2.374106
24 months   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH   0                    1                 2.3088023   1.4187249   3.757295


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA        1                    NA                 0.0570242    0.0162492   0.0977993
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0431301    0.0143150   0.0719452
Birth       PROVIDE          BANGLADESH   1                    NA                 0.0074537   -0.0100784   0.0249858
6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.0262346   -0.0111540   0.0636231
6 months    IRC              INDIA        1                    NA                -0.0153058   -0.0435268   0.0129152
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0004629   -0.0108012   0.0098754
6 months    PROVIDE          BANGLADESH   1                    NA                 0.0092662   -0.0005917   0.0191241
24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0250181   -0.0015188   0.0515551
24 months   IRC              INDIA        1                    NA                 0.0125649   -0.0104876   0.0356175
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0076970   -0.0190029   0.0343970
24 months   PROVIDE          BANGLADESH   1                    NA                 0.0195812    0.0049434   0.0342189


### Parameter: PAF


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA        1                    NA                 0.2159233    0.0478527   0.3543265
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.1919643    0.0551781   0.3089473
Birth       PROVIDE          BANGLADESH   1                    NA                 0.0338919   -0.0491166   0.1103326
6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.2098765   -0.1475951   0.4559971
6 months    IRC              INDIA        1                    NA                -0.1149378   -0.3467769   0.0769917
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0194061   -0.5593435   0.3335728
6 months    PROVIDE          BANGLADESH   1                    NA                 0.2235010   -0.0346153   0.4172223
24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.4046412   -0.1668932   0.6962429
24 months   IRC              INDIA        1                    NA                 0.1621282   -0.1887334   0.4094309
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0986181   -0.3154895   0.3823673
24 months   PROVIDE          BANGLADESH   1                    NA                 0.1828629    0.0406201   0.3040160
