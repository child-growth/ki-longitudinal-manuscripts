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
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                138     162  whz              
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         3     162  whz              
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               21     162  whz              
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0      26  whz              
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         4      26  whz              
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               22      26  whz              
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                 32      35  whz              
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1      35  whz              
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                2      35  whz              
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 10      14  whz              
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1      14  whz              
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                3      14  whz              
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 23      89  whz              
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        22      89  whz              
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               44      89  whz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 45      87  whz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      87  whz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               33      87  whz              
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                 86     575  whz              
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       453     575  whz              
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure               36     575  whz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                429     707  whz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       199     707  whz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               79     707  whz              
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                442     620  whz              
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       100     620  whz              
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure               78     620  whz              
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               5797   11763  whz              
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      3947   11763  whz              
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2019   11763  whz              
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1205    2383  whz              
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       870    2383  whz              
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              308    2383  whz              
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                160     193  whz              
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     193  whz              
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     193  whz              
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  whz              
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  whz              
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  whz              
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                190     212  whz              
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212  whz              
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17     212  whz              
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128  whz              
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128  whz              
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128  whz              
6 months    ki0047075b-MAL-ED       PERU           Food Secure                 27     111  whz              
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     111  whz              
6 months    ki0047075b-MAL-ED       PERU           Food Insecure               56     111  whz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228  whz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  whz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228  whz              
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 80     537  whz              
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       417     537  whz              
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     537  whz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                427     715  whz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715  whz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     715  whz              
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                396     546  whz              
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        76     546  whz              
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               74     546  whz              
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8396   16764  whz              
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5590   16764  whz              
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2778   16764  whz              
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2445    4795  whz              
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1728    4795  whz              
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              622    4795  whz              
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                161     194  whz              
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     194  whz              
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     194  whz              
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  whz              
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  whz              
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  whz              
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                190     212  whz              
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212  whz              
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     212  whz              
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128  whz              
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128  whz              
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128  whz              
24 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     107  whz              
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27     107  whz              
24 months   ki0047075b-MAL-ED       PERU           Food Insecure               54     107  whz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228  whz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  whz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228  whz              
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     428  whz              
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       327     428  whz              
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     428  whz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                334     514  whz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514  whz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56     514  whz              
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                341     477  whz              
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     477  whz              
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               69     477  whz              
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3857    8190  whz              
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2753    8190  whz              
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1580    8190  whz              
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2389    4696  whz              
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1699    4696  whz              
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              608    4696  whz              


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
![](/tmp/154b218f-8d7c-417d-bef5-482905ff9f64/d4c0bbb1-7832-4598-b4f3-a5fc57118163/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/154b218f-8d7c-417d-bef5-482905ff9f64/d4c0bbb1-7832-4598-b4f3-a5fc57118163/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/154b218f-8d7c-417d-bef5-482905ff9f64/d4c0bbb1-7832-4598-b4f3-a5fc57118163/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.2495392   -0.7641634    0.2650850
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.0463245   -0.3957410    0.3030919
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.1091703   -0.1550626    0.3734033
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0800000   -0.4003913    0.2403913
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.2611111   -1.0678216    0.5455994
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.2157576   -0.6840291    0.2525139
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.1038872   -1.3446905   -0.8630840
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -1.4115916   -1.5183806   -1.3048026
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.0688042   -1.4381007   -0.6995077
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.2605175   -1.3713198   -1.1497152
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2082740   -1.3732131   -1.0433349
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.2308705   -1.4797697   -0.9819712
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.1808138   -1.2844141   -1.0772135
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.8534455   -1.1097102   -0.5971807
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.0505350   -1.2878677   -0.8132023
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.7064923   -0.7376423   -0.6753422
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.7751015   -0.8138994   -0.7363036
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.8280566   -0.8780555   -0.7780577
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.6790983   -0.7460616   -0.6121350
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.7204956   -0.8089797   -0.6320114
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.6611182   -0.8264164   -0.4958200
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.7025789   -0.8453715   -0.5597864
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -1.5420000   -2.3989104   -0.6850896
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.6978922   -1.1435259   -0.2522584
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                 0.1757333   -0.0434639    0.3949304
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.2841139   -0.4984382    1.0666659
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.1884393   -0.6531778    0.2762991
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                 0.9286771    0.4733876    1.3839665
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.9527340    0.6749754    1.2304926
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                 1.0177739    0.6514559    1.3840919
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.6262574    0.4113446    0.8411703
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.5569912   -0.0813569    1.1953393
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.4000551    0.1272673    0.6728428
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.3924467   -0.5947157   -0.1901778
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.4447832   -0.5498987   -0.3396678
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.6520373   -1.0112725   -0.2928021
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0737441   -0.0318562    0.1793444
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0231162   -0.1300346    0.1762670
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.1443843   -0.3488794    0.0601108
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.5809467   -0.6877199   -0.4741735
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.4920706   -0.7300098   -0.2541313
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.8076197   -1.0596379   -0.5556015
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.5609281   -0.5885031   -0.5333531
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.6008652   -0.6320236   -0.5697069
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.6672201   -0.7148452   -0.6195950
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.3866378   -0.4351590   -0.3381165
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.3968542   -0.4548283   -0.3388801
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.3816250   -0.4922259   -0.2710240
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.9256316   -1.0440690   -0.8071941
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -2.3840000   -3.4554070   -1.3125930
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.9111765   -1.3418053   -0.4805476
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.2035569   -0.4048872   -0.0022266
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.2958346   -0.7780623    0.1863931
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.6790259   -0.9559936   -0.4020581
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.1400455   -0.5434352    0.2633443
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.2249291   -0.0435939    0.4934521
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.1386749   -0.1227015    0.4000514
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.3891265    0.2204964    0.5577565
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.1131224   -0.2804030    0.5066478
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.5060803    0.2859748    0.7261857
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.7669042   -1.0054679   -0.5283405
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.9181485   -1.0324813   -0.8038157
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.0715433   -1.3859101   -0.7571766
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.5828091   -0.7074789   -0.4581394
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.6097223   -0.7849280   -0.4345166
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.7067858   -0.9851901   -0.4283815
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.1190694   -1.2248340   -1.0133048
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.1516278   -1.4285980   -0.8746576
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.0204992   -1.3191358   -0.7218626
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.2642274   -1.2975034   -1.2309514
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.2985179   -1.3402825   -1.2567532
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.3706761   -1.4232829   -1.3180693
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.2123770   -1.2569304   -1.1678236
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.2338769   -1.2894134   -1.1783404
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.2476341   -1.3282007   -1.1670675


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                -0.0483146   -0.2475806    0.1509514
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.1502299   -0.4075620    0.1071022
Birth       ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.1165161   -1.2055683   -1.0274639
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.7508875   -0.7730765   -0.7286985
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.6898154   -0.7422632   -0.6373675
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -0.7220008   -0.8576809   -0.5863207
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                 0.1277734   -0.0649431    0.3204900
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                 0.9819369    0.7674415    1.1964324
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.5429020    0.3813518    0.7044523
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.6018803   -0.6892284   -0.5145323
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.5932301   -0.6127836   -0.5736767
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.3895527   -0.4270314   -0.3520739
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -0.9588679   -1.0774868   -0.8402491
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.2730469   -0.4358169   -0.1102769
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                 0.0982009   -0.0794754    0.2758773
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.4080227    0.2828348    0.5332106
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.1304997   -1.2205265   -1.0404728
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.2988352   -1.3224626   -1.2752078
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.2243590   -1.2566569   -1.1920612


### Parameter: ATE


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2032147   -0.4221524    0.8285818
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.3587095   -0.2244011    0.9418201
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1811111   -1.0491159    0.6868937
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1357576   -0.7031452    0.4316301
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.3077044   -0.5713696   -0.0440391
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0350830   -0.4057308    0.4758969
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0522435   -0.1472172    0.2517042
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0296470   -0.2439915    0.3032856
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.3273683    0.0514009    0.6033358
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.1302788   -0.1279870    0.3885447
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0686092   -0.1168652   -0.0203533
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1215643   -0.1790233   -0.0641054
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0413973   -0.1512834    0.0684889
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0179801   -0.1595273    0.1954876
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.8394211   -1.7081472    0.0293051
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0046868   -0.4632653    0.4726389
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.1083806   -0.7040277    0.9207889
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.3641726   -0.8801903    0.1518451
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0240570   -0.5105607    0.5586746
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0890969   -0.5002293    0.6784230
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0692663   -0.7427604    0.6042279
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2262024   -0.5745810    0.1221763
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0523365   -0.2811886    0.1765156
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2595905   -0.6728182    0.1536371
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0506279   -0.2367998    0.1355440
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.2181284   -0.4486272    0.0123704
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0888761   -0.1719708    0.3497231
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.2266730   -0.5003789    0.0470328
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0399371   -0.0808783    0.0010041
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1062920   -0.1588481   -0.0537358
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0102164   -0.0816625    0.0612297
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0050128   -0.1127186    0.1227442
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -1.4583684   -2.5363018   -0.3804350
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0144551   -0.4321640    0.4610742
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0922777   -0.6143493    0.4297939
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4754690   -0.8181417   -0.1327963
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3649746   -0.1142860    0.8442351
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.2787204   -0.2095448    0.7669856
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.2760041   -0.7039453    0.1519371
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.1169538   -0.1603645    0.3942721
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1512443   -0.4159112    0.1134226
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.3046391   -0.6992745    0.0899963
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0269131   -0.2408809    0.1870547
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1239766   -0.4287424    0.1807891
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0325583   -0.3293170    0.2642003
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0985702   -0.2185799    0.4157204
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0342905   -0.0866095    0.0180286
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1064487   -0.1670221   -0.0458753
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0214999   -0.0918985    0.0488986
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0352571   -0.1274007    0.0568865


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.2012246   -0.2270921    0.6295412
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0702299   -0.3205899    0.1801302
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.2460345   -0.4695125   -0.0225565
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0163662   -0.0534170    0.0861493
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0642977    0.0061008    0.1224945
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0443953   -0.0666302   -0.0221603
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0107171   -0.0615873    0.0401532
6 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0194218   -0.0668687    0.0280250
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0479598   -0.1700185    0.0740989
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0532599   -0.3478840    0.4544037
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0833554   -0.2259369    0.0592261
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0549570   -0.2488380    0.1389239
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0439819   -0.1092852    0.0213215
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0209337   -0.0759860    0.0341187
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0323020   -0.0508830   -0.0137210
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0029149   -0.0352950    0.0294653
24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0332363   -0.0875904    0.0211177
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0694900   -0.1662738    0.0272938
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.2382464   -0.1086259    0.5851186
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0188962   -0.0933910    0.1311834
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.1446748   -0.3659504    0.0766007
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0275410   -0.0955683    0.0404862
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0114302   -0.0729806    0.0501202
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0346078   -0.0586590   -0.0105565
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0119820   -0.0432934    0.0193293
