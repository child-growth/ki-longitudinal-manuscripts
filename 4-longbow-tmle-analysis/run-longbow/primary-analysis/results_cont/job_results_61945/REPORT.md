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
Birth       CMC-V-BCS-2002   INDIA          1              39    92  haz              
Birth       CMC-V-BCS-2002   INDIA          0              53    92  haz              
Birth       GMS-Nepal        NEPAL          1               9   621  haz              
Birth       GMS-Nepal        NEPAL          0             612   621  haz              
Birth       IRC              INDIA          1             218   378  haz              
Birth       IRC              INDIA          0             160   378  haz              
Birth       MAL-ED           PERU           1               1     2  haz              
Birth       MAL-ED           PERU           0               1     2  haz              
Birth       NIH-Crypto       BANGLADESH     1             345   561  haz              
Birth       NIH-Crypto       BANGLADESH     0             216   561  haz              
Birth       PROVIDE          BANGLADESH     1             438   539  haz              
Birth       PROVIDE          BANGLADESH     0             101   539  haz              
6 months    CMC-V-BCS-2002   INDIA          1             163   369  haz              
6 months    CMC-V-BCS-2002   INDIA          0             206   369  haz              
6 months    GMS-Nepal        NEPAL          1               8   505  haz              
6 months    GMS-Nepal        NEPAL          0             497   505  haz              
6 months    IRC              INDIA          1             230   398  haz              
6 months    IRC              INDIA          0             168   398  haz              
6 months    MAL-ED           SOUTH AFRICA   1               1     1  haz              
6 months    MAL-ED           SOUTH AFRICA   0               0     1  haz              
6 months    NIH-Crypto       BANGLADESH     1             329   545  haz              
6 months    NIH-Crypto       BANGLADESH     0             216   545  haz              
6 months    PROVIDE          BANGLADESH     1             498   604  haz              
6 months    PROVIDE          BANGLADESH     0             106   604  haz              
24 months   CMC-V-BCS-2002   INDIA          1             163   371  haz              
24 months   CMC-V-BCS-2002   INDIA          0             208   371  haz              
24 months   GMS-Nepal        NEPAL          1               5   435  haz              
24 months   GMS-Nepal        NEPAL          0             430   435  haz              
24 months   IRC              INDIA          1             231   400  haz              
24 months   IRC              INDIA          0             169   400  haz              
24 months   MAL-ED           SOUTH AFRICA   1               1     1  haz              
24 months   MAL-ED           SOUTH AFRICA   0               0     1  haz              
24 months   NIH-Crypto       BANGLADESH     1             199   410  haz              
24 months   NIH-Crypto       BANGLADESH     0             211   410  haz              
24 months   PROVIDE          BANGLADESH     1             479   578  haz              
24 months   PROVIDE          BANGLADESH     0              99   578  haz              


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
![](/tmp/b7700393-8890-49b1-b3d2-8dab36fb5410/b68115db-5e23-4581-a32e-47b222cd8c26/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b7700393-8890-49b1-b3d2-8dab36fb5410/b68115db-5e23-4581-a32e-47b222cd8c26/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b7700393-8890-49b1-b3d2-8dab36fb5410/b68115db-5e23-4581-a32e-47b222cd8c26/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.7455929   -1.0623953   -0.4287906
Birth       CMC-V-BCS-2002   INDIA        0                    NA                -1.1058996   -1.4115504   -0.8002487
Birth       GMS-Nepal        NEPAL        1                    NA                -0.9077778   -1.0681024   -0.7474531
Birth       GMS-Nepal        NEPAL        0                    NA                -1.1026961   -1.1887883   -1.0166039
Birth       IRC              INDIA        1                    NA                -0.3814042   -0.5832051   -0.1796033
Birth       IRC              INDIA        0                    NA                -0.2268435   -0.5439167    0.0902297
Birth       NIH-Crypto       BANGLADESH   1                    NA                -0.9257997   -1.1032810   -0.7483185
Birth       NIH-Crypto       BANGLADESH   0                    NA                -0.9806129   -1.2038011   -0.7574246
Birth       PROVIDE          BANGLADESH   1                    NA                -0.8534344   -0.9365075   -0.7703614
Birth       PROVIDE          BANGLADESH   0                    NA                -1.0452217   -1.2374260   -0.8530174
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -1.1331730   -1.3372368   -0.9291091
6 months    CMC-V-BCS-2002   INDIA        0                    NA                -1.5998114   -1.7800983   -1.4195245
6 months    GMS-Nepal        NEPAL        1                    NA                -1.1500000   -1.3864333   -0.9135667
6 months    GMS-Nepal        NEPAL        0                    NA                -1.3684775   -1.4530701   -1.2838850
6 months    IRC              INDIA        1                    NA                -1.1037071   -1.2886523   -0.9187619
6 months    IRC              INDIA        0                    NA                -1.4172046   -1.6026659   -1.2317432
6 months    NIH-Crypto       BANGLADESH   1                    NA                -1.2418693   -1.4015522   -1.0821865
6 months    NIH-Crypto       BANGLADESH   0                    NA                -1.2151650   -1.4500271   -0.9803030
6 months    PROVIDE          BANGLADESH   1                    NA                -1.0265011   -1.1083944   -0.9446079
6 months    PROVIDE          BANGLADESH   0                    NA                -1.4003401   -1.5943669   -1.2063134
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -2.2111659   -2.3538239   -2.0685079
24 months   CMC-V-BCS-2002   INDIA        0                    NA                -2.7870587   -2.9146868   -2.6594306
24 months   GMS-Nepal        NEPAL        1                    NA                -1.4140000   -1.5461204   -1.2818796
24 months   GMS-Nepal        NEPAL        0                    NA                -1.9026977   -1.9936549   -1.8117404
24 months   IRC              INDIA        1                    NA                -1.7040653   -1.8418409   -1.5662898
24 months   IRC              INDIA        0                    NA                -1.9508458   -2.0892537   -1.8124379
24 months   NIH-Crypto       BANGLADESH   1                    NA                -1.3389113   -1.5136287   -1.1641939
24 months   NIH-Crypto       BANGLADESH   0                    NA                -1.3502278   -1.5128823   -1.1875733
24 months   PROVIDE          BANGLADESH   1                    NA                -1.5060316   -1.5937276   -1.4183355
24 months   PROVIDE          BANGLADESH   0                    NA                -2.0673735   -2.2835881   -1.8511588


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       GMS-Nepal        NEPAL        NA                   NA                -1.0998712   -1.1839267   -1.0158156
Birth       IRC              INDIA        NA                   NA                -0.3176455   -0.4788394   -0.1564516
Birth       NIH-Crypto       BANGLADESH   NA                   NA                -0.8996078   -0.9825064   -0.8167093
Birth       PROVIDE          BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CMC-V-BCS-2002   INDIA        NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    GMS-Nepal        NEPAL        NA                   NA                -1.3650165   -1.4477401   -1.2822929
6 months    IRC              INDIA        NA                   NA                -1.2373869   -1.3694835   -1.1052903
6 months    NIH-Crypto       BANGLADESH   NA                   NA                -1.1482385   -1.2287866   -1.0676904
6 months    PROVIDE          BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
24 months   CMC-V-BCS-2002   INDIA        NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   GMS-Nepal        NEPAL        NA                   NA                -1.8970805   -1.9859605   -1.8082004
24 months   IRC              INDIA        NA                   NA                -1.8039875   -1.8980579   -1.7099171
24 months   NIH-Crypto       BANGLADESH   NA                   NA                -1.3408537   -1.4302211   -1.2514862
24 months   PROVIDE          BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA        0                    1                 -0.3603066   -0.8045851    0.0839718
Birth       GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL        0                    1                 -0.1949183   -0.3768960   -0.0129406
Birth       IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA        0                    1                  0.1545607   -0.2247398    0.5338612
Birth       NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH   0                    1                 -0.0548131   -0.3397777    0.2301514
Birth       PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH   0                    1                 -0.1917873   -0.4031527    0.0195781
6 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.4666384   -0.7390838   -0.1941930
6 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL        0                    1                 -0.2184775   -0.4695882    0.0326332
6 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA        0                    1                 -0.3134974   -0.5756565   -0.0513384
6 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH   0                    1                  0.0267043   -0.2578347    0.3112433
6 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH   0                    1                 -0.3738390   -0.5847050   -0.1629730
24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.5758928   -0.7678918   -0.3838937
24 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL        0                    1                 -0.4886977   -0.6491003   -0.3282950
24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA        0                    1                 -0.2467805   -0.4426205   -0.0509404
24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH   0                    1                 -0.0113165   -0.2500510    0.2274181
24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH   0                    1                 -0.5613419   -0.7944327   -0.3282511


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.2156027   -0.4842254    0.0530200
Birth       GMS-Nepal        NEPAL        1                    NA                -0.1920934   -0.3695311   -0.0146557
Birth       IRC              INDIA        1                    NA                 0.0637587   -0.0840528    0.2115702
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0261919   -0.1279478    0.1803316
Birth       PROVIDE          BANGLADESH   1                    NA                -0.0316676   -0.0714617    0.0081264
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.2902778   -0.4471298   -0.1334258
6 months    GMS-Nepal        NEPAL        1                    NA                -0.2150165   -0.4598610    0.0298280
6 months    IRC              INDIA        1                    NA                -0.1336798   -0.2480568   -0.0193029
6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0936308   -0.0407795    0.2280411
6 months    PROVIDE          BANGLADESH   1                    NA                -0.0651904   -0.1050785   -0.0253022
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.3477020   -0.4651077   -0.2302963
24 months   GMS-Nepal        NEPAL        1                    NA                -0.4830805   -0.6395498   -0.3266111
24 months   IRC              INDIA        1                    NA                -0.0999222   -0.1890459   -0.0107984
24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0019424   -0.1535714    0.1496867
24 months   PROVIDE          BANGLADESH   1                    NA                -0.0963906   -0.1404396   -0.0523416
