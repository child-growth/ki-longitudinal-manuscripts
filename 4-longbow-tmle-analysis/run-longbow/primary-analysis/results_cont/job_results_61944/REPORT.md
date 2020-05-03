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

agecat      studyid          country                        trth2o    n_cell     n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1             26    26  haz              
Birth       CMC-V-BCS-2002   INDIA                          0              0    26  haz              
Birth       GMS-Nepal        NEPAL                          1              1     4  haz              
Birth       GMS-Nepal        NEPAL                          0              3     4  haz              
Birth       IRC              INDIA                          1            120   120  haz              
Birth       IRC              INDIA                          0              0   120  haz              
Birth       MAL-ED           BANGLADESH                     1            117   119  haz              
Birth       MAL-ED           BANGLADESH                     0              2   119  haz              
Birth       MAL-ED           BRAZIL                         1              4    22  haz              
Birth       MAL-ED           BRAZIL                         0             18    22  haz              
Birth       MAL-ED           INDIA                          1              0     2  haz              
Birth       MAL-ED           INDIA                          0              2     2  haz              
Birth       MAL-ED           NEPAL                          1              7     9  haz              
Birth       MAL-ED           NEPAL                          0              2     9  haz              
Birth       MAL-ED           PERU                           1             28    36  haz              
Birth       MAL-ED           PERU                           0              8    36  haz              
Birth       MAL-ED           SOUTH AFRICA                   1              1     5  haz              
Birth       MAL-ED           SOUTH AFRICA                   0              4     5  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              4    22  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             18    22  haz              
Birth       NIH-Crypto       BANGLADESH                     1            409   732  haz              
Birth       NIH-Crypto       BANGLADESH                     0            323   732  haz              
Birth       PROVIDE          BANGLADESH                     1             12   539  haz              
Birth       PROVIDE          BANGLADESH                     0            527   539  haz              
6 months    CMC-V-BCS-2002   INDIA                          1            120   120  haz              
6 months    CMC-V-BCS-2002   INDIA                          0              0   120  haz              
6 months    GMS-Nepal        NEPAL                          1              1     4  haz              
6 months    GMS-Nepal        NEPAL                          0              3     4  haz              
6 months    IRC              INDIA                          1            121   121  haz              
6 months    IRC              INDIA                          0              0   121  haz              
6 months    MAL-ED           BANGLADESH                     1            132   134  haz              
6 months    MAL-ED           BANGLADESH                     0              2   134  haz              
6 months    MAL-ED           BRAZIL                         1             13   103  haz              
6 months    MAL-ED           BRAZIL                         0             90   103  haz              
6 months    MAL-ED           INDIA                          1              4     9  haz              
6 months    MAL-ED           INDIA                          0              5     9  haz              
6 months    MAL-ED           NEPAL                          1             69    83  haz              
6 months    MAL-ED           NEPAL                          0             14    83  haz              
6 months    MAL-ED           PERU                           1             39    49  haz              
6 months    MAL-ED           PERU                           0             10    49  haz              
6 months    MAL-ED           SOUTH AFRICA                   1              2    12  haz              
6 months    MAL-ED           SOUTH AFRICA                   0             10    12  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    42  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    42  haz              
6 months    NIH-Crypto       BANGLADESH                     1            396   715  haz              
6 months    NIH-Crypto       BANGLADESH                     0            319   715  haz              
6 months    PROVIDE          BANGLADESH                     1             14   604  haz              
6 months    PROVIDE          BANGLADESH                     0            590   604  haz              
24 months   CMC-V-BCS-2002   INDIA                          1            119   119  haz              
24 months   CMC-V-BCS-2002   INDIA                          0              0   119  haz              
24 months   GMS-Nepal        NEPAL                          1              1     4  haz              
24 months   GMS-Nepal        NEPAL                          0              3     4  haz              
24 months   IRC              INDIA                          1            121   121  haz              
24 months   IRC              INDIA                          0              0   121  haz              
24 months   MAL-ED           BANGLADESH                     1            133   135  haz              
24 months   MAL-ED           BANGLADESH                     0              2   135  haz              
24 months   MAL-ED           BRAZIL                         1             13   103  haz              
24 months   MAL-ED           BRAZIL                         0             90   103  haz              
24 months   MAL-ED           INDIA                          1              4     9  haz              
24 months   MAL-ED           INDIA                          0              5     9  haz              
24 months   MAL-ED           NEPAL                          1             69    83  haz              
24 months   MAL-ED           NEPAL                          0             14    83  haz              
24 months   MAL-ED           PERU                           1             39    49  haz              
24 months   MAL-ED           PERU                           0             10    49  haz              
24 months   MAL-ED           SOUTH AFRICA                   1              2    11  haz              
24 months   MAL-ED           SOUTH AFRICA                   0              9    11  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    43  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             37    43  haz              
24 months   NIH-Crypto       BANGLADESH                     1            242   514  haz              
24 months   NIH-Crypto       BANGLADESH                     0            272   514  haz              
24 months   PROVIDE          BANGLADESH                     1             14   578  haz              
24 months   PROVIDE          BANGLADESH                     0            564   578  haz              


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
![](/tmp/f2d5d6d4-a63b-4b4d-b39c-a76848dfebd2/2d7c3abf-9b8c-4915-a99d-c42077238272/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f2d5d6d4-a63b-4b4d-b39c-a76848dfebd2/2d7c3abf-9b8c-4915-a99d-c42077238272/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f2d5d6d4-a63b-4b4d-b39c-a76848dfebd2/2d7c3abf-9b8c-4915-a99d-c42077238272/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                -1.1403571   -1.4705172   -0.8101971
Birth       MAL-ED       PERU                           0                    NA                -0.9150000   -1.3733730   -0.4566270
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -1.0448713   -1.1616660   -0.9280766
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -0.8135181   -0.9444354   -0.6826008
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.7817497   -1.3132797   -0.2502197
Birth       PROVIDE      BANGLADESH                     0                    NA                -0.8894144   -0.9649480   -0.8138808
6 months    MAL-ED       BRAZIL                         1                    NA                 0.0732411   -0.4751293    0.6216114
6 months    MAL-ED       BRAZIL                         0                    NA                 0.1984069   -0.0176167    0.4144306
6 months    MAL-ED       NEPAL                          1                    NA                -0.4694760   -0.6855900   -0.2533620
6 months    MAL-ED       NEPAL                          0                    NA                -0.4658478   -0.8492721   -0.0824235
6 months    MAL-ED       PERU                           1                    NA                -1.4669788   -1.7801233   -1.1538343
6 months    MAL-ED       PERU                           0                    NA                -1.2771888   -1.8086413   -0.7457363
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3394444   -2.3247416   -0.3541473
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5815278   -1.8930135   -1.2700421
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -1.3276970   -1.4446758   -1.2107181
6 months    NIH-Crypto   BANGLADESH                     0                    NA                -1.0891075   -1.2078893   -0.9703257
6 months    PROVIDE      BANGLADESH                     1                    NA                -1.1876198   -1.6311123   -0.7441273
6 months    PROVIDE      BANGLADESH                     0                    NA                -1.0901855   -1.1660483   -1.0143227
24 months   MAL-ED       BRAZIL                         1                    NA                -0.7831000   -1.2677236   -0.2984765
24 months   MAL-ED       BRAZIL                         0                    NA                 0.2135957   -0.0012158    0.4284072
24 months   MAL-ED       NEPAL                          1                    NA                -1.2195976   -1.4522186   -0.9869765
24 months   MAL-ED       NEPAL                          0                    NA                -1.7788300   -2.3266484   -1.2310117
24 months   MAL-ED       PERU                           1                    NA                -1.7727993   -2.0576957   -1.4879030
24 months   MAL-ED       PERU                           0                    NA                -1.7664828   -2.2456575   -1.2873081
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.7600000   -3.4536768   -2.0663232
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.8620270   -3.2058314   -2.5182226
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -1.5986042   -1.7631683   -1.4340401
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -1.4191682   -1.5443003   -1.2940361
24 months   PROVIDE      BANGLADESH                     1                    NA                -1.7374580   -2.2989013   -1.1760148
24 months   PROVIDE      BANGLADESH                     0                    NA                -1.6004251   -1.6847525   -1.5160977


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


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.2253571   -0.3395424   0.7902567
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                  0.2313532    0.0563188   0.4063876
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                 -0.1076647   -0.6452001   0.4298706
6 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED       BRAZIL                         0                    1                  0.1251659   -0.4655377   0.7158694
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED       NEPAL                          0                    1                  0.0036282   -0.4353466   0.4426030
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED       PERU                           0                    1                  0.1897900   -0.4362806   0.8158606
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2420833   -1.2754438   0.7912771
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                  0.2385895    0.0717969   0.4053820
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                  0.0974343   -0.3519790   0.5468475
24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED       BRAZIL                         0                    1                  0.9966957    0.4660238   1.5273676
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.5592325   -1.1471420   0.0286771
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED       PERU                           0                    1                  0.0063166   -0.5673620   0.5799951
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1020270   -0.8762292   0.6721752
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.1794360   -0.0266599   0.3855319
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                  0.1370330   -0.4308964   0.7049624


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED       PERU                           1                    NA                 0.0500794   -0.0792342   0.1793930
Birth       NIH-Crypto   BANGLADESH                     1                    NA                 0.1353767    0.0413448   0.2294087
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.1033523   -0.6265377   0.4198331
6 months    MAL-ED       BRAZIL                         1                    NA                 0.0826489   -0.4392195   0.6045173
6 months    MAL-ED       NEPAL                          1                    NA                -0.0722107   -0.1553582   0.0109367
6 months    MAL-ED       PERU                           1                    NA                 0.0334754   -0.0928157   0.1597665
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2075000   -1.0936170   0.6786170
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.1290186    0.0408995   0.2171378
6 months    PROVIDE      BANGLADESH                     1                    NA                 0.0959283   -0.3431769   0.5350335
24 months   MAL-ED       BRAZIL                         1                    NA                 0.8664172    0.3864252   1.3464092
24 months   MAL-ED       NEPAL                          1                    NA                -0.0469085   -0.1347811   0.0409642
24 months   MAL-ED       PERU                           1                    NA                -0.1365884   -0.2856114   0.0124346
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0877907   -0.7540505   0.5784691
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.1573396    0.0217032   0.2929759
24 months   PROVIDE      BANGLADESH                     1                    NA                 0.1350359   -0.4190389   0.6891107
