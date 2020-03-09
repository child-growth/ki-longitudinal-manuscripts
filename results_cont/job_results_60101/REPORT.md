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

agecat      studyid          country                        trth2o    n_cell     n
----------  ---------------  -----------------------------  -------  -------  ----
Birth       CMC-V-BCS-2002   INDIA                          1             24    24
Birth       CMC-V-BCS-2002   INDIA                          0              0    24
Birth       GMS-Nepal        NEPAL                          1              1     4
Birth       GMS-Nepal        NEPAL                          0              3     4
Birth       IRC              INDIA                          1            105   105
Birth       IRC              INDIA                          0              0   105
Birth       MAL-ED           BANGLADESH                     1            110   112
Birth       MAL-ED           BANGLADESH                     0              2   112
Birth       MAL-ED           BRAZIL                         1              3    20
Birth       MAL-ED           BRAZIL                         0             17    20
Birth       MAL-ED           INDIA                          1              0     1
Birth       MAL-ED           INDIA                          0              1     1
Birth       MAL-ED           NEPAL                          1              7     9
Birth       MAL-ED           NEPAL                          0              2     9
Birth       MAL-ED           PERU                           1             28    36
Birth       MAL-ED           PERU                           0              8    36
Birth       MAL-ED           SOUTH AFRICA                   1              1     5
Birth       MAL-ED           SOUTH AFRICA                   0              4     5
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              4    21
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             17    21
Birth       NIH-Crypto       BANGLADESH                     1            397   707
Birth       NIH-Crypto       BANGLADESH                     0            310   707
Birth       PROVIDE          BANGLADESH                     1             11   532
Birth       PROVIDE          BANGLADESH                     0            521   532
6 months    CMC-V-BCS-2002   INDIA                          1            120   120
6 months    CMC-V-BCS-2002   INDIA                          0              0   120
6 months    GMS-Nepal        NEPAL                          1              1     4
6 months    GMS-Nepal        NEPAL                          0              3     4
6 months    IRC              INDIA                          1            121   121
6 months    IRC              INDIA                          0              0   121
6 months    MAL-ED           BANGLADESH                     1            132   134
6 months    MAL-ED           BANGLADESH                     0              2   134
6 months    MAL-ED           BRAZIL                         1             13   103
6 months    MAL-ED           BRAZIL                         0             90   103
6 months    MAL-ED           INDIA                          1              4     9
6 months    MAL-ED           INDIA                          0              5     9
6 months    MAL-ED           NEPAL                          1             69    83
6 months    MAL-ED           NEPAL                          0             14    83
6 months    MAL-ED           PERU                           1             39    49
6 months    MAL-ED           PERU                           0             10    49
6 months    MAL-ED           SOUTH AFRICA                   1              2    12
6 months    MAL-ED           SOUTH AFRICA                   0             10    12
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    42
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    42
6 months    NIH-Crypto       BANGLADESH                     1            396   715
6 months    NIH-Crypto       BANGLADESH                     0            319   715
6 months    PROVIDE          BANGLADESH                     1             14   603
6 months    PROVIDE          BANGLADESH                     0            589   603
24 months   CMC-V-BCS-2002   INDIA                          1            119   119
24 months   CMC-V-BCS-2002   INDIA                          0              0   119
24 months   GMS-Nepal        NEPAL                          1              1     4
24 months   GMS-Nepal        NEPAL                          0              3     4
24 months   IRC              INDIA                          1            121   121
24 months   IRC              INDIA                          0              0   121
24 months   MAL-ED           BANGLADESH                     1            133   135
24 months   MAL-ED           BANGLADESH                     0              2   135
24 months   MAL-ED           BRAZIL                         1             13   103
24 months   MAL-ED           BRAZIL                         0             90   103
24 months   MAL-ED           INDIA                          1              4     9
24 months   MAL-ED           INDIA                          0              5     9
24 months   MAL-ED           NEPAL                          1             69    83
24 months   MAL-ED           NEPAL                          0             14    83
24 months   MAL-ED           PERU                           1             39    49
24 months   MAL-ED           PERU                           0             10    49
24 months   MAL-ED           SOUTH AFRICA                   1              2    11
24 months   MAL-ED           SOUTH AFRICA                   0              9    11
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    43
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             37    43
24 months   NIH-Crypto       BANGLADESH                     1            242   514
24 months   NIH-Crypto       BANGLADESH                     0            272   514
24 months   PROVIDE          BANGLADESH                     1             14   579
24 months   PROVIDE          BANGLADESH                     0            565   579


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
![](/tmp/dee726a7-40cf-41de-b407-7b97485caaa6/fa588d3b-3970-49d5-a7b2-fe15a7e785ff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dee726a7-40cf-41de-b407-7b97485caaa6/fa588d3b-3970-49d5-a7b2-fe15a7e785ff/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dee726a7-40cf-41de-b407-7b97485caaa6/fa588d3b-3970-49d5-a7b2-fe15a7e785ff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                -0.2460714   -0.6028599    0.1107170
Birth       MAL-ED       PERU                           0                    NA                 0.0550000   -0.3367180    0.4467180
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -1.1897447   -1.3097033   -1.0697860
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -1.3244510   -1.4803612   -1.1685409
Birth       PROVIDE      BANGLADESH                     1                    NA                -1.2725286   -1.7830805   -0.7619768
Birth       PROVIDE      BANGLADESH                     0                    NA                -1.3006388   -1.3784690   -1.2228087
6 months    MAL-ED       BRAZIL                         1                    NA                 0.6790978    0.0593042    1.2988915
6 months    MAL-ED       BRAZIL                         0                    NA                 1.0057690    0.7476223    1.2639158
6 months    MAL-ED       NEPAL                          1                    NA                 0.1026164   -0.1606030    0.3658358
6 months    MAL-ED       NEPAL                          0                    NA                 0.6354822   -0.1085237    1.3794882
6 months    MAL-ED       PERU                           1                    NA                 1.0078890    0.6442929    1.3714852
6 months    MAL-ED       PERU                           0                    NA                 0.0948694   -0.5548442    0.7445830
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.4100000    1.0960519    1.7239481
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6305093    0.2775495    0.9834691
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0021133   -0.1081618    0.1123884
6 months    NIH-Crypto   BANGLADESH                     0                    NA                 0.0094737   -0.1251490    0.1440963
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.6274160   -1.1873983   -0.0674337
6 months    PROVIDE      BANGLADESH                     0                    NA                -0.2224421   -0.3055384   -0.1393459
24 months   MAL-ED       BRAZIL                         1                    NA                 0.0729682   -0.5688446    0.7147809
24 months   MAL-ED       BRAZIL                         0                    NA                 0.4956657    0.2111990    0.7801324
24 months   MAL-ED       NEPAL                          1                    NA                -0.2735730   -0.4920937   -0.0550523
24 months   MAL-ED       NEPAL                          0                    NA                -0.0719666   -0.6201213    0.4761882
24 months   MAL-ED       PERU                           1                    NA                 0.1182489   -0.2185819    0.4550797
24 months   MAL-ED       PERU                           0                    NA                 0.3449953   -0.3852923    1.0752829
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2166667   -0.6845675    1.1179009
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0854054   -0.2281139    0.3989247
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.7139359   -0.8808187   -0.5470531
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.4957816   -0.6530031   -0.3385601
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.4261849   -0.7915660   -0.0608038
24 months   PROVIDE      BANGLADESH                     0                    NA                -0.9051458   -0.9894732   -0.8208185


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
Birth       NIH-Crypto   BANGLADESH                     0                    1                 -0.1347064   -0.3319016    0.0624888
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                 -0.0281102   -0.5460577    0.4898372
6 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BRAZIL                         0                    1                  0.3266712   -0.3463944    0.9997368
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                  0.5328658   -0.2607743    1.3265059
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                 -0.9130196   -1.6667549   -0.1592843
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.7794907   -1.2518720   -0.3071095
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                  0.0073603   -0.1665411    0.1812618
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                  0.4049738   -0.1637211    0.9736688
24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BRAZIL                         0                    1                  0.4226975   -0.2855090    1.1309041
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                  0.2016064   -0.3986044    0.8018173
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                  0.2267464   -0.5804229    1.0339157
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1312613   -1.0854716    0.8229491
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.2181543   -0.0104898    0.4467984
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.4789609   -0.8542923   -0.1036295


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                 0.0669048   -0.0579283    0.1917378
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.0544067   -0.1463405    0.0375271
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.0259300   -0.5319879    0.4801279
6 months    MAL-ED       BRAZIL                         1                    NA                 0.2940737   -0.2977217    0.8858691
6 months    MAL-ED       NEPAL                          1                    NA                 0.0421024   -0.0864883    0.1706932
6 months    MAL-ED       PERU                           1                    NA                -0.0969707   -0.2475877    0.0536464
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6681349   -1.0815518   -0.2547181
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0276489   -0.0575360    0.1128339
6 months    PROVIDE      BANGLADESH                     1                    NA                 0.4283253   -0.1282663    0.9849169
24 months   MAL-ED       BRAZIL                         1                    NA                 0.4473878   -0.1915582    1.0863339
24 months   MAL-ED       NEPAL                          1                    NA                 0.0473079   -0.0542757    0.1488915
24 months   MAL-ED       PERU                           1                    NA                -0.0034190   -0.1687829    0.1619450
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1129457   -0.9341257    0.7082342
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.1035857   -0.0381913    0.2453627
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.4666821   -0.8326676   -0.1006965
