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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* W_parity
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_W_parity
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country        cleanck    ever_stunted   n_cell     n
---------------------------  -------------------------  -------------  --------  -------------  -------  ----
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           1                     0        1     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           1                     1        0     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           0                     0        0     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           0                     1        1     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          1                     1      121   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          0                     1      147   296
0-24 months (no birth st.)   ki1000108-IRC              INDIA          1                     0       94   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          1                     1      114   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          0                     0       49   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          0                     1       95   352
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     0      340   633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     1      180   633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     0       55   633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     1       58   633
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      199   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     1      115   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      119   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     1       65   498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     0        8   517
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     1        2   517
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     0      215   517
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     1      292   517
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           1                     0        1     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           1                     1        0     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           0                     0        0     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           0                     1        1     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          1                     0       96   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          1                     1       45   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          0                     0       84   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          0                     1       67   292
0-6 months (no birth st.)    ki1000108-IRC              INDIA          1                     0      143   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          1                     1       65   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          0                     0       87   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          0                     1       57   352
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     0      446   633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     1       74   633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     0       86   633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     1       27   633
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     0      262   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     1       52   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     0      150   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     1       34   498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     0       10   517
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     1        0   517
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     0      416   517
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     1       91   517
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     1       76   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     1       81   185
6-24 months                  ki1000108-IRC              INDIA          1                     0       94   230
6-24 months                  ki1000108-IRC              INDIA          1                     1       49   230
6-24 months                  ki1000108-IRC              INDIA          0                     0       49   230
6-24 months                  ki1000108-IRC              INDIA          0                     1       38   230
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     0      284   456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     1      106   456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     0       35   456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     1       31   456
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     0      185   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     1       63   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     0      118   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     1       31   397
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     0        6   356
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     1        2   356
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     0      147   356
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     1      201   356


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/6f8dcd5e-4a66-4b72-bf12-9b756b4f66a4/be7de5f9-d232-4964-98d5-95d6c3384a88/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6f8dcd5e-4a66-4b72-bf12-9b756b4f66a4/be7de5f9-d232-4964-98d5-95d6c3384a88/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6f8dcd5e-4a66-4b72-bf12-9b756b4f66a4/be7de5f9-d232-4964-98d5-95d6c3384a88/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6f8dcd5e-4a66-4b72-bf12-9b756b4f66a4/be7de5f9-d232-4964-98d5-95d6c3384a88/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.8521127   0.7936266   0.9105988
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.9545455   0.9215913   0.9874996
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    NA                0.5454703   0.4770177   0.6139228
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    NA                0.6532118   0.5726971   0.7337265
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3458662   0.3049134   0.3868190
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.5113499   0.4177064   0.6049934
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3616231   0.3053915   0.4178547
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.3697735   0.2913661   0.4481810
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3001821   0.2225068   0.3778573
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.4507244   0.3680500   0.5333989
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    NA                0.3109161   0.2472835   0.3745487
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    NA                0.3895135   0.3085663   0.4704607
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1424672   0.1123278   0.1726066
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2383416   0.1580640   0.3186192
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1709427   0.1283968   0.2134887
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1816916   0.1242166   0.2391666
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7835052   0.7013218   0.8656885
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.9204545   0.8637664   0.9771427
6-24 months                  ki1000108-IRC              INDIA        1                    NA                0.3464484   0.2678815   0.4250152
6-24 months                  ki1000108-IRC              INDIA        0                    NA                0.4352534   0.3323199   0.5381869
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2733088   0.2289280   0.3176897
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4731110   0.3469437   0.5992783
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2499417   0.1951850   0.3046984
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2138334   0.1463827   0.2812842


### Parameter: E(Y)


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   ki1000108-IRC              INDIA        NA                   NA                0.5937500   0.5423701   0.6451299
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3614458   0.3192090   0.4036825
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA        NA                   NA                0.3465909   0.2968062   0.3963756
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1726908   0.1394601   0.2059214
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months                  ki1000108-IRC              INDIA        NA                   NA                0.3782609   0.3154507   0.4410711
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2367758   0.1949066   0.2786451


### Parameter: RR


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.1202104   1.0373678   1.209669
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    1                 1.1975205   1.0043507   1.427843
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.4784615   1.1886257   1.838971
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0225385   0.7863155   1.329727
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.5015035   1.0932603   2.062192
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    1                 1.2527930   0.9357317   1.677287
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.6729576   1.1240805   2.489846
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0628800   0.7111528   1.588567
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.1747907   1.0402427   1.326741
6-24 months                  ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA        0                    1                 1.2563298   0.9048043   1.744427
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.7310490   1.2661322   2.366681
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.8555333   0.5837757   1.253799


### Parameter: PAR


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0532927    0.0178815   0.0887039
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    NA                 0.0482797    0.0042174   0.0923420
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0301211    0.0113464   0.0488959
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0001773   -0.0367314   0.0363767
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0833796    0.0235831   0.1431760
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    NA                 0.0356748   -0.0072760   0.0786256
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0170905    0.0017539   0.0324270
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0017480   -0.0252757   0.0287718
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0651435    0.0166356   0.1136514
6-24 months                  ki1000108-IRC              INDIA        1                    NA                 0.0318125   -0.0191258   0.0827509
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0271297    0.0073175   0.0469420
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0131659   -0.0458958   0.0195640


### Parameter: PAF


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0588606    0.0178699   0.0981405
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    NA                 0.0813132    0.0034875   0.1530609
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0801121    0.0287208   0.1287843
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0004905   -0.1069107   0.0956982
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.2173824    0.0447854   0.3587931
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    NA                 0.1029306   -0.0298850   0.2186181
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1071115    0.0069666   0.1971570
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0101223   -0.1593948   0.1548539
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0767614    0.0159136   0.1338470
6-24 months                  ki1000108-IRC              INDIA        1                    NA                 0.0841021   -0.0608767   0.2092681
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0903005    0.0222100   0.1536493
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0556048   -0.2029823   0.0737174
