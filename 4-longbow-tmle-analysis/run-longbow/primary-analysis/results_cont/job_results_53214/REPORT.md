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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid                    country                        exclfeed3    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               130     202
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                72     202
Birth       ki0047075b-MAL-ED          BRAZIL                         1                11      55
Birth       ki0047075b-MAL-ED          BRAZIL                         0                44      55
Birth       ki0047075b-MAL-ED          INDIA                          1                22      39
Birth       ki0047075b-MAL-ED          INDIA                          0                17      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 8      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                17      25
Birth       ki0047075b-MAL-ED          PERU                           1                47     218
Birth       ki0047075b-MAL-ED          PERU                           0               171     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                12      99
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                87      99
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                15      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                80      95
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0       9
Birth       ki1000108-IRC              INDIA                          0                 9       9
Birth       ki1000109-EE               PAKISTAN                       1                22      22
Birth       ki1000109-EE               PAKISTAN                       0                 0      22
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               310     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                15     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               381     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               151     532
Birth       ki1101329-Keneba           GAMBIA                         1              1133    1282
Birth       ki1101329-Keneba           GAMBIA                         0               149    1282
Birth       ki1113344-GMS-Nepal        NEPAL                          1               352     422
Birth       ki1113344-GMS-Nepal        NEPAL                          0                70     422
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              9636   10634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               998   10634
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                89      97
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 8      97
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               152     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                81     233
6 months    ki0047075b-MAL-ED          BRAZIL                         1                60     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0               127     187
6 months    ki0047075b-MAL-ED          INDIA                          1               110     210
6 months    ki0047075b-MAL-ED          INDIA                          0               100     210
6 months    ki0047075b-MAL-ED          NEPAL                          1                70     227
6 months    ki0047075b-MAL-ED          NEPAL                          0               157     227
6 months    ki0047075b-MAL-ED          PERU                           1                61     270
6 months    ki0047075b-MAL-ED          PERU                           0               209     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               222     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                46     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               166     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    ki1000108-IRC              INDIA                          1                 0      10
6 months    ki1000108-IRC              INDIA                          0                10      10
6 months    ki1000109-EE               PAKISTAN                       1                39      39
6 months    ki1000109-EE               PAKISTAN                       0                 0      39
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               428     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               175     603
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               367     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                74     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              8499    9310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               811    9310
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                76      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      88
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               135     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                52     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0               100     152
24 months   ki0047075b-MAL-ED          INDIA                          1               102     202
24 months   ki0047075b-MAL-ED          INDIA                          0               100     202
24 months   ki0047075b-MAL-ED          NEPAL                          1                67     220
24 months   ki0047075b-MAL-ED          NEPAL                          0               153     220
24 months   ki0047075b-MAL-ED          PERU                           1                43     198
24 months   ki0047075b-MAL-ED          PERU                           0               155     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     228
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               146     184
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   ki1000108-IRC              INDIA                          1                 0      10
24 months   ki1000108-IRC              INDIA                          0                10      10
24 months   ki1000109-EE               PAKISTAN                       1                20      20
24 months   ki1000109-EE               PAKISTAN                       0                 0      20
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               408     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               171     579
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1421
24 months   ki1101329-Keneba           GAMBIA                         0               147    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          1               322     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                62     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              4416    4833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               417    4833
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               135     150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     150


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/ce7801d7-baf8-476f-a648-367ae7ba00f5/e46304f6-4490-423a-bd09-10e29b93c762/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ce7801d7-baf8-476f-a648-367ae7ba00f5/e46304f6-4490-423a-bd09-10e29b93c762/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ce7801d7-baf8-476f-a648-367ae7ba00f5/e46304f6-4490-423a-bd09-10e29b93c762/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.8901839   -1.0750910   -0.7052768
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0267359   -1.2799981   -0.7734737
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1978412   -0.5450284    0.9407109
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.4171331    0.0274369    0.8068293
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.0742458   -1.4841101   -0.6643815
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.8558799   -1.3466755   -0.3650843
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.4487500   -0.8783289   -0.0191711
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.9570588   -1.4394884   -0.4746293
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.2290287   -0.0205967    0.4786540
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.0950065   -0.2380473    0.0480342
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.5923969   -1.3125009    0.1277071
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1755237   -0.4192785    0.0682311
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.2075048    0.7304535    1.6845561
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6925216    0.4589097    0.9261335
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.0901282   -1.7027393   -0.4775170
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.2688269   -1.3555947   -1.1820590
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.3706781   -1.5094337   -1.2319226
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                -1.2596870   -1.3277458   -1.1916282
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                -1.2671613   -1.4507800   -1.0835425
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1084940   -1.2274621   -0.9895259
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.9672348   -1.1771068   -0.7573627
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.7829486   -0.8061917   -0.7597056
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.7523629   -0.8191030   -0.6856227
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1016807   -0.2679938    0.0646323
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1860837   -0.4049606    0.0327932
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 1.1220892    0.7965866    1.4475917
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.9009142    0.6907830    1.1110454
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.6901993   -0.8537130   -0.5266855
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.7514064   -0.9589361   -0.5438767
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.2218659   -0.0304267    0.4741585
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0633330   -0.0992257    0.2258918
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 1.1371622    0.9221209    1.3522035
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 1.0126297    0.8675190    1.1577403
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.5126585    0.2025124    0.8228046
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.5639384    0.4006337    0.7272431
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7772944    0.4687501    1.0858387
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.4434521    0.2896911    0.5972131
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6500492   -1.1672739   -0.1328245
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.1359229   -0.2298907   -0.0419551
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.3647221   -0.5278625   -0.2015817
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.1825770   -0.2409058   -0.1242482
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.3856582   -0.5635629   -0.2077535
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.6245224   -0.7345421   -0.5145027
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.5481045   -0.7959789   -0.3002301
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.6057353   -0.6313144   -0.5801561
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.5876973   -0.6649165   -0.5104782
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.4046986   -0.6330986   -0.1762985
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.3493601   -0.7469383    0.0482182
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.8395792   -0.9980808   -0.6810775
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.7895392   -0.9823155   -0.5967629
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.3238487   -0.0185472    0.6662445
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.5938412    0.3088514    0.8788309
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.9336727   -1.0859143   -0.7814311
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.9584556   -1.1385983   -0.7783129
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.2432496   -0.4534114   -0.0330878
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.4296284   -0.5701627   -0.2890941
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.2126296   -0.0097548    0.4350140
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.1236237   -0.0167318    0.2639792
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.8138813    0.5293253    1.0984372
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.3819136    0.2515669    0.5122604
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0308800   -0.2013351    0.2630952
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0428733   -0.1171859    0.2029325
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.9190853   -1.0155449   -0.8226257
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.8175060   -0.9720066   -0.6630054
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.7744333   -0.8287044   -0.7201623
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.9676565   -1.1185482   -0.8167648
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1545036   -1.2669596   -1.0420475
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1093838   -1.3497274   -0.8690403
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.3148336   -1.3466335   -1.2830337
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.2762928   -1.3940661   -1.1585195
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.0179245   -1.1805622   -0.8552868
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.6804506   -1.1482896   -0.2126116


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.9411386   -1.0895370   -0.7927402
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4316364    0.0969688    0.7663039
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9779487   -1.2664810   -0.6894164
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.7944000   -1.1625222   -0.4262778
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0335321   -0.1564905    0.0894263
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1588889   -0.3845288    0.0667510
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7996842    0.5874808    1.0118876
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                -1.2629563   -1.3291505   -1.1967622
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.0991706   -1.2073693   -0.9909719
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.7798636   -0.8022140   -0.7575133
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.4347423   -0.6441144   -0.2253701
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1304936   -0.2625419    0.0015547
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.9754144    0.7990651    1.1517638
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.7185992   -0.8491469   -0.5880515
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.1041483   -0.0311352    0.2394318
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                 1.0514136    0.9289176    1.1739096
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5564071    0.4055220    0.7072922
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5257626    0.3871543    0.6643709
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.2057183   -0.2614359   -0.1500006
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.6198791   -0.7206518   -0.5191063
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.6040977   -0.6286619   -0.5795335
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.4110227   -0.6122701   -0.2097753
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.8076829   -0.9296166   -0.6857493
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4981140    0.2760418    0.7201863
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9516832   -1.0703961   -0.8329703
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.3790455   -0.4958857   -0.2622052
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.1176052   -0.0015211    0.2367315
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4120797    0.2900939    0.5340654
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0495743   -0.0857535    0.1849021
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.7930925   -0.8442611   -0.7419240
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1396441   -1.2416403   -1.0376479
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3109518   -1.3423299   -1.2795737
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.0096000   -1.1619164   -0.8572836


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1365520   -0.4516068    0.1785027
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.2192919   -0.6312861    1.0698699
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                  0.2183659   -0.4419900    0.8787217
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.5083088   -1.1542781    0.1376604
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.3240352   -0.6140436   -0.0340268
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.4168732   -0.3488851    1.1826315
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.5149832   -1.0489002    0.0189338
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.4481495   -0.9783682    0.0820692
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.1018513   -0.2571165    0.0534140
Birth       ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA                         0                    1                 -0.0074743   -0.1960743    0.1811257
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.1412592   -0.0913322    0.3738507
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0305858   -0.0385569    0.0997284
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0844030   -0.3600347    0.1912287
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.2211749   -0.6082870    0.1659371
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0612071   -0.3269669    0.2045526
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1585329   -0.4583281    0.1412623
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                 -0.1245325   -0.3838498    0.1347848
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0512799   -0.2990192    0.4015789
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3338423   -0.6790552    0.0113706
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0062476   -0.5560776    0.5435824
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.2287992   -0.4156319   -0.0419664
6 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 -0.2030812   -0.3896540   -0.0165084
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0764179   -0.1937634    0.3465992
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0180379   -0.0623537    0.0984296
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0553385   -0.4147761    0.5254531
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0500400   -0.2000929    0.3001728
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.2699925   -0.1764836    0.7164686
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0247829   -0.2618886    0.2123227
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1863788   -0.4390393    0.0662816
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0890059   -0.3538635    0.1758518
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.4319676   -0.7459105   -0.1180248
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0119933   -0.2697019    0.2936884
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.1015793   -0.0793103    0.2824689
24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.1932232   -0.3535838   -0.0328625
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0451197   -0.2202855    0.3105249
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0385408   -0.0815305    0.1586122
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.3374738   -0.1597888    0.8347365


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0509547   -0.1632765    0.0613671
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2337951   -0.4603984    0.9279886
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0962971   -0.1957761    0.3883702
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.3456500   -0.7950359    0.1037359
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.2625608   -0.4927452   -0.0323764
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.4335080   -0.2547853    1.1218013
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4078206   -0.8667000    0.0510588
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0176521   -0.0527130    0.0174088
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0296318   -0.0728751    0.0136115
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                -0.0032693   -0.0255969    0.0190582
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0093234   -0.0297398    0.0483866
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0030850   -0.0034193    0.0095893
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0288129   -0.1248400    0.0672143
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.1466747   -0.4115837    0.1182342
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0283999   -0.1566540    0.0998541
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1177176   -0.3274376    0.0920025
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0857486   -0.2872139    0.1157167
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0437486   -0.2784388    0.3659360
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2515318   -0.5229468    0.0198831
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0089155   -0.0178262    0.0356572
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0631678   -0.1178683   -0.0084673
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0231413   -0.0444348   -0.0018478
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0046433   -0.0399519    0.0492386
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0016375   -0.0053697    0.0086447
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0063242   -0.0694404    0.0567921
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0318962   -0.0538099    0.1176024
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1742654   -0.1211470    0.4696778
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0180105   -0.1392371    0.1032161
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1357959   -0.3128801    0.0412884
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0950244   -0.3046200    0.1145713
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.4018016   -0.6915196   -0.1120836
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0186943   -0.2050945    0.2424830
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0262183   -0.0273313    0.0797679
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0186592   -0.0354743   -0.0018441
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0148595   -0.0276852    0.0574041
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0038818   -0.0062950    0.0140587
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0083245   -0.0388762    0.0555251
