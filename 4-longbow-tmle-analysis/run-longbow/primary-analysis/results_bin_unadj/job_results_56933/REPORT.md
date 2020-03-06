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

**Outcome Variable:** swasted

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

agecat      studyid          country                        nchldlt5    swasted   n_cell      n
----------  ---------------  -----------------------------  ---------  --------  -------  -----
Birth       IRC              INDIA                          1                 0       59    343
Birth       IRC              INDIA                          1                 1       13    343
Birth       IRC              INDIA                          2+                0      230    343
Birth       IRC              INDIA                          2+                1       41    343
Birth       NIH-Crypto       BANGLADESH                     1                 0      468    707
Birth       NIH-Crypto       BANGLADESH                     1                 1       36    707
Birth       NIH-Crypto       BANGLADESH                     2+                0      192    707
Birth       NIH-Crypto       BANGLADESH                     2+                1       11    707
Birth       PROVIDE          BANGLADESH                     1                 0      373    532
Birth       PROVIDE          BANGLADESH                     1                 1       12    532
Birth       PROVIDE          BANGLADESH                     2+                0      146    532
Birth       PROVIDE          BANGLADESH                     2+                1        1    532
6 months    IRC              INDIA                          1                 0       83    408
6 months    IRC              INDIA                          1                 1        5    408
6 months    IRC              INDIA                          2+                0      303    408
6 months    IRC              INDIA                          2+                1       17    408
6 months    LCNI-5           MALAWI                         1                 0      390    811
6 months    LCNI-5           MALAWI                         1                 1        0    811
6 months    LCNI-5           MALAWI                         2+                0      421    811
6 months    LCNI-5           MALAWI                         2+                1        0    811
6 months    NIH-Crypto       BANGLADESH                     1                 0      507    715
6 months    NIH-Crypto       BANGLADESH                     1                 1        0    715
6 months    NIH-Crypto       BANGLADESH                     2+                0      208    715
6 months    NIH-Crypto       BANGLADESH                     2+                1        0    715
6 months    PROVIDE          BANGLADESH                     1                 0      434    603
6 months    PROVIDE          BANGLADESH                     1                 1        4    603
6 months    PROVIDE          BANGLADESH                     2+                0      164    603
6 months    PROVIDE          BANGLADESH                     2+                1        1    603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1382   2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8   2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      625   2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        4   2019
24 months   IRC              INDIA                          1                 0       86    409
24 months   IRC              INDIA                          1                 1        3    409
24 months   IRC              INDIA                          2+                0      318    409
24 months   IRC              INDIA                          2+                1        2    409
24 months   LCNI-5           MALAWI                         1                 0      276    555
24 months   LCNI-5           MALAWI                         1                 1        1    555
24 months   LCNI-5           MALAWI                         2+                0      278    555
24 months   LCNI-5           MALAWI                         2+                1        0    555
24 months   NIH-Crypto       BANGLADESH                     1                 0      353    514
24 months   NIH-Crypto       BANGLADESH                     1                 1        4    514
24 months   NIH-Crypto       BANGLADESH                     2+                0      157    514
24 months   NIH-Crypto       BANGLADESH                     2+                1        0    514
24 months   PROVIDE          BANGLADESH                     1                 0      419    579
24 months   PROVIDE          BANGLADESH                     1                 1        5    579
24 months   PROVIDE          BANGLADESH                     2+                0      151    579
24 months   PROVIDE          BANGLADESH                     2+                1        4    579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        5      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        1      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0      6


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/45c82495-f3ca-4904-ad0e-51ea6312c85e/3c1c6c2d-bea3-4379-83a3-a6a45800841c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/45c82495-f3ca-4904-ad0e-51ea6312c85e/3c1c6c2d-bea3-4379-83a3-a6a45800841c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/45c82495-f3ca-4904-ad0e-51ea6312c85e/3c1c6c2d-bea3-4379-83a3-a6a45800841c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/45c82495-f3ca-4904-ad0e-51ea6312c85e/3c1c6c2d-bea3-4379-83a3-a6a45800841c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth      IRC          INDIA        1                    NA                0.1805556   0.0915779   0.2695332
Birth      IRC          INDIA        2+                   NA                0.1512915   0.1085663   0.1940167
Birth      NIH-Crypto   BANGLADESH   1                    NA                0.0714286   0.0489285   0.0939286
Birth      NIH-Crypto   BANGLADESH   2+                   NA                0.0541872   0.0230228   0.0853516
6 months   IRC          INDIA        1                    NA                0.0568182   0.0083919   0.1052445
6 months   IRC          INDIA        2+                   NA                0.0531250   0.0285212   0.0777288


### Parameter: E(Y)


agecat     studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth      IRC          INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth      NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
6 months   IRC          INDIA        NA                   NA                0.0539216   0.0319786   0.0758646


### Parameter: RR


agecat     studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth      IRC          INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth      IRC          INDIA        2+                   1                 0.8379222   0.4748239   1.478682
Birth      NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth      NIH-Crypto   BANGLADESH   2+                   1                 0.7586207   0.3937684   1.461532
6 months   IRC          INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months   IRC          INDIA        2+                   1                 0.9350000   0.3544411   2.466489


### Parameter: PAR


agecat     studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth      IRC          INDIA        1                    NA                -0.0231212   -0.1011161   0.0548738
Birth      NIH-Crypto   BANGLADESH   1                    NA                -0.0049505   -0.0160021   0.0061011
6 months   IRC          INDIA        1                    NA                -0.0028966   -0.0454993   0.0397060


### Parameter: PAF


agecat     studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth      IRC          INDIA        1                    NA                -0.1468621   -0.7653506   0.2549396
Birth      NIH-Crypto   BANGLADESH   1                    NA                -0.0744681   -0.2529997   0.0786257
6 months   IRC          INDIA        1                    NA                -0.0537190   -1.2297282   0.5020363
