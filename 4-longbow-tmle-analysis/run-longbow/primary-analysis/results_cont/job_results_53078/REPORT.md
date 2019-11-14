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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             2064   26604
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            24540   26604
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1461   16716
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15255   16716
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              667    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7875    8542
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
![](/tmp/caf60572-0c39-4227-8fd7-5ee3c0b9ca92/d28944b7-f05e-48ea-a922-70166fc07556/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/caf60572-0c39-4227-8fd7-5ee3c0b9ca92/d28944b7-f05e-48ea-a922-70166fc07556/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/caf60572-0c39-4227-8fd7-5ee3c0b9ca92/d28944b7-f05e-48ea-a922-70166fc07556/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.0739815   -1.2166901   -0.9312729
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.9879980   -1.3993246   -0.5766715
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -1.2242857   -1.5919558   -0.8566156
Birth       ki0047075b-MAL-ED       INDIA                          0                    NA                -1.1066667   -1.4622060   -0.7511274
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.0066667   -1.6704675   -0.3428658
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.6568750   -1.0897018   -0.2240482
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -1.0063134   -1.3659725   -0.6466544
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                -0.8811309   -1.0026305   -0.7596314
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.5463218   -0.7573107   -0.3353330
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.6111111   -1.3247632    0.1025410
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.8571429   -3.4252117   -0.2890740
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0753571   -1.2760805   -0.8746338
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.8907627   -0.9857669   -0.7957586
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.2180656   -1.4420864   -0.9940449
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.8617209   -0.9408417   -0.7826001
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.1266023   -1.3593933   -0.8938112
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.8991551   -0.9787932   -0.8195171
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.9607495   -1.1644600   -0.7570390
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.8465967   -1.0542220   -0.6389715
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.1697863   -1.2709448   -1.0686278
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.6590000   -0.7938692   -0.5241308
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.2055347   -1.2329960   -1.1780734
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.4482610   -1.6922714   -1.2042505
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.5374804   -1.5899333   -1.4850274
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.2016270   -1.3206886   -1.0825653
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.8445171   -1.4387333   -0.2503009
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -1.2059729   -1.3273635   -1.0845822
6 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -1.1489251   -1.7724385   -0.5254118
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.4804342   -0.6648363   -0.2960320
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.5749910   -0.7192183   -0.4307636
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -1.4247863   -1.6894388   -1.1601338
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                -1.3004080   -1.4192251   -1.1815909
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -1.0562920   -1.1928457   -0.9197383
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -1.1066619   -1.5342201   -0.6791037
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0871411   -1.6986461   -0.4756361
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3849628   -1.5119006   -1.2580250
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -1.3641302   -1.4580976   -1.2701628
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.7526472   -2.0058513   -1.4994431
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.0482063   -1.1230873   -0.9733252
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.6090484   -1.9328940   -1.2852027
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.1922988   -1.2731339   -1.1114638
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.1925612   -1.3673378   -1.0177846
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.1447785   -1.3464908   -0.9430661
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.3582145   -1.4609001   -1.2555289
6 months    ki1114097-CONTENT       PERU                           1                    NA                -0.3131593   -0.4945218   -0.1317969
6 months    ki1114097-CONTENT       PERU                           0                    NA                -0.3582476   -0.9363299    0.2198348
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.0951896   -1.1659996   -1.0243795
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.3521440   -1.3758684   -1.3284196
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.1158575   -1.2696352   -0.9620799
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.3789412   -1.4188698   -1.3390127
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.9911229   -2.1241947   -1.8580510
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -1.9183478   -2.3286864   -1.5080092
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -1.8796903   -2.0077375   -1.7516430
24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -1.8980550   -2.3380810   -1.4580289
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.1113357   -1.3080836   -0.9145877
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -1.4367006   -1.5855456   -1.2878556
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -1.6504924   -1.9022660   -1.3987188
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -1.7924277   -1.9280909   -1.6567644
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -1.6490134   -1.7903937   -1.5076331
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -1.6422398   -2.1941249   -1.0903547
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.3327693   -2.9326365   -1.7329021
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6639979   -2.8051409   -2.5228549
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -2.1518026   -2.2597266   -2.0438786
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -2.7675912   -3.0436557   -2.4915266
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.5572068   -1.6424474   -1.4719662
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -2.1571822   -2.4707220   -1.8436424
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.4347436   -1.5389816   -1.3305057
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.4565215   -1.6217968   -1.2912462
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.7243608   -1.9253840   -1.5233376
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.8559873   -1.9660326   -1.7459420
24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.6704160   -0.8478667   -0.4929653
24 months   ki1114097-CONTENT       PERU                           0                    NA                -1.3738766   -1.9303273   -0.8174259
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.7300054   -1.8475523   -1.6124585
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -2.0379974   -2.0669036   -2.0090913
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.5592476   -1.7119855   -1.4065096
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.8098377   -1.8473091   -1.7723663


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
Birth       kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -1.1725229   -1.2005540   -1.1444918
Birth       kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.2031806   -1.3209873   -1.0853738
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.2069078   -1.3255669   -1.0882487
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.5534934   -0.6683107   -0.4386762
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -1.3293333   -1.4383829   -1.2202838
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0554016   -1.1850591   -0.9257441
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3700408   -1.4930436   -1.2470380
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.4060639   -1.4948910   -1.3172368
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.3225094   -1.4115793   -1.2334396
6 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -1.3358555   -1.3589365   -1.3127744
6 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.3440174   -1.3812821   -1.3067527
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -1.2972172   -1.4192878   -1.1751466
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6428302   -2.7790815   -2.5065788
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -2.2235968   -2.3265592   -2.1206344
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.8396747   -1.9349390   -1.7444104
24 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -2.0193889   -2.0469721   -1.9918057
24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.7804046   -1.8159135   -1.7448956


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0859835   -0.3484423    0.5204092
Birth       ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          0                    1                  0.1176190   -0.3938392    0.6290772
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                  0.3497917   -0.4426543    1.1422376
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.1251825   -0.2524783    0.5028433
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0647893   -0.8089772    0.6793986
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.7817857   -0.7990779    2.3626493
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.3273029   -0.5692931   -0.0853127
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.2648813   -0.5105476   -0.0192151
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0615943   -0.2803706    0.1571820
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.3231896   -0.5544259   -0.0919532
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.5465348   -0.6807168   -0.4123527
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0892194   -0.3375105    0.1590717
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.3571099   -0.2500095    0.9642293
6 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0                    1                  0.0570478   -0.5786289    0.6927244
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0945568   -0.3280009    0.1388874
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.1243783   -0.1659913    0.4147479
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0503699   -0.4996452    0.3989055
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2978217   -0.9229102    0.3272667
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.3885170   -0.6581506   -0.1188835
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.5608421   -0.8932896   -0.2283946
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0002624   -0.1929360    0.1924112
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.2134360   -0.4403529    0.0134810
6 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           0                    1                 -0.0450882   -0.6513073    0.5611309
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.2569544   -0.3304691   -0.1834396
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.2630837   -0.4185708   -0.1075967
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0727751   -0.3586731    0.5042232
24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0183647   -0.4757917    0.4390623
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.3253649   -0.5714905   -0.0792393
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1419352   -0.4257187    0.1418482
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0067736   -0.5634265    0.5769737
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3312286   -0.9471959    0.2847387
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.6157886   -0.9102805   -0.3212966
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.5999754   -0.9248119   -0.2751390
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0217779   -0.2172904    0.1737346
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.1316265   -0.3605646    0.0973117
24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           0                    1                 -0.7034606   -1.2875230   -0.1193982
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.3079920   -0.4287211   -0.1872629
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.2505901   -0.4048532   -0.0963271


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0209298   -0.0193875    0.0612472
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0172125   -0.0587357    0.0931607
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.2238667   -0.2877278    0.7354611
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.0921739   -0.2171392    0.4014870
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0060740   -0.0759449    0.0637969
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7357983   -0.7524434    2.2240401
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0381629   -0.0686307   -0.0076951
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0233811   -0.0457015   -0.0010607
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0103394   -0.0585528    0.0378740
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.2711055   -0.4667436   -0.0754673
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.5135230   -0.6423045   -0.3847415
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0753525   -0.3087733    0.1580683
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0015536   -0.0459356    0.0428284
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0009349   -0.0364863    0.0346164
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0730593   -0.2099253    0.0638068
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0954530   -0.1342267    0.3251327
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0008904   -0.0341653    0.0359461
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2828997   -0.8796970    0.3138976
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0419337   -0.0724824   -0.0113850
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0434852   -0.0718736   -0.0150968
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0063795   -0.0493237    0.0365647
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.1777310   -0.3662993    0.0108374
6 months    ki1114097-CONTENT       PERU                           1                    NA                -0.0007624   -0.0377268    0.0362021
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.2406659   -0.3110281   -0.1703037
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2281599   -0.3730630   -0.0832568
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0122078   -0.0213431    0.0457586
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0051555   -0.0414685    0.0311574
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.1858815   -0.3306159   -0.0411472
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.1039852   -0.3194767    0.1115063
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0001673   -0.0376091    0.0372745
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3100609   -0.8997439    0.2796221
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0717942   -0.1108278   -0.0327607
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0452154   -0.0735566   -0.0168742
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0065209   -0.0677469    0.0547050
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.1153139   -0.3067291    0.0761013
24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0258035   -0.0661257    0.0145187
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.2893835   -0.4057569   -0.1730101
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2211570   -0.3660050   -0.0763090
