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

agecat      studyid                    country        cleanck    n_cell     n  outcome_variable 
----------  -------------------------  -------------  --------  -------  ----  -----------------
Birth       ki0047075b-MAL-ED          PERU           1               1     2  haz              
Birth       ki0047075b-MAL-ED          PERU           0               1     2  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              39    92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              53    92  haz              
Birth       ki1000108-IRC              INDIA          1             218   378  haz              
Birth       ki1000108-IRC              INDIA          0             160   378  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH     1             438   539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH     0             101   539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1             345   561  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0             216   561  haz              
Birth       ki1113344-GMS-Nepal        NEPAL          1               9   621  haz              
Birth       ki1113344-GMS-Nepal        NEPAL          0             612   621  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             163   369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   369  haz              
6 months    ki1000108-IRC              INDIA          1             230   398  haz              
6 months    ki1000108-IRC              INDIA          0             168   398  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH     1             498   604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH     0             106   604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545  haz              
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   505  haz              
6 months    ki1113344-GMS-Nepal        NEPAL          0             497   505  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             208   371  haz              
24 months   ki1000108-IRC              INDIA          1             231   400  haz              
24 months   ki1000108-IRC              INDIA          0             169   400  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH     1             479   578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH     0              99   578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410  haz              
24 months   ki1113344-GMS-Nepal        NEPAL          1               5   435  haz              
24 months   ki1113344-GMS-Nepal        NEPAL          0             430   435  haz              


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
![](/tmp/86da5ca6-4a9e-46c1-8dac-c526cdd26c0f/f0df8e4c-0ecc-4bc3-a51d-dc3e3b40a8e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/86da5ca6-4a9e-46c1-8dac-c526cdd26c0f/f0df8e4c-0ecc-4bc3-a51d-dc3e3b40a8e8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/86da5ca6-4a9e-46c1-8dac-c526cdd26c0f/f0df8e4c-0ecc-4bc3-a51d-dc3e3b40a8e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.7962433   -1.1257226   -0.4667639
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -1.0340997   -1.3541904   -0.7140090
Birth       ki1000108-IRC              INDIA        1                    NA                -0.3935885   -0.5923466   -0.1948304
Birth       ki1000108-IRC              INDIA        0                    NA                -0.2138099   -0.4880025    0.0603826
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.8473853   -0.9296262   -0.7651444
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.0812584   -1.2679590   -0.8945578
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.8994437   -1.0106983   -0.7881891
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.8448889   -1.0033426   -0.6864352
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.9077778   -1.0681024   -0.7474531
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.1026961   -1.1887883   -1.0166039
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -1.0357647   -1.2472039   -0.8243255
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -1.5706364   -1.7516325   -1.3896402
6 months    ki1000108-IRC              INDIA        1                    NA                -1.1076828   -1.2899163   -0.9254494
6 months    ki1000108-IRC              INDIA        0                    NA                -1.4467970   -1.6320438   -1.2615502
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.0178642   -1.0976178   -0.9381106
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.4298612   -1.6171719   -1.2425504
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.1733734   -1.2857765   -1.0609703
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.1366767   -1.2710460   -1.0023074
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.1500000   -1.3864333   -0.9135667
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.3684775   -1.4530701   -1.2838850
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -2.2227321   -2.3690222   -2.0764421
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -2.7900806   -2.9220320   -2.6581292
24 months   ki1000108-IRC              INDIA        1                    NA                -1.6662325   -1.7972245   -1.5352406
24 months   ki1000108-IRC              INDIA        0                    NA                -1.9796645   -2.1138628   -1.8454662
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.4932048   -1.5805709   -1.4058388
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -2.1225523   -2.3330301   -1.9120746
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.3579362   -1.5035788   -1.2122936
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.3603229   -1.4930894   -1.2275564
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2378564   -0.6998589    0.2241460
Birth       ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        0                    1                  0.1797786   -0.1588377    0.5183948
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.2338731   -0.4393587   -0.0283875
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0545548   -0.1391174    0.2482270
Birth       ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.1949183   -0.3768960   -0.0129406
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5348716   -0.8143400   -0.2554033
6 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        0                    1                 -0.3391141   -0.5984434   -0.0797849
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.4119970   -0.6163228   -0.2076711
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0366967   -0.1384167    0.2118100
6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.2184775   -0.4695882    0.0326332
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5673485   -0.7650526   -0.3696444
24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        0                    1                 -0.3134320   -0.5014008   -0.1254631
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.6293475   -0.8572228   -0.4014722
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0023867   -0.1997866    0.1950132
24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.4886977   -0.6491003   -0.3282950


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1649524   -0.4541146    0.1242098
Birth       ki1000108-IRC              INDIA        1                    NA                 0.0759430   -0.0653411    0.2172271
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0377168   -0.0768651    0.0014316
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0001641   -0.0789443    0.0786160
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1920934   -0.3695311   -0.0146557
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3876861   -0.5516752   -0.2236969
6 months    ki1000108-IRC              INDIA        1                    NA                -0.1297041   -0.2381860   -0.0212222
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0738273   -0.1119917   -0.0356629
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0251348   -0.0504721    0.1007418
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2150165   -0.4598610    0.0298280
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3361358   -0.4557500   -0.2165215
24 months   ki1000108-IRC              INDIA        1                    NA                -0.1377550   -0.2203421   -0.0551679
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1092173   -0.1527624   -0.0656722
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0170825   -0.0925473    0.1267124
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.4830805   -0.6395498   -0.3266111
