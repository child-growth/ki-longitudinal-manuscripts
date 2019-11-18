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

agecat      studyid                    country                        impfloor    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              185     201  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               16     201  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1               55      57  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2      57  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1               33      39  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0                6      39  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                8      24  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0               16      24  whz              
Birth       ki0047075b-MAL-ED          PERU                           1               37     210  whz              
Birth       ki0047075b-MAL-ED          PERU                           0              173     210  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               86      95  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                9      95  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                5     111  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              106     111  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               68      68  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      68  whz              
Birth       ki1000108-IRC              INDIA                          1              253     253  whz              
Birth       ki1000108-IRC              INDIA                          0                0     253  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              505     572  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               67     572  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              485     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               47     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              542     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              165     707  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1               97     503  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0              406     503  whz              
Birth       ki1114097-CONTENT          PERU                           1                2       2  whz              
Birth       ki1114097-CONTENT          PERU                           0                0       2  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1215   17966  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            16751   17966  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              271    2394  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             2123    2394  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              221     240  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               19     240  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1              207     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0                2     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1              220     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0               15     235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1              103     229  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0              126     229  whz              
6 months    ki0047075b-MAL-ED          PERU                           1               58     270  whz              
6 months    ki0047075b-MAL-ED          PERU                           0              212     270  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              229     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     249  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               14     245  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              231     245  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              257     257  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     257  whz              
6 months    ki1000108-IRC              INDIA                          1              304     304  whz              
6 months    ki1000108-IRC              INDIA                          0                0     304  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              477     535  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     535  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              557     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               46     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441  whz              
6 months    ki1114097-CONTENT          PERU                           1              201     215  whz              
6 months    ki1114097-CONTENT          PERU                           0               14     215  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1463   16746  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15283   16746  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4826  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4236    4826  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1              167     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1              212     227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0               15     227  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1               98     221  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0              123     221  whz              
24 months   ki0047075b-MAL-ED          PERU                           1               49     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           0              152     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     238  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     212  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              200     212  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              260     260  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     260  whz              
24 months   ki1000108-IRC              INDIA                          1              305     305  whz              
24 months   ki1000108-IRC              INDIA                          0                0     305  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              376     426  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     426  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              533     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               46     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     373  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0              301     373  whz              
24 months   ki1114097-CONTENT          PERU                           1              154     164  whz              
24 months   ki1114097-CONTENT          PERU                           0               10     164  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              672    8580  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7908    8580  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              565    4729  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4164    4729  whz              


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
![](/tmp/45cf4d8e-1d8e-453f-ada8-e713258bcf04/bdd7cf78-1a77-483e-aa02-95e5bb774ca0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/45cf4d8e-1d8e-453f-ada8-e713258bcf04/bdd7cf78-1a77-483e-aa02-95e5bb774ca0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/45cf4d8e-1d8e-453f-ada8-e713258bcf04/bdd7cf78-1a77-483e-aa02-95e5bb774ca0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.9957205   -1.1553631   -0.8360779
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.7310774   -0.9997417   -0.4624131
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -0.8772727   -1.1935310   -0.5610144
Birth       ki0047075b-MAL-ED       INDIA                          0                    NA                -1.3116667   -2.0623390   -0.5609943
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.9125000   -1.6413488   -0.1836512
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.7568750   -1.1980753   -0.3156747
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -0.1799450   -0.5069884    0.1470984
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                -0.0111147   -0.1473181    0.1250887
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.1959302   -0.4617510    0.0698905
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.0466667   -0.4532880    0.5466213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8440000    0.2094403    1.4785597
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7655660    0.5608207    0.9703114
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -1.3512903   -1.4530637   -1.2495170
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.2774633   -1.5334579   -1.0214688
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.2982579   -1.3786512   -1.2178645
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.2702567   -1.5265575   -1.0139560
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.2009661   -1.2952192   -1.1067130
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.3589861   -1.5609865   -1.1569858
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.0869499   -1.3186053   -0.8552946
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.0794881   -1.1884554   -0.9705207
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.7153880   -0.8237410   -0.6070350
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.7816270   -0.8015195   -0.7617345
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.6283015   -0.8173814   -0.4392217
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.6984578   -0.7555396   -0.6413759
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.1151383   -0.2491283    0.0188516
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.2791905   -0.8165276    0.2581467
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.7122716   -0.8460481   -0.5784951
6 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -0.6481463   -1.1005936   -0.1956991
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0897372   -0.1163305    0.2958049
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.1727563   -0.0135758    0.3590884
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 1.0314230    0.7406279    1.3222182
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 1.0392698    0.9016572    1.1768824
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.5441876    0.3809275    0.7074478
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.6457869    0.2116179    1.0799559
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1393624   -0.7914451    0.5127202
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5585831    0.4234201    0.6937461
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.4180579   -0.5150078   -0.3211081
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.6236898   -0.8866453   -0.3607344
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1766971   -0.2635343   -0.0898599
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.4455824   -0.7459449   -0.1452198
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0463540   -0.0442943    0.1370023
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0384353   -0.1403924    0.2172630
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.5493622   -0.8013130   -0.2974114
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.6405379   -0.7483375   -0.5327383
6 months    ki1114097-CONTENT       PERU                           1                    NA                 1.0479615    0.9270559    1.1688671
6 months    ki1114097-CONTENT       PERU                           0                    NA                 1.4240225    1.0076962    1.8403487
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.5655727   -0.6532612   -0.4778843
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.5945448   -0.6156029   -0.5734867
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2314377   -0.3736146   -0.0892609
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.4062147   -0.4509850   -0.3614444
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.8081243   -0.9345330   -0.6817156
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.7043271   -1.1817506   -0.2269036
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.9381563   -1.0580783   -0.8182343
24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -1.1433622   -1.6855821   -0.6011424
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.2661566   -0.4541071   -0.0782061
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.3885627   -0.5543840   -0.2227413
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.1593688   -0.0966311    0.4153687
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0901790   -0.0473566    0.2277145
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.4052736    0.2761539    0.5343933
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.5538406    0.2349913    0.8726899
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0113839   -0.4349790    0.4122111
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0571170   -0.0727989    0.1870330
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.8959273   -1.0010344   -0.7908201
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.0132568   -1.2995146   -0.7269989
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.8707498   -0.9565253   -0.7849743
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.2546190   -1.5658819   -0.9433562
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.6409875   -0.7580640   -0.5239110
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.5298031   -0.7226332   -0.3369731
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.1870601   -1.4479661   -0.9261541
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.1817868   -1.3000914   -1.0634823
24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.5509633    0.4086393    0.6932873
24 months   ki1114097-CONTENT       PERU                           0                    NA                 0.7883148    0.2302684    1.3463612
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.1893546   -1.3005480   -1.0781611
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.3015096   -1.3255296   -1.2774896
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.1641212   -1.2981359   -1.0301064
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.2347007   -1.2717300   -1.1976715


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
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.2646431   -0.0484478    0.5777339
Birth       ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          0                    1                 -0.4343939   -1.2489664    0.3801785
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                  0.1556250   -0.6963599    1.0076099
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.1688303   -0.1859693    0.5236299
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.2425969   -0.3236321    0.8088259
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0784340   -0.7452073    0.5883394
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0738270   -0.2011277    0.3487817
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0280011   -0.2406068    0.2966091
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.1580201   -0.3803719    0.0643318
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0074619   -0.2482564    0.2631801
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0662390   -0.1766441    0.0441660
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0701562   -0.2663370    0.1260245
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.1640521   -0.7190721    0.3909678
6 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0                    1                  0.0641253   -0.4077434    0.5359940
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0830191   -0.1954937    0.3615319
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.0078468   -0.3140267    0.3297202
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.1015993   -0.3648767    0.5680752
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.6979455    0.0310568    1.3648342
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.2056319   -0.4870331    0.0757693
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.2688852   -0.5808346    0.0430641
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0079187   -0.2079294    0.1920920
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0911757   -0.3648488    0.1824974
6 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           0                    1                  0.3760610   -0.0591846    0.8113066
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0289720   -0.1194770    0.0615329
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.1747769   -0.3250406   -0.0245133
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.1037972   -0.3899879    0.5975823
24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.2052060   -0.7601987    0.3497868
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1224061   -0.3716588    0.1268466
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0691899   -0.3580836    0.2197039
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.1485670   -0.1961430    0.4932770
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0685009   -0.3749612    0.5119630
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.1173295   -0.4227855    0.1881265
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.3838692   -0.7066089   -0.0611296
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.1111844   -0.1139974    0.3363661
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0052732   -0.2812672    0.2918137
24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           0                    1                  0.2373515   -0.3394140    0.8141171
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.1121551   -0.2239075   -0.0004026
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0705796   -0.2089889    0.0678297


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0228847   -0.0032666    0.0490359
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0668298   -0.2016929    0.0680332
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1037500   -0.4650307    0.6725307
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.1331355   -0.1644668    0.4307378
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0229829   -0.0325492    0.0785150
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0749009   -0.7116467    0.5618449
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0064390   -0.0252937    0.0381716
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0002008   -0.0238968    0.0234952
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0431853   -0.0917083    0.0053377
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0008863   -0.2116974    0.2134700
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0619631   -0.1684792    0.0445529
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0599483   -0.2409818    0.1210853
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0181950   -0.0585188    0.0221288
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0019844   -0.0267985    0.0307673
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0384069   -0.1224698    0.1992836
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0197868   -0.2370072    0.2765808
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0037526   -0.0417919    0.0342868
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.6749407    0.0423398    1.3075416
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0266819   -0.0568807    0.0035168
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0223935   -0.0450109    0.0002239
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0165917   -0.0625410    0.0293575
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0780150   -0.3066555    0.1506255
6 months    ki1114097-CONTENT       PERU                           1                    NA                 0.0204703   -0.0115902    0.0525309
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0270992   -0.1136158    0.0594173
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.1586970   -0.2965574   -0.0208365
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0111682   -0.0496205    0.0272841
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0134957   -0.0439410    0.0169496
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0809928   -0.2251292    0.0631437
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0481706   -0.2675546    0.1712133
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0037565   -0.0196939    0.0272069
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0591276   -0.3611787    0.4794340
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0147437   -0.0501612    0.0206738
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0221172   -0.0468903    0.0026559
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0306373   -0.0382178    0.0994924
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0120239   -0.2512288    0.2271809
24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0158660   -0.0166811    0.0484131
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.1076874   -0.2148559   -0.0005189
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0591100   -0.1886510    0.0704311
