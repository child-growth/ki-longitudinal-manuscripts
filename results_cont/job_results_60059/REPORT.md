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

**Outcome Variable:** haz

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
Birth       CMC-V-BCS-2002   INDIA                          1             26    26
Birth       CMC-V-BCS-2002   INDIA                          0              0    26
Birth       GMS-Nepal        NEPAL                          1              1     4
Birth       GMS-Nepal        NEPAL                          0              3     4
Birth       IRC              INDIA                          1            120   120
Birth       IRC              INDIA                          0              0   120
Birth       MAL-ED           BANGLADESH                     1            117   119
Birth       MAL-ED           BANGLADESH                     0              2   119
Birth       MAL-ED           BRAZIL                         1              4    22
Birth       MAL-ED           BRAZIL                         0             18    22
Birth       MAL-ED           INDIA                          1              0     2
Birth       MAL-ED           INDIA                          0              2     2
Birth       MAL-ED           NEPAL                          1              7     9
Birth       MAL-ED           NEPAL                          0              2     9
Birth       MAL-ED           PERU                           1             28    36
Birth       MAL-ED           PERU                           0              8    36
Birth       MAL-ED           SOUTH AFRICA                   1              1     5
Birth       MAL-ED           SOUTH AFRICA                   0              4     5
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              4    22
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             18    22
Birth       NIH-Crypto       BANGLADESH                     1            409   732
Birth       NIH-Crypto       BANGLADESH                     0            323   732
Birth       PROVIDE          BANGLADESH                     1             12   539
Birth       PROVIDE          BANGLADESH                     0            527   539
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
6 months    PROVIDE          BANGLADESH                     1             14   604
6 months    PROVIDE          BANGLADESH                     0            590   604
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
24 months   PROVIDE          BANGLADESH                     1             14   578
24 months   PROVIDE          BANGLADESH                     0            564   578


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
![](/tmp/c804b5fd-f311-4835-8bac-80fd137cc8c1/fb9812ba-1f27-45cd-90da-f62c0e52644c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c804b5fd-f311-4835-8bac-80fd137cc8c1/fb9812ba-1f27-45cd-90da-f62c0e52644c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c804b5fd-f311-4835-8bac-80fd137cc8c1/fb9812ba-1f27-45cd-90da-f62c0e52644c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                -1.1403571   -1.4705172   -0.8101971
Birth       MAL-ED       PERU                           0                    NA                -0.9150000   -1.3733730   -0.4566270
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -1.0090253   -1.1295661   -0.8884845
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -0.8200870   -0.9478866   -0.6922874
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.7087252   -1.2963410   -0.1211095
Birth       PROVIDE      BANGLADESH                     0                    NA                -0.8893295   -0.9648616   -0.8137974
6 months    MAL-ED       BRAZIL                         1                    NA                -0.2215334   -0.7765314    0.3334647
6 months    MAL-ED       BRAZIL                         0                    NA                 0.1880174   -0.0269447    0.4029794
6 months    MAL-ED       NEPAL                          1                    NA                -0.4765414   -0.6909498   -0.2621330
6 months    MAL-ED       NEPAL                          0                    NA                -0.5579406   -1.0276020   -0.0882792
6 months    MAL-ED       PERU                           1                    NA                -1.4684336   -1.7844529   -1.1524143
6 months    MAL-ED       PERU                           0                    NA                -1.5962935   -2.2225168   -0.9700703
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3394444   -2.3247416   -0.3541473
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5815278   -1.8930135   -1.2700421
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -1.3118014   -1.4325890   -1.1910137
6 months    NIH-Crypto   BANGLADESH                     0                    NA                -1.0887869   -1.1993271   -0.9782466
6 months    PROVIDE      BANGLADESH                     1                    NA                -1.2161426   -1.6795407   -0.7527445
6 months    PROVIDE      BANGLADESH                     0                    NA                -1.0901207   -1.1659972   -1.0142442
24 months   MAL-ED       BRAZIL                         1                    NA                -0.8151380   -1.2506944   -0.3795816
24 months   MAL-ED       BRAZIL                         0                    NA                 0.2154491    0.0001109    0.4307873
24 months   MAL-ED       NEPAL                          1                    NA                -1.2162868   -1.4504956   -0.9820780
24 months   MAL-ED       NEPAL                          0                    NA                -1.5243126   -2.1030756   -0.9455496
24 months   MAL-ED       PERU                           1                    NA                -1.7964572   -2.0811987   -1.5117157
24 months   MAL-ED       PERU                           0                    NA                -2.1546594   -2.6699767   -1.6393421
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.7600000   -3.4536768   -2.0663232
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.8620270   -3.2058314   -2.5182226
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -1.5594070   -1.7102412   -1.4085728
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -1.4291160   -1.5575755   -1.3006565
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.8813589   -1.4359102   -0.3268076
24 months   PROVIDE      BANGLADESH                     0                    NA                -1.5989385   -1.6832535   -1.5146235


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           NA                   NA                -1.0902778   -1.3682718   -0.8122837
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE      BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    MAL-ED       BRAZIL                         NA                   NA                 0.1558900   -0.0436128    0.3553927
6 months    MAL-ED       NEPAL                          NA                   NA                -0.5416867   -0.7337282   -0.3496452
6 months    MAL-ED       PERU                           NA                   NA                -1.4335034   -1.6988926   -1.1681142
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.5469444   -1.8498756   -1.2440133
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
24 months   MAL-ED       BRAZIL                         NA                   NA                 0.0833172   -0.1220854    0.2887197
24 months   MAL-ED       NEPAL                          NA                   NA                -1.2665060   -1.4788044   -1.0542077
24 months   MAL-ED       PERU                           NA                   NA                -1.9093878   -2.1570845   -1.6616910
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.8477907   -3.1592380   -2.5363434
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.2253571   -0.3395424    0.7902567
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                  0.1889383    0.0131188    0.3647577
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                 -0.1806042   -0.7737060    0.4124976
6 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BRAZIL                         0                    1                  0.4095507   -0.1866841    1.0057855
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                 -0.0813992   -0.6065800    0.4437816
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                 -0.1278599   -0.8368529    0.5811331
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2420833   -1.2754438    0.7912771
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                  0.2230145    0.0591495    0.3868795
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                  0.1260219   -0.3431742    0.5952180
24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BRAZIL                         0                    1                  1.0305871    0.5483919    1.5127823
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.3080258   -0.9327177    0.3166660
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                 -0.3582022   -0.9563493    0.2399449
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1020270   -0.8762292    0.6721752
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.1302910   -0.0663263    0.3269083
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.7175796   -1.2795354   -0.1556239


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                 0.0500794   -0.0792342    0.1793930
Birth       NIH-Crypto   BANGLADESH                     1                    NA                 0.0995307    0.0019420    0.1971195
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.1763768   -0.7552221    0.4024685
6 months    MAL-ED       BRAZIL                         1                    NA                 0.3774233   -0.1491647    0.9040114
6 months    MAL-ED       NEPAL                          1                    NA                -0.0651453   -0.1458297    0.0155390
6 months    MAL-ED       PERU                           1                    NA                 0.0349302   -0.0934745    0.1633349
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2075000   -1.0936170    0.6786170
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.1131231    0.0230578    0.2031883
6 months    PROVIDE      BANGLADESH                     1                    NA                 0.1244511   -0.3342113    0.5831135
24 months   MAL-ED       BRAZIL                         1                    NA                 0.8984552    0.4658965    1.3310139
24 months   MAL-ED       NEPAL                          1                    NA                -0.0502192   -0.1468136    0.0463751
24 months   MAL-ED       PERU                           1                    NA                -0.1129306   -0.2459718    0.0201107
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0877907   -0.7540505    0.5784691
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.1181424   -0.0012995    0.2375843
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.7210633   -1.2701647   -0.1719618
