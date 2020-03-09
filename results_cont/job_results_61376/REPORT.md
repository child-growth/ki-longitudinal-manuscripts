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
![](/tmp/738a43c8-801a-4d89-9255-55e5160e2f1f/458d6b4b-a333-490d-a635-b59db1d8c831/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/738a43c8-801a-4d89-9255-55e5160e2f1f/458d6b4b-a333-490d-a635-b59db1d8c831/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/738a43c8-801a-4d89-9255-55e5160e2f1f/458d6b4b-a333-490d-a635-b59db1d8c831/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.7385576   -1.0424525   -0.4346627
Birth       CMC-V-BCS-2002   INDIA        0                    NA                -1.1137488   -1.4228425   -0.8046551
Birth       GMS-Nepal        NEPAL        1                    NA                -0.9077778   -1.0681024   -0.7474531
Birth       GMS-Nepal        NEPAL        0                    NA                -1.1026961   -1.1887883   -1.0166039
Birth       IRC              INDIA        1                    NA                -0.3536643   -0.5511227   -0.1562059
Birth       IRC              INDIA        0                    NA                -0.2486397   -0.5395943    0.0423150
Birth       NIH-Crypto       BANGLADESH   1                    NA                -0.9514982   -1.1196371   -0.7833593
Birth       NIH-Crypto       BANGLADESH   0                    NA                -1.0356510   -1.2678500   -0.8034519
Birth       PROVIDE          BANGLADESH   1                    NA                -0.8599068   -0.9422781   -0.7775354
Birth       PROVIDE          BANGLADESH   0                    NA                -1.0268354   -1.2230919   -0.8305789
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -1.1515573   -1.3683766   -0.9347379
6 months    CMC-V-BCS-2002   INDIA        0                    NA                -1.6408352   -1.8118966   -1.4697738
6 months    GMS-Nepal        NEPAL        1                    NA                -1.1500000   -1.3864333   -0.9135667
6 months    GMS-Nepal        NEPAL        0                    NA                -1.3684775   -1.4530701   -1.2838850
6 months    IRC              INDIA        1                    NA                -1.1175005   -1.2960906   -0.9389103
6 months    IRC              INDIA        0                    NA                -1.3475718   -1.5441590   -1.1509846
6 months    NIH-Crypto       BANGLADESH   1                    NA                -1.1940169   -1.3418200   -1.0462139
6 months    NIH-Crypto       BANGLADESH   0                    NA                -1.2827940   -1.5214054   -1.0441826
6 months    PROVIDE          BANGLADESH   1                    NA                -1.0389816   -1.1205932   -0.9573700
6 months    PROVIDE          BANGLADESH   0                    NA                -1.3225404   -1.5166995   -1.1283814
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -2.2452749   -2.3929894   -2.0975603
24 months   CMC-V-BCS-2002   INDIA        0                    NA                -2.7930938   -2.9208376   -2.6653500
24 months   GMS-Nepal        NEPAL        1                    NA                -1.4140000   -1.5461204   -1.2818796
24 months   GMS-Nepal        NEPAL        0                    NA                -1.9026977   -1.9936549   -1.8117404
24 months   IRC              INDIA        1                    NA                -1.7006357   -1.8386347   -1.5626368
24 months   IRC              INDIA        0                    NA                -1.9491718   -2.0889013   -1.8094422
24 months   NIH-Crypto       BANGLADESH   1                    NA                -1.3451767   -1.5352850   -1.1550684
24 months   NIH-Crypto       BANGLADESH   0                    NA                -1.3356104   -1.5048732   -1.1663477
24 months   PROVIDE          BANGLADESH   1                    NA                -1.5170619   -1.6045589   -1.4295649
24 months   PROVIDE          BANGLADESH   0                    NA                -2.0165834   -2.2463760   -1.7867907


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
Birth       CMC-V-BCS-2002   INDIA        0                    1                 -0.3751912   -0.8021012    0.0517188
Birth       GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL        0                    1                 -0.1949183   -0.3768960   -0.0129406
Birth       IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA        0                    1                  0.1050247   -0.2472599    0.4573093
Birth       NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH   0                    1                 -0.0841528   -0.3718449    0.2035393
Birth       PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH   0                    1                 -0.1669286   -0.3813275    0.0474702
6 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.4892780   -0.7662989   -0.2122571
6 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL        0                    1                 -0.2184775   -0.4695882    0.0326332
6 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA        0                    1                 -0.2300714   -0.4969196    0.0367768
6 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH   0                    1                 -0.0887770   -0.3696194    0.1920653
6 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH   0                    1                 -0.2835588   -0.4950268   -0.0720909
24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.5478189   -0.7440207   -0.3516172
24 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL        0                    1                 -0.4886977   -0.6491003   -0.3282950
24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA        0                    1                 -0.2485360   -0.4459782   -0.0510938
24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH   0                    1                  0.0095662   -0.2451057    0.2642381
24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH   0                    1                 -0.4995215   -0.7443770   -0.2546660


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.2226381   -0.4796451    0.0343690
Birth       GMS-Nepal        NEPAL        1                    NA                -0.1920934   -0.3695311   -0.0146557
Birth       IRC              INDIA        1                    NA                 0.0360188   -0.1073793    0.1794170
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0518904   -0.0943263    0.1981071
Birth       PROVIDE          BANGLADESH   1                    NA                -0.0251953   -0.0641030    0.0137125
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.2718935   -0.4363907   -0.1073964
6 months    GMS-Nepal        NEPAL        1                    NA                -0.2150165   -0.4598610    0.0298280
6 months    IRC              INDIA        1                    NA                -0.1198865   -0.2305805   -0.0091925
6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0457784   -0.0761252    0.1676820
6 months    PROVIDE          BANGLADESH   1                    NA                -0.0527099   -0.0920806   -0.0133391
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.3135931   -0.4344258   -0.1927603
24 months   GMS-Nepal        NEPAL        1                    NA                -0.4830805   -0.6395498   -0.3266111
24 months   IRC              INDIA        1                    NA                -0.1033518   -0.1939840   -0.0127196
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0043230   -0.1596244    0.1682704
24 months   PROVIDE          BANGLADESH   1                    NA                -0.0853603   -0.1288282   -0.0418923
