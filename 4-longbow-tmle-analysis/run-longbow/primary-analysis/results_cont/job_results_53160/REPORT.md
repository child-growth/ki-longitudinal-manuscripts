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

agecat      studyid                    country                        anywast06    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               177    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                52    229
Birth       ki0047075b-MAL-ED          BRAZIL                         0                62     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 3     65
Birth       ki0047075b-MAL-ED          INDIA                          0                33     47
Birth       ki0047075b-MAL-ED          INDIA                          1                14     47
Birth       ki0047075b-MAL-ED          NEPAL                          0                23     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                 4     27
Birth       ki0047075b-MAL-ED          PERU                           0               223    233
Birth       ki0047075b-MAL-ED          PERU                           1                10    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               101    122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                21    122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               119    124
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 5    124
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                37     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                55     92
Birth       ki1000108-IRC              INDIA                          0               164    388
Birth       ki1000108-IRC              INDIA                          1               224    388
Birth       ki1000109-EE               PAKISTAN                       0               156    240
Birth       ki1000109-EE               PAKISTAN                       1                84    240
Birth       ki1000109-ResPak           PAKISTAN                       0                28     42
Birth       ki1000109-ResPak           PAKISTAN                       1                14     42
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               396    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               143    539
Birth       ki1101329-Keneba           GAMBIA                         0               994   1542
Birth       ki1101329-Keneba           GAMBIA                         1               548   1542
Birth       ki1113344-GMS-Nepal        NEPAL                          0               422    684
Birth       ki1113344-GMS-Nepal        NEPAL                          1               262    684
Birth       ki1114097-CMIN             BANGLADESH                     0                15     20
Birth       ki1114097-CMIN             BANGLADESH                     1                 5     20
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               183    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                58    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               194    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                15    209
6 months    ki0047075b-MAL-ED          INDIA                          0               159    236
6 months    ki0047075b-MAL-ED          INDIA                          1                77    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               188    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                48    236
6 months    ki0047075b-MAL-ED          PERU                           0               263    273
6 months    ki0047075b-MAL-ED          PERU                           1                10    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               223    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                31    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               234    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               177    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               188    365
6 months    ki1000108-IRC              INDIA                          0               180    407
6 months    ki1000108-IRC              INDIA                          1               227    407
6 months    ki1000109-EE               PAKISTAN                       0               249    373
6 months    ki1000109-EE               PAKISTAN                       1               124    373
6 months    ki1000109-ResPak           PAKISTAN                       0               143    239
6 months    ki1000109-ResPak           PAKISTAN                       1                96    239
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               450    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               154    604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029
6 months    ki1101329-Keneba           GAMBIA                         0              1441   2056
6 months    ki1101329-Keneba           GAMBIA                         1               615   2056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0               336    564
6 months    ki1113344-GMS-Nepal        NEPAL                          1               228    564
6 months    ki1114097-CMIN             BANGLADESH                     0               201    243
6 months    ki1114097-CMIN             BANGLADESH                     1                42    243
6 months    ki1114097-CONTENT          PERU                           0               211    215
6 months    ki1114097-CONTENT          PERU                           1                 4    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               162    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                50    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               156    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                13    169
24 months   ki0047075b-MAL-ED          INDIA                          0               151    227
24 months   ki0047075b-MAL-ED          INDIA                          1                76    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               182    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                46    228
24 months   ki0047075b-MAL-ED          PERU                           0               193    201
24 months   ki0047075b-MAL-ED          PERU                           1                 8    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               212    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                26    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                12    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               176    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               190    366
24 months   ki1000108-IRC              INDIA                          0               181    409
24 months   ki1000108-IRC              INDIA                          1               228    409
24 months   ki1000109-EE               PAKISTAN                       0               109    167
24 months   ki1000109-EE               PAKISTAN                       1                58    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               432    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               146    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6
24 months   ki1101329-Keneba           GAMBIA                         0              1091   1563
24 months   ki1101329-Keneba           GAMBIA                         1               472   1563
24 months   ki1113344-GMS-Nepal        NEPAL                          0               300    488
24 months   ki1113344-GMS-Nepal        NEPAL                          1               188    488
24 months   ki1114097-CMIN             BANGLADESH                     0               200    242
24 months   ki1114097-CMIN             BANGLADESH                     1                42    242
24 months   ki1114097-CONTENT          PERU                           0               161    164
24 months   ki1114097-CONTENT          PERU                           1                 3    164


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
![](/tmp/d25f9744-7317-46cb-8dad-a82f9870a74e/b914e1d7-6538-4876-a49b-788b937435b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d25f9744-7317-46cb-8dad-a82f9870a74e/b914e1d7-6538-4876-a49b-788b937435b0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d25f9744-7317-46cb-8dad-a82f9870a74e/b914e1d7-6538-4876-a49b-788b937435b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1185620   -1.2666483   -0.9704757
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.0740045   -1.3930952   -0.7549137
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -1.2816422   -1.6053599   -0.9579246
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0479745   -1.6916805   -0.4042685
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.8955773   -1.0127964   -0.7783582
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.0055965   -2.0069585   -0.0042345
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.6475654   -0.8336787   -0.4614520
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2172989   -0.7081419    0.2735441
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1432773   -1.3541075   -0.9324471
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.9860000   -2.2167588    0.2447588
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.7845475   -1.1169407   -0.4521543
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.0847130   -1.3727266   -0.7966995
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.8810004   -1.0911282   -0.6708727
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.1187439   -0.0988965    0.3363843
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -2.0364504   -2.2452301   -1.8276708
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -1.4902856   -1.8858161   -1.0947550
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -1.1095706   -1.5595928   -0.6595484
Birth       ki1000109-ResPak           PAKISTAN                       1                    NA                -0.5778319   -1.5075763    0.3519126
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8688190   -0.9544556   -0.7831825
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9607885   -1.1124973   -0.8090796
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.1719096   -0.2464168   -0.0974024
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.4091262    0.2977471    0.5205052
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1541061   -1.2543676   -1.0538446
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.8886236   -1.0103177   -0.7669295
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -1.2613333   -1.7710980   -0.7515686
Birth       ki1114097-CMIN             BANGLADESH                     1                    NA                -1.0280000   -2.2553082    0.1993082
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1676910   -1.2928776   -1.0425044
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.3246033   -1.6203603   -1.0288463
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0245225   -0.1247352    0.1737802
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0578501   -0.4675545    0.5832547
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.2342888   -1.3754533   -1.0931244
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1464494   -1.3681292   -0.9247695
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.5267886   -0.6468203   -0.4067568
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7262386   -1.0199676   -0.4325097
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3325688   -1.4416448   -1.2234927
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.4611111   -2.3196133   -0.6026089
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.0480640   -1.1864838   -0.9096442
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.0850348   -1.4136638   -0.7564057
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3587801   -1.4835860   -1.2339742
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5463041   -2.1246778   -0.9679305
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4060632   -1.6194124   -1.1927139
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.4114821   -1.6036438   -1.2193204
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.4475279   -1.6363976   -1.2586583
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.0761434   -1.2533359   -0.8989509
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.0520290   -2.1933773   -1.9106807
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.1376256   -2.3661299   -1.9091213
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.7218440   -1.9720914   -1.4715966
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.9963552   -1.3311318   -0.6615787
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0501156   -1.1354348   -0.9647964
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2044987   -1.3555848   -1.0534125
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5388745   -0.5917976   -0.4859515
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5724822   -0.7043466   -0.4406178
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.9013559   -0.9548665   -0.8478452
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.9279312   -1.0247112   -0.8311512
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5383427   -1.6535546   -1.4231309
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.8092125   -3.3878905   -2.2305346
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.3721154   -1.4712942   -1.2729367
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3239368   -1.4511934   -1.1966801
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.7721899   -1.9217997   -1.6225801
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -1.8398294   -2.2014467   -1.4782121
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9867652   -2.1314155   -1.8421150
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.9687294   -2.2517759   -1.6856829
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0479044   -0.1271458    0.2229546
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.5528879   -1.1100993    0.0043236
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.9333758   -2.0852290   -1.7815226
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7481150   -1.9703092   -1.5259207
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.3081278   -1.4373285   -1.1789270
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.3366377   -1.6511676   -1.0221079
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.7639724   -1.8863550   -1.6415897
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.4750000   -2.1910692   -0.7589308
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6507646   -1.7902849   -1.5112443
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7214535   -2.2051288   -1.2377782
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6317875   -2.7697028   -2.4938722
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.8725583   -3.4322026   -2.3129141
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5064347   -2.6499674   -2.3629020
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5987886   -2.7353844   -2.4621929
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.8393884   -1.9719896   -1.7067872
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.7704510   -1.9019733   -1.6389287
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.6533420   -2.8387859   -2.4678980
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -2.7006280   -2.9597484   -2.4415076
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5821961   -1.6824031   -1.4819891
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6651858   -1.8120207   -1.5183510
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5500516   -1.6112943   -1.4888090
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.6455122   -1.7429008   -1.5481236
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.9015299   -2.0045155   -1.7985443
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8568009   -2.0053286   -1.7082731
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.4814658   -2.6196316   -2.3433000
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.5647935   -2.8792160   -2.2503711


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0445575   -0.3072020    0.3963171
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.2336678   -0.4916037    0.9589392
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.1100192   -1.1183175    0.8982791
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.4302665   -0.0979920    0.9585250
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1572773   -1.0914086    1.4059632
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3001655   -0.7415213    0.1411902
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.9997443    0.6967182    1.3027705
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  0.5461649    0.1021215    0.9902083
Birth       ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       1                    0                  0.5317387   -0.5130017    1.5764792
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0919694   -0.2661123    0.0821735
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                  0.5810357    0.4474248    0.7146467
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.2654825    0.1080104    0.4229546
Birth       ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     1                    0                  0.2333333   -1.0956307    1.5622974
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1569123   -0.4786176    0.1647931
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0333276   -0.5129825    0.5796377
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0878395   -0.1753828    0.3510617
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1994501   -0.5173855    0.1184854
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.1285423   -0.9943106    0.7372260
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0369707   -0.3956009    0.3216594
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1875240   -0.7793059    0.4042578
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0054190   -0.2925409    0.2817030
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.3713845    0.1147119    0.6280572
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0855966   -0.3546880    0.1834948
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.7254888    0.3074210    1.1435566
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1543831   -0.3276839    0.0189177
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0336077   -0.1758132    0.1085978
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0265753   -0.1370533    0.0839027
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.2708698   -1.8594904   -0.6822492
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0481787   -0.1133384    0.2096957
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0676395   -0.4595469    0.3242679
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0180358   -0.3004963    0.3365678
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.6007923   -1.1835395   -0.0180450
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.1852609   -0.0850710    0.4555927
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0285100   -0.3695101    0.3124902
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.2889724   -0.4374797    1.0154244
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0706889   -0.5738344    0.4324567
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2407708   -0.8169800    0.3354383
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0923540   -0.2903868    0.1056789
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                  0.0689374   -0.1182312    0.2561060
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0472861   -0.3664550    0.2718828
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0829897   -0.2601538    0.0941744
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0954606   -0.2099314    0.0190102
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0447291   -0.1354139    0.2248720
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0833277   -0.4264360    0.2597805


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0144572   -0.0648953    0.0938097
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0780252   -0.1375516    0.2936020
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0127876   -0.0219173    0.0474925
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0597785   -0.0308414    0.1503984
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0063418   -0.0443044    0.0569881
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1766482   -0.4460874    0.0927911
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.5729592    0.3917590    0.7541594
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.1755754    0.0262842    0.3248666
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1295706   -0.2332041    0.4923453
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0162830   -0.0641790    0.0316130
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.2044582    0.1550448    0.2538716
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1086529    0.0477562    0.1695495
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0583333   -0.2769994    0.3936660
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0373021   -0.1127373    0.0381331
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0230533   -0.0187917    0.0648983
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0227634   -0.0621854    0.1077122
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0347934   -0.0993335    0.0297468
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0089027   -0.0169793    0.0347847
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0152562   -0.0583541    0.0278418
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0099648   -0.0431165    0.0231869
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0181240   -0.1675424    0.1312944
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.2131217    0.0686809    0.3575625
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0315277   -0.1195159    0.0564604
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2904354    0.1172301    0.4636406
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0415759   -0.0858799    0.0027281
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0045643   -0.0255463    0.0164176
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0103203   -0.0432787    0.0226381
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0402049   -0.0726048   -0.0078050
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0212762   -0.0439375    0.0864899
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0122477   -0.0777118    0.0532164
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0083690   -0.0643071    0.0810451
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0417900   -0.0923056    0.0087257
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0471864   -0.0444264    0.1387992
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0005401   -0.0654989    0.0665791
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0115014   -0.0184534    0.0414561
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0057051   -0.0484481    0.0598583
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0137732   -0.0509420    0.0233955
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0424724   -0.1454563    0.0605114
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0406109   -0.0636854    0.1449072
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0166480   -0.1235983    0.0903022
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0202260   -0.0646308    0.0241788
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0274242   -0.0620329    0.0071845
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0141119   -0.0557958    0.0840195
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0294846   -0.0864589    0.0274897
