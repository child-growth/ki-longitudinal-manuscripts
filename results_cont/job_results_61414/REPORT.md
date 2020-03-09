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

agecat      studyid      country        hfoodsec                n_cell       n  outcome_variable 
----------  -----------  -------------  ---------------------  -------  ------  -----------------
Birth       GMS-Nepal    NEPAL          Food Secure                442     620  whz              
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure       100     620  whz              
Birth       GMS-Nepal    NEPAL          Food Insecure               78     620  whz              
Birth       JiVitA-3     BANGLADESH     Food Secure               5797   11763  whz              
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure      3947   11763  whz              
Birth       JiVitA-3     BANGLADESH     Food Insecure             2019   11763  whz              
Birth       JiVitA-4     BANGLADESH     Food Secure               1205    2383  whz              
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure       870    2383  whz              
Birth       JiVitA-4     BANGLADESH     Food Insecure              308    2383  whz              
Birth       MAL-ED       BANGLADESH     Food Secure                138     162  whz              
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         3     162  whz              
Birth       MAL-ED       BANGLADESH     Food Insecure               21     162  whz              
Birth       MAL-ED       BRAZIL         Food Secure                  0      26  whz              
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         4      26  whz              
Birth       MAL-ED       BRAZIL         Food Insecure               22      26  whz              
Birth       MAL-ED       INDIA          Food Secure                 32      35  whz              
Birth       MAL-ED       INDIA          Mildly Food Insecure         1      35  whz              
Birth       MAL-ED       INDIA          Food Insecure                2      35  whz              
Birth       MAL-ED       NEPAL          Food Secure                 10      14  whz              
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1      14  whz              
Birth       MAL-ED       NEPAL          Food Insecure                3      14  whz              
Birth       MAL-ED       PERU           Food Secure                 23      89  whz              
Birth       MAL-ED       PERU           Mildly Food Insecure        22      89  whz              
Birth       MAL-ED       PERU           Food Insecure               44      89  whz              
Birth       MAL-ED       SOUTH AFRICA   Food Secure                 45      87  whz              
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      87  whz              
Birth       MAL-ED       SOUTH AFRICA   Food Insecure               33      87  whz              
Birth       NIH-Birth    BANGLADESH     Food Secure                 86     575  whz              
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure       453     575  whz              
Birth       NIH-Birth    BANGLADESH     Food Insecure               36     575  whz              
Birth       NIH-Crypto   BANGLADESH     Food Secure                429     707  whz              
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure       199     707  whz              
Birth       NIH-Crypto   BANGLADESH     Food Insecure               79     707  whz              
6 months    GMS-Nepal    NEPAL          Food Secure                396     546  whz              
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure        76     546  whz              
6 months    GMS-Nepal    NEPAL          Food Insecure               74     546  whz              
6 months    JiVitA-3     BANGLADESH     Food Secure               8396   16764  whz              
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure      5590   16764  whz              
6 months    JiVitA-3     BANGLADESH     Food Insecure             2778   16764  whz              
6 months    JiVitA-4     BANGLADESH     Food Secure               2445    4795  whz              
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1728    4795  whz              
6 months    JiVitA-4     BANGLADESH     Food Insecure              622    4795  whz              
6 months    MAL-ED       BANGLADESH     Food Secure                160     193  whz              
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     193  whz              
6 months    MAL-ED       BANGLADESH     Food Insecure               29     193  whz              
6 months    MAL-ED       BRAZIL         Food Secure                  3     129  whz              
6 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129  whz              
6 months    MAL-ED       BRAZIL         Food Insecure              115     129  whz              
6 months    MAL-ED       INDIA          Food Secure                190     212  whz              
6 months    MAL-ED       INDIA          Mildly Food Insecure         5     212  whz              
6 months    MAL-ED       INDIA          Food Insecure               17     212  whz              
6 months    MAL-ED       NEPAL          Food Secure                 94     128  whz              
6 months    MAL-ED       NEPAL          Mildly Food Insecure        15     128  whz              
6 months    MAL-ED       NEPAL          Food Insecure               19     128  whz              
6 months    MAL-ED       PERU           Food Secure                 27     111  whz              
6 months    MAL-ED       PERU           Mildly Food Insecure        28     111  whz              
6 months    MAL-ED       PERU           Food Insecure               56     111  whz              
6 months    MAL-ED       SOUTH AFRICA   Food Secure                129     228  whz              
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  whz              
6 months    MAL-ED       SOUTH AFRICA   Food Insecure               81     228  whz              
6 months    NIH-Birth    BANGLADESH     Food Secure                 80     537  whz              
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       417     537  whz              
6 months    NIH-Birth    BANGLADESH     Food Insecure               40     537  whz              
6 months    NIH-Crypto   BANGLADESH     Food Secure                427     715  whz              
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715  whz              
6 months    NIH-Crypto   BANGLADESH     Food Insecure               84     715  whz              
24 months   GMS-Nepal    NEPAL          Food Secure                341     477  whz              
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     477  whz              
24 months   GMS-Nepal    NEPAL          Food Insecure               69     477  whz              
24 months   JiVitA-3     BANGLADESH     Food Secure               3857    8190  whz              
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure      2753    8190  whz              
24 months   JiVitA-3     BANGLADESH     Food Insecure             1580    8190  whz              
24 months   JiVitA-4     BANGLADESH     Food Secure               2389    4696  whz              
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1699    4696  whz              
24 months   JiVitA-4     BANGLADESH     Food Insecure              608    4696  whz              
24 months   MAL-ED       BANGLADESH     Food Secure                161     194  whz              
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     194  whz              
24 months   MAL-ED       BANGLADESH     Food Insecure               29     194  whz              
24 months   MAL-ED       BRAZIL         Food Secure                  3     129  whz              
24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129  whz              
24 months   MAL-ED       BRAZIL         Food Insecure              115     129  whz              
24 months   MAL-ED       INDIA          Food Secure                190     212  whz              
24 months   MAL-ED       INDIA          Mildly Food Insecure         5     212  whz              
24 months   MAL-ED       INDIA          Food Insecure               17     212  whz              
24 months   MAL-ED       NEPAL          Food Secure                 94     128  whz              
24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128  whz              
24 months   MAL-ED       NEPAL          Food Insecure               19     128  whz              
24 months   MAL-ED       PERU           Food Secure                 26     107  whz              
24 months   MAL-ED       PERU           Mildly Food Insecure        27     107  whz              
24 months   MAL-ED       PERU           Food Insecure               54     107  whz              
24 months   MAL-ED       SOUTH AFRICA   Food Secure                129     228  whz              
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  whz              
24 months   MAL-ED       SOUTH AFRICA   Food Insecure               81     228  whz              
24 months   NIH-Birth    BANGLADESH     Food Secure                 68     428  whz              
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       327     428  whz              
24 months   NIH-Birth    BANGLADESH     Food Insecure               33     428  whz              
24 months   NIH-Crypto   BANGLADESH     Food Secure                334     514  whz              
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514  whz              
24 months   NIH-Crypto   BANGLADESH     Food Insecure               56     514  whz              


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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
![](/tmp/a44b27dd-a4f7-49c8-93cb-66d85e79fdef/f3cc6e23-8b2b-4c30-a47f-6a6bf3a7452e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a44b27dd-a4f7-49c8-93cb-66d85e79fdef/f3cc6e23-8b2b-4c30-a47f-6a6bf3a7452e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a44b27dd-a4f7-49c8-93cb-66d85e79fdef/f3cc6e23-8b2b-4c30-a47f-6a6bf3a7452e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            NA                -1.1875833   -1.2924501   -1.0827165
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.8444844   -1.0909997   -0.5979692
Birth       GMS-Nepal    NEPAL          Food Insecure          NA                -1.0727070   -1.3729197   -0.7724943
Birth       JiVitA-3     BANGLADESH     Food Secure            NA                -0.7369859   -0.7720123   -0.7019596
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -0.7609311   -0.8025221   -0.7193401
Birth       JiVitA-3     BANGLADESH     Food Insecure          NA                -0.7930855   -0.8459598   -0.7402112
Birth       JiVitA-4     BANGLADESH     Food Secure            NA                -0.6814641   -0.7484609   -0.6144673
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.7112382   -0.7997503   -0.6227262
Birth       JiVitA-4     BANGLADESH     Food Insecure          NA                -0.6669839   -0.8344549   -0.4995128
Birth       MAL-ED       PERU           Food Secure            NA                -0.2670291   -0.7447178    0.2106595
Birth       MAL-ED       PERU           Mildly Food Insecure   NA                 0.1076436   -0.1915061    0.4067932
Birth       MAL-ED       PERU           Food Insecure          NA                 0.1024201   -0.1822820    0.3871222
Birth       MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0800000   -0.4003913    0.2403913
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.2611111   -1.0678216    0.5455994
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.2157576   -0.6840291    0.2525139
Birth       NIH-Birth    BANGLADESH     Food Secure            NA                -1.1444205   -1.3885519   -0.9002891
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -1.4020739   -1.5103166   -1.2938312
Birth       NIH-Birth    BANGLADESH     Food Insecure          NA                -1.2195962   -1.6310816   -0.8081109
Birth       NIH-Crypto   BANGLADESH     Food Secure            NA                -1.2672864   -1.3786278   -1.1559450
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2094962   -1.3708175   -1.0481749
Birth       NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.2021874   -1.4459614   -0.9584135
6 months    GMS-Nepal    NEPAL          Food Secure            NA                -0.5891295   -0.6956492   -0.4826097
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.4603373   -0.6874382   -0.2332365
6 months    GMS-Nepal    NEPAL          Food Insecure          NA                -0.8842560   -1.1125482   -0.6559638
6 months    JiVitA-3     BANGLADESH     Food Secure            NA                -0.5825236   -0.6114627   -0.5535846
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -0.5886881   -0.6232589   -0.5541174
6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                -0.6533766   -0.7109021   -0.5958511
6 months    JiVitA-4     BANGLADESH     Food Secure            NA                -0.3827431   -0.4307800   -0.3347062
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.3991097   -0.4567950   -0.3414244
6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                -0.3916717   -0.5043328   -0.2790106
6 months    MAL-ED       INDIA          Food Secure            NA                -0.7025789   -0.8453715   -0.5597864
6 months    MAL-ED       INDIA          Mildly Food Insecure   NA                -1.5420000   -2.3989104   -0.6850896
6 months    MAL-ED       INDIA          Food Insecure          NA                -0.6978922   -1.1435259   -0.2522584
6 months    MAL-ED       NEPAL          Food Secure            NA                 0.1692251   -0.0517248    0.3901751
6 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.2751376   -0.4342108    0.9844860
6 months    MAL-ED       NEPAL          Food Insecure          NA                -0.3039563   -0.7719835    0.1640710
6 months    MAL-ED       PERU           Food Secure            NA                 0.9600368    0.5304507    1.3896229
6 months    MAL-ED       PERU           Mildly Food Insecure   NA                 0.9638435    0.6966087    1.2310782
6 months    MAL-ED       PERU           Food Insecure          NA                 1.0274688    0.6722773    1.3826603
6 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.6458273    0.4306975    0.8609571
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.5415524   -0.0619292    1.1450340
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.3794181    0.1082613    0.6505748
6 months    NIH-Birth    BANGLADESH     Food Secure            NA                -0.4512121   -0.6516542   -0.2507699
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.4250254   -0.5298581   -0.3201927
6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                -0.7378972   -1.1085372   -0.3672572
6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0703450   -0.0356540    0.1763440
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0743394   -0.0792600    0.2279389
6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.1904429   -0.4058333    0.0249474
24 months   GMS-Nepal    NEPAL          Food Secure            NA                -1.1287873   -1.2305632   -1.0270115
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.2360472   -1.5282356   -0.9438588
24 months   GMS-Nepal    NEPAL          Food Insecure          NA                -1.0929650   -1.4002312   -0.7856988
24 months   JiVitA-3     BANGLADESH     Food Secure            NA                -1.2812456   -1.3175996   -1.2448916
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.2858565   -1.3315998   -1.2401132
24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                -1.3629993   -1.4217446   -1.3042540
24 months   JiVitA-4     BANGLADESH     Food Secure            NA                -1.2108341   -1.2553099   -1.1663583
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.2363539   -1.2917709   -1.1809369
24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                -1.2413128   -1.3206788   -1.1619468
24 months   MAL-ED       INDIA          Food Secure            NA                -0.9256316   -1.0440690   -0.8071941
24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -2.3840000   -3.4554070   -1.3125930
24 months   MAL-ED       INDIA          Food Insecure          NA                -0.9111765   -1.3418053   -0.4805476
24 months   MAL-ED       NEPAL          Food Secure            NA                -0.2104492   -0.4037692   -0.0171292
24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.2942561   -0.7346826    0.1461703
24 months   MAL-ED       NEPAL          Food Insecure          NA                -0.6391593   -0.9521996   -0.3261189
24 months   MAL-ED       PERU           Food Secure            NA                -0.0510439   -0.4876534    0.3855655
24 months   MAL-ED       PERU           Mildly Food Insecure   NA                 0.2099514   -0.0768194    0.4967222
24 months   MAL-ED       PERU           Food Insecure          NA                 0.1038965   -0.1673853    0.3751783
24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.3788969    0.2105226    0.5472712
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0227188   -0.3821613    0.3367237
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.4846277    0.2664857    0.7027697
24 months   NIH-Birth    BANGLADESH     Food Secure            NA                -0.8377757   -1.0831276   -0.5924237
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.9144572   -1.0306989   -0.7982155
24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -1.0860769   -1.4217840   -0.7503699
24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -0.6049752   -0.7277557   -0.4821946
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.5814279   -0.7519292   -0.4109267
24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.7069115   -0.9719542   -0.4418688


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          NA                   NA                -1.1165161   -1.2055683   -1.0274639
Birth       JiVitA-3     BANGLADESH     NA                   NA                -0.7508875   -0.7730765   -0.7286985
Birth       JiVitA-4     BANGLADESH     NA                   NA                -0.6898154   -0.7422632   -0.6373675
Birth       MAL-ED       PERU           NA                   NA                -0.0483146   -0.2475806    0.1509514
Birth       MAL-ED       SOUTH AFRICA   NA                   NA                -0.1502299   -0.4075620    0.1071022
Birth       NIH-Birth    BANGLADESH     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto   BANGLADESH     NA                   NA                -1.2441513   -1.3281130   -1.1601897
6 months    GMS-Nepal    NEPAL          NA                   NA                -0.6018803   -0.6892284   -0.5145323
6 months    JiVitA-3     BANGLADESH     NA                   NA                -0.5932301   -0.6127836   -0.5736767
6 months    JiVitA-4     BANGLADESH     NA                   NA                -0.3895527   -0.4270314   -0.3520739
6 months    MAL-ED       INDIA          NA                   NA                -0.7220008   -0.8576809   -0.5863207
6 months    MAL-ED       NEPAL          NA                   NA                 0.1277734   -0.0649431    0.3204900
6 months    MAL-ED       PERU           NA                   NA                 0.9819369    0.7674415    1.1964324
6 months    MAL-ED       SOUTH AFRICA   NA                   NA                 0.5429020    0.3813518    0.7044523
6 months    NIH-Birth    BANGLADESH     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH     NA                   NA                 0.0297622   -0.0491685    0.1086930
24 months   GMS-Nepal    NEPAL          NA                   NA                -1.1304997   -1.2205265   -1.0404728
24 months   JiVitA-3     BANGLADESH     NA                   NA                -1.2988352   -1.3224626   -1.2752078
24 months   JiVitA-4     BANGLADESH     NA                   NA                -1.2243590   -1.2566569   -1.1920612
24 months   MAL-ED       INDIA          NA                   NA                -0.9588679   -1.0774868   -0.8402491
24 months   MAL-ED       NEPAL          NA                   NA                -0.2730469   -0.4358169   -0.1102769
24 months   MAL-ED       PERU           NA                   NA                 0.0982009   -0.0794754    0.2758773
24 months   MAL-ED       SOUTH AFRICA   NA                   NA                 0.4080227    0.2828348    0.5332106
24 months   NIH-Birth    BANGLADESH     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH     NA                   NA                -0.6103502   -0.7050157   -0.5156847


### Parameter: ATE


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.3430989    0.0755059    0.6106919
Birth       GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.1148763   -0.2020191    0.4317717
Birth       JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0239452   -0.0765060    0.0286157
Birth       JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0560996   -0.1179213    0.0057221
Birth       JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0297741   -0.1396189    0.0800707
Birth       JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0144803   -0.1653844    0.1943449
Birth       MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3746727   -0.1891907    0.9385361
Birth       MAL-ED       PERU           Food Insecure          Food Secure        0.3694493   -0.1882075    0.9271060
Birth       MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1811111   -1.0491159    0.6868937
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1357576   -0.7031452    0.4316301
Birth       NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.2576534   -0.5248268    0.0095200
Birth       NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0751757   -0.5537611    0.4034096
Birth       NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0577902   -0.1384604    0.2540407
Birth       NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0650990   -0.2034237    0.3336217
6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.1287921   -0.1232791    0.3808634
6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.2951265   -0.5466034   -0.0436497
6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0061645   -0.0497116    0.0373826
6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0708530   -0.1337435   -0.0079625
6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0163666   -0.0868143    0.0540810
6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0089286   -0.1279523    0.1100950
6 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.8394211   -1.7081472    0.0293051
6 months    MAL-ED       INDIA          Food Insecure          Food Secure        0.0046868   -0.4632653    0.4726389
6 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.1059125   -0.6358899    0.8477149
6 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4731814   -1.0018570    0.0554942
6 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0038066   -0.5002074    0.5078207
6 months    MAL-ED       PERU           Food Insecure          Food Secure        0.0674319   -0.4888045    0.6236684
6 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1042749   -0.7448916    0.5363419
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2664092   -0.6128331    0.0800147
6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0261867   -0.2001332    0.2525066
6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.2866851   -0.7093799    0.1360097
6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0039944   -0.1842230    0.1922118
6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.2607879   -0.5029615   -0.0186143
24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1072599   -0.4171630    0.2026432
24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0358223   -0.2876179    0.3592626
24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0046109   -0.0622209    0.0529991
24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0817537   -0.1489716   -0.0145358
24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0255198   -0.0958226    0.0447829
24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0304787   -0.1214245    0.0604671
24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -1.4583684   -2.5363018   -0.3804350
24 months   MAL-ED       INDIA          Food Insecure          Food Secure        0.0144551   -0.4321640    0.4610742
24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0838069   -0.5650700    0.3974562
24 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4287101   -0.7987840   -0.0586361
24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2609953   -0.2661677    0.7881584
24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.1549404   -0.3638190    0.6736998
24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.4016157   -0.8019941   -0.0012373
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.1057308   -0.1710835    0.3825451
24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0766816   -0.3483377    0.1949745
24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.2483013   -0.6641585    0.1675560
24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0235472   -0.1849447    0.2320392
24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1019363   -0.3939029    0.1900303


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                 0.0710672    0.0096630   0.1324713
Birth       JiVitA-3     BANGLADESH     Food Secure          NA                -0.0139016   -0.0403911   0.0125879
Birth       JiVitA-4     BANGLADESH     Food Secure          NA                -0.0083512   -0.0592674   0.0425650
Birth       MAL-ED       PERU           Food Secure          NA                 0.2187145   -0.1723258   0.6097548
Birth       MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0702299   -0.3205899   0.1801302
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                -0.2055012   -0.4339114   0.0229089
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0231350   -0.0464167   0.0926868
6 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0127509   -0.0684223   0.0429205
6 months    JiVitA-3     BANGLADESH     Food Secure          NA                -0.0107065   -0.0314920   0.0100790
6 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0068096   -0.0386011   0.0249820
6 months    MAL-ED       INDIA          Food Secure          NA                -0.0194218   -0.0668687   0.0280250
6 months    MAL-ED       NEPAL          Food Secure          NA                -0.0414517   -0.1650401   0.0821368
6 months    MAL-ED       PERU           Food Secure          NA                 0.0219001   -0.3539793   0.3977795
6 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.1029252   -0.2454502   0.0395997
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0038083   -0.1904772   0.1980938
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0405828   -0.1077171   0.0265515
24 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0017123   -0.0615661   0.0581414
24 months   JiVitA-3     BANGLADESH     Food Secure          NA                -0.0175896   -0.0459776   0.0107984
24 months   JiVitA-4     BANGLADESH     Food Secure          NA                -0.0135249   -0.0446949   0.0176450
24 months   MAL-ED       INDIA          Food Secure          NA                -0.0332363   -0.0875904   0.0211177
24 months   MAL-ED       NEPAL          Food Secure          NA                -0.0625977   -0.1538524   0.0286571
24 months   MAL-ED       PERU           Food Secure          NA                 0.1492449   -0.2245534   0.5230432
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0291257   -0.0838727   0.1421242
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0738034   -0.3023595   0.1547528
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0053750   -0.0706129   0.0598629
