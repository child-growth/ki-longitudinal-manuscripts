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

agecat      studyid                 country        hfoodsec                n_cell       n
----------  ----------------------  -------------  ---------------------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                144     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               24     172
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0      28
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         4      28
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               24      28
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                 34      37
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1      37
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                2      37
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 10      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                3      14
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 24      91
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        23      91
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               44      91
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 45      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               34      88
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                 90     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       478     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     608
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                439     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       209     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     732
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                477     672
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       106     672
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure               89     672
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8512   16994
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5660   16994
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2822   16994
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1433    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1018    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              359    2810
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                160     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                190     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                 27     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure               56     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 80     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       417     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     537
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                396     546
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        76     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               74     546
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8386   16733
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5578   16733
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2769   16733
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2442    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1729    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              622    4793
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                161     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                190     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure               54     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       328     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     429
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                342     478
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     478
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               69     478
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3843    8153
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2744    8153
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1566    8153
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2399    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1705    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              609    4713


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
![](/tmp/be8796b7-711f-4ed8-a691-036c8cd2b2de/7063dace-4a69-45da-a5db-73eb8cc156c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/be8796b7-711f-4ed8-a691-036c8cd2b2de/7063dace-4a69-45da-a5db-73eb8cc156c4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/be8796b7-711f-4ed8-a691-036c8cd2b2de/7063dace-4a69-45da-a5db-73eb8cc156c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.9707956   -1.3667235   -0.5748677
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.9851429   -1.3995931   -0.5706927
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.9292255   -1.1855051   -0.6729459
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.4535556   -0.7370575   -0.1700536
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0888889   -0.6955550    0.5177773
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.8005882   -1.1433809   -0.4577955
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.7317773   -0.9346106   -0.5289440
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.9554200   -1.0541908   -0.8566492
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.1092778   -1.5866101   -0.6319455
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.8503689   -0.9390886   -0.7616493
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.0026781   -1.1407156   -0.8646406
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.9872225   -1.2413969   -0.7330480
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.0293682   -1.1257797   -0.9329566
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.2645254   -1.4737232   -1.0553276
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.2180570   -1.4810674   -0.9550467
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.0638632   -1.1062345   -1.0214920
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.2063584   -1.2549321   -1.1577848
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.2821948   -1.3535743   -1.2108153
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.5430748   -1.6111029   -1.4750468
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.4968821   -1.5828119   -1.4109522
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.5282113   -1.6463718   -1.4100508
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -1.2288596   -1.3591437   -1.0985756
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.6360000   -0.9019405   -0.3700595
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -1.0620588   -1.5420342   -0.5820835
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.5111162   -0.6712821   -0.3509502
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.5920485   -1.0522481   -0.1318489
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.9545920   -1.4521737   -0.4570103
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.4063949   -1.8166439   -0.9961459
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -1.1298590   -1.5602437   -0.6994743
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                -1.5215707   -1.7575204   -1.2856209
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.9832559   -1.1606767   -0.8058351
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.6613811   -1.2142538   -0.1085084
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.1204318   -1.3530558   -0.8878078
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.1717025   -1.4305417   -0.9128632
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -1.4329676   -1.5293723   -1.3365628
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.6417234   -2.0828156   -1.2006313
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.1464559   -1.2392374   -1.0536743
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2629891   -1.3990040   -1.1269742
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.3391369   -1.5604798   -1.1177939
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.3165197   -1.4116049   -1.2214344
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.4218207   -1.6742265   -1.1694149
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.3782438   -1.6120583   -1.1444294
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.2625959   -1.2917125   -1.2334794
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.3855895   -1.4175194   -1.3536596
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.4978604   -1.5500740   -1.4456468
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.3516455   -1.4037046   -1.2995864
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.3477121   -1.4075198   -1.2879044
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.3068366   -1.3963680   -1.2173053
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -1.8918947   -2.0286391   -1.7551503
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -1.2370000   -1.6132318   -0.8607682
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -2.0035294   -2.4884028   -1.5186561
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -1.3058798   -1.4919622   -1.1197973
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -1.3018213   -1.6740293   -0.9296133
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.9327239   -2.4230450   -1.4424028
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.8795719   -2.3092756   -1.4498683
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -1.7089685   -2.0827576   -1.3351794
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                -1.8369932   -2.0639242   -1.6100622
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.5539529   -1.7363797   -1.3715262
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -1.7526011   -2.3322618   -1.1729404
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.7966980   -2.0200897   -1.5733064
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.5412387   -1.8221426   -1.2603348
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -2.2789941   -2.3869134   -2.1710748
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -2.9134324   -3.3191317   -2.5077331
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.4004088   -1.5060459   -1.2947717
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.5185920   -1.6965707   -1.3406134
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.5361343   -1.7941181   -1.2781505
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.8194629   -1.9216077   -1.7173181
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -2.1190411   -2.3683400   -1.8697422
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.9059406   -2.1300534   -1.6818279
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.9427897   -1.9818934   -1.9036860
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -2.0374500   -2.0823672   -1.9925329
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -2.2096879   -2.2687843   -2.1505915
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.7951822   -1.8443961   -1.7459682
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.7702079   -1.8250465   -1.7153693
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.7467494   -1.8348253   -1.6586735


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                -0.9490110   -1.1400314   -0.7579906
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.5503409   -0.7616444   -0.3390374
Birth       ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.0791964   -1.1604792   -0.9979137
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.1360574   -1.1678848   -1.1042300
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.5248719   -1.5743851   -1.4753587
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -1.2015016   -1.3253455   -1.0776576
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.6253125   -0.7752118   -0.4754132
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                -1.3818168   -1.5640383   -1.1995953
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -1.0545833   -1.1910433   -0.9181233
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.3421764   -1.4201083   -1.2642445
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.3356272   -1.3587266   -1.3125278
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.3446891   -1.3822219   -1.3071564
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -1.8854009   -2.0150978   -1.7557041
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -1.4168359   -1.5779846   -1.2556873
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                -1.7813084   -1.9560358   -1.6065810
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -1.6374342   -1.7752443   -1.4996241
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.8758368   -1.9623349   -1.7893388
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -2.0156127   -2.0434367   -1.9877886
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.7801485   -1.8158427   -1.7444543


### Parameter: ATE


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0143473   -0.5816165    0.5529220
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0415701   -0.4293720    0.5125122
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.3646667   -0.3049729    1.0343063
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.3470327   -0.7918699    0.0978046
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.2236427   -0.4492813    0.0019959
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.3775005   -0.8962347    0.1412337
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1523092   -0.3164733    0.0118550
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1368535   -0.4060540    0.1323469
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.2351572   -0.4647813   -0.0055332
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.1886889   -0.4676116    0.0902338
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.1424952   -0.2012842   -0.0837063
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.2183316   -0.2997206   -0.1369426
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0461927   -0.0627620    0.1551475
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0148635   -0.1221657    0.1518928
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.5928596    0.2967207    0.8889986
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.1668008   -0.3305424    0.6641440
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0809323   -0.5686662    0.4068016
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4434758   -0.9665938    0.0796422
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2765359   -0.3328183    0.8858902
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.1151757   -0.5806559    0.3503044
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.3218748   -0.2590090    0.9027585
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1371759   -0.4306538    0.1563019
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.2612651   -0.5384213    0.0158910
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.4700210   -0.9823282    0.0422862
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1165333   -0.2813400    0.0482735
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1926810   -0.4327581    0.0473961
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.1053011   -0.3758433    0.1652412
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0617242   -0.3139614    0.1905130
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.1229936   -0.1607644   -0.0852228
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.2352645   -0.2922315   -0.1782974
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0039333   -0.0724400    0.0803066
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0448088   -0.0585032    0.1481208
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6548947    0.2545831    1.0552063
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.1116347   -0.6154215    0.3921522
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0040585   -0.4143305    0.4224474
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.6268442   -1.1523560   -0.1013323
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1706034   -0.4086555    0.7498623
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0425787   -0.4450858    0.5302433
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1986482   -0.8055212    0.4082249
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2427451   -0.5310534    0.0455632
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.7377554   -1.0388784   -0.4366324
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -1.3721937   -1.8659163   -0.8784711
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1181832   -0.3253062    0.0889397
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1357255   -0.4146521    0.1432012
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.2995782   -0.5688201   -0.0303363
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0864777   -0.3326843    0.1597288
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0946604   -0.1511347   -0.0381861
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.2668982   -0.3329935   -0.2008030
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0249743   -0.0455967    0.0955453
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0484328   -0.0501209    0.1469864


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0217846   -0.3076641    0.3512333
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0967854   -0.3037214    0.1101506
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.1992425   -0.3910390   -0.0074459
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0591256   -0.1201245    0.0018733
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0498283   -0.1054545    0.0057980
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0721942   -0.0982929   -0.0460955
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0182030   -0.0300657    0.0664717
6 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0273581   -0.0160732    0.0707894
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.1141963   -0.2198523   -0.0085403
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0245781   -0.3267643    0.3759205
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0713275   -0.1956367    0.0529818
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.2356796   -0.4725180    0.0011588
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0522225   -0.1120612    0.0076162
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0256568   -0.0774596    0.0261460
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0730313   -0.0914195   -0.0546431
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0069563   -0.0276023    0.0415149
24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0064938   -0.0382631    0.0512507
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.1109562   -0.2142997   -0.0076126
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0982635   -0.2622952    0.4588222
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0834813   -0.2036402    0.0366776
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.6778192   -0.9338809   -0.4217575
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0408558   -0.1041290    0.0224175
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0563739   -0.1136120    0.0008641
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0728230   -0.0995182   -0.0461278
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0150336   -0.0168082    0.0468755
