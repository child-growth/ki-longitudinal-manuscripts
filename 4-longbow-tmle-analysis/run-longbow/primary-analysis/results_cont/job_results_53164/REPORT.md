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

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              196     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               17     213
Birth       ki0047075b-MAL-ED          BRAZIL                         1               58      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2      60
Birth       ki0047075b-MAL-ED          INDIA                          1               35      41
Birth       ki0047075b-MAL-ED          INDIA                          0                6      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                9      25
Birth       ki0047075b-MAL-ED          NEPAL                          0               16      25
Birth       ki0047075b-MAL-ED          PERU                           1               39     215
Birth       ki0047075b-MAL-ED          PERU                           0              176     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               87      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                9      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                7     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              112     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               72      72
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      72
Birth       ki1000108-IRC              INDIA                          1              287     287
Birth       ki1000108-IRC              INDIA                          0                0     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              533     605
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               72     605
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              491     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               48     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              558     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              174     732
Birth       ki1113344-GMS-Nepal        NEPAL                          1              100     544
Birth       ki1113344-GMS-Nepal        NEPAL                          0              444     544
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1394   22399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            21005   22399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              307    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             2513    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              221     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               19     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1              207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                2     209
6 months    ki0047075b-MAL-ED          INDIA                          1              220     235
6 months    ki0047075b-MAL-ED          INDIA                          0               15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1              103     229
6 months    ki0047075b-MAL-ED          NEPAL                          0              126     229
6 months    ki0047075b-MAL-ED          PERU                           1               58     270
6 months    ki0047075b-MAL-ED          PERU                           0              212     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              229     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              257     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     257
6 months    ki1000108-IRC              INDIA                          1              303     303
6 months    ki1000108-IRC              INDIA                          0                0     303
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              477     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              557     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               47     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1465   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15308   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4234    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              167     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     169
24 months   ki0047075b-MAL-ED          INDIA                          1              212     227
24 months   ki0047075b-MAL-ED          INDIA                          0               15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               98     221
24 months   ki0047075b-MAL-ED          NEPAL                          0              123     221
24 months   ki0047075b-MAL-ED          PERU                           1               49     201
24 months   ki0047075b-MAL-ED          PERU                           0              152     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              259     259
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     259
24 months   ki1000108-IRC              INDIA                          1              305     305
24 months   ki1000108-IRC              INDIA                          0                0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              377     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              533     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               45     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     374
24 months   ki1113344-GMS-Nepal        NEPAL                          0              302     374
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              674    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7935    8609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              566    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4180    4746


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

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
![](/tmp/7bdc42d3-478f-4b16-9639-6248b884a1bd/ac11b613-86cf-4919-902d-eb8b6b1dce7f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7bdc42d3-478f-4b16-9639-6248b884a1bd/ac11b613-86cf-4919-902d-eb8b6b1dce7f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7bdc42d3-478f-4b16-9639-6248b884a1bd/ac11b613-86cf-4919-902d-eb8b6b1dce7f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.0711460   -1.2137838   -0.9285083
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.9158767   -1.4230643   -0.4086890
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -1.2242857   -1.5919558   -0.8566156
Birth       ki0047075b-MAL-ED       INDIA                          0                    NA                -1.1066667   -1.4622060   -0.7511274
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.0066667   -1.6704675   -0.3428658
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.6568750   -1.0897018   -0.2240482
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -1.0709304   -1.4429095   -0.6989513
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                -0.8802719   -1.0028852   -0.7576586
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.5463218   -0.7573107   -0.3353330
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.6111111   -1.3247632    0.1025410
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.8571429   -3.4252117   -0.2890740
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0753571   -1.2760805   -0.8746338
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.8965277   -0.9919541   -0.8011013
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.1672951   -1.3935443   -0.9410459
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.8629596   -0.9419281   -0.7839911
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.1292440   -1.3618779   -0.8966100
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.8947628   -0.9735142   -0.8160115
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.9416333   -1.1349751   -0.7482915
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.8528331   -1.0619941   -0.6436722
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.1752964   -1.2759496   -1.0746431
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.4509526   -1.5364351   -1.3654702
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.5939383   -1.6138141   -1.5740626
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.4320979   -1.6857650   -1.1784307
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.5368987   -1.5890204   -1.4847769
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.2058786   -1.3248229   -1.0869344
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -1.4908155   -2.0684124   -0.9132186
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -1.2066675   -1.3281137   -1.0852214
6 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -1.2280898   -1.7070669   -0.7491126
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.4783491   -0.6647671   -0.2919312
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.5978147   -0.7429622   -0.4526673
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -1.4141991   -1.6672866   -1.1611116
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                -1.2921079   -1.4102785   -1.1739372
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -1.0538321   -1.1902592   -0.9174051
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -1.0648093   -1.4887219   -0.6408967
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2057893   -1.8027698   -0.6088088
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3846114   -1.5115508   -1.2576721
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -1.3640671   -1.4579586   -1.2701756
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.7407081   -1.9907491   -1.4906671
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.0479430   -1.1228924   -0.9729937
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.6094680   -1.9375780   -1.2813580
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.1890935   -1.2688228   -1.1093641
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.2062010   -1.3779795   -1.0344224
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.2011375   -1.4228795   -0.9793956
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.3518899   -1.4540979   -1.2496818
6 months    ki1114097-CONTENT       PERU                           1                    NA                -0.3132252   -0.4945470   -0.1319034
6 months    ki1114097-CONTENT       PERU                           0                    NA                -0.2356159   -0.8576103    0.3863785
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.0837090   -1.1564557   -1.0109624
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.3312405   -1.3550412   -1.3074399
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.1097594   -1.2641380   -0.9553808
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.3795404   -1.4198385   -1.3392423
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.9994869   -2.1329131   -1.8660607
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -1.7294691   -2.1555144   -1.3034238
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -1.8787099   -2.0065835   -1.7508364
24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -1.9276237   -2.3769760   -1.4782714
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.1136542   -1.3156087   -0.9116997
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -1.4129564   -1.5666894   -1.2592234
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -1.6284500   -1.8947715   -1.3621284
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -1.7942951   -1.9300739   -1.6585163
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -1.6538151   -1.7944218   -1.5132084
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -2.0518567   -2.4895194   -1.6141939
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.3707707   -2.9260363   -1.8155050
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6620233   -2.8027082   -2.5213384
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -2.1528502   -2.2607348   -2.0449656
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -2.7582467   -3.0405862   -2.4759073
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.5603397   -1.6454806   -1.4751987
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -2.0977997   -2.3989198   -1.7966795
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.4319451   -1.5338773   -1.3300128
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.4265180   -1.5860628   -1.2669732
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.7436478   -1.9645011   -1.5227945
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.8469847   -1.9563908   -1.7375786
24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.6704375   -0.8480453   -0.4928297
24 months   ki1114097-CONTENT       PERU                           0                    NA                -1.2143619   -1.8454797   -0.5832442
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.7406710   -1.8570187   -1.6243234
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -2.0329435   -2.0617087   -2.0041783
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.5590214   -1.7154261   -1.4026166
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.8114603   -1.8489335   -1.7739871


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.2070732   -1.5254820   -0.8886644
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.7828000   -1.1547571   -0.4108429
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.9141395   -1.0364098   -0.7918693
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1213445   -1.3341800   -0.9085090
Birth       ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.9289256   -1.0178691   -0.8399821
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.1177022   -1.2075344   -1.0278700
Birth       kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -1.5895451   -1.6088186   -1.5702715
Birth       kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.2070638   -1.3255909   -1.0885368
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.5534862   -0.6681825   -0.4387899
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -1.3248549   -1.4336721   -1.2160378
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0547925   -1.1843544   -0.9252306
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3700408   -1.4930436   -1.2470380
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.4060639   -1.4948910   -1.3172368
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.3225094   -1.4115793   -1.2334396
6 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -1.3134597   -1.3365976   -1.2903219
6 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.3440174   -1.3812821   -1.3067527
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -1.2928054   -1.4146944   -1.1709164
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6432311   -2.7795797   -2.5068826
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -2.2235968   -2.3265592   -2.1206344
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.8396747   -1.9349390   -1.7444104
24 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -2.0134592   -2.0410825   -1.9858359
24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.7804046   -1.8159135   -1.7448956


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.1552694   -0.3723761    0.6829148
Birth       ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          0                    1                  0.1176190   -0.3938392    0.6290772
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                  0.3497917   -0.4426543    1.1422376
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.1906585   -0.1982368    0.5795538
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0647893   -0.8089772    0.6793986
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.7817857   -0.7990779    2.3626493
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.2707675   -0.5162379   -0.0252970
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.2662844   -0.5115309   -0.0210378
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0468705   -0.2552551    0.1615142
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.3224632   -0.5547156   -0.0902108
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.1429857   -0.2295288   -0.0564426
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.1048008   -0.3631099    0.1535084
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.2849369   -0.8753018    0.3054280
6 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0214222   -0.5155610    0.4727165
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1194656   -0.3562176    0.1172864
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.1220913   -0.1577142    0.4018967
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0109772   -0.4564664    0.4345121
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1788221   -0.7895397    0.4318954
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.3766410   -0.6432036   -0.1100783
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.5615249   -0.8981623   -0.2248876
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0171075   -0.2053241    0.1711092
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.1507523   -0.3976618    0.0961572
6 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           0                    1                  0.0776093   -0.5717945    0.7270131
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.2475315   -0.3225970   -0.1724660
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.2697810   -0.4256424   -0.1139197
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.2700178   -0.1723463    0.7123818
24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0489137   -0.5141747    0.4163472
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.2993022   -0.5543642   -0.0442403
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1658451   -0.4646122    0.1329219
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.3980415   -0.8574942    0.0614111
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2912526   -0.8637712    0.2812659
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.6053965   -0.9063252   -0.3044679
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.5374600   -0.8499039   -0.2250160
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0054271   -0.1840355    0.1948896
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.1033369   -0.3508828    0.1442090
24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           0                    1                 -0.5439244   -1.1987542    0.1109054
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.2922725   -0.4118218   -0.1727231
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.2524389   -0.4105388   -0.0943390


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0180944   -0.0215435    0.0577323
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0172125   -0.0587357    0.0931607
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.2238667   -0.2877278    0.7354611
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.1567909   -0.1620996    0.4756813
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0060740   -0.0759449    0.0637969
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7357983   -0.7524434    2.2240401
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0323980   -0.0629884   -0.0018075
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0221425   -0.0442528   -0.0000321
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0147317   -0.0611094    0.0316460
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.2648691   -0.4601504   -0.0695877
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.1385924   -0.2223093   -0.0548755
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0915156   -0.3350806    0.1520494
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0031981   -0.0412062    0.0476023
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0003963   -0.0363310    0.0355384
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0751370   -0.2124279    0.0621538
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0893442   -0.1302524    0.3089407
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0009604   -0.0354180    0.0334973
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1642515   -0.7464001    0.4178970
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0419968   -0.0720932   -0.0119003
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0437485   -0.0721697   -0.0153272
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0095848   -0.0520598    0.0328901
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.1213719   -0.3291177    0.0863739
6 months    ki1114097-CONTENT       PERU                           1                    NA                -0.0006965   -0.0375287    0.0361356
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.2297507   -0.3016436   -0.1578578
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2342580   -0.3795186   -0.0889974
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0210906   -0.0113975    0.0535788
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0074795   -0.0425630    0.0276040
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.1791512   -0.3311743   -0.0271282
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.1240210   -0.3509005    0.1028584
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0087556   -0.0288201    0.0463313
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2724605   -0.8183570    0.2734361
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0707466   -0.1099731   -0.0315201
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0420825   -0.0697529   -0.0144120
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0093195   -0.0686706    0.0500315
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0960269   -0.3040942    0.1120405
24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0257820   -0.0662563    0.0146924
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.2727881   -0.3879432   -0.1576331
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2213832   -0.3699159   -0.0728504
