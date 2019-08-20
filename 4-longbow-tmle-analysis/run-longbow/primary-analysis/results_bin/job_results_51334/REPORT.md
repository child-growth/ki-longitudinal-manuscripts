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

**Outcome Variable:** wast_rec90d

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
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country        cleanck    wast_rec90d   n_cell     n
------------  -------------------------  -------------  --------  ------------  -------  ----
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        0     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        1     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     1
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0       38   326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       81   326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       82   326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    1      125   326
0-24 months   ki1000108-IRC              INDIA          1                    0       84   383
0-24 months   ki1000108-IRC              INDIA          1                    1      135   383
0-24 months   ki1000108-IRC              INDIA          0                    0       72   383
0-24 months   ki1000108-IRC              INDIA          0                    1       92   383
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0       90   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1      144   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0       38   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    1       35   307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0       44   216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       69   216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0       37   216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       66   216
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0        4   509
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    1        3   509
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0      238   509
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    1      264   509
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        0     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        1     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     1
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0       21   203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    1       58   203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0       45   203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    1       79   203
0-6 months    ki1000108-IRC              INDIA          1                    0       52   232
0-6 months    ki1000108-IRC              INDIA          1                    1       82   232
0-6 months    ki1000108-IRC              INDIA          0                    0       33   232
0-6 months    ki1000108-IRC              INDIA          0                    1       65   232
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                    0       26   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                    1      117   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                    0       13   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                    1       28   184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    0        8   139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    1       61   139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                    0        5   139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                    1       65   139
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    0        2   163
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    1        2   163
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    0       68   163
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    1       91   163
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0       17   123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       23   123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       37   123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    1       46   123
6-24 months   ki1000108-IRC              INDIA          1                    0       32   151
6-24 months   ki1000108-IRC              INDIA          1                    1       53   151
6-24 months   ki1000108-IRC              INDIA          0                    0       39   151
6-24 months   ki1000108-IRC              INDIA          0                    1       27   151
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0       64   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1       27   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0       25   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    1        7   123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0       36    77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1        8    77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0       32    77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    1        1    77
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0        2   346
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    1        1   346
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0      170   346
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    1      173   346


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/419fd348-abd9-4e8c-bec0-7c2e283a02b1/6ca28c9c-c4ce-476b-a0d0-812425015b6b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/419fd348-abd9-4e8c-bec0-7c2e283a02b1/6ca28c9c-c4ce-476b-a0d0-812425015b6b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/419fd348-abd9-4e8c-bec0-7c2e283a02b1/6ca28c9c-c4ce-476b-a0d0-812425015b6b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/419fd348-abd9-4e8c-bec0-7c2e283a02b1/6ca28c9c-c4ce-476b-a0d0-812425015b6b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6863160   0.5875490   0.7850829
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6040178   0.5334165   0.6746192
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.6125833   0.5403859   0.6847806
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.5675808   0.4868079   0.6483536
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.6146032   0.5495291   0.6796774
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4974656   0.3825652   0.6123660
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.5990264   0.4953370   0.7027158
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.6382404   0.5465116   0.7299692
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7374930   0.6378471   0.8371389
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6311036   0.5432451   0.7189620
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.6075255   0.5217585   0.6932925
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.6644509   0.5662166   0.7626851
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8177605   0.7553709   0.8801501
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.6267461   0.4821329   0.7713593
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.8840580   0.8071326   0.9609833
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.9285714   0.8672033   0.9899396
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.5584401   0.3768040   0.7400763
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5508944   0.4427215   0.6590673
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.6135065   0.5074671   0.7195460
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.4214845   0.2871502   0.5558189
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2967033   0.2039707   0.3894359
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2187500   0.0526770   0.3848230


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.5926893   0.5398764   0.6455022
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.6250000   0.5603522   0.6896478
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.6336207   0.5704020   0.6968394
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.9064748   0.8572209   0.9557287
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.5298013   0.4450066   0.6145960
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.8800871   0.7309967   1.0595853
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        0                    1                 0.9265365   0.7699881   1.1149133
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.8094094   0.6275780   1.0439236
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0654628   0.8497540   1.3359291
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.8557418   0.7044927   1.0394628
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        0                    1                 1.0937004   0.8909422   1.3426017
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.7664177   0.5994963   0.9798160
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0503513   0.9416311   1.1716243
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.9864878   0.6736453   1.4446150
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        0                    1                 0.6870091   0.4781247   0.9871514
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.7372685   0.3243804   1.6757021


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0544141   -0.1335473    0.0247190
0-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0198940   -0.0670601    0.0272721
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0315413   -0.0630596   -0.0000231
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0259736   -0.0461657    0.0981128
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0626162   -0.1446638    0.0194315
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0260952   -0.0303003    0.0824907
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0297170   -0.0659369    0.0065029
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0224168   -0.0272673    0.0721010
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0025355   -0.1421176    0.1471885
6-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0837052   -0.1610435   -0.0063669
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0202805   -0.0703437    0.0297826


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0861117   -0.2187604    0.0320997
0-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0335656   -0.1162211    0.0429693
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0540960   -0.1098066   -0.0011821
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0415577   -0.0819021    0.1509291
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0927816   -0.2227866    0.0234014
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0411843   -0.0522998    0.1263634
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0377098   -0.0853669    0.0078547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0247297   -0.0319638    0.0783086
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0045197   -0.2899441    0.2317644
6-24 months   ki1000108-IRC              INDIA        1                    NA                -0.1579936   -0.3201545   -0.0157516
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0733678   -0.2738040    0.0955293
