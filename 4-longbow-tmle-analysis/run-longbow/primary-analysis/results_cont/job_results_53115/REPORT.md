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

agecat      studyid                 country        hfoodsec                n_cell       n
----------  ----------------------  -------------  ---------------------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                138     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         3     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               21     162
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0      26
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         4      26
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               22      26
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                 32      35
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1      35
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                2      35
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 10      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                3      14
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 23      89
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        22      89
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               44      89
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 45      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               33      87
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                 86     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       453     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure               36     575
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                429     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       199     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               79     707
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                442     620
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       100     620
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure               78     620
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               7326   14320
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4693   14320
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2301   14320
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1205    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       870    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              308    2383
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
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8367   16706
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5566   16706
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2773   16706
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2445    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1728    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              622    4795
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
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       327     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     428
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                341     477
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     477
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               69     477
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3827    8131
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2736    8131
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1568    8131
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2389    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1699    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              608    4696


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
![](/tmp/126383d3-c2e2-4191-9273-00ba832dcd07/fbc47c42-0508-4d76-8d62-776ecdbb1632/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/126383d3-c2e2-4191-9273-00ba832dcd07/fbc47c42-0508-4d76-8d62-776ecdbb1632/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/126383d3-c2e2-4191-9273-00ba832dcd07/fbc47c42-0508-4d76-8d62-776ecdbb1632/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.3222093   -0.8473125    0.2028939
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.0553676   -0.4115934    0.3008581
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.1044110   -0.1629824    0.3718044
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0800000   -0.4003913    0.2403913
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.2611111   -1.0678216    0.5455994
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.2157576   -0.6840291    0.2525139
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.1086012   -1.3516051   -0.8655974
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -1.4131658   -1.5200131   -1.3063186
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.1405914   -1.5222777   -0.7589051
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.2669383   -1.3783719   -1.1555048
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.1957481   -1.3599304   -1.0315659
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.2455993   -1.4969294   -0.9942691
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.1846189   -1.2887291   -1.0805086
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.8412872   -1.1020239   -0.5805504
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.0539829   -1.3044336   -0.8035321
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.6770392   -0.7056800   -0.6483984
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.7497460   -0.7858019   -0.7136901
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.7999574   -0.8510995   -0.7488154
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.6796699   -0.7467365   -0.6126033
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.7199734   -0.8087480   -0.6311988
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.6618633   -0.8220325   -0.5016941
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.7024474   -0.8452279   -0.5596668
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -1.5420000   -2.3989104   -0.6850896
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.7090196   -1.1598311   -0.2582081
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                 0.1848840   -0.0361491    0.4059170
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.5622262   -0.1561011    1.2805534
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0004700   -0.4279698    0.4270298
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                 0.9872983    0.5406661    1.4339304
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 1.0136333    0.7387277    1.2885388
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                 1.0357346    0.6730268    1.3984425
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.6319059    0.4158069    0.8480048
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.5998791   -0.0890815    1.2888398
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.3946807    0.1221908    0.6671706
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.3646986   -0.5703113   -0.1590860
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.4428837   -0.5478620   -0.3379053
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.6411366   -1.0084460   -0.2738272
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0801745   -0.0252724    0.1856214
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0258116   -0.1273137    0.1789370
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.1443824   -0.3516956    0.0629307
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.5805701   -0.6867198   -0.4744205
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.4908326   -0.7306410   -0.2510243
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.8170061   -1.0602091   -0.5738032
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.5609366   -0.5883975   -0.5334756
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.5991974   -0.6303040   -0.5680908
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.6717470   -0.7198284   -0.6236655
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.3866459   -0.4352719   -0.3380198
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.3963283   -0.4545087   -0.3381479
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.3847152   -0.4959977   -0.2734328
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.9263947   -1.0447734   -0.8080160
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -2.3840000   -3.4554070   -1.3125930
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.9111765   -1.3418053   -0.4805476
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.2022599   -0.4012914   -0.0032285
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.3567670   -0.8374285    0.1238946
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.6585963   -0.9620612   -0.3551314
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.1759578   -0.6045121    0.2525965
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.2523339   -0.0245878    0.5292555
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.1626072   -0.1135871    0.4388015
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.3937792    0.2256341    0.5619243
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0967813   -0.3321524    0.5257150
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.5175993    0.3031173    0.7320813
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.8288446   -1.0755897   -0.5820995
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.9183189   -1.0324116   -0.8042262
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.0568944   -1.3738660   -0.7399227
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.5891303   -0.7139447   -0.4643159
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.6140311   -0.7973530   -0.4307092
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.7122863   -1.0151371   -0.4094356
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.1248394   -1.2313751   -1.0183038
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.1801829   -1.4579488   -0.9024171
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.9644722   -1.2751810   -0.6537633
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.2645843   -1.2975883   -1.2315803
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.3033986   -1.3454470   -1.2613503
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.3725501   -1.4259074   -1.3191927
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.2119538   -1.2565893   -1.1673182
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.2335258   -1.2891721   -1.1778794
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.2480299   -1.3285577   -1.1675022


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                -0.0483146   -0.2475806    0.1509514
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.1502299   -0.4075620    0.1071022
Birth       ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.1165161   -1.2055683   -1.0274639
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.7208547   -0.7418118   -0.6998977
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.6898154   -0.7422632   -0.6373675
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -0.7227752   -0.8585532   -0.5869972
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                 0.1289063   -0.0638567    0.3216692
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                 0.9840541    0.7695460    1.1985621
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.5429678    0.3813968    0.7045389
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.6018803   -0.6892284   -0.5145323
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.5927331   -0.6123184   -0.5731479
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.3895527   -0.4270314   -0.3520739
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -0.9595519   -1.0781202   -0.8409836
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.2757812   -0.4379560   -0.1136065
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                 0.0990187   -0.0788709    0.2769082
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.4141009    0.2892188    0.5389829
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.1304997   -1.2205265   -1.0404728
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.3003702   -1.3240616   -1.2766787
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.2243590   -1.2566569   -1.1920612


### Parameter: ATE


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2668417   -0.3725440    0.9062274
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.4266203   -0.1644276    1.0176683
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1811111   -1.0491159    0.6868937
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1357576   -0.7031452    0.4316301
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.3045646   -0.5700559   -0.0390732
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0319902   -0.4843898    0.4204095
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0711902   -0.1276289    0.2700093
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0213391   -0.2540476    0.2967258
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.3433317    0.0630348    0.6236287
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.1306360   -0.1398800    0.4011520
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0727068   -0.1167421   -0.0286714
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1229182   -0.1794982   -0.0663382
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0403035   -0.1505844    0.0699774
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0178066   -0.1551103    0.1907235
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.8395526   -1.7082768    0.0291715
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0065722   -0.4794542    0.4663097
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.3773422   -0.3767447    1.1314291
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.1853540   -0.6663212    0.2956132
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0263350   -0.5024500    0.5551200
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0484363   -0.5317492    0.6286219
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0320268   -0.7536283    0.6895748
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2372251   -0.5854478    0.1109976
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0781850   -0.3100103    0.1536402
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2764380   -0.6982839    0.1454080
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0543629   -0.2402711    0.1315453
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.2245569   -0.4574542    0.0083403
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0897375   -0.1726423    0.3521173
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.2364360   -0.5019724    0.0291005
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0382608   -0.0790872    0.0025657
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1108104   -0.1642108   -0.0574099
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0096824   -0.0813172    0.0619524
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0019306   -0.1163289    0.1201902
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -1.4576053   -2.5355322   -0.3796783
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0152183   -0.4313853    0.4618218
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1545070   -0.6734597    0.3644457
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4563364   -0.8191384   -0.0935344
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.4282917   -0.0726838    0.9292673
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.3385650   -0.1858552    0.8629852
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.2969979   -0.7575957    0.1635998
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.1238201   -0.1487144    0.3963545
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0894743   -0.3626427    0.1836941
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2280498   -0.6300738    0.1739743
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0249008   -0.2453079    0.1955062
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1231561   -0.4500636    0.2037515
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0553435   -0.3539046    0.2432175
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.1603672   -0.1700745    0.4908090
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0388143   -0.0911046    0.0134759
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1079658   -0.1689014   -0.0470301
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0215720   -0.0920738    0.0489298
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0360762   -0.1284082    0.0562558


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.2738947   -0.1643657    0.7121552
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0702299   -0.3205899    0.1801302
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.2413205   -0.4666000   -0.0160410
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0227870   -0.0475137    0.0930876
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0681027    0.0089394    0.1272661
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0438155   -0.0631733   -0.0244578
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0101455   -0.0611355    0.0408446
6 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0203278   -0.0680822    0.0274267
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0559777   -0.1788645    0.0669091
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0032442   -0.3969858    0.3904973
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0889380   -0.2324419    0.0545659
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0827051   -0.2797779    0.1143676
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0504123   -0.1157083    0.0148838
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0213102   -0.0757145    0.0330941
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0317966   -0.0503492   -0.0132439
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0029068   -0.0353169    0.0295033
24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0331571   -0.0875022    0.0211879
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0735213   -0.1674783    0.0204357
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.2749765   -0.0968740    0.6468271
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0203216   -0.0919736    0.1326169
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0827344   -0.3117503    0.1462814
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0212199   -0.0897430    0.0473031
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0056602   -0.0683589    0.0570385
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0357859   -0.0595115   -0.0120602
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0124053   -0.0437702    0.0189597
