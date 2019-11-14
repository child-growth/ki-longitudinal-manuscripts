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

agecat      studyid                    country        cleanck    n_cell     n
----------  -------------------------  -------------  --------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1               1     2
Birth       ki0047075b-MAL-ED          PERU           0               1     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              39    92
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              53    92
Birth       ki1000108-IRC              INDIA          1             218   378
Birth       ki1000108-IRC              INDIA          0             160   378
Birth       ki1017093b-PROVIDE         BANGLADESH     1             438   539
Birth       ki1017093b-PROVIDE         BANGLADESH     0             101   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1             345   561
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0             216   561
Birth       ki1113344-GMS-Nepal        NEPAL          1               9   621
Birth       ki1113344-GMS-Nepal        NEPAL          0             612   621
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             163   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   369
6 months    ki1000108-IRC              INDIA          1             230   398
6 months    ki1000108-IRC              INDIA          0             168   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             498   604
6 months    ki1017093b-PROVIDE         BANGLADESH     0             106   604
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   505
6 months    ki1113344-GMS-Nepal        NEPAL          0             497   505
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   371
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             208   371
24 months   ki1000108-IRC              INDIA          1             231   400
24 months   ki1000108-IRC              INDIA          0             169   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1             479   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0              99   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               5   435
24 months   ki1113344-GMS-Nepal        NEPAL          0             430   435


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/8b79bc40-6c69-4cb3-b141-a760af70469c/57cc30dc-3bd8-494e-9254-6d669ef08ba3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8b79bc40-6c69-4cb3-b141-a760af70469c/57cc30dc-3bd8-494e-9254-6d669ef08ba3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8b79bc40-6c69-4cb3-b141-a760af70469c/57cc30dc-3bd8-494e-9254-6d669ef08ba3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.7902220   -1.1276295   -0.4528145
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -1.0745249   -1.3945676   -0.7544822
Birth       ki1000108-IRC              INDIA        1                    NA                -0.3711878   -0.5757322   -0.1666434
Birth       ki1000108-IRC              INDIA        0                    NA                -0.1878825   -0.4684082    0.0926432
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.8421602   -0.9246020   -0.7597185
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.0073990   -1.1889558   -0.8258422
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.8812063   -0.9951862   -0.7672263
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.8621009   -1.0212473   -0.7029545
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.9077778   -1.0681024   -0.7474531
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.1026961   -1.1887883   -1.0166039
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -1.1190961   -1.3334633   -0.9047290
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -1.6060130   -1.7867379   -1.4252881
6 months    ki1000108-IRC              INDIA        1                    NA                -1.0887496   -1.2724537   -0.9050455
6 months    ki1000108-IRC              INDIA        0                    NA                -1.4608690   -1.6331909   -1.2885472
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.0221035   -1.1018109   -0.9423961
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.4361816   -1.6273615   -1.2450016
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.1636654   -1.2818069   -1.0455238
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.1307348   -1.2651977   -0.9962720
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.1500000   -1.3864333   -0.9135667
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.3684775   -1.4530701   -1.2838850
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -2.2384178   -2.3864948   -2.0903408
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -2.7969963   -2.9268896   -2.6671031
24 months   ki1000108-IRC              INDIA        1                    NA                -1.6731955   -1.8052132   -1.5411778
24 months   ki1000108-IRC              INDIA        0                    NA                -1.9878910   -2.1195039   -1.8562780
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.5002894   -1.5877995   -1.4127794
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -2.1228559   -2.3359453   -1.9097665
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.3469432   -1.4893281   -1.2045583
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.3624091   -1.4906292   -1.2341890
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.4140000   -1.5461204   -1.2818796
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.9026977   -1.9936549   -1.8117404


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.3176455   -0.4788394   -0.1564516
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.8996078   -0.9825064   -0.8167093
Birth       ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.0998712   -1.1839267   -1.0158156
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA        NA                   NA                -1.2373869   -1.3694835   -1.1052903
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.1482385   -1.2287866   -1.0676904
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.3650165   -1.4477401   -1.2822929
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA        NA                   NA                -1.8039875   -1.8980579   -1.7099171
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.3408537   -1.4302211   -1.2514862
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.8970805   -1.9859605   -1.8082004


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2843029   -0.7541414    0.1855355
Birth       ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        0                    1                  0.1833053   -0.1657339    0.5323445
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.1652388   -0.3661245    0.0356470
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0191054   -0.1780336    0.2162443
Birth       ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.1949183   -0.3768960   -0.0129406
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.4869169   -0.7679487   -0.2058851
6 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        0                    1                 -0.3721194   -0.6233202   -0.1209187
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.4140781   -0.6224206   -0.2057355
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0329306   -0.1458406    0.2117017
6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.2184775   -0.4695882    0.0326332
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5585785   -0.7554859   -0.3616711
24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        0                    1                 -0.3146955   -0.5014270   -0.1279639
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.6225665   -0.8530696   -0.3920633
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0154659   -0.2074456    0.1765139
24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.4886977   -0.6491003   -0.3282950


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1709737   -0.4694430    0.1274957
Birth       ki1000108-IRC              INDIA        1                    NA                 0.0535423   -0.0916077    0.1986923
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0429418   -0.0828551   -0.0030286
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0184016   -0.1005296    0.0637264
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1920934   -0.3695311   -0.0146557
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3043546   -0.4685988   -0.1401105
6 months    ki1000108-IRC              INDIA        1                    NA                -0.1486373   -0.2577573   -0.0395174
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0695880   -0.1081318   -0.0310442
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0154268   -0.0653700    0.0962237
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2150165   -0.4598610    0.0298280
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3204501   -0.4395132   -0.2013870
24 months   ki1000108-IRC              INDIA        1                    NA                -0.1307920   -0.2133076   -0.0482764
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1021327   -0.1456693   -0.0585960
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0060895   -0.1004385    0.1126176
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.4830805   -0.6395498   -0.3266111
