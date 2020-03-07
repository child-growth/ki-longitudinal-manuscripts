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

agecat      studyid          country                        nchldlt5    swasted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       IRC              INDIA                          1                 0       59     343
Birth       IRC              INDIA                          1                 1       13     343
Birth       IRC              INDIA                          2+                0      230     343
Birth       IRC              INDIA                          2+                1       41     343
Birth       JiVitA-3         BANGLADESH                     1                 0    10649   17991
Birth       JiVitA-3         BANGLADESH                     1                 1      229   17991
Birth       JiVitA-3         BANGLADESH                     2+                0     6993   17991
Birth       JiVitA-3         BANGLADESH                     2+                1      120   17991
Birth       NIH-Crypto       BANGLADESH                     1                 0      468     707
Birth       NIH-Crypto       BANGLADESH                     1                 1       36     707
Birth       NIH-Crypto       BANGLADESH                     2+                0      192     707
Birth       NIH-Crypto       BANGLADESH                     2+                1       11     707
Birth       PROVIDE          BANGLADESH                     1                 0      373     532
Birth       PROVIDE          BANGLADESH                     1                 1       12     532
Birth       PROVIDE          BANGLADESH                     2+                0      146     532
Birth       PROVIDE          BANGLADESH                     2+                1        1     532
6 months    IRC              INDIA                          1                 0       83     408
6 months    IRC              INDIA                          1                 1        5     408
6 months    IRC              INDIA                          2+                0      303     408
6 months    IRC              INDIA                          2+                1       17     408
6 months    JiVitA-3         BANGLADESH                     1                 0    10728   16773
6 months    JiVitA-3         BANGLADESH                     1                 1      144   16773
6 months    JiVitA-3         BANGLADESH                     2+                0     5816   16773
6 months    JiVitA-3         BANGLADESH                     2+                1       85   16773
6 months    LCNI-5           MALAWI                         1                 0      390     811
6 months    LCNI-5           MALAWI                         1                 1        0     811
6 months    LCNI-5           MALAWI                         2+                0      421     811
6 months    LCNI-5           MALAWI                         2+                1        0     811
6 months    NIH-Crypto       BANGLADESH                     1                 0      507     715
6 months    NIH-Crypto       BANGLADESH                     1                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     2+                0      208     715
6 months    NIH-Crypto       BANGLADESH                     2+                1        0     715
6 months    PROVIDE          BANGLADESH                     1                 0      434     603
6 months    PROVIDE          BANGLADESH                     1                 1        4     603
6 months    PROVIDE          BANGLADESH                     2+                0      164     603
6 months    PROVIDE          BANGLADESH                     2+                1        1     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1382    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      625    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        4    2019
24 months   IRC              INDIA                          1                 0       86     409
24 months   IRC              INDIA                          1                 1        3     409
24 months   IRC              INDIA                          2+                0      318     409
24 months   IRC              INDIA                          2+                1        2     409
24 months   JiVitA-3         BANGLADESH                     1                 0     5202    8593
24 months   JiVitA-3         BANGLADESH                     1                 1      232    8593
24 months   JiVitA-3         BANGLADESH                     2+                0     3058    8593
24 months   JiVitA-3         BANGLADESH                     2+                1      101    8593
24 months   LCNI-5           MALAWI                         1                 0      276     555
24 months   LCNI-5           MALAWI                         1                 1        1     555
24 months   LCNI-5           MALAWI                         2+                0      278     555
24 months   LCNI-5           MALAWI                         2+                1        0     555
24 months   NIH-Crypto       BANGLADESH                     1                 0      353     514
24 months   NIH-Crypto       BANGLADESH                     1                 1        4     514
24 months   NIH-Crypto       BANGLADESH                     2+                0      157     514
24 months   NIH-Crypto       BANGLADESH                     2+                1        0     514
24 months   PROVIDE          BANGLADESH                     1                 0      419     579
24 months   PROVIDE          BANGLADESH                     1                 1        5     579
24 months   PROVIDE          BANGLADESH                     2+                0      151     579
24 months   PROVIDE          BANGLADESH                     2+                1        4     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       6


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/f466ffee-eee9-48c7-bac6-d9a39a0b7c52/c358086e-035f-4add-82ae-c731289a01e7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f466ffee-eee9-48c7-bac6-d9a39a0b7c52/c358086e-035f-4add-82ae-c731289a01e7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f466ffee-eee9-48c7-bac6-d9a39a0b7c52/c358086e-035f-4add-82ae-c731289a01e7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f466ffee-eee9-48c7-bac6-d9a39a0b7c52/c358086e-035f-4add-82ae-c731289a01e7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC          INDIA        1                    NA                0.1834360   0.0923680   0.2745040
Birth       IRC          INDIA        2+                   NA                0.1505327   0.1079031   0.1931624
Birth       JiVitA-3     BANGLADESH   1                    NA                0.0197178   0.0163526   0.0230830
Birth       JiVitA-3     BANGLADESH   2+                   NA                0.0175491   0.0126297   0.0224686
Birth       NIH-Crypto   BANGLADESH   1                    NA                0.0712072   0.0486539   0.0937604
Birth       NIH-Crypto   BANGLADESH   2+                   NA                0.0516346   0.0203294   0.0829397
6 months    IRC          INDIA        1                    NA                0.0568182   0.0083919   0.1052445
6 months    IRC          INDIA        2+                   NA                0.0531250   0.0285212   0.0777288
6 months    JiVitA-3     BANGLADESH   1                    NA                0.0129114   0.0100833   0.0157395
6 months    JiVitA-3     BANGLADESH   2+                   NA                0.0129456   0.0093812   0.0165101
24 months   JiVitA-3     BANGLADESH   1                    NA                0.0444606   0.0373317   0.0515895
24 months   JiVitA-3     BANGLADESH   2+                   NA                0.0302679   0.0194442   0.0410916


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC          INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth       JiVitA-3     BANGLADESH   NA                   NA                0.0193986   0.0169868   0.0218104
Birth       NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
6 months    IRC          INDIA        NA                   NA                0.0539216   0.0319786   0.0758646
6 months    JiVitA-3     BANGLADESH   NA                   NA                0.0136529   0.0115796   0.0157262
24 months   JiVitA-3     BANGLADESH   NA                   NA                0.0387525   0.0344262   0.0430787


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       IRC          INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       IRC          INDIA        2+                   1                 0.8206280   0.4634412   1.453108
Birth       JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH   2+                   1                 0.8900132   0.6499617   1.218723
Birth       NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH   2+                   1                 0.7251317   0.3656191   1.438152
6 months    IRC          INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    IRC          INDIA        2+                   1                 0.9350000   0.3544411   2.466489
6 months    JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH   2+                   1                 1.0026514   0.7092020   1.417523
24 months   JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH   2+                   1                 0.6807814   0.4589787   1.009771


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC          INDIA        1                    NA                -0.0260016   -0.1060455    0.0540423
Birth       JiVitA-3     BANGLADESH   1                    NA                -0.0003192   -0.0023923    0.0017538
Birth       NIH-Crypto   BANGLADESH   1                    NA                -0.0047291   -0.0158177    0.0063595
6 months    IRC          INDIA        1                    NA                -0.0028966   -0.0454993    0.0397060
6 months    JiVitA-3     BANGLADESH   1                    NA                 0.0007415   -0.0011421    0.0026251
24 months   JiVitA-3     BANGLADESH   1                    NA                -0.0057081   -0.0111967   -0.0002195


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC          INDIA        1                    NA                -0.1651584   -0.8010493    0.2462205
Birth       JiVitA-3     BANGLADESH   1                    NA                -0.0164573   -0.1288870    0.0847752
Birth       NIH-Crypto   BANGLADESH   1                    NA                -0.0711375   -0.2502698    0.0823297
6 months    IRC          INDIA        1                    NA                -0.0537190   -1.2297282    0.5020363
6 months    JiVitA-3     BANGLADESH   1                    NA                 0.0543113   -0.0946933    0.1830340
24 months   JiVitA-3     BANGLADESH   1                    NA                -0.1472965   -0.2983444   -0.0138214
