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

agecat      studyid      country        hfoodsec                n_cell       n  outcome_variable 
----------  -----------  -------------  ---------------------  -------  ------  -----------------
Birth       GMS-Nepal    NEPAL          Food Secure                477     672  haz              
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure       106     672  haz              
Birth       GMS-Nepal    NEPAL          Food Insecure               89     672  haz              
Birth       JiVitA-3     BANGLADESH     Food Secure               6951   14364  haz              
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure      4877   14364  haz              
Birth       JiVitA-3     BANGLADESH     Food Insecure             2536   14364  haz              
Birth       JiVitA-4     BANGLADESH     Food Secure               1433    2810  haz              
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure      1018    2810  haz              
Birth       JiVitA-4     BANGLADESH     Food Insecure              359    2810  haz              
Birth       MAL-ED       BANGLADESH     Food Secure                144     172  haz              
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         4     172  haz              
Birth       MAL-ED       BANGLADESH     Food Insecure               24     172  haz              
Birth       MAL-ED       BRAZIL         Food Secure                  0      28  haz              
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         4      28  haz              
Birth       MAL-ED       BRAZIL         Food Insecure               24      28  haz              
Birth       MAL-ED       INDIA          Food Secure                 34      37  haz              
Birth       MAL-ED       INDIA          Mildly Food Insecure         1      37  haz              
Birth       MAL-ED       INDIA          Food Insecure                2      37  haz              
Birth       MAL-ED       NEPAL          Food Secure                 10      14  haz              
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1      14  haz              
Birth       MAL-ED       NEPAL          Food Insecure                3      14  haz              
Birth       MAL-ED       PERU           Food Secure                 24      91  haz              
Birth       MAL-ED       PERU           Mildly Food Insecure        23      91  haz              
Birth       MAL-ED       PERU           Food Insecure               44      91  haz              
Birth       MAL-ED       SOUTH AFRICA   Food Secure                 45      88  haz              
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      88  haz              
Birth       MAL-ED       SOUTH AFRICA   Food Insecure               34      88  haz              
Birth       NIH-Birth    BANGLADESH     Food Secure                 90     608  haz              
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure       478     608  haz              
Birth       NIH-Birth    BANGLADESH     Food Insecure               40     608  haz              
Birth       NIH-Crypto   BANGLADESH     Food Secure                439     732  haz              
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure       209     732  haz              
Birth       NIH-Crypto   BANGLADESH     Food Insecure               84     732  haz              
6 months    GMS-Nepal    NEPAL          Food Secure                396     546  haz              
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure        76     546  haz              
6 months    GMS-Nepal    NEPAL          Food Insecure               74     546  haz              
6 months    JiVitA-3     BANGLADESH     Food Secure               8415   16791  haz              
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure      5602   16791  haz              
6 months    JiVitA-3     BANGLADESH     Food Insecure             2774   16791  haz              
6 months    JiVitA-4     BANGLADESH     Food Secure               2442    4793  haz              
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1729    4793  haz              
6 months    JiVitA-4     BANGLADESH     Food Insecure              622    4793  haz              
6 months    MAL-ED       BANGLADESH     Food Secure                160     193  haz              
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     193  haz              
6 months    MAL-ED       BANGLADESH     Food Insecure               29     193  haz              
6 months    MAL-ED       BRAZIL         Food Secure                  3     129  haz              
6 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129  haz              
6 months    MAL-ED       BRAZIL         Food Insecure              115     129  haz              
6 months    MAL-ED       INDIA          Food Secure                190     212  haz              
6 months    MAL-ED       INDIA          Mildly Food Insecure         5     212  haz              
6 months    MAL-ED       INDIA          Food Insecure               17     212  haz              
6 months    MAL-ED       NEPAL          Food Secure                 94     128  haz              
6 months    MAL-ED       NEPAL          Mildly Food Insecure        15     128  haz              
6 months    MAL-ED       NEPAL          Food Insecure               19     128  haz              
6 months    MAL-ED       PERU           Food Secure                 27     111  haz              
6 months    MAL-ED       PERU           Mildly Food Insecure        28     111  haz              
6 months    MAL-ED       PERU           Food Insecure               56     111  haz              
6 months    MAL-ED       SOUTH AFRICA   Food Secure                129     228  haz              
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  haz              
6 months    MAL-ED       SOUTH AFRICA   Food Insecure               81     228  haz              
6 months    NIH-Birth    BANGLADESH     Food Secure                 80     537  haz              
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       417     537  haz              
6 months    NIH-Birth    BANGLADESH     Food Insecure               40     537  haz              
6 months    NIH-Crypto   BANGLADESH     Food Secure                427     715  haz              
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715  haz              
6 months    NIH-Crypto   BANGLADESH     Food Insecure               84     715  haz              
24 months   GMS-Nepal    NEPAL          Food Secure                342     478  haz              
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     478  haz              
24 months   GMS-Nepal    NEPAL          Food Insecure               69     478  haz              
24 months   JiVitA-3     BANGLADESH     Food Secure               3875    8214  haz              
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure      2761    8214  haz              
24 months   JiVitA-3     BANGLADESH     Food Insecure             1578    8214  haz              
24 months   JiVitA-4     BANGLADESH     Food Secure               2399    4713  haz              
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1705    4713  haz              
24 months   JiVitA-4     BANGLADESH     Food Insecure              609    4713  haz              
24 months   MAL-ED       BANGLADESH     Food Secure                161     194  haz              
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     194  haz              
24 months   MAL-ED       BANGLADESH     Food Insecure               29     194  haz              
24 months   MAL-ED       BRAZIL         Food Secure                  3     129  haz              
24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129  haz              
24 months   MAL-ED       BRAZIL         Food Insecure              115     129  haz              
24 months   MAL-ED       INDIA          Food Secure                190     212  haz              
24 months   MAL-ED       INDIA          Mildly Food Insecure         5     212  haz              
24 months   MAL-ED       INDIA          Food Insecure               17     212  haz              
24 months   MAL-ED       NEPAL          Food Secure                 94     128  haz              
24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128  haz              
24 months   MAL-ED       NEPAL          Food Insecure               19     128  haz              
24 months   MAL-ED       PERU           Food Secure                 26     107  haz              
24 months   MAL-ED       PERU           Mildly Food Insecure        27     107  haz              
24 months   MAL-ED       PERU           Food Insecure               54     107  haz              
24 months   MAL-ED       SOUTH AFRICA   Food Secure                129     228  haz              
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  haz              
24 months   MAL-ED       SOUTH AFRICA   Food Insecure               81     228  haz              
24 months   NIH-Birth    BANGLADESH     Food Secure                 68     429  haz              
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       328     429  haz              
24 months   NIH-Birth    BANGLADESH     Food Insecure               33     429  haz              
24 months   NIH-Crypto   BANGLADESH     Food Secure                334     514  haz              
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514  haz              
24 months   NIH-Crypto   BANGLADESH     Food Insecure               56     514  haz              


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
![](/tmp/8bbeffc2-9a05-40a1-8a1f-4932e5c51094/d5c38f98-21db-4b73-8827-1da1502ba145/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8bbeffc2-9a05-40a1-8a1f-4932e5c51094/d5c38f98-21db-4b73-8827-1da1502ba145/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8bbeffc2-9a05-40a1-8a1f-4932e5c51094/d5c38f98-21db-4b73-8827-1da1502ba145/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            NA                -1.0291636   -1.1240473   -0.9342799
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.2188974   -1.4681704   -0.9696243
Birth       GMS-Nepal    NEPAL          Food Insecure          NA                -1.3104079   -1.6342413   -0.9865746
Birth       JiVitA-3     BANGLADESH     Food Secure            NA                -1.5426315   -1.5764187   -1.5088444
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.5379872   -1.5783681   -1.4976063
Birth       JiVitA-3     BANGLADESH     Food Insecure          NA                -1.5671193   -1.6222806   -1.5119579
Birth       JiVitA-4     BANGLADESH     Food Secure            NA                -1.5483451   -1.6164038   -1.4802864
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.4921950   -1.5772644   -1.4071257
Birth       JiVitA-4     BANGLADESH     Food Insecure          NA                -1.5228715   -1.6434033   -1.4023397
Birth       MAL-ED       PERU           Food Secure            NA                -0.9673453   -1.3889206   -0.5457699
Birth       MAL-ED       PERU           Mildly Food Insecure   NA                -0.7997735   -1.2001780   -0.3993690
Birth       MAL-ED       PERU           Food Insecure          NA                -0.9232616   -1.1753947   -0.6711286
Birth       MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.4535556   -0.7370575   -0.1700536
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0888889   -0.6955550    0.5177773
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.8005882   -1.1433809   -0.4577955
Birth       NIH-Birth    BANGLADESH     Food Secure            NA                -0.7638195   -0.9852039   -0.5424351
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.9392418   -1.0404936   -0.8379899
Birth       NIH-Birth    BANGLADESH     Food Insecure          NA                -1.0884578   -1.6129504   -0.5639652
Birth       NIH-Crypto   BANGLADESH     Food Secure            NA                -0.8454881   -0.9349234   -0.7560527
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.9910752   -1.1300273   -0.8521231
Birth       NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.0037908   -1.2758254   -0.7317563
6 months    GMS-Nepal    NEPAL          Food Secure            NA                -1.3376224   -1.4289411   -1.2463037
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.4475703   -1.7152206   -1.1799200
6 months    GMS-Nepal    NEPAL          Food Insecure          NA                -1.3338242   -1.5819480   -1.0857005
6 months    JiVitA-3     BANGLADESH     Food Secure            NA                -1.2944200   -1.3253983   -1.2634418
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.3257441   -1.3613050   -1.2901831
6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                -1.4331849   -1.4881368   -1.3782329
6 months    JiVitA-4     BANGLADESH     Food Secure            NA                -1.3495974   -1.4012656   -1.2979292
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.3502370   -1.4096577   -1.2908162
6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                -1.3123254   -1.4005999   -1.2240509
6 months    MAL-ED       INDIA          Food Secure            NA                -1.2287544   -1.3589893   -1.0985195
6 months    MAL-ED       INDIA          Mildly Food Insecure   NA                -0.6360000   -0.9019405   -0.3700595
6 months    MAL-ED       INDIA          Food Insecure          NA                -1.0694118   -1.5456747   -0.5931488
6 months    MAL-ED       NEPAL          Food Secure            NA                -0.5115396   -0.6714227   -0.3516564
6 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.4855027   -0.9026856   -0.0683199
6 months    MAL-ED       NEPAL          Food Insecure          NA                -0.9064228   -1.4229799   -0.3898657
6 months    MAL-ED       PERU           Food Secure            NA                -1.4732433   -1.8987523   -1.0477344
6 months    MAL-ED       PERU           Mildly Food Insecure   NA                -1.1328576   -1.5180915   -0.7476237
6 months    MAL-ED       PERU           Food Insecure          NA                -1.4636247   -1.6989570   -1.2282923
6 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.0102858   -1.1879045   -0.8326671
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.7584475   -1.3199818   -0.1969131
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.1877676   -1.4270334   -0.9485018
6 months    NIH-Birth    BANGLADESH     Food Secure            NA                -1.1869657   -1.4329849   -0.9409465
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -1.4296487   -1.5259977   -1.3332996
6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                -1.6850880   -2.1100041   -1.2601720
6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                -1.1493775   -1.2414107   -1.0573443
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2453911   -1.3801378   -1.1106444
6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.3286355   -1.5622471   -1.0950239
24 months   GMS-Nepal    NEPAL          Food Secure            NA                -1.8150408   -1.9219306   -1.7081511
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -2.1379848   -2.4012897   -1.8746800
24 months   GMS-Nepal    NEPAL          Food Insecure          NA                -2.1052764   -2.3378327   -1.8727201
24 months   JiVitA-3     BANGLADESH     Food Secure            NA                -1.9815874   -2.0219325   -1.9412423
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -2.0044656   -2.0512433   -1.9576880
24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                -2.1106796   -2.1751460   -2.0462131
24 months   JiVitA-4     BANGLADESH     Food Secure            NA                -1.7912307   -1.8403482   -1.7421132
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.7721313   -1.8265317   -1.7177309
24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                -1.7610765   -1.8474967   -1.6746562
24 months   MAL-ED       INDIA          Food Secure            NA                -1.8935000   -2.0301943   -1.7568057
24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -1.2370000   -1.6132318   -0.8607682
24 months   MAL-ED       INDIA          Food Insecure          NA                -2.0035294   -2.4884028   -1.5186561
24 months   MAL-ED       NEPAL          Food Secure            NA                -1.2891931   -1.4737229   -1.1046634
24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -1.0038865   -1.3385680   -0.6692050
24 months   MAL-ED       NEPAL          Food Insecure          NA                -1.7125799   -2.1579609   -1.2671988
24 months   MAL-ED       PERU           Food Secure            NA                -1.8769895   -2.3252534   -1.4287255
24 months   MAL-ED       PERU           Mildly Food Insecure   NA                -1.5954624   -1.9335361   -1.2573887
24 months   MAL-ED       PERU           Food Insecure          NA                -1.7962618   -2.0195864   -1.5729372
24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.5417903   -1.7246390   -1.3589416
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -1.5656368   -2.1684052   -0.9628685
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.7880556   -2.0160380   -1.5600733
24 months   NIH-Birth    BANGLADESH     Food Secure            NA                -1.6565989   -1.9395432   -1.3736546
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -2.2667695   -2.3763404   -2.1571986
24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -2.9311567   -3.3947217   -2.4675917
24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -1.3988039   -1.5030090   -1.2945989
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.5065834   -1.6785016   -1.3346652
24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.5493508   -1.7940649   -1.3046367


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          NA                   NA                -1.0791964   -1.1604792   -0.9979137
Birth       JiVitA-3     BANGLADESH     NA                   NA                -1.5375132   -1.5596692   -1.5153573
Birth       JiVitA-4     BANGLADESH     NA                   NA                -1.5248719   -1.5743851   -1.4753587
Birth       MAL-ED       PERU           NA                   NA                -0.9490110   -1.1400314   -0.7579906
Birth       MAL-ED       SOUTH AFRICA   NA                   NA                -0.5503409   -0.7616444   -0.3390374
Birth       NIH-Birth    BANGLADESH     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto   BANGLADESH     NA                   NA                -0.9094945   -0.9809370   -0.8380521
6 months    GMS-Nepal    NEPAL          NA                   NA                -1.3421764   -1.4201083   -1.2642445
6 months    JiVitA-3     BANGLADESH     NA                   NA                -1.3131326   -1.3362851   -1.2899801
6 months    JiVitA-4     BANGLADESH     NA                   NA                -1.3446891   -1.3822219   -1.3071564
6 months    MAL-ED       INDIA          NA                   NA                -1.2019969   -1.3256948   -1.0782989
6 months    MAL-ED       NEPAL          NA                   NA                -0.6262760   -0.7758267   -0.4767254
6 months    MAL-ED       PERU           NA                   NA                -1.3783784   -1.5611768   -1.1955799
6 months    MAL-ED       SOUTH AFRICA   NA                   NA                -1.0539254   -1.1902766   -0.9175743
6 months    NIH-Birth    BANGLADESH     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH     NA                   NA                -1.1986783   -1.2700937   -1.1272630
24 months   GMS-Nepal    NEPAL          NA                   NA                -1.8758368   -1.9623349   -1.7893388
24 months   JiVitA-3     BANGLADESH     NA                   NA                -2.0099416   -2.0377955   -1.9820876
24 months   JiVitA-4     BANGLADESH     NA                   NA                -1.7801485   -1.8158427   -1.7444543
24 months   MAL-ED       INDIA          NA                   NA                -1.8868396   -2.0164954   -1.7571839
24 months   MAL-ED       NEPAL          NA                   NA                -1.4092187   -1.5701249   -1.2483126
24 months   MAL-ED       PERU           NA                   NA                -1.7783956   -1.9536701   -1.6031212
24 months   MAL-ED       SOUTH AFRICA   NA                   NA                -1.6331323   -1.7704624   -1.4958022
24 months   NIH-Birth    BANGLADESH     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH     NA                   NA                -1.4412646   -1.5249156   -1.3576135


### Parameter: ATE


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1897338   -0.4565171    0.0770495
Birth       GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.2812443   -0.6185647    0.0560760
Birth       JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure        0.0046444   -0.0465875    0.0558762
Birth       JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0244877   -0.0889160    0.0399405
Birth       JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0561501   -0.0513906    0.1636907
Birth       JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0254736   -0.1135245    0.1644718
Birth       MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1675718   -0.4140759    0.7492195
Birth       MAL-ED       PERU           Food Insecure          Food Secure        0.0440836   -0.4487848    0.5369521
Birth       MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.3646667   -0.3049729    1.0343063
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.3470327   -0.7918699    0.0978046
Birth       NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.1754223   -0.4192889    0.0684443
Birth       NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.3246383   -0.8945010    0.2452243
Birth       NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1455872   -0.3110696    0.0198952
Birth       NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1583027   -0.4451913    0.1285858
6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1099479   -0.3937010    0.1738051
6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0037981   -0.2597169    0.2673131
6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0313241   -0.0732864    0.0106382
6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.1387648   -0.1986089   -0.0789208
6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0006396   -0.0761720    0.0748928
6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0372720   -0.0644237    0.1389677
6 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.5927544    0.2966371    0.8888717
6 months    MAL-ED       INDIA          Food Insecure          Food Secure        0.1593426   -0.3344058    0.6530910
6 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0260368   -0.4212851    0.4733588
6 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.3948833   -0.9385406    0.1487741
6 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3403857   -0.2270629    0.9078343
6 months    MAL-ED       PERU           Food Insecure          Food Secure        0.0096187   -0.4731949    0.4924323
6 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.2518383   -0.3368598    0.8405364
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1774818   -0.4762382    0.1212746
6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.2426829   -0.5067400    0.0213741
6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.4981223   -0.9889469   -0.0072977
6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0960136   -0.2587295    0.0667023
6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1792580   -0.4297658    0.0712498
24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.3229440   -0.6073789   -0.0385090
24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.2902355   -0.5464246   -0.0340464
24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0228782   -0.0819739    0.0362174
24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.1290922   -0.1978572   -0.0603271
24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0190994   -0.0504512    0.0886500
24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0301542   -0.0668964    0.1272049
24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6565000    0.2562055    1.0567945
24 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.1100294   -0.6138027    0.3937438
24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.2853066   -0.1000997    0.6707129
24 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4233867   -0.9122910    0.0655176
24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2815271   -0.2815527    0.8446069
24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0807277   -0.4196768    0.5811321
24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0238465   -0.6536140    0.6059210
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2462653   -0.5399305    0.0473998
24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.6101706   -0.9125331   -0.3078082
24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -1.2745578   -1.8171825   -0.7319332
24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1077795   -0.3088809    0.0933219
24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1505469   -0.4166216    0.1155279


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                -0.0500328   -0.1061512    0.0060855
Birth       JiVitA-3     BANGLADESH     Food Secure          NA                 0.0051183   -0.0214231    0.0316597
Birth       JiVitA-4     BANGLADESH     Food Secure          NA                 0.0234732   -0.0243265    0.0712730
Birth       MAL-ED       PERU           Food Secure          NA                 0.0183343   -0.3328652    0.3695338
Birth       MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0967854   -0.3037214    0.1101506
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                -0.1672002   -0.3789705    0.0445700
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0640065   -0.1258294   -0.0021836
6 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0045541   -0.0532766    0.0441685
6 months    JiVitA-3     BANGLADESH     Food Secure          NA                -0.0187126   -0.0401557    0.0027305
6 months    JiVitA-4     BANGLADESH     Food Secure          NA                 0.0049083   -0.0292545    0.0390710
6 months    MAL-ED       INDIA          Food Secure          NA                 0.0267575   -0.0163737    0.0698887
6 months    MAL-ED       NEPAL          Food Secure          NA                -0.1147365   -0.2199696   -0.0095034
6 months    MAL-ED       PERU           Food Secure          NA                 0.0948650   -0.2641927    0.4539226
6 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0436397   -0.1664802    0.0792009
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.2204163   -0.4465016    0.0056690
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0493008   -0.1084790    0.0098774
24 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0607960   -0.1230542    0.0014622
24 months   JiVitA-3     BANGLADESH     Food Secure          NA                -0.0283542   -0.0574309    0.0007225
24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0110822   -0.0202705    0.0424348
24 months   MAL-ED       INDIA          Food Secure          NA                 0.0066604   -0.0380987    0.0514195
24 months   MAL-ED       NEPAL          Food Secure          NA                -0.1200256   -0.2264500   -0.0136013
24 months   MAL-ED       PERU           Food Secure          NA                 0.0985938   -0.2735391    0.4707268
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0913420   -0.2130461    0.0303620
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.5624590   -0.8208040   -0.3041140
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0424607   -0.1037796    0.0188582
