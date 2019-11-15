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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              185     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               16     201
Birth       ki0047075b-MAL-ED          BRAZIL                         1               55      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2      57
Birth       ki0047075b-MAL-ED          INDIA                          1               33      39
Birth       ki0047075b-MAL-ED          INDIA                          0                6      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                8      24
Birth       ki0047075b-MAL-ED          NEPAL                          0               16      24
Birth       ki0047075b-MAL-ED          PERU                           1               37     210
Birth       ki0047075b-MAL-ED          PERU                           0              173     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               86      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                9      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                5     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              106     111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               68      68
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      68
Birth       ki1000108-IRC              INDIA                          1              253     253
Birth       ki1000108-IRC              INDIA                          0                0     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              505     572
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               67     572
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              485     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               47     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              542     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              165     707
Birth       ki1113344-GMS-Nepal        NEPAL                          1               97     503
Birth       ki1113344-GMS-Nepal        NEPAL                          0              406     503
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1215   17966
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            16751   17966
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              271    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             2123    2394
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
6 months    ki1000108-IRC              INDIA                          1              304     304
6 months    ki1000108-IRC              INDIA                          0                0     304
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              477     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              557     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               46     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1463   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15283   16746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4236    4826
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              260     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     260
24 months   ki1000108-IRC              INDIA                          1              305     305
24 months   ki1000108-IRC              INDIA                          0                0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              376     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              533     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               46     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     373
24 months   ki1113344-GMS-Nepal        NEPAL                          0              301     373
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              672    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7908    8580
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              565    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4164    4729


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
![](/tmp/fabe5bf7-636b-4ac7-892b-7dfd054bd662/825b51b8-d849-46db-84c3-f10c84a81b27/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fabe5bf7-636b-4ac7-892b-7dfd054bd662/825b51b8-d849-46db-84c3-f10c84a81b27/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fabe5bf7-636b-4ac7-892b-7dfd054bd662/825b51b8-d849-46db-84c3-f10c84a81b27/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.9972937   -1.1571246   -0.8374629
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.6745061   -0.9288398   -0.4201723
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -0.8772727   -1.1935310   -0.5610144
Birth       ki0047075b-MAL-ED       INDIA                          0                    NA                -1.3116667   -2.0623390   -0.5609943
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.9125000   -1.6413488   -0.1836512
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.7568750   -1.1980753   -0.3156747
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -0.1672230   -0.4768926    0.1424467
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                -0.0124662   -0.1486997    0.1237673
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.1959302   -0.4617510    0.0698905
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.0466667   -0.4532880    0.5466213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8440000    0.2094403    1.4785597
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7655660    0.5608207    0.9703114
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -1.3484516   -1.4504133   -1.2464899
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.3206115   -1.5832393   -1.0579837
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.3010349   -1.3814610   -1.2206088
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.2190614   -1.4688838   -0.9692391
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.2013900   -1.2967821   -1.1059979
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.3780565   -1.5667972   -1.1893159
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.1342431   -1.3665469   -0.9019394
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.0708683   -1.1792298   -0.9625069
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.7056704   -0.8163061   -0.5950347
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.7807035   -0.8005483   -0.7608587
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.6029805   -0.8087912   -0.3971697
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.7025755   -0.7597817   -0.6453693
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.1156817   -0.2497213    0.0183579
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.3184935   -0.8305554    0.1935684
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.7154674   -0.8480742   -0.5828606
6 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -0.6451398   -1.1409678   -0.1493118
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1071675   -0.0902517    0.3045868
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.1504604   -0.0337714    0.3346922
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 1.0285284    0.7396987    1.3173582
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 1.0493208    0.9125847    1.1860570
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.5365664    0.3731532    0.6999795
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.3769383   -0.0742553    0.8281319
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5232949   -0.0941025    1.1406924
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5573108    0.4222821    0.6923395
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.4133126   -0.5100344   -0.3165909
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.6826928   -0.9259040   -0.4394816
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1780797   -0.2645621   -0.0915973
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.5109744   -0.7855625   -0.2363863
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0512883   -0.0383614    0.1409380
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0051205   -0.1795032    0.1897442
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.5423771   -0.7967691   -0.2879850
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.6381118   -0.7471653   -0.5290583
6 months    ki1114097-CONTENT       PERU                           1                    NA                 1.0491485    0.9282212    1.1700758
6 months    ki1114097-CONTENT       PERU                           0                    NA                 1.9147154    1.3899338    2.4394969
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.5632946   -0.6539488   -0.4726403
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.5950517   -0.6162304   -0.5738729
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2172063   -0.3705518   -0.0638607
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.4075318   -0.4523249   -0.3627388
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.8085550   -0.9349631   -0.6821469
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.8772568   -1.3825168   -0.3719969
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.9387860   -1.0590221   -0.8185499
24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -1.1136333   -1.6157014   -0.6115652
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.2705194   -0.4550061   -0.0860326
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.3962227   -0.5579702   -0.2344752
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.1921075   -0.0640610    0.4482759
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0871674   -0.0525693    0.2269041
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.4077261    0.2787272    0.5367251
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.4812634    0.1540875    0.8084392
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0770945   -0.5848270    0.4306379
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0560120   -0.0738064    0.1858304
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.8949191   -0.9998541   -0.7899840
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.0153489   -1.2890245   -0.7416732
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.8717037   -0.9575339   -0.7858735
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.2224614   -1.5388450   -0.9060778
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.6331920   -0.7512761   -0.5151078
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.5121413   -0.7033635   -0.3209192
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.1928900   -1.4576075   -0.9281726
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.1785839   -1.2965240   -1.0606437
24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.5511573    0.4090462    0.6932683
24 months   ki1114097-CONTENT       PERU                           0                    NA                 0.8704787    0.3479340    1.3930235
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.1885274   -1.3005181   -1.0765368
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.3019663   -1.3259225   -1.2780100
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.1589221   -1.2928771   -1.0249670
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.2344071   -1.2713099   -1.1975043


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.8087500   -1.1914221   -0.4260779
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7690991    0.5714748    0.9667234
Birth       ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.3448514   -1.4396716   -1.2500312
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.0860636   -1.1830454   -0.9890818
Birth       kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.7773511   -0.7963777   -0.7583245
Birth       kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.7102872   -0.8371659   -0.5834085
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1281441   -0.0056126    0.2619008
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 1.0512099    0.9285617    1.1738581
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5404351    0.3867005    0.6941696
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5355782    0.4032519    0.6679046
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.4447399   -0.5354039   -0.3540758
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.6273772   -0.7253868   -0.5293676
6 months    ki1114097-CONTENT       PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.5926720   -0.6122891   -0.5730549
6 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.3901347   -0.4273932   -0.3528762
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.3471493   -0.4618867   -0.2324120
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0477437   -0.0779935    0.1734809
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.9106710   -1.0090143   -0.8123277
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.1990840   -1.3039914   -1.0941766
24 months   ki1114097-CONTENT       PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -1.2970420   -1.3203145   -1.2737694
24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.2232311   -1.2550891   -1.1913732


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.3227877    0.0216400    0.6239353
Birth       ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          0                    1                 -0.4343939   -1.2489664    0.3801785
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                  0.1556250   -0.6963599    1.0076099
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.1547567   -0.1839656    0.4934791
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.2425969   -0.3236321    0.8088259
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0784340   -0.7452073    0.5883394
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0278401   -0.2539925    0.3096727
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0819734   -0.1800032    0.3439500
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.1766665   -0.3876766    0.0343435
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0633748   -0.1929011    0.3196507
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0750331   -0.1878867    0.0378205
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0995950   -0.3117645    0.1125744
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.2028118   -0.7323003    0.3266767
6 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0                    1                  0.0703276   -0.4431971    0.5838523
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0432929   -0.2270729    0.3136587
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.0207924   -0.2991163    0.3407011
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.1596280   -0.6418049    0.3225488
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0340158   -0.5988944    0.6669261
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.2693802   -0.5312047   -0.0075556
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.3328947   -0.6203478   -0.0454416
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0461678   -0.2509905    0.1586549
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0957347   -0.3728120    0.1813426
6 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           0                    1                  0.8655669    0.3251318    1.4060019
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0317571   -0.1250111    0.0614968
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.1903256   -0.3514069   -0.0292443
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0687018   -0.5901660    0.4527624
24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.1748473   -0.6903735    0.3406788
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1257033   -0.3701259    0.1187193
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1049401   -0.3956127    0.1857325
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0735372   -0.2803343    0.4274088
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1331065   -0.3914696    0.6576826
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.1204298   -0.4138918    0.1730322
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.3507577   -0.6789184   -0.0225970
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.1210506   -0.1032199    0.3453212
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0143061   -0.2763939    0.3050061
24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           0                    1                  0.3193214   -0.2232016    0.8618445
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.1134389   -0.2259520   -0.0009257
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0754850   -0.2134292    0.0624592


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0244579   -0.0024172    0.0513330
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0668298   -0.2016929    0.0680332
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1037500   -0.4650307    0.6725307
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.1204134   -0.1601319    0.4009587
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0229829   -0.0325492    0.0785150
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0749009   -0.7116467    0.5618449
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0036002   -0.0286457    0.0358462
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0025762   -0.0209300    0.0260825
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0427613   -0.0911840    0.0056613
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0481795   -0.1656433    0.2620024
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0716807   -0.1806372    0.0372758
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0852693   -0.2824698    0.1119312
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0176516   -0.0574105    0.0221073
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0051802   -0.0225019    0.0328623
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0209766   -0.1315309    0.1734841
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0226815   -0.2300370    0.2753999
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0038687   -0.0346875    0.0424249
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0122833   -0.5872864    0.6118529
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0314272   -0.0611639   -0.0016906
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0210110   -0.0436640    0.0016420
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0215261   -0.0668850    0.0238329
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0850001   -0.3165831    0.1465829
6 months    ki1114097-CONTENT       PERU                           1                    NA                 0.0192833   -0.0121770    0.0507435
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0293774   -0.1186561    0.0599012
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.1729284   -0.3219733   -0.0238834
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0107374   -0.0494714    0.0279965
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0128660   -0.0429752    0.0172432
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0766300   -0.2186815    0.0654216
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0809093   -0.3013152    0.1394967
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0013040   -0.0243837    0.0269916
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1248382   -0.3772037    0.6268802
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0157519   -0.0511463    0.0196425
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0211633   -0.0462239    0.0038973
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0228418   -0.0460096    0.0916931
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0061940   -0.2496136    0.2372256
24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0156720   -0.0170253    0.0483692
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.1085145   -0.2164252   -0.0006039
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0643090   -0.1935321    0.0649141
