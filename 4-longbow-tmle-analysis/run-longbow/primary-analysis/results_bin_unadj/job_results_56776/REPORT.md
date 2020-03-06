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

**Outcome Variable:** sstunted

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

agecat      studyid          country        cleanck    sstunted   n_cell     n
----------  ---------------  -------------  --------  ---------  -------  ----
Birth       CMC-V-BCS-2002   INDIA          1                 0       38    92
Birth       CMC-V-BCS-2002   INDIA          1                 1        1    92
Birth       CMC-V-BCS-2002   INDIA          0                 0       50    92
Birth       CMC-V-BCS-2002   INDIA          0                 1        3    92
Birth       GMS-Nepal        NEPAL          1                 0        9   621
Birth       GMS-Nepal        NEPAL          1                 1        0   621
Birth       GMS-Nepal        NEPAL          0                 0      584   621
Birth       GMS-Nepal        NEPAL          0                 1       28   621
Birth       IRC              INDIA          1                 0      209   378
Birth       IRC              INDIA          1                 1        9   378
Birth       IRC              INDIA          0                 0      154   378
Birth       IRC              INDIA          0                 1        6   378
Birth       MAL-ED           PERU           1                 0        1     2
Birth       MAL-ED           PERU           1                 1        0     2
Birth       MAL-ED           PERU           0                 0        1     2
Birth       MAL-ED           PERU           0                 1        0     2
Birth       NIH-Crypto       BANGLADESH     1                 0      342   561
Birth       NIH-Crypto       BANGLADESH     1                 1        3   561
Birth       NIH-Crypto       BANGLADESH     0                 0      210   561
Birth       NIH-Crypto       BANGLADESH     0                 1        6   561
Birth       PROVIDE          BANGLADESH     1                 0      436   539
Birth       PROVIDE          BANGLADESH     1                 1        2   539
Birth       PROVIDE          BANGLADESH     0                 0       99   539
Birth       PROVIDE          BANGLADESH     0                 1        2   539
6 months    CMC-V-BCS-2002   INDIA          1                 0      149   369
6 months    CMC-V-BCS-2002   INDIA          1                 1       14   369
6 months    CMC-V-BCS-2002   INDIA          0                 0      178   369
6 months    CMC-V-BCS-2002   INDIA          0                 1       28   369
6 months    GMS-Nepal        NEPAL          1                 0        8   505
6 months    GMS-Nepal        NEPAL          1                 1        0   505
6 months    GMS-Nepal        NEPAL          0                 0      478   505
6 months    GMS-Nepal        NEPAL          0                 1       19   505
6 months    IRC              INDIA          1                 0      216   398
6 months    IRC              INDIA          1                 1       14   398
6 months    IRC              INDIA          0                 0      154   398
6 months    IRC              INDIA          0                 1       14   398
6 months    MAL-ED           SOUTH AFRICA   1                 0        1     1
6 months    MAL-ED           SOUTH AFRICA   1                 1        0     1
6 months    MAL-ED           SOUTH AFRICA   0                 0        0     1
6 months    MAL-ED           SOUTH AFRICA   0                 1        0     1
6 months    NIH-Crypto       BANGLADESH     1                 0      318   545
6 months    NIH-Crypto       BANGLADESH     1                 1       11   545
6 months    NIH-Crypto       BANGLADESH     0                 0      211   545
6 months    NIH-Crypto       BANGLADESH     0                 1        5   545
6 months    PROVIDE          BANGLADESH     1                 0      491   604
6 months    PROVIDE          BANGLADESH     1                 1        7   604
6 months    PROVIDE          BANGLADESH     0                 0       99   604
6 months    PROVIDE          BANGLADESH     0                 1        7   604
24 months   CMC-V-BCS-2002   INDIA          1                 0      127   371
24 months   CMC-V-BCS-2002   INDIA          1                 1       36   371
24 months   CMC-V-BCS-2002   INDIA          0                 0      119   371
24 months   CMC-V-BCS-2002   INDIA          0                 1       89   371
24 months   GMS-Nepal        NEPAL          1                 0        5   435
24 months   GMS-Nepal        NEPAL          1                 1        0   435
24 months   GMS-Nepal        NEPAL          0                 0      384   435
24 months   GMS-Nepal        NEPAL          0                 1       46   435
24 months   IRC              INDIA          1                 0      210   400
24 months   IRC              INDIA          1                 1       21   400
24 months   IRC              INDIA          0                 0      150   400
24 months   IRC              INDIA          0                 1       19   400
24 months   MAL-ED           SOUTH AFRICA   1                 0        1     1
24 months   MAL-ED           SOUTH AFRICA   1                 1        0     1
24 months   MAL-ED           SOUTH AFRICA   0                 0        0     1
24 months   MAL-ED           SOUTH AFRICA   0                 1        0     1
24 months   NIH-Crypto       BANGLADESH     1                 0      190   410
24 months   NIH-Crypto       BANGLADESH     1                 1        9   410
24 months   NIH-Crypto       BANGLADESH     0                 0      200   410
24 months   NIH-Crypto       BANGLADESH     0                 1       11   410
24 months   PROVIDE          BANGLADESH     1                 0      452   578
24 months   PROVIDE          BANGLADESH     1                 1       27   578
24 months   PROVIDE          BANGLADESH     0                 0       74   578
24 months   PROVIDE          BANGLADESH     0                 1       25   578


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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/8f8b00b3-8332-43d9-99be-4242d91f9632/1d56570c-f982-4d42-82cf-84eed5adc49f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f8b00b3-8332-43d9-99be-4242d91f9632/1d56570c-f982-4d42-82cf-84eed5adc49f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f8b00b3-8332-43d9-99be-4242d91f9632/1d56570c-f982-4d42-82cf-84eed5adc49f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f8b00b3-8332-43d9-99be-4242d91f9632/1d56570c-f982-4d42-82cf-84eed5adc49f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        1                    NA                0.0412844   0.0148400   0.0677288
Birth       IRC              INDIA        0                    NA                0.0375000   0.0080233   0.0669767
6 months    CMC-V-BCS-2002   INDIA        1                    NA                0.0858896   0.0428158   0.1289634
6 months    CMC-V-BCS-2002   INDIA        0                    NA                0.1359223   0.0890598   0.1827848
6 months    IRC              INDIA        1                    NA                0.0608696   0.0299315   0.0918077
6 months    IRC              INDIA        0                    NA                0.0833333   0.0414872   0.1251794
6 months    NIH-Crypto       BANGLADESH   1                    NA                0.0334347   0.0139917   0.0528776
6 months    NIH-Crypto       BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
6 months    PROVIDE          BANGLADESH   1                    NA                0.0140562   0.0037083   0.0244042
6 months    PROVIDE          BANGLADESH   0                    NA                0.0660377   0.0187209   0.1133546
24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.2208589   0.1570904   0.2846273
24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.4278846   0.3605548   0.4952145
24 months   IRC              INDIA        1                    NA                0.0909091   0.0537904   0.1280278
24 months   IRC              INDIA        0                    NA                0.1124260   0.0647408   0.1601113
24 months   NIH-Crypto       BANGLADESH   1                    NA                0.0452261   0.0163195   0.0741327
24 months   NIH-Crypto       BANGLADESH   0                    NA                0.0521327   0.0221020   0.0821634
24 months   PROVIDE          BANGLADESH   1                    NA                0.0563674   0.0356959   0.0770389
24 months   PROVIDE          BANGLADESH   0                    NA                0.2525253   0.1668694   0.3381811


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        NA                   NA                0.0396825   0.0199772   0.0593879
6 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.1138211   0.0813725   0.1462698
6 months    IRC              INDIA        NA                   NA                0.0703518   0.0451953   0.0955082
6 months    NIH-Crypto       BANGLADESH   NA                   NA                0.0293578   0.0151725   0.0435431
6 months    PROVIDE          BANGLADESH   NA                   NA                0.0231788   0.0111688   0.0351888
24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.3369272   0.2887662   0.3850883
24 months   IRC              INDIA        NA                   NA                0.1000000   0.0705637   0.1294363
24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.0487805   0.0279044   0.0696566
24 months   PROVIDE          BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        1                    1                 1.0000000   1.0000000    1.000000
Birth       IRC              INDIA        0                    1                 0.9083333   0.3295172    2.503874
6 months    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000    1.000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 1.5825243   0.8610851    2.908404
6 months    IRC              INDIA        1                    1                 1.0000000   1.0000000    1.000000
6 months    IRC              INDIA        0                    1                 1.3690476   0.6700696    2.797159
6 months    NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    NIH-Crypto       BANGLADESH   0                    1                 0.6923401   0.2437201    1.966743
6 months    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    PROVIDE          BANGLADESH   0                    1                 4.6981132   1.6817875   13.124290
24 months   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000    1.000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 1.9373665   1.3944575    2.691648
24 months   IRC              INDIA        1                    1                 1.0000000   1.0000000    1.000000
24 months   IRC              INDIA        0                    1                 1.2366864   0.6863932    2.228159
24 months   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   NIH-Crypto       BANGLADESH   0                    1                 1.1527120   0.4875719    2.725229
24 months   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   PROVIDE          BANGLADESH   0                    1                 4.4799850   2.7184882    7.382878


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA        1                    NA                -0.0016019   -0.0183649   0.0151612
6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.0279316   -0.0076931   0.0635563
6 months    IRC              INDIA        1                    NA                 0.0094822   -0.0125119   0.0314763
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0040769   -0.0151603   0.0070066
6 months    PROVIDE          BANGLADESH   1                    NA                 0.0091226    0.0004771   0.0177681
24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.1160683    0.0630333   0.1691034
24 months   IRC              INDIA        1                    NA                 0.0090909   -0.0164617   0.0346435
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0035544   -0.0178995   0.0250082
24 months   PROVIDE          BANGLADESH   1                    NA                 0.0335980    0.0173456   0.0498504


### Parameter: PAF


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA        1                    NA                -0.0403670   -0.5607939   0.3065302
6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.2453988   -0.1328865   0.4973698
6 months    IRC              INDIA        1                    NA                 0.1347826   -0.2371455   0.3948965
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.1388678   -0.5787290   0.1784405
6 months    PROVIDE          BANGLADESH   1                    NA                 0.3935743   -0.0181345   0.6387981
24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.3444908    0.1698651   0.4823825
24 months   IRC              INDIA        1                    NA                 0.0909091   -0.2026600   0.3128180
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0728643   -0.4882985   0.4224408
24 months   PROVIDE          BANGLADESH   1                    NA                 0.3734543    0.1960278   0.5117250
