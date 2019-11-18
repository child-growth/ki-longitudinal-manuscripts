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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        anywast06    n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               177    229  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                52    229  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                62     65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 3     65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0                33     47  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1                14     47  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                23     27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                 4     27  haz              
Birth       ki0047075b-MAL-ED          PERU                           0               223    233  haz              
Birth       ki0047075b-MAL-ED          PERU                           1                10    233  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               101    122  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                21    122  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               119    124  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 5    124  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                37     92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                55     92  haz              
Birth       ki1000108-IRC              INDIA                          0               164    388  haz              
Birth       ki1000108-IRC              INDIA                          1               224    388  haz              
Birth       ki1000109-EE               PAKISTAN                       0               156    240  haz              
Birth       ki1000109-EE               PAKISTAN                       1                84    240  haz              
Birth       ki1000109-ResPak           PAKISTAN                       0                28     42  haz              
Birth       ki1000109-ResPak           PAKISTAN                       1                14     42  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               396    539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               143    539  haz              
Birth       ki1101329-Keneba           GAMBIA                         0               994   1542  haz              
Birth       ki1101329-Keneba           GAMBIA                         1               548   1542  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0               422    684  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1               262    684  haz              
Birth       ki1114097-CMIN             BANGLADESH                     0                15     20  haz              
Birth       ki1114097-CMIN             BANGLADESH                     1                 5     20  haz              
Birth       ki1114097-CONTENT          PERU                           0                 2      2  haz              
Birth       ki1114097-CONTENT          PERU                           1                 0      2  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               183    241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                58    241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0               194    209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                15    209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0               159    236  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1                77    236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0               188    236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                48    236  haz              
6 months    ki0047075b-MAL-ED          PERU                           0               263    273  haz              
6 months    ki0047075b-MAL-ED          PERU                           1                10    273  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               223    254  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                31    254  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               234    247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    247  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               177    365  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               188    365  haz              
6 months    ki1000108-IRC              INDIA                          0               180    407  haz              
6 months    ki1000108-IRC              INDIA                          1               227    407  haz              
6 months    ki1000109-EE               PAKISTAN                       0               249    373  haz              
6 months    ki1000109-EE               PAKISTAN                       1               124    373  haz              
6 months    ki1000109-ResPak           PAKISTAN                       0               143    239  haz              
6 months    ki1000109-ResPak           PAKISTAN                       1                96    239  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               450    604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               154    604  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029  haz              
6 months    ki1101329-Keneba           GAMBIA                         0              1441   2056  haz              
6 months    ki1101329-Keneba           GAMBIA                         1               615   2056  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0               336    564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1               228    564  haz              
6 months    ki1114097-CMIN             BANGLADESH                     0               201    243  haz              
6 months    ki1114097-CMIN             BANGLADESH                     1                42    243  haz              
6 months    ki1114097-CONTENT          PERU                           0               211    215  haz              
6 months    ki1114097-CONTENT          PERU                           1                 4    215  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               162    212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                50    212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0               156    169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                13    169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0               151    227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1                76    227  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0               182    228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                46    228  haz              
24 months   ki0047075b-MAL-ED          PERU                           0               193    201  haz              
24 months   ki0047075b-MAL-ED          PERU                           1                 8    201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               212    238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                26    238  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202    214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                12    214  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               176    366  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               190    366  haz              
24 months   ki1000108-IRC              INDIA                          0               181    409  haz              
24 months   ki1000108-IRC              INDIA                          1               228    409  haz              
24 months   ki1000109-EE               PAKISTAN                       0               109    167  haz              
24 months   ki1000109-EE               PAKISTAN                       1                58    167  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               432    578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               146    578  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6  haz              
24 months   ki1101329-Keneba           GAMBIA                         0              1091   1563  haz              
24 months   ki1101329-Keneba           GAMBIA                         1               472   1563  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0               300    488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1               188    488  haz              
24 months   ki1114097-CMIN             BANGLADESH                     0               200    242  haz              
24 months   ki1114097-CMIN             BANGLADESH                     1                42    242  haz              
24 months   ki1114097-CONTENT          PERU                           0               161    164  haz              
24 months   ki1114097-CONTENT          PERU                           1                 3    164  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/5e380d37-d3e1-48e7-a985-c7ce97f5aac3/831aacf9-1080-4f1c-ae01-bf88a2fa8aa2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5e380d37-d3e1-48e7-a985-c7ce97f5aac3/831aacf9-1080-4f1c-ae01-bf88a2fa8aa2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5e380d37-d3e1-48e7-a985-c7ce97f5aac3/831aacf9-1080-4f1c-ae01-bf88a2fa8aa2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1152588   -1.2644413   -0.9660762
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.0741177   -1.3882277   -0.7600077
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -1.2832343   -1.6079905   -0.9584781
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0231967   -1.6629892   -0.3834041
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.8920237   -1.0091922   -0.7748552
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.6825491   -1.5842861    0.2191878
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.6578326   -0.8440564   -0.4716088
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0806032   -0.5577990    0.3965927
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1432773   -1.3541075   -0.9324471
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.9860000   -2.2167588    0.2447588
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.7863141   -1.1163551   -0.4562730
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.0720035   -1.3593526   -0.7846545
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.8932810   -1.1035337   -0.6830284
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.1074351   -0.1092583    0.3241285
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -2.0471739   -2.2551013   -1.8392464
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -1.4801990   -1.8618920   -1.0985061
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -1.3092611   -1.7209402   -0.8975820
Birth       ki1000109-ResPak           PAKISTAN                       1                    NA                -0.4730582   -1.4801933    0.5340769
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8682524   -0.9533685   -0.7831362
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9160155   -1.0702813   -0.7617497
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.1684406   -0.2429166   -0.0939646
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.4039061    0.2925435    0.5152686
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1535485   -1.2537048   -1.0533923
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.8640237   -0.9862665   -0.7417810
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -1.2613333   -1.7710980   -0.7515686
Birth       ki1114097-CMIN             BANGLADESH                     1                    NA                -1.0280000   -2.2553082    0.1993082
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1675069   -1.2920481   -1.0429657
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.3307528   -1.6090063   -1.0524994
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0241105   -0.1251373    0.1733583
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0641301   -0.4613387    0.5895990
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.2397835   -1.3813332   -1.0982338
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1586922   -1.3784662   -0.9389182
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.5288966   -0.6490076   -0.4087855
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7158491   -1.0060021   -0.4256961
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3332615   -1.4423236   -1.2241994
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.1608379   -1.9063588   -0.4153169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.0494534   -1.1880931   -0.9108136
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.2530831   -1.5785341   -0.9276320
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3571746   -1.4819055   -1.2324437
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3700317   -2.0298032   -0.7102602
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4014444   -1.6162115   -1.1866774
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.4387754   -1.6298223   -1.2477285
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.4553624   -1.6429958   -1.2677290
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.0823146   -1.2615004   -0.9031288
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.0356332   -2.1761607   -1.8951056
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.1721046   -2.4013266   -1.9428826
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.7143502   -1.9650313   -1.4636690
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -1.0038675   -1.3376976   -0.6700374
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0513865   -1.1372060   -0.9655670
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2047351   -1.3571188   -1.0523514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5391371   -0.5920823   -0.4861919
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5912611   -0.7259037   -0.4566185
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.9022636   -0.9556077   -0.8489194
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.9277007   -1.0239434   -0.8314580
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5328811   -1.6475398   -1.4182224
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.8973716   -3.5300129   -2.2647304
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.3658591   -1.4652840   -1.2664341
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3144577   -1.4420245   -1.1868909
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.7667614   -1.9154324   -1.6180903
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -1.8721926   -2.2478209   -1.4965642
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9925339   -2.1390701   -1.8459977
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.9760867   -2.2492032   -1.7029702
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0445699   -0.1308481    0.2199878
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.6677575   -1.1670243   -0.1684907
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.9374868   -2.0892703   -1.7857034
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7666674   -1.9887625   -1.5445724
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.3102762   -1.4399206   -1.1806317
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.2961029   -1.6171257   -0.9750801
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.7639724   -1.8863550   -1.6415897
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.4750000   -2.1910692   -0.7589308
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6455373   -1.7851605   -1.5059141
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.3881599   -1.8630550   -0.9132648
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6311847   -2.7690566   -2.4933127
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.9095970   -3.4689417   -2.3502522
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5248041   -2.6660849   -2.3835233
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.6131825   -2.7487588   -2.4776063
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.8388195   -1.9717502   -1.7058887
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.7735655   -1.9050632   -1.6420678
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.6459835   -2.8419944   -2.4499726
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -2.7171879   -2.9697421   -2.4646336
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5777619   -1.6779786   -1.4775452
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6723720   -1.8171976   -1.5275463
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5510430   -1.6124511   -1.4896349
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.6381492   -1.7350091   -1.5412893
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8998122   -2.0032062   -1.7964181
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8690259   -2.0179349   -1.7201169
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.4810715   -2.6198012   -2.3423417
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.6321598   -2.9495079   -2.3148117


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1041048   -1.2383048   -0.9699048
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5877869   -0.7622273   -0.4133464
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1369355   -1.3453337   -0.9285373
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0325486   -0.0310420    0.0961393
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0454532   -1.1235003   -0.9674062
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.2030000   -1.6953191   -0.7106809
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4241872   -1.5668135   -1.2815609
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4314086   -1.6374838   -1.2253335
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9116762   -0.9588660   -0.8644864
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5785476   -1.6926664   -1.4644288
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5489071   -2.6476125   -2.4502017
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5774758   -1.6295950   -1.5253566
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0411411   -0.3073237    0.3896058
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.2600377   -0.4605776    0.9806530
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                  0.2094746   -0.7005685    1.1195177
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.5772294    0.0647779    1.0896809
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1572773   -1.0914086    1.4059632
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2856895   -0.7256541    0.1542752
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  1.0007161    0.6982592    1.3031730
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  0.5669748    0.1350726    0.9988770
Birth       ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       1                    0                  0.8362029   -0.2599186    1.9323245
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0477632   -0.2239606    0.1284342
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                  0.5723467    0.4385390    0.7061543
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.2895248    0.1321032    0.4469464
Birth       ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     1                    0                  0.2333333   -1.0956307    1.5622974
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1632459   -0.4685422    0.1420504
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0400196   -0.5048437    0.5848828
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0810913   -0.1808960    0.3430785
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1869525   -0.5003898    0.1264847
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.1724236   -0.5810513    0.9258985
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.2036297   -0.5577124    0.1504531
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0128571   -0.6834182    0.6577039
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0373310   -0.3251884    0.2505265
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.3730478    0.1149534    0.6311422
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.1364714   -0.4048926    0.1319498
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.7104827    0.2919996    1.1289657
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1533487   -0.3292230    0.0225257
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0521240   -0.1968152    0.0925673
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0254372   -0.1352445    0.0843702
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.3644906   -2.0082495   -0.7207316
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0514014   -0.1111265    0.2139292
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.1054312   -0.5096462    0.2987838
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0164472   -0.2919384    0.3248328
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.7123274   -1.2417782   -0.1828766
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.1708194   -0.0987274    0.4403662
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0141732   -0.3324515    0.3607980
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.2889724   -0.4374797    1.0154244
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2573774   -0.2389700    0.7537248
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2784123   -0.8547515    0.2979269
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0883784   -0.2856366    0.1088797
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                  0.0652539   -0.1213178    0.2518257
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0712044   -0.3900440    0.2476352
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0946100   -0.2697470    0.0805269
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0871062   -0.2013868    0.0271745
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0307863   -0.1506394    0.2122119
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.1510883   -0.4975271    0.1953505


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0111539   -0.0692357    0.0915436
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0796173   -0.1360371    0.2952717
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0092340   -0.0265474    0.0450154
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0700457   -0.0193773    0.1594687
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0063418   -0.0443044    0.0569881
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1748816   -0.4424771    0.0927139
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.5852398    0.4035081    0.7669715
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.1862989    0.0373983    0.3351994
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                 0.3292611   -0.0477603    0.7062825
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0168497   -0.0644710    0.0307716
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.2009892    0.1516373    0.2503411
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1080953    0.0476240    0.1685667
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0583333   -0.2769994    0.3936660
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0374861   -0.1129459    0.0379737
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0234652   -0.0180322    0.0649626
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0282581   -0.0570720    0.1135882
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0326854   -0.0964601    0.0310894
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0095954   -0.0162006    0.0353915
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0138668   -0.0569932    0.0292596
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0115704   -0.0451628    0.0220221
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0227428   -0.1715329    0.1260473
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.2209562    0.0755773    0.3663350
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0479236   -0.1355653    0.0397182
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2829415    0.1085541    0.4573290
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0403050   -0.0853941    0.0047840
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0043018   -0.0252567    0.0166531
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0094126   -0.0421517    0.0233265
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0456665   -0.0793941   -0.0119390
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0150198   -0.0509580    0.0809977
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0176762   -0.0827754    0.0474230
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0141377   -0.0584796    0.0867549
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0384555   -0.0887429    0.0118319
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0512974   -0.0390582    0.1416531
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0026884   -0.0635585    0.0689354
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0115014   -0.0184534    0.0414561
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0004778   -0.0541016    0.0550572
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0143761   -0.0519173    0.0231652
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0241030   -0.1278117    0.0796058
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0400419   -0.0642016    0.1442855
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0240065   -0.1389752    0.0909621
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0246602   -0.0690241    0.0197037
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0264327   -0.0612306    0.0083651
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0123941   -0.0574416    0.0822299
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0298789   -0.0871944    0.0274365
