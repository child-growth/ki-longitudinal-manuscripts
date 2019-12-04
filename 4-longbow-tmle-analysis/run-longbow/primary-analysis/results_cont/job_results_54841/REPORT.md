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

agecat      studyid                    country        cleanck    n_cell     n  outcome_variable 
----------  -------------------------  -------------  --------  -------  ----  -----------------
Birth       ki0047075b-MAL-ED          PERU           1               1     2  whz              
Birth       ki0047075b-MAL-ED          PERU           0               1     2  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              37    86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              49    86  whz              
Birth       ki1000108-IRC              INDIA          1             198   337  whz              
Birth       ki1000108-IRC              INDIA          0             139   337  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH     1             433   532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH     0              99   532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1             336   543  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0             207   543  whz              
Birth       ki1113344-GMS-Nepal        NEPAL          1               9   570  whz              
Birth       ki1113344-GMS-Nepal        NEPAL          0             561   570  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             162   368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   368  whz              
6 months    ki1000108-IRC              INDIA          1             229   398  whz              
6 months    ki1000108-IRC              INDIA          0             169   398  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH     1             497   603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH     0             106   603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545  whz              
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   505  whz              
6 months    ki1113344-GMS-Nepal        NEPAL          0             497   505  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             209   372  whz              
24 months   ki1000108-IRC              INDIA          1             231   400  whz              
24 months   ki1000108-IRC              INDIA          0             169   400  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH     1             480   579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH     0              99   579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410  whz              
24 months   ki1113344-GMS-Nepal        NEPAL          1               5   434  whz              
24 months   ki1113344-GMS-Nepal        NEPAL          0             429   434  whz              


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
![](/tmp/d60c308d-e288-4451-a6ed-4c3695ac31ed/7f99f63a-cea8-48f7-98d5-afe138a54cea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d60c308d-e288-4451-a6ed-4c3695ac31ed/7f99f63a-cea8-48f7-98d5-afe138a54cea/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d60c308d-e288-4451-a6ed-4c3695ac31ed/7f99f63a-cea8-48f7-98d5-afe138a54cea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2686249   -0.7125582    0.1753083
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.6235655   -1.0554989   -0.1916320
Birth       ki1000108-IRC              INDIA        1                    NA                -0.7508240   -1.0058782   -0.4957697
Birth       ki1000108-IRC              INDIA        0                    NA                -1.1685742   -1.4619561   -0.8751923
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.2819881   -1.3663628   -1.1976133
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.3669230   -1.5613275   -1.1725185
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.0890426   -1.2227184   -0.9553668
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.3814741   -1.5564120   -1.2065361
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.5077778   -2.0451921   -0.9703635
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.1081283   -1.2024430   -1.0138137
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3780399   -0.6059984   -0.1500813
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.6539670   -0.8663169   -0.4416170
6 months    ki1000108-IRC              INDIA        1                    NA                -0.6721941   -0.8520701   -0.4923181
6 months    ki1000108-IRC              INDIA        0                    NA                -0.5470062   -0.7672334   -0.3267790
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1389612   -0.2286783   -0.0492440
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.4819854   -0.6823276   -0.2816432
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1223065   -0.0040818    0.2486949
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0544163   -0.2169902    0.1081576
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.8406250   -1.1876486   -0.4936014
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.6195607   -0.7114689   -0.5276524
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2802978   -0.4473752   -0.1132204
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.7512840   -0.8855556   -0.6170123
24 months   ki1000108-IRC              INDIA        1                    NA                -0.6802511   -0.8038984   -0.5566037
24 months   ki1000108-IRC              INDIA        0                    NA                -0.8352994   -0.9769453   -0.6936535
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.8420683   -0.9302854   -0.7538512
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.1385003   -1.3594801   -0.9175205
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.6404616   -0.8023170   -0.4786062
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.4804208   -0.6512268   -0.3096148
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.8380000   -1.3259702   -0.3500298
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.1280730   -1.2245191   -1.0316270


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.9860831   -1.1746070   -0.7975591
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.1841160   -1.2799097   -1.0883224
Birth       ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.1144386   -1.2074618   -1.0214154
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA        NA                   NA                -0.6153685   -0.7522411   -0.4784959
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0640826   -0.0252594    0.1534245
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.6230627   -0.7131245   -0.5330009
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA        NA                   NA                -0.7479083   -0.8403586   -0.6554581
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.5518293   -0.6602513   -0.4434072
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.1247312   -1.2195989   -1.0298635


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.3549405   -0.9785996    0.2687185
Birth       ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        0                    1                 -0.4177502   -0.8133160   -0.0221845
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0849349   -0.2970484    0.1271785
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.2924315   -0.5131661   -0.0716969
Birth       ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL        0                    1                  0.3996494   -0.1459781    0.9452770
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2759271   -0.5882577    0.0364035
6 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        0                    1                  0.1251879   -0.1593807    0.4097564
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.3430242   -0.5624011   -0.1236474
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.1767228   -0.3842995    0.0308538
6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        0                    1                  0.2210643   -0.1379239    0.5800525
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.4709862   -0.6860365   -0.2559358
24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        0                    1                 -0.1550483   -0.3435038    0.0334072
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.2964320   -0.5347168   -0.0581472
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.1600408   -0.0753322    0.3954139
24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.2900730   -0.7874831    0.2073370


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1962007   -0.5629649    0.1705636
Birth       ki1000108-IRC              INDIA        1                    NA                -0.2352591   -0.4040348   -0.0664834
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0164706   -0.0547267    0.0217856
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0950734   -0.1870712   -0.0030756
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.3933392   -0.1386634    0.9253418
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1246368   -0.3029988    0.0537253
6 months    ki1000108-IRC              INDIA        1                    NA                 0.0568256   -0.0636093    0.1772604
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0601295   -0.1002981   -0.0199609
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0582240   -0.1456567    0.0292087
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.2175623   -0.1324595    0.5675841
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2768527   -0.4078591   -0.1458464
24 months   ki1000108-IRC              INDIA        1                    NA                -0.0676573   -0.1472650    0.0119505
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0507987   -0.0925713   -0.0090261
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0886323   -0.0428385    0.2201032
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2867312   -0.7717148    0.1982524
