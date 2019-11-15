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
![](/tmp/b6a18010-3618-4609-99b4-6659cdb9c5bf/f74bbd4a-e00d-4b18-836a-f401b0d781b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b6a18010-3618-4609-99b4-6659cdb9c5bf/f74bbd4a-e00d-4b18-836a-f401b0d781b8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b6a18010-3618-4609-99b4-6659cdb9c5bf/f74bbd4a-e00d-4b18-836a-f401b0d781b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.8066793   -1.1240190   -0.4893397
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -1.0358949   -1.3589264   -0.7128634
Birth       ki1000108-IRC              INDIA        1                    NA                -0.3787520   -0.5776676   -0.1798364
Birth       ki1000108-IRC              INDIA        0                    NA                -0.2367168   -0.5191645    0.0457310
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.8509691   -0.9329678   -0.7689703
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.0546272   -1.2451640   -0.8640904
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.8836931   -0.9966376   -0.7707486
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.8390248   -0.9991266   -0.6789230
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.9077778   -1.0681024   -0.7474531
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.1026961   -1.1887883   -1.0166039
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -1.0710196   -1.2737348   -0.8683044
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -1.6206377   -1.7982211   -1.4430544
6 months    ki1000108-IRC              INDIA        1                    NA                -1.0864542   -1.2670049   -0.9059034
6 months    ki1000108-IRC              INDIA        0                    NA                -1.4631582   -1.6434335   -1.2828829
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.0230774   -1.1028211   -0.9433336
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.4245029   -1.6146270   -1.2343789
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.1565643   -1.2677319   -1.0453966
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.1239092   -1.2589492   -0.9888691
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.1500000   -1.3864333   -0.9135667
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.3684775   -1.4530701   -1.2838850
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -2.2370966   -2.3906400   -2.0835533
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -2.7944807   -2.9237561   -2.6652052
24 months   ki1000108-IRC              INDIA        1                    NA                -1.6732321   -1.8062436   -1.5402205
24 months   ki1000108-IRC              INDIA        0                    NA                -1.9820585   -2.1153023   -1.8488148
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.4945980   -1.5820542   -1.4071417
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -2.1042687   -2.3165559   -1.8919815
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.3514957   -1.4904282   -1.2125633
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.3521737   -1.4813423   -1.2230052
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2292156   -0.6827643    0.2243332
Birth       ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        0                    1                  0.1420352   -0.2031265    0.4871968
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.2036581   -0.4125456    0.0052293
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0446683   -0.1515874    0.2409239
Birth       ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.1949183   -0.3768960   -0.0129406
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5496181   -0.8197678   -0.2794685
6 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        0                    1                 -0.3767041   -0.6320674   -0.1213408
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.4014255   -0.6083378   -0.1945133
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0326551   -0.1420622    0.2073724
6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.2184775   -0.4695882    0.0326332
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5573840   -0.7587324   -0.3560357
24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        0                    1                 -0.3088264   -0.4974831   -0.1201697
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.6096707   -0.8393794   -0.3799621
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0006780   -0.1899364    0.1885804
24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.4886977   -0.6491003   -0.3282950


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1545163   -0.4342264    0.1251937
Birth       ki1000108-IRC              INDIA        1                    NA                 0.0611065   -0.0804869    0.2026999
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0341330   -0.0729648    0.0046988
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0159148   -0.0975820    0.0657525
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1920934   -0.3695311   -0.0146557
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3524311   -0.5057251   -0.1991372
6 months    ki1000108-IRC              INDIA        1                    NA                -0.1509328   -0.2587665   -0.0430990
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0686141   -0.1066886   -0.0305397
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0083257   -0.0654940    0.0821454
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2150165   -0.4598610    0.0298280
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3217713   -0.4474982   -0.1960444
24 months   ki1000108-IRC              INDIA        1                    NA                -0.1307554   -0.2149118   -0.0465991
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1078242   -0.1512959   -0.0643524
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0106421   -0.0927878    0.1140719
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.4830805   -0.6395498   -0.3266111
