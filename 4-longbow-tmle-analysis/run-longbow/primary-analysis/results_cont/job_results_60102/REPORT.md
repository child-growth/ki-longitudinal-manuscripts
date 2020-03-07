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

agecat      studyid          country        cleanck    n_cell     n
----------  ---------------  -------------  --------  -------  ----
Birth       CMC-V-BCS-2002   INDIA          1              37    86
Birth       CMC-V-BCS-2002   INDIA          0              49    86
Birth       GMS-Nepal        NEPAL          1               9   570
Birth       GMS-Nepal        NEPAL          0             561   570
Birth       IRC              INDIA          1             198   337
Birth       IRC              INDIA          0             139   337
Birth       MAL-ED           PERU           1               1     2
Birth       MAL-ED           PERU           0               1     2
Birth       NIH-Crypto       BANGLADESH     1             336   543
Birth       NIH-Crypto       BANGLADESH     0             207   543
Birth       PROVIDE          BANGLADESH     1             433   532
Birth       PROVIDE          BANGLADESH     0              99   532
6 months    CMC-V-BCS-2002   INDIA          1             162   368
6 months    CMC-V-BCS-2002   INDIA          0             206   368
6 months    GMS-Nepal        NEPAL          1               8   505
6 months    GMS-Nepal        NEPAL          0             497   505
6 months    IRC              INDIA          1             229   398
6 months    IRC              INDIA          0             169   398
6 months    MAL-ED           SOUTH AFRICA   1               1     1
6 months    MAL-ED           SOUTH AFRICA   0               0     1
6 months    NIH-Crypto       BANGLADESH     1             329   545
6 months    NIH-Crypto       BANGLADESH     0             216   545
6 months    PROVIDE          BANGLADESH     1             497   603
6 months    PROVIDE          BANGLADESH     0             106   603
24 months   CMC-V-BCS-2002   INDIA          1             163   372
24 months   CMC-V-BCS-2002   INDIA          0             209   372
24 months   GMS-Nepal        NEPAL          1               5   434
24 months   GMS-Nepal        NEPAL          0             429   434
24 months   IRC              INDIA          1             231   400
24 months   IRC              INDIA          0             169   400
24 months   MAL-ED           SOUTH AFRICA   1               1     1
24 months   MAL-ED           SOUTH AFRICA   0               0     1
24 months   NIH-Crypto       BANGLADESH     1             199   410
24 months   NIH-Crypto       BANGLADESH     0             211   410
24 months   PROVIDE          BANGLADESH     1             480   579
24 months   PROVIDE          BANGLADESH     0              99   579


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
![](/tmp/ec08821a-9912-4adc-9f9f-8e8a11d38825/0e230aea-e693-4298-b42b-1221e65da77d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ec08821a-9912-4adc-9f9f-8e8a11d38825/0e230aea-e693-4298-b42b-1221e65da77d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ec08821a-9912-4adc-9f9f-8e8a11d38825/0e230aea-e693-4298-b42b-1221e65da77d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.2587454   -0.6891383    0.1716474
Birth       CMC-V-BCS-2002   INDIA        0                    NA                -0.6255124   -1.0593897   -0.1916350
Birth       GMS-Nepal        NEPAL        1                    NA                -1.5077778   -2.0451921   -0.9703635
Birth       GMS-Nepal        NEPAL        0                    NA                -1.1081283   -1.2024430   -1.0138137
Birth       IRC              INDIA        1                    NA                -0.8917483   -1.1543170   -0.6291796
Birth       IRC              INDIA        0                    NA                -1.1065729   -1.4156041   -0.7975418
Birth       NIH-Crypto       BANGLADESH   1                    NA                -1.2899877   -1.4807074   -1.0992680
Birth       NIH-Crypto       BANGLADESH   0                    NA                -1.2843474   -1.5434893   -1.0252055
Birth       PROVIDE          BANGLADESH   1                    NA                -1.2890529   -1.3735200   -1.2045859
Birth       PROVIDE          BANGLADESH   0                    NA                -1.3032660   -1.5108211   -1.0957108
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.3952566   -0.6305336   -0.1599795
6 months    CMC-V-BCS-2002   INDIA        0                    NA                -0.6145880   -0.8281925   -0.4009834
6 months    GMS-Nepal        NEPAL        1                    NA                -0.8406250   -1.1876486   -0.4936014
6 months    GMS-Nepal        NEPAL        0                    NA                -0.6195607   -0.7114689   -0.5276524
6 months    IRC              INDIA        1                    NA                -0.6693171   -0.8545620   -0.4840721
6 months    IRC              INDIA        0                    NA                -0.5613177   -0.8122465   -0.3103890
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0483019   -0.2053763    0.1087724
6 months    NIH-Crypto       BANGLADESH   0                    NA                -0.0184904   -0.2484466    0.2114658
6 months    PROVIDE          BANGLADESH   1                    NA                -0.1486675   -0.2356534   -0.0616816
6 months    PROVIDE          BANGLADESH   0                    NA                -0.3792379   -0.6479165   -0.1105594
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.3189362   -0.4847473   -0.1531251
24 months   CMC-V-BCS-2002   INDIA        0                    NA                -0.7393294   -0.8662807   -0.6123781
24 months   GMS-Nepal        NEPAL        1                    NA                -0.8380000   -1.3259702   -0.3500298
24 months   GMS-Nepal        NEPAL        0                    NA                -1.1280730   -1.2245191   -1.0316270
24 months   IRC              INDIA        1                    NA                -0.7164780   -0.8526392   -0.5803168
24 months   IRC              INDIA        0                    NA                -0.8094774   -0.9731422   -0.6458126
24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.5937962   -0.8152721   -0.3723203
24 months   NIH-Crypto       BANGLADESH   0                    NA                -0.4580803   -0.6641005   -0.2520602
24 months   PROVIDE          BANGLADESH   1                    NA                -0.8541760   -0.9416527   -0.7666993
24 months   PROVIDE          BANGLADESH   0                    NA                -1.0462852   -1.2920328   -0.8005375


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
Birth       CMC-V-BCS-2002   INDIA        0                    1                 -0.3667669   -0.9813441    0.2478103
Birth       GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL        0                    1                  0.3996494   -0.1459781    0.9452770
Birth       IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA        0                    1                 -0.2148246   -0.6226891    0.1930398
Birth       NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH   0                    1                  0.0056404   -0.3167392    0.3280199
Birth       PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH   0                    1                 -0.0142131   -0.2385930    0.2101669
6 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.2193314   -0.5356831    0.0970204
6 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL        0                    1                  0.2210643   -0.1379239    0.5800525
6 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA        0                    1                  0.1079993   -0.2050745    0.4210731
6 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH   0                    1                  0.0298116   -0.2487634    0.3083865
6 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH   0                    1                 -0.2305704   -0.5116603    0.0505194
24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.4203932   -0.6295765   -0.2112099
24 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL        0                    1                 -0.2900730   -0.7874831    0.2073370
24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA        0                    1                 -0.0929994   -0.3121652    0.1261664
24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH   0                    1                  0.1357159   -0.1671543    0.4385862
24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH   0                    1                 -0.1921092   -0.4518317    0.0676134


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.2060801   -0.5674096    0.1552494
Birth       GMS-Nepal        NEPAL        1                    NA                 0.3933392   -0.1386634    0.9253418
Birth       IRC              INDIA        1                    NA                -0.0943348   -0.2685253    0.0798557
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.1058717   -0.0545748    0.2663182
Birth       PROVIDE          BANGLADESH   1                    NA                -0.0094057   -0.0486083    0.0297968
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.1074201   -0.2905981    0.0757579
6 months    GMS-Nepal        NEPAL        1                    NA                 0.2175623   -0.1324595    0.5675841
6 months    IRC              INDIA        1                    NA                 0.0539485   -0.0747661    0.1826631
6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.1123845   -0.0200614    0.2448304
6 months    PROVIDE          BANGLADESH   1                    NA                -0.0504232   -0.0896045   -0.0112419
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.2382143   -0.3675384   -0.1088902
24 months   GMS-Nepal        NEPAL        1                    NA                -0.2867312   -0.7717148    0.1982524
24 months   IRC              INDIA        1                    NA                -0.0314303   -0.1262137    0.0633530
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0419670   -0.1572579    0.2411918
24 months   PROVIDE          BANGLADESH   1                    NA                -0.0386910   -0.0795346    0.0021525
