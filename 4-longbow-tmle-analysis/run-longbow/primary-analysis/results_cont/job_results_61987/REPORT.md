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
![](/tmp/2f4a36bb-badc-4869-b1e9-87d9f97ab7dd/61b76092-a73f-487d-976d-81b3b982d8a4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2f4a36bb-badc-4869-b1e9-87d9f97ab7dd/61b76092-a73f-487d-976d-81b3b982d8a4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2f4a36bb-badc-4869-b1e9-87d9f97ab7dd/61b76092-a73f-487d-976d-81b3b982d8a4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.2775214   -0.7124030    0.1573602
Birth       CMC-V-BCS-2002   INDIA        0                    NA                -0.6042158   -1.0342953   -0.1741363
Birth       GMS-Nepal        NEPAL        1                    NA                -1.5077778   -2.0451921   -0.9703635
Birth       GMS-Nepal        NEPAL        0                    NA                -1.1081283   -1.2024430   -1.0138137
Birth       IRC              INDIA        1                    NA                -0.8193608   -1.0951683   -0.5435534
Birth       IRC              INDIA        0                    NA                -1.1198740   -1.4228412   -0.8169068
Birth       NIH-Crypto       BANGLADESH   1                    NA                -1.3430913   -1.5227568   -1.1634258
Birth       NIH-Crypto       BANGLADESH   0                    NA                -1.3633431   -1.6552779   -1.0714083
Birth       PROVIDE          BANGLADESH   1                    NA                -1.2870088   -1.3714517   -1.2025660
Birth       PROVIDE          BANGLADESH   0                    NA                -1.3341904   -1.5370317   -1.1313490
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.4017855   -0.6377801   -0.1657909
6 months    CMC-V-BCS-2002   INDIA        0                    NA                -0.5950130   -0.8041194   -0.3859066
6 months    GMS-Nepal        NEPAL        1                    NA                -0.8406250   -1.1876486   -0.4936014
6 months    GMS-Nepal        NEPAL        0                    NA                -0.6195607   -0.7114689   -0.5276524
6 months    IRC              INDIA        1                    NA                -0.6853079   -0.8672886   -0.5033272
6 months    IRC              INDIA        0                    NA                -0.5719487   -0.8202730   -0.3236244
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0273325   -0.1698305    0.1151655
6 months    NIH-Crypto       BANGLADESH   0                    NA                -0.0140911   -0.2634796    0.2352973
6 months    PROVIDE          BANGLADESH   1                    NA                -0.1377415   -0.2264848   -0.0489983
6 months    PROVIDE          BANGLADESH   0                    NA                -0.4450230   -0.7267242   -0.1633217
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.3119807   -0.4879722   -0.1359891
24 months   CMC-V-BCS-2002   INDIA        0                    NA                -0.7106553   -0.8390424   -0.5822682
24 months   GMS-Nepal        NEPAL        1                    NA                -0.8380000   -1.3259702   -0.3500298
24 months   GMS-Nepal        NEPAL        0                    NA                -1.1280730   -1.2245191   -1.0316270
24 months   IRC              INDIA        1                    NA                -0.6950599   -0.8262792   -0.5638407
24 months   IRC              INDIA        0                    NA                -0.8303743   -0.9815080   -0.6792407
24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.5529660   -0.7628225   -0.3431095
24 months   NIH-Crypto       BANGLADESH   0                    NA                -0.4882441   -0.6878498   -0.2886384
24 months   PROVIDE          BANGLADESH   1                    NA                -0.8493716   -0.9367453   -0.7619978
24 months   PROVIDE          BANGLADESH   0                    NA                -1.0678449   -1.2974106   -0.8382792


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
Birth       CMC-V-BCS-2002   INDIA        0                    1                 -0.3266944   -0.9409041    0.2875153
Birth       GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL        0                    1                  0.3996494   -0.1459781    0.9452770
Birth       IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA        0                    1                 -0.3005131   -0.7127622    0.1117359
Birth       NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH   0                    1                 -0.0202518   -0.3636816    0.3231779
Birth       PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH   0                    1                 -0.0471815   -0.2670255    0.1726625
6 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.1932275   -0.5083515    0.1218966
6 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL        0                    1                  0.2210643   -0.1379239    0.5800525
6 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA        0                    1                  0.1133592   -0.1950510    0.4217695
6 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH   0                    1                  0.0132414   -0.2739788    0.3004615
6 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH   0                    1                 -0.3072814   -0.6027194   -0.0118434
24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.3986746   -0.6163196   -0.1810297
24 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL        0                    1                 -0.2900730   -0.7874831    0.2073370
24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA        0                    1                 -0.1353144   -0.3360500    0.0654212
24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH   0                    1                  0.0647219   -0.2242135    0.3536574
24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH   0                    1                 -0.2184733   -0.4635733    0.0266267


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.1873042   -0.5545852    0.1799768
Birth       GMS-Nepal        NEPAL        1                    NA                 0.3933392   -0.1386634    0.9253418
Birth       IRC              INDIA        1                    NA                -0.1667222   -0.3576201    0.0241756
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.1589753    0.0087136    0.3092369
Birth       PROVIDE          BANGLADESH   1                    NA                -0.0114498   -0.0501966    0.0272970
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.1008911   -0.2849643    0.0831821
6 months    GMS-Nepal        NEPAL        1                    NA                 0.2175623   -0.1324595    0.5675841
6 months    IRC              INDIA        1                    NA                 0.0699394   -0.0578999    0.1977788
6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0914151   -0.0248683    0.2076984
6 months    PROVIDE          BANGLADESH   1                    NA                -0.0613491   -0.1048379   -0.0178603
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.2451699   -0.3832132   -0.1071266
24 months   GMS-Nepal        NEPAL        1                    NA                -0.2867312   -0.7717148    0.1982524
24 months   IRC              INDIA        1                    NA                -0.0528484   -0.1398667    0.0341699
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0011367   -0.1856679    0.1879414
24 months   PROVIDE          BANGLADESH   1                    NA                -0.0434954   -0.0843737   -0.0026171
