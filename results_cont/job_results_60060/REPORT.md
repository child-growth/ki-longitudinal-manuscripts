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

agecat      studyid          country        cleanck    n_cell     n
----------  ---------------  -------------  --------  -------  ----
Birth       CMC-V-BCS-2002   INDIA          1              39    92
Birth       CMC-V-BCS-2002   INDIA          0              53    92
Birth       GMS-Nepal        NEPAL          1               9   621
Birth       GMS-Nepal        NEPAL          0             612   621
Birth       IRC              INDIA          1             218   378
Birth       IRC              INDIA          0             160   378
Birth       MAL-ED           PERU           1               1     2
Birth       MAL-ED           PERU           0               1     2
Birth       NIH-Crypto       BANGLADESH     1             345   561
Birth       NIH-Crypto       BANGLADESH     0             216   561
Birth       PROVIDE          BANGLADESH     1             438   539
Birth       PROVIDE          BANGLADESH     0             101   539
6 months    CMC-V-BCS-2002   INDIA          1             163   369
6 months    CMC-V-BCS-2002   INDIA          0             206   369
6 months    GMS-Nepal        NEPAL          1               8   505
6 months    GMS-Nepal        NEPAL          0             497   505
6 months    IRC              INDIA          1             230   398
6 months    IRC              INDIA          0             168   398
6 months    MAL-ED           SOUTH AFRICA   1               1     1
6 months    MAL-ED           SOUTH AFRICA   0               0     1
6 months    NIH-Crypto       BANGLADESH     1             329   545
6 months    NIH-Crypto       BANGLADESH     0             216   545
6 months    PROVIDE          BANGLADESH     1             498   604
6 months    PROVIDE          BANGLADESH     0             106   604
24 months   CMC-V-BCS-2002   INDIA          1             163   371
24 months   CMC-V-BCS-2002   INDIA          0             208   371
24 months   GMS-Nepal        NEPAL          1               5   435
24 months   GMS-Nepal        NEPAL          0             430   435
24 months   IRC              INDIA          1             231   400
24 months   IRC              INDIA          0             169   400
24 months   MAL-ED           SOUTH AFRICA   1               1     1
24 months   MAL-ED           SOUTH AFRICA   0               0     1
24 months   NIH-Crypto       BANGLADESH     1             199   410
24 months   NIH-Crypto       BANGLADESH     0             211   410
24 months   PROVIDE          BANGLADESH     1             479   578
24 months   PROVIDE          BANGLADESH     0              99   578


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
![](/tmp/9d6aa794-7324-4b21-b2a1-fa99a0899d84/d76444bb-55f2-486c-891b-2bbb155e5bb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9d6aa794-7324-4b21-b2a1-fa99a0899d84/d76444bb-55f2-486c-891b-2bbb155e5bb0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9d6aa794-7324-4b21-b2a1-fa99a0899d84/d76444bb-55f2-486c-891b-2bbb155e5bb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.7405217   -1.0382550   -0.4427883
Birth       CMC-V-BCS-2002   INDIA        0                    NA                -1.1084062   -1.4237751   -0.7930372
Birth       GMS-Nepal        NEPAL        1                    NA                -0.9077778   -1.0681024   -0.7474531
Birth       GMS-Nepal        NEPAL        0                    NA                -1.1026961   -1.1887883   -1.0166039
Birth       IRC              INDIA        1                    NA                -0.3457990   -0.5572090   -0.1343890
Birth       IRC              INDIA        0                    NA                -0.2543186   -0.5614664    0.0528292
Birth       NIH-Crypto       BANGLADESH   1                    NA                -0.9134515   -1.0834683   -0.7434347
Birth       NIH-Crypto       BANGLADESH   0                    NA                -1.0322103   -1.2519584   -0.8124623
Birth       PROVIDE          BANGLADESH   1                    NA                -0.8490151   -0.9314225   -0.7666076
Birth       PROVIDE          BANGLADESH   0                    NA                -1.0773802   -1.2795829   -0.8751776
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -1.1022006   -1.3068620   -0.8975392
6 months    CMC-V-BCS-2002   INDIA        0                    NA                -1.6168837   -1.7989925   -1.4347749
6 months    GMS-Nepal        NEPAL        1                    NA                -1.1500000   -1.3864333   -0.9135667
6 months    GMS-Nepal        NEPAL        0                    NA                -1.3684775   -1.4530701   -1.2838850
6 months    IRC              INDIA        1                    NA                -1.1233383   -1.3094362   -0.9372405
6 months    IRC              INDIA        0                    NA                -1.3956584   -1.5892900   -1.2020267
6 months    NIH-Crypto       BANGLADESH   1                    NA                -1.1855637   -1.3244793   -1.0466481
6 months    NIH-Crypto       BANGLADESH   0                    NA                -1.2237167   -1.4595529   -0.9878805
6 months    PROVIDE          BANGLADESH   1                    NA                -1.0350122   -1.1171509   -0.9528736
6 months    PROVIDE          BANGLADESH   0                    NA                -1.3555494   -1.5542960   -1.1568028
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -2.2395580   -2.3858252   -2.0932909
24 months   CMC-V-BCS-2002   INDIA        0                    NA                -2.7874731   -2.9165870   -2.6583592
24 months   GMS-Nepal        NEPAL        1                    NA                -1.4140000   -1.5461204   -1.2818796
24 months   GMS-Nepal        NEPAL        0                    NA                -1.9026977   -1.9936549   -1.8117404
24 months   IRC              INDIA        1                    NA                -1.6947362   -1.8253476   -1.5641248
24 months   IRC              INDIA        0                    NA                -1.9766448   -2.1157644   -1.8375252
24 months   NIH-Crypto       BANGLADESH   1                    NA                -1.4103131   -1.5995961   -1.2210300
24 months   NIH-Crypto       BANGLADESH   0                    NA                -1.3574163   -1.5206553   -1.1941774
24 months   PROVIDE          BANGLADESH   1                    NA                -1.5055974   -1.5931755   -1.4180192
24 months   PROVIDE          BANGLADESH   0                    NA                -2.0742346   -2.2976180   -1.8508511


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
Birth       CMC-V-BCS-2002   INDIA        0                    1                 -0.3678845   -0.7981425    0.0623735
Birth       GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL        0                    1                 -0.1949183   -0.3768960   -0.0129406
Birth       IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA        0                    1                  0.0914804   -0.2843742    0.4673350
Birth       NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH   0                    1                 -0.1187589   -0.3965110    0.1589933
Birth       PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH   0                    1                 -0.2283651   -0.4480605   -0.0086698
6 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.5146831   -0.7897281   -0.2396381
6 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL        0                    1                 -0.2184775   -0.4695882    0.0326332
6 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA        0                    1                 -0.2723200   -0.5407206   -0.0039195
6 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH   0                    1                 -0.0381530   -0.3120614    0.2357554
6 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH   0                    1                 -0.3205372   -0.5356284   -0.1054460
24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.5479150   -0.7432660   -0.3525640
24 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL        0                    1                 -0.4886977   -0.6491003   -0.3282950
24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA        0                    1                 -0.2819086   -0.4736882   -0.0901290
24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH   0                    1                  0.0528967   -0.1972462    0.3030396
24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH   0                    1                 -0.5686372   -0.8082464   -0.3290280


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.2206740   -0.4743687    0.0330208
Birth       GMS-Nepal        NEPAL        1                    NA                -0.1920934   -0.3695311   -0.0146557
Birth       IRC              INDIA        1                    NA                 0.0281535   -0.1278527    0.1841597
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0138436   -0.1335350    0.1612223
Birth       PROVIDE          BANGLADESH   1                    NA                -0.0360869   -0.0752889    0.0031150
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.3212502   -0.4792972   -0.1632031
6 months    GMS-Nepal        NEPAL        1                    NA                -0.2150165   -0.4598610    0.0298280
6 months    IRC              INDIA        1                    NA                -0.1140486   -0.2293622    0.0012650
6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0373252   -0.0771043    0.1517547
6 months    PROVIDE          BANGLADESH   1                    NA                -0.0566793   -0.0960521   -0.0173065
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.3193099   -0.4370544   -0.2015654
24 months   GMS-Nepal        NEPAL        1                    NA                -0.4830805   -0.6395498   -0.3266111
24 months   IRC              INDIA        1                    NA                -0.1092513   -0.1925654   -0.0259372
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0694594   -0.0967113    0.2356301
24 months   PROVIDE          BANGLADESH   1                    NA                -0.0968248   -0.1404449   -0.0532046
