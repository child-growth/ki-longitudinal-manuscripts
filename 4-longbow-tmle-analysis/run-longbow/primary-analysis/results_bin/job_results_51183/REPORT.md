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
* trth2o
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor
* delta_impsan
* delta_safeh20

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
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     0      341   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     1      180   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     0       55   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     1       58   634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      199   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     1      115   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      119   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     1       65   498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     0        7   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     1        2   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     0      164   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     1      304   477
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
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     0      447   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     1       74   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     0       86   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     1       27   634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     0      262   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     1       52   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     0      150   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     1       34   498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     0        9   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     1        0   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     0      377   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     1       91   477
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     1       76   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     1       81   185
6-24 months                  ki1000108-IRC              INDIA          1                     0       94   230
6-24 months                  ki1000108-IRC              INDIA          1                     1       49   230
6-24 months                  ki1000108-IRC              INDIA          0                     0       49   230
6-24 months                  ki1000108-IRC              INDIA          0                     1       38   230
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     0      285   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     1      106   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     0       35   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     1       31   457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     0      185   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     1       63   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     0      118   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     1       31   397
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     0        6   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     1        2   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     0      159   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     1      213   380


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
![](/tmp/5feb3d1f-ffa0-49b7-9850-cdac1f599450/ca9e0144-9441-4f86-998b-9f826369b15b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5feb3d1f-ffa0-49b7-9850-cdac1f599450/ca9e0144-9441-4f86-998b-9f826369b15b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5feb3d1f-ffa0-49b7-9850-cdac1f599450/ca9e0144-9441-4f86-998b-9f826369b15b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5feb3d1f-ffa0-49b7-9850-cdac1f599450/ca9e0144-9441-4f86-998b-9f826369b15b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.8521127   0.7936266   0.9105988
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.9545455   0.9215913   0.9874996
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    NA                0.5428254   0.4745694   0.6110813
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    NA                0.6643816   0.5848122   0.7439511
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3465303   0.3055712   0.3874894
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.5106282   0.4160797   0.6051766
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3593676   0.3023617   0.4163735
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.3516919   0.2745251   0.4288588
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3041415   0.2274402   0.3808429
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.4413314   0.3595160   0.5231468
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    NA                0.3062328   0.2426925   0.3697732
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    NA                0.3941461   0.3122261   0.4760661
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1421524   0.1121253   0.1721795
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2419899   0.1632905   0.3206893
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1686229   0.1262118   0.2110340
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1824527   0.1245603   0.2403451
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7835052   0.7013218   0.8656885
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.9204545   0.8637664   0.9771427
6-24 months                  ki1000108-IRC              INDIA        1                    NA                0.3452679   0.2671164   0.4234194
6-24 months                  ki1000108-IRC              INDIA        0                    NA                0.4465759   0.3401681   0.5529836
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2716601   0.2274556   0.3158647
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4669290   0.3398633   0.5939947
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2509854   0.1954524   0.3065183
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2088582   0.1416075   0.2761088


### Parameter: E(Y)


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   ki1000108-IRC              INDIA        NA                   NA                0.5937500   0.5423701   0.6451299
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3614458   0.3192090   0.4036825
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA        NA                   NA                0.3465909   0.2968062   0.3963756
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1726908   0.1394601   0.2059214
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months                  ki1000108-IRC              INDIA        NA                   NA                0.3782609   0.3154507   0.4410711
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2367758   0.1949066   0.2786451


### Parameter: RR


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.1202104   1.0373678   1.209669
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    1                 1.2239325   1.0287544   1.456140
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.4735455   1.1828297   1.835713
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9786412   0.7465782   1.282838
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.4510723   1.0604191   1.985640
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    1                 1.2870798   0.9594015   1.726675
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.7023274   1.1552534   2.508470
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0820161   0.7221479   1.621217
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.1747907   1.0402427   1.326741
6-24 months                  ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA        0                    1                 1.2934185   0.9309773   1.796963
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.7187984   1.2510730   2.361387
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.8321528   0.5634434   1.229011


### Parameter: PAR


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0532927    0.0178815   0.0887039
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    NA                 0.0509246    0.0072963   0.0945529
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0288640    0.0101592   0.0475688
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0020782   -0.0356594   0.0398157
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0794201    0.0206633   0.1381768
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    NA                 0.0403581   -0.0028133   0.0835295
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0171536    0.0018795   0.0324277
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0040679   -0.0229481   0.0310838
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0651435    0.0166356   0.1136514
6-24 months                  ki1000108-IRC              INDIA        1                    NA                 0.0329930   -0.0168699   0.0828559
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0281211    0.0083855   0.0478566
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0142096   -0.0479314   0.0195123


### Parameter: PAF


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0588606    0.0178699   0.0981405
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    NA                 0.0857678    0.0086436   0.1568920
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0768899    0.0256113   0.1254699
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0057496   -0.1043487   0.1048716
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.2070595    0.0383211   0.3461907
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    NA                 0.1164430   -0.0172516   0.2325665
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1076770    0.0078677   0.1974454
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0235558   -0.1460864   0.1680877
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0767614    0.0159136   0.1338470
6-24 months                  ki1000108-IRC              INDIA        1                    NA                 0.0872228   -0.0546469   0.2100084
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0938053    0.0258457   0.1570238
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0600127   -0.2120638   0.0729639
