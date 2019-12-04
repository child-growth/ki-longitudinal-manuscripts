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

agecat      studyid                    country                        nchldlt5    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                 0       59     343
Birth       ki1000108-IRC              INDIA                          1                 1       13     343
Birth       ki1000108-IRC              INDIA                          2+                0      230     343
Birth       ki1000108-IRC              INDIA                          2+                1       41     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      373     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                0      146     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      468     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       36     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      192     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       11     707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10649   17991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      229   17991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0     6993   17991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1      120   17991
6 months    ki1000108-IRC              INDIA                          1                 0       83     408
6 months    ki1000108-IRC              INDIA                          1                 1        5     408
6 months    ki1000108-IRC              INDIA                          2+                0      303     408
6 months    ki1000108-IRC              INDIA                          2+                1       17     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      434     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0      164     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      208     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1382    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      625    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        4    2019
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      390     811
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     811
6 months    ki1148112-LCNI-5           MALAWI                         2+                0      421     811
6 months    ki1148112-LCNI-5           MALAWI                         2+                1        0     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10728   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      144   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0     5816   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1       85   16773
24 months   ki1000108-IRC              INDIA                          1                 0       86     409
24 months   ki1000108-IRC              INDIA                          1                 1        3     409
24 months   ki1000108-IRC              INDIA                          2+                0      318     409
24 months   ki1000108-IRC              INDIA                          2+                1        2     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      419     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0      151     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        4     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      353     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      157     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       6
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      276     555
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     555
24 months   ki1148112-LCNI-5           MALAWI                         2+                0      278     555
24 months   ki1148112-LCNI-5           MALAWI                         2+                1        0     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5202    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      232    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0     3058    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1      101    8593


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/d3a3376f-d6f8-413b-b990-cd35579348b1/1b40e37a-9158-42d9-8aa8-7ad3f9e7bd0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d3a3376f-d6f8-413b-b990-cd35579348b1/1b40e37a-9158-42d9-8aa8-7ad3f9e7bd0a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d3a3376f-d6f8-413b-b990-cd35579348b1/1b40e37a-9158-42d9-8aa8-7ad3f9e7bd0a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d3a3376f-d6f8-413b-b990-cd35579348b1/1b40e37a-9158-42d9-8aa8-7ad3f9e7bd0a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        1                    NA                0.1792778   0.0898751   0.2686805
Birth       ki1000108-IRC           INDIA        2+                   NA                0.1528935   0.1101108   0.1956762
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0711607   0.0485996   0.0937218
Birth       ki1017093c-NIH-Crypto   BANGLADESH   2+                   NA                0.0528624   0.0215155   0.0842094
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0197995   0.0163118   0.0232872
Birth       kiGH5241-JiVitA-3       BANGLADESH   2+                   NA                0.0175924   0.0126956   0.0224892
6 months    ki1000108-IRC           INDIA        1                    NA                0.0568182   0.0083919   0.1052445
6 months    ki1000108-IRC           INDIA        2+                   NA                0.0531250   0.0285212   0.0777288
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0130138   0.0099209   0.0161067
6 months    kiGH5241-JiVitA-3       BANGLADESH   2+                   NA                0.0123086   0.0086150   0.0160022
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0444437   0.0375465   0.0513408
24 months   kiGH5241-JiVitA-3       BANGLADESH   2+                   NA                0.0272438   0.0200581   0.0344295


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0193986   0.0169868   0.0218104
6 months    ki1000108-IRC           INDIA        NA                   NA                0.0539216   0.0319786   0.0758646
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0136529   0.0115796   0.0157262
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0387525   0.0344262   0.0430787


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC           INDIA        2+                   1                 0.8528300   0.4817639   1.5097000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   2+                   1                 0.7428600   0.3790481   1.4558598
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   2+                   1                 0.8885284   0.6486124   1.2171871
6 months    ki1000108-IRC           INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC           INDIA        2+                   1                 0.9350000   0.3544411   2.4664890
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   2+                   1                 0.9458109   0.6485199   1.3793843
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   2+                   1                 0.6129954   0.4489873   0.8369132


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA        1                    NA                -0.0218434   -0.1003245    0.0566378
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0046826   -0.0157937    0.0064284
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0004009   -0.0025731    0.0017713
6 months    ki1000108-IRC           INDIA        1                    NA                -0.0028966   -0.0454993    0.0397060
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0006391   -0.0015554    0.0028336
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0056912   -0.0108245   -0.0005579


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA        1                    NA                -0.1387460   -0.7629968    0.2644669
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0704389   -0.2499855    0.0833179
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0206670   -0.1386022    0.0850526
6 months    ki1000108-IRC           INDIA        1                    NA                -0.0537190   -1.2297282    0.5020363
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0468102   -0.1288778    0.1951557
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.1468606   -0.2873796   -0.0216794
