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
![](/tmp/f8da6093-1b3c-45e6-b48a-e75a0959bf44/c0922af5-a22f-419a-b1f2-478467c60e9d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f8da6093-1b3c-45e6-b48a-e75a0959bf44/c0922af5-a22f-419a-b1f2-478467c60e9d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f8da6093-1b3c-45e6-b48a-e75a0959bf44/c0922af5-a22f-419a-b1f2-478467c60e9d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                -1.1403571   -1.4705172   -0.8101971
Birth       MAL-ED       PERU                           0                    NA                -0.9150000   -1.3733730   -0.4566270
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -1.0301776   -1.1468777   -0.9134775
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -0.8044554   -0.9384931   -0.6704176
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.7297669   -1.3062229   -0.1533108
Birth       PROVIDE      BANGLADESH                     0                    NA                -0.8895380   -0.9650700   -0.8140061
6 months    MAL-ED       BRAZIL                         1                    NA                 0.1838961   -0.3279052    0.6956974
6 months    MAL-ED       BRAZIL                         0                    NA                 0.1977999   -0.0169853    0.4125851
6 months    MAL-ED       NEPAL                          1                    NA                -0.4764954   -0.6922454   -0.2607454
6 months    MAL-ED       NEPAL                          0                    NA                -0.7111675   -1.1017093   -0.3206257
6 months    MAL-ED       PERU                           1                    NA                -1.4786466   -1.7900995   -1.1671938
6 months    MAL-ED       PERU                           0                    NA                -1.3007482   -1.8954453   -0.7060511
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3394444   -2.3247416   -0.3541473
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5815278   -1.8930135   -1.2700421
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -1.3280984   -1.4488486   -1.2073482
6 months    NIH-Crypto   BANGLADESH                     0                    NA                -1.0972775   -1.2097465   -0.9848084
6 months    PROVIDE      BANGLADESH                     1                    NA                -1.3513065   -1.8248177   -0.8777953
6 months    PROVIDE      BANGLADESH                     0                    NA                -1.0898244   -1.1654600   -1.0141889
24 months   MAL-ED       BRAZIL                         1                    NA                -0.7874078   -1.2316891   -0.3431264
24 months   MAL-ED       BRAZIL                         0                    NA                 0.2123305   -0.0028147    0.4274756
24 months   MAL-ED       NEPAL                          1                    NA                -1.2019708   -1.4357825   -0.9681591
24 months   MAL-ED       NEPAL                          0                    NA                -1.2608335   -1.7632998   -0.7583671
24 months   MAL-ED       PERU                           1                    NA                -1.8042841   -2.0867760   -1.5217922
24 months   MAL-ED       PERU                           0                    NA                -2.2233275   -2.7087583   -1.7378968
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.7600000   -3.4536768   -2.0663232
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.8620270   -3.2058314   -2.5182226
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -1.5813426   -1.7340211   -1.4286640
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -1.4446094   -1.5715340   -1.3176849
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.4336871   -1.0262676    0.1588934
24 months   PROVIDE      BANGLADESH                     0                    NA                -1.5990299   -1.6833641   -1.5146956


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
Birth       NIH-Crypto   BANGLADESH                     0                    1                  0.2257223    0.0486210    0.4028235
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                 -0.1597712   -0.7420774    0.4225351
6 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BRAZIL                         0                    1                  0.0139038   -0.5443652    0.5721728
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                 -0.2346721   -0.6836130    0.2142688
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                  0.1778984   -0.5053467    0.8611435
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2420833   -1.2754438    0.7912771
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                  0.2308209    0.0656255    0.3960163
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                  0.2614820   -0.2178874    0.7408515
24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BRAZIL                         0                    1                  0.9997382    0.5051691    1.4943074
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.0588627   -0.6172823    0.4995569
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                 -0.4190434   -0.9811419    0.1430550
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1020270   -0.8762292    0.6721752
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.1367331   -0.0621366    0.3356028
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -1.1653428   -1.7647031   -0.5659825


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                 0.0500794   -0.0792342    0.1793930
Birth       NIH-Crypto   BANGLADESH                     1                    NA                 0.1206831    0.0269421    0.2144241
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.1553352   -0.7231931    0.4125227
6 months    MAL-ED       BRAZIL                         1                    NA                -0.0280061   -0.5196294    0.4636171
6 months    MAL-ED       NEPAL                          1                    NA                -0.0651914   -0.1471977    0.0168150
6 months    MAL-ED       PERU                           1                    NA                 0.0451432   -0.0832576    0.1735441
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2075000   -1.0936170    0.6786170
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.1294201    0.0384790    0.2203612
6 months    PROVIDE      BANGLADESH                     1                    NA                 0.2596150   -0.2095208    0.7287508
24 months   MAL-ED       BRAZIL                         1                    NA                 0.8707249    0.4287563    1.3126936
24 months   MAL-ED       NEPAL                          1                    NA                -0.0645352   -0.1645061    0.0354356
24 months   MAL-ED       PERU                           1                    NA                -0.1051036   -0.2302230    0.0200158
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0877907   -0.7540505    0.5784691
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.1400780    0.0180660    0.2620900
24 months   PROVIDE      BANGLADESH                     1                    NA                -1.1687351   -1.7551151   -0.5823550
