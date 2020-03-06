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

**Outcome Variable:** stunted

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

agecat      studyid          country        cleanck    stunted   n_cell     n
----------  ---------------  -------------  --------  --------  -------  ----
Birth       CMC-V-BCS-2002   INDIA          1                0       35    92
Birth       CMC-V-BCS-2002   INDIA          1                1        4    92
Birth       CMC-V-BCS-2002   INDIA          0                0       40    92
Birth       CMC-V-BCS-2002   INDIA          0                1       13    92
Birth       GMS-Nepal        NEPAL          1                0        9   621
Birth       GMS-Nepal        NEPAL          1                1        0   621
Birth       GMS-Nepal        NEPAL          0                0      506   621
Birth       GMS-Nepal        NEPAL          0                1      106   621
Birth       IRC              INDIA          1                0      197   378
Birth       IRC              INDIA          1                1       21   378
Birth       IRC              INDIA          0                0      138   378
Birth       IRC              INDIA          0                1       22   378
Birth       MAL-ED           PERU           1                0        1     2
Birth       MAL-ED           PERU           1                1        0     2
Birth       MAL-ED           PERU           0                0        1     2
Birth       MAL-ED           PERU           0                1        0     2
Birth       NIH-Crypto       BANGLADESH     1                0      301   561
Birth       NIH-Crypto       BANGLADESH     1                1       44   561
Birth       NIH-Crypto       BANGLADESH     0                0      183   561
Birth       NIH-Crypto       BANGLADESH     0                1       33   561
Birth       PROVIDE          BANGLADESH     1                0      400   539
Birth       PROVIDE          BANGLADESH     1                1       38   539
Birth       PROVIDE          BANGLADESH     0                0       91   539
Birth       PROVIDE          BANGLADESH     0                1       10   539
6 months    CMC-V-BCS-2002   INDIA          1                0      123   369
6 months    CMC-V-BCS-2002   INDIA          1                1       40   369
6 months    CMC-V-BCS-2002   INDIA          0                0      135   369
6 months    CMC-V-BCS-2002   INDIA          0                1       71   369
6 months    GMS-Nepal        NEPAL          1                0        8   505
6 months    GMS-Nepal        NEPAL          1                1        0   505
6 months    GMS-Nepal        NEPAL          0                0      388   505
6 months    GMS-Nepal        NEPAL          0                1      109   505
6 months    IRC              INDIA          1                0      181   398
6 months    IRC              INDIA          1                1       49   398
6 months    IRC              INDIA          0                0      119   398
6 months    IRC              INDIA          0                1       49   398
6 months    MAL-ED           SOUTH AFRICA   1                0        1     1
6 months    MAL-ED           SOUTH AFRICA   1                1        0     1
6 months    MAL-ED           SOUTH AFRICA   0                0        0     1
6 months    MAL-ED           SOUTH AFRICA   0                1        0     1
6 months    NIH-Crypto       BANGLADESH     1                0      264   545
6 months    NIH-Crypto       BANGLADESH     1                1       65   545
6 months    NIH-Crypto       BANGLADESH     0                0      179   545
6 months    NIH-Crypto       BANGLADESH     0                1       37   545
6 months    PROVIDE          BANGLADESH     1                0      429   604
6 months    PROVIDE          BANGLADESH     1                1       69   604
6 months    PROVIDE          BANGLADESH     0                0       79   604
6 months    PROVIDE          BANGLADESH     0                1       27   604
24 months   CMC-V-BCS-2002   INDIA          1                0       67   371
24 months   CMC-V-BCS-2002   INDIA          1                1       96   371
24 months   CMC-V-BCS-2002   INDIA          0                0       38   371
24 months   CMC-V-BCS-2002   INDIA          0                1      170   371
24 months   GMS-Nepal        NEPAL          1                0        5   435
24 months   GMS-Nepal        NEPAL          1                1        0   435
24 months   GMS-Nepal        NEPAL          0                0      232   435
24 months   GMS-Nepal        NEPAL          0                1      198   435
24 months   IRC              INDIA          1                0      142   400
24 months   IRC              INDIA          1                1       89   400
24 months   IRC              INDIA          0                0       89   400
24 months   IRC              INDIA          0                1       80   400
24 months   MAL-ED           SOUTH AFRICA   1                0        1     1
24 months   MAL-ED           SOUTH AFRICA   1                1        0     1
24 months   MAL-ED           SOUTH AFRICA   0                0        0     1
24 months   MAL-ED           SOUTH AFRICA   0                1        0     1
24 months   NIH-Crypto       BANGLADESH     1                0      156   410
24 months   NIH-Crypto       BANGLADESH     1                1       43   410
24 months   NIH-Crypto       BANGLADESH     0                0      167   410
24 months   NIH-Crypto       BANGLADESH     0                1       44   410
24 months   PROVIDE          BANGLADESH     1                0      338   578
24 months   PROVIDE          BANGLADESH     1                1      141   578
24 months   PROVIDE          BANGLADESH     0                0       50   578
24 months   PROVIDE          BANGLADESH     0                1       49   578


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
![](/tmp/485e1dba-24e7-401a-b31c-5639d222b3c2/45b668a7-1440-407c-b99d-2019f892be9e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/485e1dba-24e7-401a-b31c-5639d222b3c2/45b668a7-1440-407c-b99d-2019f892be9e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/485e1dba-24e7-401a-b31c-5639d222b3c2/45b668a7-1440-407c-b99d-2019f892be9e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/485e1dba-24e7-401a-b31c-5639d222b3c2/45b668a7-1440-407c-b99d-2019f892be9e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        1                    NA                0.0963303   0.0571126   0.1355479
Birth       IRC              INDIA        0                    NA                0.1375000   0.0840689   0.1909311
Birth       NIH-Crypto       BANGLADESH   1                    NA                0.1275362   0.0923059   0.1627665
Birth       NIH-Crypto       BANGLADESH   0                    NA                0.1527778   0.1047561   0.2007995
Birth       PROVIDE          BANGLADESH   1                    NA                0.0867580   0.0603727   0.1131433
Birth       PROVIDE          BANGLADESH   0                    NA                0.0990099   0.0407070   0.1573128
6 months    CMC-V-BCS-2002   INDIA        1                    NA                0.2453988   0.1792475   0.3115501
6 months    CMC-V-BCS-2002   INDIA        0                    NA                0.3446602   0.2796723   0.4096481
6 months    IRC              INDIA        1                    NA                0.2130435   0.1600601   0.2660269
6 months    IRC              INDIA        0                    NA                0.2916667   0.2228487   0.3604847
6 months    NIH-Crypto       BANGLADESH   1                    NA                0.1975684   0.1545047   0.2406321
6 months    NIH-Crypto       BANGLADESH   0                    NA                0.1712963   0.1210049   0.2215877
6 months    PROVIDE          BANGLADESH   1                    NA                0.1385542   0.1081862   0.1689223
6 months    PROVIDE          BANGLADESH   0                    NA                0.2547170   0.1717043   0.3377297
24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.5889571   0.5133215   0.6645926
24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.8173077   0.7647235   0.8698919
24 months   IRC              INDIA        1                    NA                0.3852814   0.3224448   0.4481180
24 months   IRC              INDIA        0                    NA                0.4733728   0.3980022   0.5487433
24 months   NIH-Crypto       BANGLADESH   1                    NA                0.2160804   0.1588278   0.2733330
24 months   NIH-Crypto       BANGLADESH   0                    NA                0.2085308   0.1536476   0.2634140
24 months   PROVIDE          BANGLADESH   1                    NA                0.2943633   0.2535136   0.3352129
24 months   PROVIDE          BANGLADESH   0                    NA                0.4949495   0.3963773   0.5935217


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        NA                   NA                0.1137566   0.0817056   0.1458077
Birth       NIH-Crypto       BANGLADESH   NA                   NA                0.1372549   0.1087540   0.1657558
Birth       PROVIDE          BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
6 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.3008130   0.2539566   0.3476694
6 months    IRC              INDIA        NA                   NA                0.2462312   0.2038529   0.2886094
6 months    NIH-Crypto       BANGLADESH   NA                   NA                0.1871560   0.1543801   0.2199318
6 months    PROVIDE          BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.7169811   0.6710815   0.7628807
24 months   IRC              INDIA        NA                   NA                0.4225000   0.3740325   0.4709675
24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.2121951   0.1725707   0.2518196
24 months   PROVIDE          BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       IRC              INDIA        0                    1                 1.4273810   0.8130518   2.505888
Birth       NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH   0                    1                 1.1979167   0.7883024   1.820373
Birth       PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH   0                    1                 1.1412194   0.5882167   2.214119
6 months    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 1.4044903   1.0107643   1.951585
6 months    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    IRC              INDIA        0                    1                 1.3690476   0.9717089   1.928861
6 months    NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH   0                    1                 0.8670228   0.6014872   1.249783
6 months    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH   0                    1                 1.8383921   1.2412803   2.722742
24 months   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 1.3877204   1.2020453   1.602076
24 months   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   IRC              INDIA        0                    1                 1.2286417   0.9782237   1.543165
24 months   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH   0                    1                 0.9650612   0.6642983   1.401995
24 months   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH   0                    1                 1.6814242   1.3190404   2.143367


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA        1                    NA                 0.0174263   -0.0107033   0.0455560
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0097187   -0.0132356   0.0326730
Birth       PROVIDE          BANGLADESH   1                    NA                 0.0022958   -0.0097027   0.0142943
6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.0554142    0.0034002   0.1074283
6 months    IRC              INDIA        1                    NA                 0.0331877   -0.0036717   0.0700470
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0104124   -0.0366755   0.0158506
6 months    PROVIDE          BANGLADESH   1                    NA                 0.0203862    0.0044776   0.0362947
24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.1280241    0.0751028   0.1809454
24 months   IRC              INDIA        1                    NA                 0.0372186   -0.0044598   0.0788971
24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0038853   -0.0447024   0.0369318
24 months   PROVIDE          BANGLADESH   1                    NA                 0.0343565    0.0150684   0.0536445


### Parameter: PAF


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA        1                    NA                 0.1531897   -0.1300159   0.3654180
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0708075   -0.1118805   0.2234788
Birth       PROVIDE          BANGLADESH   1                    NA                 0.0257801   -0.1185472   0.1514847
6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.1842149   -0.0075095   0.3394550
6 months    IRC              INDIA        1                    NA                 0.1347826   -0.0277102   0.2715835
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0556350   -0.2055179   0.0756128
6 months    PROVIDE          BANGLADESH   1                    NA                 0.1282631    0.0243003   0.2211484
24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.1785599    0.0983198   0.2516594
24 months   IRC              INDIA        1                    NA                 0.0880914   -0.0162819   0.1817454
24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0183099   -0.2300178   0.1569592
24 months   PROVIDE          BANGLADESH   1                    NA                 0.1045160    0.0440411   0.1611652
