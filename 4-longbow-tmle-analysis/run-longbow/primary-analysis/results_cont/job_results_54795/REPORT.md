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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country        hfoodsec                n_cell       n  outcome_variable 
----------  ----------------------  -------------  ---------------------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                144     172  haz              
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     172  haz              
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               24     172  haz              
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0      28  haz              
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         4      28  haz              
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               24      28  haz              
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                 34      37  haz              
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1      37  haz              
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                2      37  haz              
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 10      14  haz              
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1      14  haz              
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                3      14  haz              
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 24      91  haz              
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        23      91  haz              
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               44      91  haz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 45      88  haz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      88  haz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               34      88  haz              
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                 90     608  haz              
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       478     608  haz              
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     608  haz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                439     732  haz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       209     732  haz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     732  haz              
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                477     672  haz              
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       106     672  haz              
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure               89     672  haz              
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               6951   14364  haz              
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4877   14364  haz              
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2536   14364  haz              
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1433    2810  haz              
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1018    2810  haz              
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              359    2810  haz              
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                160     193  haz              
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     193  haz              
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     193  haz              
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  haz              
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  haz              
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  haz              
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                190     212  haz              
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212  haz              
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17     212  haz              
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128  haz              
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128  haz              
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128  haz              
6 months    ki0047075b-MAL-ED       PERU           Food Secure                 27     111  haz              
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     111  haz              
6 months    ki0047075b-MAL-ED       PERU           Food Insecure               56     111  haz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228  haz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  haz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228  haz              
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 80     537  haz              
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       417     537  haz              
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     537  haz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                427     715  haz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715  haz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     715  haz              
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                396     546  haz              
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        76     546  haz              
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               74     546  haz              
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8415   16791  haz              
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5602   16791  haz              
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2774   16791  haz              
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2442    4793  haz              
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1729    4793  haz              
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              622    4793  haz              
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                161     194  haz              
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     194  haz              
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     194  haz              
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  haz              
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  haz              
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  haz              
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                190     212  haz              
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212  haz              
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     212  haz              
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128  haz              
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128  haz              
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128  haz              
24 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     107  haz              
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27     107  haz              
24 months   ki0047075b-MAL-ED       PERU           Food Insecure               54     107  haz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228  haz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  haz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228  haz              
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     429  haz              
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       328     429  haz              
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     429  haz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                334     514  haz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514  haz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56     514  haz              
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                342     478  haz              
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     478  haz              
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               69     478  haz              
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3875    8214  haz              
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2761    8214  haz              
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1578    8214  haz              
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2399    4713  haz              
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1705    4713  haz              
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              609    4713  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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
![](/tmp/fd7b13c3-de2a-4e8d-88be-efe3ce5ac3d7/70a24446-af55-4252-98c2-1954f74cc9d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fd7b13c3-de2a-4e8d-88be-efe3ce5ac3d7/70a24446-af55-4252-98c2-1954f74cc9d8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fd7b13c3-de2a-4e8d-88be-efe3ce5ac3d7/70a24446-af55-4252-98c2-1954f74cc9d8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.9778095   -1.3834713   -0.5721477
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.9833447   -1.3809351   -0.5857544
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.9164168   -1.1738521   -0.6589816
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.4535556   -0.7370575   -0.1700536
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0888889   -0.6955550    0.5177773
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.8005882   -1.1433809   -0.4577955
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.7312233   -0.9382606   -0.5241859
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.9536342   -1.0526788   -0.8545896
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.9693631   -1.5065016   -0.4322246
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.8480327   -0.9367626   -0.7593029
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.0059228   -1.1450616   -0.8667839
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.9981410   -1.2553014   -0.7409806
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.0283021   -1.1248060   -0.9317981
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.2729892   -1.4738511   -1.0721272
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.2864455   -1.5639419   -1.0089491
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.5017620   -1.5326149   -1.4709090
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.5606889   -1.5997661   -1.5216118
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.6239414   -1.6766101   -1.5712726
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.5432898   -1.6114741   -1.4751054
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.4969726   -1.5829061   -1.4110390
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.5279081   -1.6462269   -1.4095892
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -1.2287544   -1.3589893   -1.0985195
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.6360000   -0.9019405   -0.3700595
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -1.0694118   -1.5456747   -0.5931488
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.5150621   -0.6754832   -0.3546411
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.6322538   -1.0758186   -0.1886890
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.0603097   -1.5701535   -0.5504658
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.3749145   -1.8113590   -0.9384700
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -1.1601318   -1.5666492   -0.7536143
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                -1.4867290   -1.7172360   -1.2562220
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.0123750   -1.1877797   -0.8369704
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.8104353   -1.3804554   -0.2404152
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.1885425   -1.4197031   -0.9573819
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.1312527   -1.3869327   -0.8755726
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -1.4329668   -1.5293526   -1.3365810
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.5237410   -1.9313913   -1.1160908
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.1466678   -1.2399386   -1.0533970
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2609402   -1.3965565   -1.1253240
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.2775224   -1.4944727   -1.0605721
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.3110550   -1.4066715   -1.2154385
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.4193277   -1.6746110   -1.1640444
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.3326051   -1.5968622   -1.0683479
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.2424573   -1.2716418   -1.2132729
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.3607980   -1.3927501   -1.3288458
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.4745207   -1.5266539   -1.4223876
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.3518328   -1.4038126   -1.2998530
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.3467493   -1.4063927   -1.2871058
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.3060229   -1.3955583   -1.2164875
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -1.8935000   -2.0301943   -1.7568057
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -1.2370000   -1.6132318   -0.8607682
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -2.0035294   -2.4884028   -1.5186561
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -1.3211336   -1.5058477   -1.1364195
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -1.4333442   -1.8360327   -1.0306557
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.9962907   -2.4988122   -1.4937693
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.9312017   -2.3713182   -1.4910852
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -1.6452771   -2.0193654   -1.2711889
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                -1.8328063   -2.0522552   -1.6133574
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.5492767   -1.7328166   -1.3657367
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -1.6935349   -2.2500311   -1.1370386
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.7821367   -2.0067345   -1.5575389
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.5698647   -1.8417146   -1.2980149
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -2.2744975   -2.3824860   -2.1665090
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -2.8275161   -3.2636307   -2.3914015
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.3992000   -1.5032603   -1.2951397
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.5245105   -1.7039856   -1.3450355
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.5583072   -1.8052298   -1.3113847
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.8212896   -1.9237521   -1.7188272
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -2.0786026   -2.3313250   -1.8258803
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.9139758   -2.1492763   -1.6786752
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.9375205   -1.9766966   -1.8983444
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -2.0318264   -2.0760200   -1.9876329
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -2.1935906   -2.2564207   -2.1307604
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.7943291   -1.8436181   -1.7450402
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.7694815   -1.8243816   -1.7145813
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.7468532   -1.8346787   -1.6590278


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                -0.9490110   -1.1400314   -0.7579906
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.5503409   -0.7616444   -0.3390374
Birth       ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.0791964   -1.1604792   -0.9979137
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.5375132   -1.5596692   -1.5153573
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.5248719   -1.5743851   -1.4753587
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -1.2019969   -1.3256948   -1.0782989
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.6262760   -0.7758267   -0.4767254
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                -1.3783784   -1.5611768   -1.1955799
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -1.0539254   -1.1902766   -0.9175743
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.3421764   -1.4201083   -1.2642445
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.3131326   -1.3362851   -1.2899801
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.3446891   -1.3822219   -1.3071564
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -1.8868396   -2.0164954   -1.7571839
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -1.4092187   -1.5701249   -1.2483126
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                -1.7783956   -1.9536701   -1.6031212
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -1.6331323   -1.7704624   -1.4958022
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.8758368   -1.9623349   -1.7893388
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -2.0099416   -2.0377955   -1.9820876
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.7801485   -1.8158427   -1.7444543


### Parameter: ATE


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0055352   -0.5699941    0.5589236
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0613927   -0.4204336    0.5432190
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.3646667   -0.3049729    1.0343063
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.3470327   -0.7918699    0.0978046
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.2224109   -0.4519320    0.0071101
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2381399   -0.8152685    0.3389887
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1578900   -0.3230600    0.0072799
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1501083   -0.4224213    0.1222047
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.2446871   -0.4665322   -0.0228419
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.2581434   -0.5511203    0.0348334
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0589269   -0.1065737   -0.0112802
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1221794   -0.1818486   -0.0625102
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0463172   -0.0628928    0.1555272
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0153817   -0.1218226    0.1525860
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.5927544    0.2966371    0.8888717
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.1593426   -0.3344058    0.6530910
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1171917   -0.5892263    0.3548429
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.5452475   -1.0798709   -0.0106241
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2147827   -0.3839659    0.8135313
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.1118145   -0.6037541    0.3801250
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.2019398   -0.3948934    0.7987729
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1761674   -0.4668051    0.1144702
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.3017141   -0.5756681   -0.0277602
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.3924884   -0.8738339    0.0888571
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1142724   -0.2788834    0.0503386
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1308546   -0.3671999    0.1054907
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.1082727   -0.3810513    0.1645059
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0215500   -0.3031233    0.2600232
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.1183406   -0.1558398   -0.0808415
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.2320634   -0.2887554   -0.1753714
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0050835   -0.0711307    0.0812976
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0458098   -0.0571762    0.1487958
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6565000    0.2562055    1.0567945
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.1100294   -0.6138027    0.3937438
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1122106   -0.5542273    0.3298060
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.6751572   -1.2104263   -0.1398880
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2859246   -0.2989130    0.8707622
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0983954   -0.3950906    0.5918815
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1442582   -0.7302109    0.4416945
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2328600   -0.5231506    0.0574305
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.7046328   -0.9969205   -0.4123451
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -1.2576513   -1.7711538   -0.7441489
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1253106   -0.3318788    0.0812577
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1591073   -0.4260925    0.1078780
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.2573130   -0.5298865    0.0152605
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0926861   -0.3491427    0.1637704
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0943059   -0.1503996   -0.0382123
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.2560701   -0.3249750   -0.1871651
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0248477   -0.0457172    0.0954126
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0474759   -0.0510943    0.1460462


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0287985   -0.3103644    0.3679615
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0967854   -0.3037214    0.1101506
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.1997965   -0.3966569   -0.0029361
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0614618   -0.1223421   -0.0005816
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0508944   -0.1066348    0.0048461
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0357512   -0.0581171   -0.0133854
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0184179   -0.0300420    0.0668778
6 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0267575   -0.0163737    0.0698887
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.1112139   -0.2152327   -0.0071952
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0034639   -0.3756217    0.3686938
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0415504   -0.1629108    0.0798100
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.2761294   -0.5099712   -0.0422875
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0520105   -0.1122257    0.0082047
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0311214   -0.0835138    0.0212710
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0706753   -0.0889435   -0.0524071
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0071436   -0.0273567    0.0416440
24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0066604   -0.0380987    0.0514195
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0880852   -0.1889413    0.0127710
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1528061   -0.2192440    0.5248562
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0838556   -0.2052596    0.0375483
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.6491931   -0.8973304   -0.4010559
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0420646   -0.1038514    0.0197222
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0545472   -0.1123797    0.0032854
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0724211   -0.0992577   -0.0455844
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0141806   -0.0176905    0.0460518
