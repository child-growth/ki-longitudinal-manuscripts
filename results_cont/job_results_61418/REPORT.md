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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country        cleanck    n_cell     n  outcome_variable 
----------  ---------------  -------------  --------  -------  ----  -----------------
Birth       CMC-V-BCS-2002   INDIA          1              37    86  whz              
Birth       CMC-V-BCS-2002   INDIA          0              49    86  whz              
Birth       GMS-Nepal        NEPAL          1               9   570  whz              
Birth       GMS-Nepal        NEPAL          0             561   570  whz              
Birth       IRC              INDIA          1             198   337  whz              
Birth       IRC              INDIA          0             139   337  whz              
Birth       MAL-ED           PERU           1               1     2  whz              
Birth       MAL-ED           PERU           0               1     2  whz              
Birth       NIH-Crypto       BANGLADESH     1             336   543  whz              
Birth       NIH-Crypto       BANGLADESH     0             207   543  whz              
Birth       PROVIDE          BANGLADESH     1             433   532  whz              
Birth       PROVIDE          BANGLADESH     0              99   532  whz              
6 months    CMC-V-BCS-2002   INDIA          1             162   368  whz              
6 months    CMC-V-BCS-2002   INDIA          0             206   368  whz              
6 months    GMS-Nepal        NEPAL          1               8   505  whz              
6 months    GMS-Nepal        NEPAL          0             497   505  whz              
6 months    IRC              INDIA          1             229   398  whz              
6 months    IRC              INDIA          0             169   398  whz              
6 months    MAL-ED           SOUTH AFRICA   1               1     1  whz              
6 months    MAL-ED           SOUTH AFRICA   0               0     1  whz              
6 months    NIH-Crypto       BANGLADESH     1             329   545  whz              
6 months    NIH-Crypto       BANGLADESH     0             216   545  whz              
6 months    PROVIDE          BANGLADESH     1             497   603  whz              
6 months    PROVIDE          BANGLADESH     0             106   603  whz              
24 months   CMC-V-BCS-2002   INDIA          1             163   372  whz              
24 months   CMC-V-BCS-2002   INDIA          0             209   372  whz              
24 months   GMS-Nepal        NEPAL          1               5   434  whz              
24 months   GMS-Nepal        NEPAL          0             429   434  whz              
24 months   IRC              INDIA          1             231   400  whz              
24 months   IRC              INDIA          0             169   400  whz              
24 months   MAL-ED           SOUTH AFRICA   1               1     1  whz              
24 months   MAL-ED           SOUTH AFRICA   0               0     1  whz              
24 months   NIH-Crypto       BANGLADESH     1             199   410  whz              
24 months   NIH-Crypto       BANGLADESH     0             211   410  whz              
24 months   PROVIDE          BANGLADESH     1             480   579  whz              
24 months   PROVIDE          BANGLADESH     0              99   579  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
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
![](/tmp/53cd92a1-4088-4f70-b3d4-dfbfb5441930/86f8024a-340a-4ab9-9439-0c178088867c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/53cd92a1-4088-4f70-b3d4-dfbfb5441930/86f8024a-340a-4ab9-9439-0c178088867c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/53cd92a1-4088-4f70-b3d4-dfbfb5441930/86f8024a-340a-4ab9-9439-0c178088867c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.2839284   -0.7064181    0.1385613
Birth       CMC-V-BCS-2002   INDIA        0                    NA                -0.6029058   -1.0361319   -0.1696796
Birth       GMS-Nepal        NEPAL        1                    NA                -1.5077778   -2.0451921   -0.9703635
Birth       GMS-Nepal        NEPAL        0                    NA                -1.1081283   -1.2024430   -1.0138137
Birth       IRC              INDIA        1                    NA                -0.8460224   -1.1105639   -0.5814810
Birth       IRC              INDIA        0                    NA                -1.1594665   -1.4579136   -0.8610194
Birth       NIH-Crypto       BANGLADESH   1                    NA                -1.3309476   -1.5295443   -1.1323510
Birth       NIH-Crypto       BANGLADESH   0                    NA                -1.3193612   -1.5820451   -1.0566773
Birth       PROVIDE          BANGLADESH   1                    NA                -1.2907645   -1.3750013   -1.2065276
Birth       PROVIDE          BANGLADESH   0                    NA                -1.3214686   -1.5233422   -1.1195951
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.3851749   -0.6197579   -0.1505918
6 months    CMC-V-BCS-2002   INDIA        0                    NA                -0.6444147   -0.8608132   -0.4280163
6 months    GMS-Nepal        NEPAL        1                    NA                -0.8406250   -1.1876486   -0.4936014
6 months    GMS-Nepal        NEPAL        0                    NA                -0.6195607   -0.7114689   -0.5276524
6 months    IRC              INDIA        1                    NA                -0.6654406   -0.8505317   -0.4803495
6 months    IRC              INDIA        0                    NA                -0.5598839   -0.8052746   -0.3144932
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0139305   -0.1677761    0.1399151
6 months    NIH-Crypto       BANGLADESH   0                    NA                -0.0183570   -0.2339680    0.1972541
6 months    PROVIDE          BANGLADESH   1                    NA                -0.1390997   -0.2270730   -0.0511264
6 months    PROVIDE          BANGLADESH   0                    NA                -0.4428363   -0.7085074   -0.1771652
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.2807393   -0.4449373   -0.1165414
24 months   CMC-V-BCS-2002   INDIA        0                    NA                -0.7336316   -0.8603967   -0.6068664
24 months   GMS-Nepal        NEPAL        1                    NA                -0.8380000   -1.3259702   -0.3500298
24 months   GMS-Nepal        NEPAL        0                    NA                -1.1280730   -1.2245191   -1.0316270
24 months   IRC              INDIA        1                    NA                -0.7043648   -0.8413030   -0.5674266
24 months   IRC              INDIA        0                    NA                -0.8340752   -0.9860451   -0.6821053
24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.5799318   -0.8123979   -0.3474656
24 months   NIH-Crypto       BANGLADESH   0                    NA                -0.4959073   -0.6778058   -0.3140089
24 months   PROVIDE          BANGLADESH   1                    NA                -0.8523091   -0.9399506   -0.7646677
24 months   PROVIDE          BANGLADESH   0                    NA                -1.0511995   -1.2835989   -0.8188000


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       GMS-Nepal        NEPAL        NA                   NA                -1.1144386   -1.2074618   -1.0214154
Birth       IRC              INDIA        NA                   NA                -0.9860831   -1.1746070   -0.7975591
Birth       NIH-Crypto       BANGLADESH   NA                   NA                -1.1841160   -1.2799097   -1.0883224
Birth       PROVIDE          BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    CMC-V-BCS-2002   INDIA        NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    GMS-Nepal        NEPAL        NA                   NA                -0.6230627   -0.7131245   -0.5330009
6 months    IRC              INDIA        NA                   NA                -0.6153685   -0.7522411   -0.4784959
6 months    NIH-Crypto       BANGLADESH   NA                   NA                 0.0640826   -0.0252594    0.1534245
6 months    PROVIDE          BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   CMC-V-BCS-2002   INDIA        NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   GMS-Nepal        NEPAL        NA                   NA                -1.1247312   -1.2195989   -1.0298635
24 months   IRC              INDIA        NA                   NA                -0.7479083   -0.8403586   -0.6554581
24 months   NIH-Crypto       BANGLADESH   NA                   NA                -0.5518293   -0.6602513   -0.4434072
24 months   PROVIDE          BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA        0                    1                 -0.3189774   -0.9298911    0.2919363
Birth       GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL        0                    1                  0.3996494   -0.1459781    0.9452770
Birth       IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA        0                    1                 -0.3134441   -0.7136415    0.0867534
Birth       NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH   0                    1                  0.0115864   -0.3184257    0.3415985
Birth       PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH   0                    1                 -0.0307042   -0.2494960    0.1880877
6 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.2592399   -0.5777352    0.0592555
6 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL        0                    1                  0.2210643   -0.1379239    0.5800525
6 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA        0                    1                  0.1055567   -0.2030641    0.4141776
6 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH   0                    1                 -0.0044264   -0.2691120    0.2602592
6 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH   0                    1                 -0.3037366   -0.5833080   -0.0241652
24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.4528922   -0.6613778   -0.2444066
24 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL        0                    1                 -0.2900730   -0.7874831    0.2073370
24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA        0                    1                 -0.1297104   -0.3354022    0.0759814
24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH   0                    1                  0.0840244   -0.2112550    0.3793038
24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH   0                    1                 -0.1988903   -0.4464590    0.0486783


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.1808972   -0.5374167    0.1756223
Birth       GMS-Nepal        NEPAL        1                    NA                 0.3933392   -0.1386634    0.9253418
Birth       IRC              INDIA        1                    NA                -0.1400606   -0.3185540    0.0384327
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.1468316   -0.0228424    0.3165056
Birth       PROVIDE          BANGLADESH   1                    NA                -0.0076942   -0.0462169    0.0308285
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.1175017   -0.2996842    0.0646807
6 months    GMS-Nepal        NEPAL        1                    NA                 0.2175623   -0.1324595    0.5675841
6 months    IRC              INDIA        1                    NA                 0.0500721   -0.0783978    0.1785421
6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0780131   -0.0491270    0.2051532
6 months    PROVIDE          BANGLADESH   1                    NA                -0.0599910   -0.1026526   -0.0173293
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.2764112   -0.4046377   -0.1481847
24 months   GMS-Nepal        NEPAL        1                    NA                -0.2867312   -0.7717148    0.1982524
24 months   IRC              INDIA        1                    NA                -0.0435435   -0.1357565    0.0486694
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0281025   -0.1807734    0.2369784
24 months   PROVIDE          BANGLADESH   1                    NA                -0.0405579   -0.0813294    0.0002136
