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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        vagbrth    swasted   n_cell       n
----------  ---------------  -----------------------------  --------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0                0       10      86
Birth       CMC-V-BCS-2002   INDIA                          0                1        0      86
Birth       CMC-V-BCS-2002   INDIA                          1                0       75      86
Birth       CMC-V-BCS-2002   INDIA                          1                1        1      86
Birth       IRC              INDIA                          0                0       52     343
Birth       IRC              INDIA                          0                1       14     343
Birth       IRC              INDIA                          1                0      237     343
Birth       IRC              INDIA                          1                1       40     343
Birth       JiVitA-3         BANGLADESH                     0                0      483   17985
Birth       JiVitA-3         BANGLADESH                     0                1       17   17985
Birth       JiVitA-3         BANGLADESH                     1                0    17154   17985
Birth       JiVitA-3         BANGLADESH                     1                1      331   17985
Birth       JiVitA-4         BANGLADESH                     0                0       70    2395
Birth       JiVitA-4         BANGLADESH                     0                1        1    2395
Birth       JiVitA-4         BANGLADESH                     1                0     2294    2395
Birth       JiVitA-4         BANGLADESH                     1                1       30    2395
Birth       NIH-Crypto       BANGLADESH                     0                0      179     465
Birth       NIH-Crypto       BANGLADESH                     0                1        5     465
Birth       NIH-Crypto       BANGLADESH                     1                0      257     465
Birth       NIH-Crypto       BANGLADESH                     1                1       24     465
Birth       PROBIT           BELARUS                        0                0     1499   13817
Birth       PROBIT           BELARUS                        0                1       92   13817
Birth       PROBIT           BELARUS                        1                0    11399   13817
Birth       PROBIT           BELARUS                        1                1      827   13817
Birth       PROVIDE          BANGLADESH                     0                0      104     532
Birth       PROVIDE          BANGLADESH                     0                1        4     532
Birth       PROVIDE          BANGLADESH                     1                0      415     532
Birth       PROVIDE          BANGLADESH                     1                1        9     532
Birth       ZVITAMBO         ZIMBABWE                       0                0     1016   12814
Birth       ZVITAMBO         ZIMBABWE                       0                1       84   12814
Birth       ZVITAMBO         ZIMBABWE                       1                0    11011   12814
Birth       ZVITAMBO         ZIMBABWE                       1                1      703   12814
6 months    CMC-V-BCS-2002   INDIA                          0                0       25     368
6 months    CMC-V-BCS-2002   INDIA                          0                1        0     368
6 months    CMC-V-BCS-2002   INDIA                          1                0      331     368
6 months    CMC-V-BCS-2002   INDIA                          1                1       12     368
6 months    IRC              INDIA                          0                0       64     408
6 months    IRC              INDIA                          0                1        4     408
6 months    IRC              INDIA                          1                0      322     408
6 months    IRC              INDIA                          1                1       18     408
6 months    JiVitA-3         BANGLADESH                     0                0     1068   16705
6 months    JiVitA-3         BANGLADESH                     0                1        7   16705
6 months    JiVitA-3         BANGLADESH                     1                0    15408   16705
6 months    JiVitA-3         BANGLADESH                     1                1      222   16705
6 months    JiVitA-4         BANGLADESH                     0                0      333    4056
6 months    JiVitA-4         BANGLADESH                     0                1        4    4056
6 months    JiVitA-4         BANGLADESH                     1                0     3695    4056
6 months    JiVitA-4         BANGLADESH                     1                1       24    4056
6 months    NIH-Crypto       BANGLADESH                     0                0      187     457
6 months    NIH-Crypto       BANGLADESH                     0                1        0     457
6 months    NIH-Crypto       BANGLADESH                     1                0      270     457
6 months    NIH-Crypto       BANGLADESH                     1                1        0     457
6 months    PROBIT           BELARUS                        0                0     1795   15757
6 months    PROBIT           BELARUS                        0                1        2   15757
6 months    PROBIT           BELARUS                        1                0    13953   15757
6 months    PROBIT           BELARUS                        1                1        7   15757
6 months    PROVIDE          BANGLADESH                     0                0      139     603
6 months    PROVIDE          BANGLADESH                     0                1        0     603
6 months    PROVIDE          BANGLADESH                     1                0      459     603
6 months    PROVIDE          BANGLADESH                     1                1        5     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      187    2004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        2    2004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1805    2004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    2004
6 months    ZVITAMBO         ZIMBABWE                       0                0      716    8437
6 months    ZVITAMBO         ZIMBABWE                       0                1        5    8437
6 months    ZVITAMBO         ZIMBABWE                       1                0     7643    8437
6 months    ZVITAMBO         ZIMBABWE                       1                1       73    8437
24 months   CMC-V-BCS-2002   INDIA                          0                0       25     372
24 months   CMC-V-BCS-2002   INDIA                          0                1        0     372
24 months   CMC-V-BCS-2002   INDIA                          1                0      344     372
24 months   CMC-V-BCS-2002   INDIA                          1                1        3     372
24 months   IRC              INDIA                          0                0       67     409
24 months   IRC              INDIA                          0                1        2     409
24 months   IRC              INDIA                          1                0      337     409
24 months   IRC              INDIA                          1                1        3     409
24 months   JiVitA-3         BANGLADESH                     0                0      458    8555
24 months   JiVitA-3         BANGLADESH                     0                1       17    8555
24 months   JiVitA-3         BANGLADESH                     1                0     7763    8555
24 months   JiVitA-3         BANGLADESH                     1                1      317    8555
24 months   JiVitA-4         BANGLADESH                     0                0      316    4008
24 months   JiVitA-4         BANGLADESH                     0                1        7    4008
24 months   JiVitA-4         BANGLADESH                     1                0     3581    4008
24 months   JiVitA-4         BANGLADESH                     1                1      104    4008
24 months   NIH-Crypto       BANGLADESH                     0                0       98     260
24 months   NIH-Crypto       BANGLADESH                     0                1        1     260
24 months   NIH-Crypto       BANGLADESH                     1                0      160     260
24 months   NIH-Crypto       BANGLADESH                     1                1        1     260
24 months   PROBIT           BELARUS                        0                0      463    3970
24 months   PROBIT           BELARUS                        0                1        0    3970
24 months   PROBIT           BELARUS                        1                0     3500    3970
24 months   PROBIT           BELARUS                        1                1        7    3970
24 months   PROVIDE          BANGLADESH                     0                0      135     579
24 months   PROVIDE          BANGLADESH                     0                1        2     579
24 months   PROVIDE          BANGLADESH                     1                0      435     579
24 months   PROVIDE          BANGLADESH                     1                1        7     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0                0       28     426
24 months   ZVITAMBO         ZIMBABWE                       0                1        0     426
24 months   ZVITAMBO         ZIMBABWE                       1                0      367     426
24 months   ZVITAMBO         ZIMBABWE                       1                1       31     426


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE

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
![](/tmp/c71bee52-9306-4c51-a582-8a45160ff6f8/06f14a0a-be21-41a7-91fa-abe2b439cbb7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c71bee52-9306-4c51-a582-8a45160ff6f8/06f14a0a-be21-41a7-91fa-abe2b439cbb7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c71bee52-9306-4c51-a582-8a45160ff6f8/06f14a0a-be21-41a7-91fa-abe2b439cbb7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c71bee52-9306-4c51-a582-8a45160ff6f8/06f14a0a-be21-41a7-91fa-abe2b439cbb7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC          INDIA        0                    NA                0.2121212   0.1133497   0.3108928
Birth       IRC          INDIA        1                    NA                0.1444043   0.1029503   0.1858583
Birth       JiVitA-3     BANGLADESH   0                    NA                0.0340000   0.0128817   0.0551183
Birth       JiVitA-3     BANGLADESH   1                    NA                0.0189305   0.0165356   0.0213254
Birth       NIH-Crypto   BANGLADESH   0                    NA                0.0271739   0.0036559   0.0506919
Birth       NIH-Crypto   BANGLADESH   1                    NA                0.0854093   0.0526957   0.1181228
Birth       PROBIT       BELARUS      0                    NA                0.0578253   0.0292477   0.0864029
Birth       PROBIT       BELARUS      1                    NA                0.0676427   0.0332918   0.1019936
Birth       ZVITAMBO     ZIMBABWE     0                    NA                0.0763636   0.0606686   0.0920587
Birth       ZVITAMBO     ZIMBABWE     1                    NA                0.0600137   0.0557124   0.0643149
6 months    JiVitA-3     BANGLADESH   0                    NA                0.0065116   0.0016099   0.0114134
6 months    JiVitA-3     BANGLADESH   1                    NA                0.0142035   0.0120341   0.0163728
6 months    ZVITAMBO     ZIMBABWE     0                    NA                0.0069348   0.0008770   0.0129926
6 months    ZVITAMBO     ZIMBABWE     1                    NA                0.0094609   0.0073007   0.0116210
24 months   JiVitA-3     BANGLADESH   0                    NA                0.0357895   0.0189031   0.0526759
24 months   JiVitA-3     BANGLADESH   1                    NA                0.0392327   0.0347479   0.0437174
24 months   JiVitA-4     BANGLADESH   0                    NA                0.0216718   0.0056736   0.0376701
24 months   JiVitA-4     BANGLADESH   1                    NA                0.0282225   0.0220464   0.0343986


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC          INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth       JiVitA-3     BANGLADESH   NA                   NA                0.0193495   0.0169634   0.0217355
Birth       NIH-Crypto   BANGLADESH   NA                   NA                0.0623656   0.0403628   0.0843684
Birth       PROBIT       BELARUS      NA                   NA                0.0665123   0.0333611   0.0996634
Birth       ZVITAMBO     ZIMBABWE     NA                   NA                0.0614172   0.0572600   0.0655744
6 months    JiVitA-3     BANGLADESH   NA                   NA                0.0137085   0.0116390   0.0157780
6 months    ZVITAMBO     ZIMBABWE     NA                   NA                0.0092450   0.0072027   0.0112873
24 months   JiVitA-3     BANGLADESH   NA                   NA                0.0390415   0.0347089   0.0433741
24 months   JiVitA-4     BANGLADESH   NA                   NA                0.0276946   0.0218340   0.0335552


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC          INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       IRC          INDIA        1                    0                 0.6807633   0.3939399   1.1764196
Birth       JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3     BANGLADESH   1                    0                 0.5567798   0.2942887   1.0534001
Birth       NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto   BANGLADESH   1                    0                 3.1430605   1.2198971   8.0980841
Birth       PROBIT       BELARUS      0                    0                 1.0000000   1.0000000   1.0000000
Birth       PROBIT       BELARUS      1                    0                 1.1697781   0.8554719   1.5995625
Birth       ZVITAMBO     ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO     ZIMBABWE     1                    0                 0.7858932   0.6321662   0.9770026
6 months    JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3     BANGLADESH   1                    0                 2.1812449   1.0194849   4.6668949
6 months    ZVITAMBO     ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO     ZIMBABWE     1                    0                 1.3642561   0.5530721   3.3651933
24 months   JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3     BANGLADESH   1                    0                 1.0962070   0.6740508   1.7827587
24 months   JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4     BANGLADESH   1                    0                 1.3022679   0.6065679   2.7958972


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC          INDIA        0                    NA                -0.0546868   -0.1412394    0.0318658
Birth       JiVitA-3     BANGLADESH   0                    NA                -0.0146505   -0.0353757    0.0060746
Birth       NIH-Crypto   BANGLADESH   0                    NA                 0.0351917    0.0107070    0.0596764
Birth       PROBIT       BELARUS      0                    NA                 0.0086870   -0.0093769    0.0267509
Birth       ZVITAMBO     ZIMBABWE     0                    NA                -0.0149464   -0.0298234   -0.0000695
6 months    JiVitA-3     BANGLADESH   0                    NA                 0.0071968    0.0022767    0.0121170
6 months    ZVITAMBO     ZIMBABWE     0                    NA                 0.0023102   -0.0035716    0.0081920
24 months   JiVitA-3     BANGLADESH   0                    NA                 0.0032520   -0.0132789    0.0197829
24 months   JiVitA-4     BANGLADESH   0                    NA                 0.0060228   -0.0095887    0.0216342


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC          INDIA        0                    NA                -0.3473625   -1.0213073    0.1018754
Birth       JiVitA-3     BANGLADESH   0                    NA                -0.7571552   -2.2213047    0.0415082
Birth       NIH-Crypto   BANGLADESH   0                    NA                 0.5642804    0.0453422    0.8011313
Birth       PROBIT       BELARUS      0                    NA                 0.1306075   -0.1524088    0.3441187
Birth       ZVITAMBO     ZIMBABWE     0                    NA                -0.2433591   -0.5102221   -0.0236520
6 months    JiVitA-3     BANGLADESH   0                    NA                 0.5249924    0.0071734    0.7727375
6 months    ZVITAMBO     ZIMBABWE     0                    NA                 0.2498844   -0.7462542    0.6777827
24 months   JiVitA-3     BANGLADESH   0                    NA                 0.0832966   -0.4543321    0.4221779
24 months   JiVitA-4     BANGLADESH   0                    NA                 0.2174713   -0.6006481    0.6174355
