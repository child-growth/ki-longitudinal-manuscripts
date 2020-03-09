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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        trth2o    n_cell     n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1             24    24  whz              
Birth       CMC-V-BCS-2002   INDIA                          0              0    24  whz              
Birth       GMS-Nepal        NEPAL                          1              1     4  whz              
Birth       GMS-Nepal        NEPAL                          0              3     4  whz              
Birth       IRC              INDIA                          1            105   105  whz              
Birth       IRC              INDIA                          0              0   105  whz              
Birth       MAL-ED           BANGLADESH                     1            110   112  whz              
Birth       MAL-ED           BANGLADESH                     0              2   112  whz              
Birth       MAL-ED           BRAZIL                         1              3    20  whz              
Birth       MAL-ED           BRAZIL                         0             17    20  whz              
Birth       MAL-ED           INDIA                          1              0     1  whz              
Birth       MAL-ED           INDIA                          0              1     1  whz              
Birth       MAL-ED           NEPAL                          1              7     9  whz              
Birth       MAL-ED           NEPAL                          0              2     9  whz              
Birth       MAL-ED           PERU                           1             28    36  whz              
Birth       MAL-ED           PERU                           0              8    36  whz              
Birth       MAL-ED           SOUTH AFRICA                   1              1     5  whz              
Birth       MAL-ED           SOUTH AFRICA                   0              4     5  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              4    21  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             17    21  whz              
Birth       NIH-Crypto       BANGLADESH                     1            397   707  whz              
Birth       NIH-Crypto       BANGLADESH                     0            310   707  whz              
Birth       PROVIDE          BANGLADESH                     1             11   532  whz              
Birth       PROVIDE          BANGLADESH                     0            521   532  whz              
6 months    CMC-V-BCS-2002   INDIA                          1            120   120  whz              
6 months    CMC-V-BCS-2002   INDIA                          0              0   120  whz              
6 months    GMS-Nepal        NEPAL                          1              1     4  whz              
6 months    GMS-Nepal        NEPAL                          0              3     4  whz              
6 months    IRC              INDIA                          1            121   121  whz              
6 months    IRC              INDIA                          0              0   121  whz              
6 months    MAL-ED           BANGLADESH                     1            132   134  whz              
6 months    MAL-ED           BANGLADESH                     0              2   134  whz              
6 months    MAL-ED           BRAZIL                         1             13   103  whz              
6 months    MAL-ED           BRAZIL                         0             90   103  whz              
6 months    MAL-ED           INDIA                          1              4     9  whz              
6 months    MAL-ED           INDIA                          0              5     9  whz              
6 months    MAL-ED           NEPAL                          1             69    83  whz              
6 months    MAL-ED           NEPAL                          0             14    83  whz              
6 months    MAL-ED           PERU                           1             39    49  whz              
6 months    MAL-ED           PERU                           0             10    49  whz              
6 months    MAL-ED           SOUTH AFRICA                   1              2    12  whz              
6 months    MAL-ED           SOUTH AFRICA                   0             10    12  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    42  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    42  whz              
6 months    NIH-Crypto       BANGLADESH                     1            396   715  whz              
6 months    NIH-Crypto       BANGLADESH                     0            319   715  whz              
6 months    PROVIDE          BANGLADESH                     1             14   603  whz              
6 months    PROVIDE          BANGLADESH                     0            589   603  whz              
24 months   CMC-V-BCS-2002   INDIA                          1            119   119  whz              
24 months   CMC-V-BCS-2002   INDIA                          0              0   119  whz              
24 months   GMS-Nepal        NEPAL                          1              1     4  whz              
24 months   GMS-Nepal        NEPAL                          0              3     4  whz              
24 months   IRC              INDIA                          1            121   121  whz              
24 months   IRC              INDIA                          0              0   121  whz              
24 months   MAL-ED           BANGLADESH                     1            133   135  whz              
24 months   MAL-ED           BANGLADESH                     0              2   135  whz              
24 months   MAL-ED           BRAZIL                         1             13   103  whz              
24 months   MAL-ED           BRAZIL                         0             90   103  whz              
24 months   MAL-ED           INDIA                          1              4     9  whz              
24 months   MAL-ED           INDIA                          0              5     9  whz              
24 months   MAL-ED           NEPAL                          1             69    83  whz              
24 months   MAL-ED           NEPAL                          0             14    83  whz              
24 months   MAL-ED           PERU                           1             39    49  whz              
24 months   MAL-ED           PERU                           0             10    49  whz              
24 months   MAL-ED           SOUTH AFRICA                   1              2    11  whz              
24 months   MAL-ED           SOUTH AFRICA                   0              9    11  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    43  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             37    43  whz              
24 months   NIH-Crypto       BANGLADESH                     1            242   514  whz              
24 months   NIH-Crypto       BANGLADESH                     0            272   514  whz              
24 months   PROVIDE          BANGLADESH                     1             14   579  whz              
24 months   PROVIDE          BANGLADESH                     0            565   579  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/a114911d-c59a-4c95-82d4-c8bd43b9314c/cb94d13f-1091-4d00-831a-ae397390d0d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a114911d-c59a-4c95-82d4-c8bd43b9314c/cb94d13f-1091-4d00-831a-ae397390d0d8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a114911d-c59a-4c95-82d4-c8bd43b9314c/cb94d13f-1091-4d00-831a-ae397390d0d8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                -0.2460714   -0.6028599    0.1107170
Birth       MAL-ED       PERU                           0                    NA                 0.0550000   -0.3367180    0.4467180
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -1.1781929   -1.2966906   -1.0596951
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -1.3104175   -1.4678853   -1.1529496
Birth       PROVIDE      BANGLADESH                     1                    NA                -1.2761323   -1.8196266   -0.7326380
Birth       PROVIDE      BANGLADESH                     0                    NA                -1.3000831   -1.3778728   -1.2222934
6 months    MAL-ED       BRAZIL                         1                    NA                 0.6947036    0.0087705    1.3806367
6 months    MAL-ED       BRAZIL                         0                    NA                 1.0210148    0.7628648    1.2791647
6 months    MAL-ED       NEPAL                          1                    NA                 0.1010783   -0.1625792    0.3647358
6 months    MAL-ED       NEPAL                          0                    NA                 0.2816682   -0.4694603    1.0327967
6 months    MAL-ED       PERU                           1                    NA                 1.0417579    0.6706304    1.4128853
6 months    MAL-ED       PERU                           0                    NA                 0.4560773   -0.0926893    1.0048438
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.4100000    1.0960519    1.7239481
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6305093    0.2775495    0.9834691
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0093550   -0.1035206    0.1222306
6 months    NIH-Crypto   BANGLADESH                     0                    NA                 0.0147992   -0.1163194    0.1459179
6 months    PROVIDE      BANGLADESH                     1                    NA                 1.0766130    0.5511837    1.6020424
6 months    PROVIDE      BANGLADESH                     0                    NA                -0.2200438   -0.3031507   -0.1369370
24 months   MAL-ED       BRAZIL                         1                    NA                 0.5829006   -0.0914842    1.2572855
24 months   MAL-ED       BRAZIL                         0                    NA                 0.5086660    0.2267693    0.7905626
24 months   MAL-ED       NEPAL                          1                    NA                -0.2913040   -0.5104880   -0.0721199
24 months   MAL-ED       NEPAL                          0                    NA                -0.2189092   -0.7788153    0.3409970
24 months   MAL-ED       PERU                           1                    NA                 0.0857966   -0.2502016    0.4217949
24 months   MAL-ED       PERU                           0                    NA                -0.0320592   -0.8065668    0.7424485
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2166667   -0.6845675    1.1179009
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0854054   -0.2281139    0.3989247
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.7508593   -0.9103996   -0.5913190
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.5046186   -0.6688441   -0.3403931
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.5111073   -0.9001100   -0.1221046
24 months   PROVIDE      BANGLADESH                     0                    NA                -0.9049947   -0.9890152   -0.8209743


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           NA                   NA                -0.1791667   -0.4729428    0.1146094
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    MAL-ED       BRAZIL                         NA                   NA                 0.9731715    0.7347562    1.2115869
6 months    MAL-ED       NEPAL                          NA                   NA                 0.1447189   -0.1029021    0.3923399
6 months    MAL-ED       PERU                           NA                   NA                 0.9109184    0.5934529    1.2283839
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7418651    0.4248303    1.0588998
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   MAL-ED       BRAZIL                         NA                   NA                 0.5203560    0.2632846    0.7774274
24 months   MAL-ED       NEPAL                          NA                   NA                -0.2262651   -0.4277663   -0.0247638
24 months   MAL-ED       PERU                           NA                   NA                 0.1148299   -0.1831101    0.4127700
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1037209   -0.1942394    0.4016813
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.3010714   -0.2287785    0.8309214
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                 -0.1322246   -0.3286897    0.0642405
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                 -0.0239507   -0.5732357    0.5253342
6 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BRAZIL                         0                    1                  0.3263112   -0.4089954    1.0616178
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                  0.1805900   -0.6149918    0.9761717
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                 -0.5856806   -1.2478533    0.0764921
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.7794907   -1.2518720   -0.3071095
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                  0.0054442   -0.1677161    0.1786045
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                 -1.2966569   -1.8287302   -0.7645835
24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BRAZIL                         0                    1                 -0.0742347   -0.8063401    0.6578708
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                  0.0723948   -0.5308849    0.6756745
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                 -0.1178558   -0.9680146    0.7323030
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1312613   -1.0854716    0.8229491
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.2462406    0.0172513    0.4752299
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.3938875   -0.7914856    0.0037107


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                 0.0669048   -0.0579283    0.1917378
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.0659585   -0.1574022    0.0254852
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.0223263   -0.5589076    0.5142550
6 months    MAL-ED       BRAZIL                         1                    NA                 0.2784680   -0.3728310    0.9297669
6 months    MAL-ED       NEPAL                          1                    NA                 0.0436406   -0.0817494    0.1690307
6 months    MAL-ED       PERU                           1                    NA                -0.1308395   -0.2965696    0.0348907
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6681349   -1.0815518   -0.2547181
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0204072   -0.0668396    0.1076541
6 months    PROVIDE      BANGLADESH                     1                    NA                -1.2757037   -1.7956482   -0.7557592
24 months   MAL-ED       BRAZIL                         1                    NA                -0.0625447   -0.7142942    0.5892049
24 months   MAL-ED       NEPAL                          1                    NA                 0.0650389   -0.0381201    0.1681979
24 months   MAL-ED       PERU                           1                    NA                 0.0290333   -0.1352263    0.1932929
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1129457   -0.9341257    0.7082342
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.1405091    0.0032909    0.2777273
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.3817598   -0.7696584    0.0061389
