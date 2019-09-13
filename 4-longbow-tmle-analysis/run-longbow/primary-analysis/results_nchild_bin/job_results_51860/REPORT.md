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

agecat      studyid                    country                        nchldlt5    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                 0       59     343
Birth       ki1000108-IRC              INDIA                          1                 1       13     343
Birth       ki1000108-IRC              INDIA                          2+                0      230     343
Birth       ki1000108-IRC              INDIA                          2+                1       41     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       14      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        8      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0      23
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     9217   15688
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      167   15688
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0     6217   15688
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1       87   15688
6 months    ki1000108-IRC              INDIA                          1                 0       83     408
6 months    ki1000108-IRC              INDIA                          1                 1        5     408
6 months    ki1000108-IRC              INDIA                          2+                0      303     408
6 months    ki1000108-IRC              INDIA                          2+                1       17     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      422     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0      155     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     582
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      418     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0      151     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        4     578
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/4c84f92c-86a1-438a-9512-4ba577abae3b/4f8884cc-456f-4362-8f7d-341b0de0bf7f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4c84f92c-86a1-438a-9512-4ba577abae3b/4f8884cc-456f-4362-8f7d-341b0de0bf7f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4c84f92c-86a1-438a-9512-4ba577abae3b/4f8884cc-456f-4362-8f7d-341b0de0bf7f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4c84f92c-86a1-438a-9512-4ba577abae3b/4f8884cc-456f-4362-8f7d-341b0de0bf7f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                0.1796500   0.0887992   0.2705008
Birth       ki1000108-IRC       INDIA        2+                   NA                0.1530108   0.1100597   0.1959619
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0166677   0.0133397   0.0199957
Birth       kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0140479   0.0103223   0.0177736
6 months    ki1000108-IRC       INDIA        1                    NA                0.0568182   0.0083919   0.1052445
6 months    ki1000108-IRC       INDIA        2+                   NA                0.0531250   0.0285212   0.0777288
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0126199   0.0098096   0.0154302
6 months    kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0128033   0.0084627   0.0171439
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0437414   0.0368039   0.0506788
24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0292413   0.0206446   0.0378380


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0161907   0.0138245   0.0185569
6 months    ki1000108-IRC       INDIA        NA                   NA                0.0539216   0.0319786   0.0758646
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0136529   0.0115796   0.0157262
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0387525   0.0344262   0.0430787


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC       INDIA        2+                   1                 0.8517160   0.4781355   1.5171851
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 0.8428220   0.6103424   1.1638532
6 months    ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC       INDIA        2+                   1                 0.9350000   0.3544411   2.4664890
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 1.0145346   0.6817145   1.5098411
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 0.6685044   0.4759039   0.9390513


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                -0.0222156   -0.1021042   0.0576730
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0004770   -0.0025477   0.0015937
6 months    ki1000108-IRC       INDIA        1                    NA                -0.0028966   -0.0454993   0.0397060
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0010330   -0.0007853   0.0028514
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0049889   -0.0102273   0.0002495


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC       INDIA        1                    NA                -0.1411102   -0.7786387    0.2679050
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0294614   -0.1651312    0.0904107
6 months    ki1000108-IRC       INDIA        1                    NA                -0.0537190   -1.2297282    0.5020363
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0756632   -0.0686780    0.2005089
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.1287377   -0.2724976   -0.0012190
