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

agecat      studyid      country        hfoodsec                n_cell       n
----------  -----------  -------------  ---------------------  -------  ------
Birth       GMS-Nepal    NEPAL          Food Secure                442     620
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure       100     620
Birth       GMS-Nepal    NEPAL          Food Insecure               78     620
Birth       JiVitA-3     BANGLADESH     Food Secure               5797   11763
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure      3947   11763
Birth       JiVitA-3     BANGLADESH     Food Insecure             2019   11763
Birth       JiVitA-4     BANGLADESH     Food Secure               1205    2383
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure       870    2383
Birth       JiVitA-4     BANGLADESH     Food Insecure              308    2383
Birth       MAL-ED       BANGLADESH     Food Secure                138     162
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         3     162
Birth       MAL-ED       BANGLADESH     Food Insecure               21     162
Birth       MAL-ED       BRAZIL         Food Secure                  0      26
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         4      26
Birth       MAL-ED       BRAZIL         Food Insecure               22      26
Birth       MAL-ED       INDIA          Food Secure                 32      35
Birth       MAL-ED       INDIA          Mildly Food Insecure         1      35
Birth       MAL-ED       INDIA          Food Insecure                2      35
Birth       MAL-ED       NEPAL          Food Secure                 10      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1      14
Birth       MAL-ED       NEPAL          Food Insecure                3      14
Birth       MAL-ED       PERU           Food Secure                 23      89
Birth       MAL-ED       PERU           Mildly Food Insecure        22      89
Birth       MAL-ED       PERU           Food Insecure               44      89
Birth       MAL-ED       SOUTH AFRICA   Food Secure                 45      87
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      87
Birth       MAL-ED       SOUTH AFRICA   Food Insecure               33      87
Birth       NIH-Birth    BANGLADESH     Food Secure                 86     575
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure       453     575
Birth       NIH-Birth    BANGLADESH     Food Insecure               36     575
Birth       NIH-Crypto   BANGLADESH     Food Secure                429     707
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure       199     707
Birth       NIH-Crypto   BANGLADESH     Food Insecure               79     707
6 months    GMS-Nepal    NEPAL          Food Secure                396     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure        76     546
6 months    GMS-Nepal    NEPAL          Food Insecure               74     546
6 months    JiVitA-3     BANGLADESH     Food Secure               8396   16764
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure      5590   16764
6 months    JiVitA-3     BANGLADESH     Food Insecure             2778   16764
6 months    JiVitA-4     BANGLADESH     Food Secure               2445    4795
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1728    4795
6 months    JiVitA-4     BANGLADESH     Food Insecure              622    4795
6 months    MAL-ED       BANGLADESH     Food Secure                160     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     193
6 months    MAL-ED       BANGLADESH     Food Insecure               29     193
6 months    MAL-ED       BRAZIL         Food Secure                  3     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6 months    MAL-ED       BRAZIL         Food Insecure              115     129
6 months    MAL-ED       INDIA          Food Secure                190     212
6 months    MAL-ED       INDIA          Mildly Food Insecure         5     212
6 months    MAL-ED       INDIA          Food Insecure               17     212
6 months    MAL-ED       NEPAL          Food Secure                 94     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure        15     128
6 months    MAL-ED       NEPAL          Food Insecure               19     128
6 months    MAL-ED       PERU           Food Secure                 27     111
6 months    MAL-ED       PERU           Mildly Food Insecure        28     111
6 months    MAL-ED       PERU           Food Insecure               56     111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                129     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure               81     228
6 months    NIH-Birth    BANGLADESH     Food Secure                 80     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       417     537
6 months    NIH-Birth    BANGLADESH     Food Insecure               40     537
6 months    NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure               84     715
24 months   GMS-Nepal    NEPAL          Food Secure                341     477
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     477
24 months   GMS-Nepal    NEPAL          Food Insecure               69     477
24 months   JiVitA-3     BANGLADESH     Food Secure               3857    8190
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure      2753    8190
24 months   JiVitA-3     BANGLADESH     Food Insecure             1580    8190
24 months   JiVitA-4     BANGLADESH     Food Secure               2389    4696
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1699    4696
24 months   JiVitA-4     BANGLADESH     Food Insecure              608    4696
24 months   MAL-ED       BANGLADESH     Food Secure                161     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     194
24 months   MAL-ED       BANGLADESH     Food Insecure               29     194
24 months   MAL-ED       BRAZIL         Food Secure                  3     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129
24 months   MAL-ED       BRAZIL         Food Insecure              115     129
24 months   MAL-ED       INDIA          Food Secure                190     212
24 months   MAL-ED       INDIA          Mildly Food Insecure         5     212
24 months   MAL-ED       INDIA          Food Insecure               17     212
24 months   MAL-ED       NEPAL          Food Secure                 94     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128
24 months   MAL-ED       NEPAL          Food Insecure               19     128
24 months   MAL-ED       PERU           Food Secure                 26     107
24 months   MAL-ED       PERU           Mildly Food Insecure        27     107
24 months   MAL-ED       PERU           Food Insecure               54     107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                129     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure               81     228
24 months   NIH-Birth    BANGLADESH     Food Secure                 68     428
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       327     428
24 months   NIH-Birth    BANGLADESH     Food Insecure               33     428
24 months   NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure               56     514


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
![](/tmp/5dc15e3a-fe25-4f57-b147-57e618c85ebe/17ec018c-afe4-49a0-a13c-059700edc1c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5dc15e3a-fe25-4f57-b147-57e618c85ebe/17ec018c-afe4-49a0-a13c-059700edc1c0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5dc15e3a-fe25-4f57-b147-57e618c85ebe/17ec018c-afe4-49a0-a13c-059700edc1c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            NA                -1.1952589   -1.2982129   -1.0923049
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.9199927   -1.1627288   -0.6772565
Birth       GMS-Nepal    NEPAL          Food Insecure          NA                -1.1423579   -1.4242903   -0.8604256
Birth       JiVitA-3     BANGLADESH     Food Secure            NA                -0.7365261   -0.7711812   -0.7018710
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -0.7568950   -0.7984651   -0.7153250
Birth       JiVitA-3     BANGLADESH     Food Insecure          NA                -0.7850937   -0.8371906   -0.7329968
Birth       JiVitA-4     BANGLADESH     Food Secure            NA                -0.6824350   -0.7494290   -0.6154410
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.7124700   -0.8009069   -0.6240332
Birth       JiVitA-4     BANGLADESH     Food Insecure          NA                -0.6714869   -0.8460128   -0.4969609
Birth       MAL-ED       PERU           Food Secure            NA                -0.2193419   -0.7210378    0.2823539
Birth       MAL-ED       PERU           Mildly Food Insecure   NA                 0.1099433   -0.2131151    0.4330017
Birth       MAL-ED       PERU           Food Insecure          NA                 0.0962409   -0.1840878    0.3765697
Birth       MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0800000   -0.4003913    0.2403913
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.2611111   -1.0678216    0.5455994
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.2157576   -0.6840291    0.2525139
Birth       NIH-Birth    BANGLADESH     Food Secure            NA                -1.1544396   -1.3985610   -0.9103182
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -1.4049931   -1.5133093   -1.2966769
Birth       NIH-Birth    BANGLADESH     Food Insecure          NA                -1.2131526   -1.6147972   -0.8115080
Birth       NIH-Crypto   BANGLADESH     Food Secure            NA                -1.2604594   -1.3699937   -1.1509251
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2252839   -1.3918263   -1.0587414
Birth       NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.2346484   -1.4761373   -0.9931595
6 months    GMS-Nepal    NEPAL          Food Secure            NA                -0.5825495   -0.6907184   -0.4743805
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.4772231   -0.7049731   -0.2494731
6 months    GMS-Nepal    NEPAL          Food Insecure          NA                -0.9463363   -1.1733854   -0.7192872
6 months    JiVitA-3     BANGLADESH     Food Secure            NA                -0.5813843   -0.6106741   -0.5520946
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -0.5908737   -0.6254712   -0.5562762
6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                -0.6541940   -0.7097670   -0.5986210
6 months    JiVitA-4     BANGLADESH     Food Secure            NA                -0.3840510   -0.4321642   -0.3359377
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.3981390   -0.4560051   -0.3402728
6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                -0.3882386   -0.5007119   -0.2757653
6 months    MAL-ED       INDIA          Food Secure            NA                -0.7025789   -0.8453715   -0.5597864
6 months    MAL-ED       INDIA          Mildly Food Insecure   NA                -1.5420000   -2.3989104   -0.6850896
6 months    MAL-ED       INDIA          Food Insecure          NA                -0.6978922   -1.1435259   -0.2522584
6 months    MAL-ED       NEPAL          Food Secure            NA                 0.1583146   -0.0625973    0.3792264
6 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.3530174   -0.4297547    1.1357896
6 months    MAL-ED       NEPAL          Food Insecure          NA                -0.2535110   -0.6658585    0.1588365
6 months    MAL-ED       PERU           Food Secure            NA                 0.9630042    0.5145916    1.4114167
6 months    MAL-ED       PERU           Mildly Food Insecure   NA                 0.9761693    0.7145286    1.2378101
6 months    MAL-ED       PERU           Food Insecure          NA                 1.0211484    0.6689339    1.3733629
6 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.6470072    0.4297073    0.8643071
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.5544660   -0.0807843    1.1897163
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.3705129    0.1001990    0.6408269
6 months    NIH-Birth    BANGLADESH     Food Secure            NA                -0.4156047   -0.6179947   -0.2132147
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.4350097   -0.5399586   -0.3300609
6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                -0.6963476   -1.0774421   -0.3152531
6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0693302   -0.0356389    0.1742994
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0306642   -0.1191945    0.1805229
6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.1773717   -0.3863847    0.0316412
24 months   GMS-Nepal    NEPAL          Food Secure            NA                -1.1273336   -1.2295984   -1.0250687
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.2524734   -1.5628420   -0.9421048
24 months   GMS-Nepal    NEPAL          Food Insecure          NA                -1.1750276   -1.5022338   -0.8478215
24 months   JiVitA-3     BANGLADESH     Food Secure            NA                -1.2793328   -1.3158043   -1.2428613
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.2859952   -1.3311457   -1.2408447
24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                -1.3670065   -1.4263233   -1.3076897
24 months   JiVitA-4     BANGLADESH     Food Secure            NA                -1.2110050   -1.2553702   -1.1666397
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.2353846   -1.2907121   -1.1800570
24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                -1.2414245   -1.3210345   -1.1618145
24 months   MAL-ED       INDIA          Food Secure            NA                -0.9256316   -1.0440690   -0.8071941
24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -2.3840000   -3.4554070   -1.3125930
24 months   MAL-ED       INDIA          Food Insecure          NA                -0.9111765   -1.3418053   -0.4805476
24 months   MAL-ED       NEPAL          Food Secure            NA                -0.2088597   -0.4026803   -0.0150391
24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.2972323   -0.7346836    0.1402190
24 months   MAL-ED       NEPAL          Food Insecure          NA                -0.6721599   -0.9455210   -0.3987989
24 months   MAL-ED       PERU           Food Secure            NA                -0.1696925   -0.5641431    0.2247580
24 months   MAL-ED       PERU           Mildly Food Insecure   NA                 0.1969306   -0.0756522    0.4695135
24 months   MAL-ED       PERU           Food Insecure          NA                 0.0869713   -0.1811898    0.3551323
24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.3800626    0.2133513    0.5467739
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0575002   -0.3466713    0.4616717
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.4507468    0.2330555    0.6684381
24 months   NIH-Birth    BANGLADESH     Food Secure            NA                -0.8568934   -1.1016999   -0.6120869
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.9079598   -1.0230304   -0.7928891
24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -1.1126667   -1.4555645   -0.7697690
24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -0.6023167   -0.7258671   -0.4787664
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.5739747   -0.7413437   -0.4066057
24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.6687676   -0.9541688   -0.3833664


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
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.2752663    0.0113449    0.5391876
Birth       GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0529010   -0.2471684    0.3529703
Birth       JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0203689   -0.0730317    0.0322938
Birth       JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0485676   -0.1094119    0.0122767
Birth       JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0300351   -0.1397716    0.0797015
Birth       JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0109481   -0.1753437    0.1972399
Birth       MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3292852   -0.2643504    0.9229209
Birth       MAL-ED       PERU           Food Insecure          Food Secure        0.3155829   -0.2680761    0.8992419
Birth       MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1811111   -1.0491159    0.6868937
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1357576   -0.7031452    0.4316301
Birth       NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.2505535   -0.5177366    0.0166296
Birth       NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0587130   -0.5287799    0.4113539
Birth       NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0351755   -0.1649164    0.2352674
Birth       NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0258110   -0.2400116    0.2916336
6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.1053264   -0.1469282    0.3575809
6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.3637868   -0.6152772   -0.1122964
6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0094894   -0.0537361    0.0347573
6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0728096   -0.1340359   -0.0115834
6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0140880   -0.0849518    0.0567758
6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0041876   -0.1230397    0.1146644
6 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.8394211   -1.7081472    0.0293051
6 months    MAL-ED       INDIA          Food Insecure          Food Secure        0.0046868   -0.4632653    0.4726389
6 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.1947029   -0.6148701    1.0042759
6 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4118256   -0.8879813    0.0643302
6 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0131652   -0.5077947    0.5341251
6 months    MAL-ED       PERU           Food Insecure          Food Secure        0.0581442   -0.5129987    0.6292872
6 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0925412   -0.7632780    0.5781957
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2764943   -0.6240888    0.0711003
6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0194050   -0.2474656    0.2086556
6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.2807429   -0.7124512    0.1509655
6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0386660   -0.2215979    0.1442658
6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.2467020   -0.4809042   -0.0124997
24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1251399   -0.4518293    0.2015496
24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0476941   -0.3902159    0.2948277
24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0066624   -0.0637304    0.0504056
24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0876737   -0.1545679   -0.0207795
24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0243796   -0.0946583    0.0458991
24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0304195   -0.1215338    0.0606948
24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -1.4583684   -2.5363018   -0.3804350
24 months   MAL-ED       INDIA          Food Insecure          Food Secure        0.0144551   -0.4321640    0.4610742
24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0883726   -0.5674878    0.3907425
24 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4633002   -0.8009448   -0.1256557
24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3666232   -0.1146840    0.8479303
24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.2566638   -0.2203460    0.7336736
24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.3225624   -0.7596196    0.1144948
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0706842   -0.2047026    0.3460710
24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0510664   -0.3215478    0.2194150
24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.2557733   -0.6773415    0.1657948
24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0283420   -0.1772391    0.2339232
24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0664508   -0.3782437    0.2453421


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                 0.0787428    0.0187218   0.1387637
Birth       JiVitA-3     BANGLADESH     Food Secure          NA                -0.0143614   -0.0403059   0.0115830
Birth       JiVitA-4     BANGLADESH     Food Secure          NA                -0.0073804   -0.0581918   0.0434311
Birth       MAL-ED       PERU           Food Secure          NA                 0.1710273   -0.2462084   0.5882631
Birth       MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0702299   -0.3205899   0.1801302
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                -0.1954821   -0.4238226   0.0328583
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0163080   -0.0524272   0.0850432
6 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0193309   -0.0766717   0.0380099
6 months    JiVitA-3     BANGLADESH     Food Secure          NA                -0.0118458   -0.0331984   0.0095068
6 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0055017   -0.0374253   0.0264220
6 months    MAL-ED       INDIA          Food Secure          NA                -0.0194218   -0.0668687   0.0280250
6 months    MAL-ED       NEPAL          Food Secure          NA                -0.0305411   -0.1530643   0.0919820
6 months    MAL-ED       PERU           Food Secure          NA                 0.0189328   -0.3738435   0.4117090
6 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.1041052   -0.2483672   0.0401569
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.0317991   -0.2278219   0.1642238
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0395680   -0.1044512   0.0253152
24 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0031661   -0.0626316   0.0562994
24 months   JiVitA-3     BANGLADESH     Food Secure          NA                -0.0195024   -0.0476603   0.0086556
24 months   JiVitA-4     BANGLADESH     Food Secure          NA                -0.0133541   -0.0444838   0.0177757
24 months   MAL-ED       INDIA          Food Secure          NA                -0.0332363   -0.0875904   0.0211177
24 months   MAL-ED       NEPAL          Food Secure          NA                -0.0641872   -0.1560043   0.0276300
24 months   MAL-ED       PERU           Food Secure          NA                 0.2678935   -0.0694009   0.6051878
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0279601   -0.0830325   0.1389526
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0546856   -0.2822035   0.1728322
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0080335   -0.0737352   0.0576683
