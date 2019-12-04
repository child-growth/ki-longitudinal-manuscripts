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

agecat      studyid                    country                        impfloor    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              196     213  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               17     213  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1               58      60  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2      60  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1               35      41  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0                6      41  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                9      25  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0               16      25  haz              
Birth       ki0047075b-MAL-ED          PERU                           1               39     215  haz              
Birth       ki0047075b-MAL-ED          PERU                           0              176     215  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               87      96  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                9      96  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                7     119  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              112     119  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               72      72  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      72  haz              
Birth       ki1000108-IRC              INDIA                          1              287     287  haz              
Birth       ki1000108-IRC              INDIA                          0                0     287  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              533     605  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               72     605  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              491     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               48     539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              558     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              174     732  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1              100     544  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0              444     544  haz              
Birth       ki1114097-CONTENT          PERU                           1                2       2  haz              
Birth       ki1114097-CONTENT          PERU                           0                0       2  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1394   22399  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            21005   22399  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              307    2820  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             2513    2820  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              221     240  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               19     240  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1              207     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0                2     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1              220     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0               15     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1              103     229  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0              126     229  haz              
6 months    ki0047075b-MAL-ED          PERU                           1               58     270  haz              
6 months    ki0047075b-MAL-ED          PERU                           0              212     270  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              229     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     249  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               14     245  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              231     245  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              257     257  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     257  haz              
6 months    ki1000108-IRC              INDIA                          1              303     303  haz              
6 months    ki1000108-IRC              INDIA                          0                0     303  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              477     535  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     535  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              557     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               47     604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441  haz              
6 months    ki1114097-CONTENT          PERU                           1              201     215  haz              
6 months    ki1114097-CONTENT          PERU                           0               14     215  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1465   16773  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15308   16773  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4824  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4234    4824  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1              167     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1              212     227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0               15     227  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1               98     221  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0              123     221  haz              
24 months   ki0047075b-MAL-ED          PERU                           1               49     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           0              152     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     238  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     212  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              200     212  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              259     259  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     259  haz              
24 months   ki1000108-IRC              INDIA                          1              305     305  haz              
24 months   ki1000108-IRC              INDIA                          0                0     305  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              377     427  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     427  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              533     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               45     578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     374  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0              302     374  haz              
24 months   ki1114097-CONTENT          PERU                           1              154     164  haz              
24 months   ki1114097-CONTENT          PERU                           0               10     164  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              674    8609  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7935    8609  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              566    4746  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4180    4746  haz              


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
![](/tmp/5a237bbf-ba87-4c37-a456-c502925a264d/fa4d4081-ba04-4acf-a79a-7e165b1a6643/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5a237bbf-ba87-4c37-a456-c502925a264d/fa4d4081-ba04-4acf-a79a-7e165b1a6643/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5a237bbf-ba87-4c37-a456-c502925a264d/fa4d4081-ba04-4acf-a79a-7e165b1a6643/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.0698476   -1.2125831   -0.9271121
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.8615491   -1.3564328   -0.3666653
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -1.2242857   -1.5919558   -0.8566156
Birth       ki0047075b-MAL-ED       INDIA                          0                    NA                -1.1066667   -1.4622060   -0.7511274
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.0066667   -1.6704675   -0.3428658
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.6568750   -1.0897018   -0.2240482
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -1.0499202   -1.4326886   -0.6671518
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                -0.8821078   -1.0058486   -0.7583670
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.5463218   -0.7573107   -0.3353330
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.6111111   -1.3247632    0.1025410
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.8571429   -3.4252117   -0.2890740
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0753571   -1.2760805   -0.8746338
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.8895471   -0.9846275   -0.7944667
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.2401912   -1.4618632   -1.0185192
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.8635477   -0.9425022   -0.7845931
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.2036780   -1.4077118   -0.9996443
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.8978585   -0.9775221   -0.8181949
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.9498859   -1.1413065   -0.7584652
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.8896519   -1.0930750   -0.6862288
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.1660483   -1.2677539   -1.0643427
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.4612628   -1.5506275   -1.3718981
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.5939930   -1.6139029   -1.5740830
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.4540497   -1.7174294   -1.1906701
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.5365101   -1.5886589   -1.4843613
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.2038659   -1.3228846   -1.0848471
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -1.1891865   -1.7393183   -0.6390548
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -1.2090618   -1.3305773   -1.0875463
6 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -1.1148447   -1.6225143   -0.6071751
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.4994623   -0.6902770   -0.3086475
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.5769974   -0.7199934   -0.4340014
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -1.4082047   -1.6697804   -1.1466289
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                -1.2957412   -1.4155629   -1.1759195
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -1.0549689   -1.1912850   -0.9186529
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -1.3042299   -1.7127669   -0.8956928
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1399452   -1.7416176   -0.5382728
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3840247   -1.5110503   -1.2569991
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -1.3647235   -1.4589420   -1.2705049
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.7469473   -1.9899958   -1.5038988
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.0471883   -1.1220813   -0.9722952
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.5139693   -1.8377153   -1.1902232
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.1903080   -1.2710656   -1.1095505
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.2214223   -1.3955683   -1.0472763
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.1576125   -1.3658157   -0.9494093
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.3512697   -1.4526942   -1.2498453
6 months    ki1114097-CONTENT       PERU                           1                    NA                -0.3141252   -0.4953216   -0.1329287
6 months    ki1114097-CONTENT       PERU                           0                    NA                -0.0606769   -0.7290015    0.6076478
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.0751765   -1.1489918   -1.0013612
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.3313777   -1.3551800   -1.3075754
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.1043321   -1.2555701   -0.9530941
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.3803293   -1.4203443   -1.3403143
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.9899174   -2.1232202   -1.8566146
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -1.6808067   -2.0820868   -1.2795266
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -1.8778631   -2.0061214   -1.7496048
24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -2.0978277   -2.6249245   -1.5707310
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.1179012   -1.3191247   -0.9166777
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -1.4106852   -1.5618824   -1.2594881
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -1.6017202   -1.8678571   -1.3355833
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -1.7927688   -1.9283303   -1.6572074
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -1.6484182   -1.7894132   -1.5074232
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -1.6321020   -2.1542671   -1.1099369
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.3179698   -3.0447579   -1.5911818
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6626778   -2.8036999   -2.5216557
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -2.1527213   -2.2607856   -2.0446570
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -2.7637254   -3.0372135   -2.4902373
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.5638007   -1.6488376   -1.4787639
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -2.0942682   -2.3888919   -1.7996445
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.4428047   -1.5453510   -1.3402584
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.3989976   -1.5689804   -1.2290149
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.7490587   -1.9524071   -1.5457103
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.8605473   -1.9693126   -1.7517820
24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.6702276   -0.8477407   -0.4927144
24 months   ki1114097-CONTENT       PERU                           0                    NA                -1.1539591   -1.8204713   -0.4874469
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.7438114   -1.8601155   -1.6275073
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -2.0333293   -2.0621222   -2.0045364
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.5534797   -1.7080325   -1.3989269
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.8099494   -1.8471787   -1.7727200


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
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.2082986   -0.3073754    0.7239726
Birth       ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          0                    1                  0.1176190   -0.3938392    0.6290772
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                  0.3497917   -0.4426543    1.1422376
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.1678124   -0.2323796    0.5680044
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0647893   -0.8089772    0.6793986
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.7817857   -0.7990779    2.3626493
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.3506440   -0.5903388   -0.1109493
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.3401303   -0.5588439   -0.1214168
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0520274   -0.2589300    0.1548752
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.2763964   -0.5041455   -0.0486473
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.1327302   -0.2228901   -0.0425702
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0824604   -0.3501328    0.1852121
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0146793   -0.5484195    0.5777782
6 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0                    1                  0.0942170   -0.4278829    0.6163170
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0775351   -0.3167557    0.1616856
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.1124634   -0.1756562    0.4005830
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.2492609   -0.6823570    0.1838351
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2440795   -0.8593891    0.3712301
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.3822239   -0.6419233   -0.1225244
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.4667810   -0.7993119   -0.1342501
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0311143   -0.2231257    0.1608971
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.1936572   -0.4269302    0.0396157
6 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           0                    1                  0.2534483   -0.4459075    0.9528042
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.2562012   -0.3321502   -0.1802522
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.2759972   -0.4290405   -0.1229540
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.3091107   -0.1120813    0.7303027
24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.2199647   -0.7619615    0.3220322
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.2927840   -0.5456164   -0.0399516
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1910487   -0.4905988    0.1085014
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0163162   -0.5249318    0.5575641
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3447080   -1.0844455    0.3950295
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.6110041   -0.9028135   -0.3191947
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.5304675   -0.8366914   -0.2242436
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0438071   -0.1532812    0.2408953
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.1114886   -0.3418936    0.1189164
24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           0                    1                 -0.4837315   -1.1721725    0.2047094
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.2895179   -0.4091892   -0.1698465
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.2564697   -0.4126799   -0.1002595


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0167960   -0.0227614    0.0563533
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0172125   -0.0587357    0.0931607
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.2238667   -0.2877278    0.7354611
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.1357807   -0.1940377    0.4655990
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0060740   -0.0759449    0.0637969
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7357983   -0.7524434    2.2240401
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0393785   -0.0698818   -0.0088752
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0215544   -0.0440178    0.0009091
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0116361   -0.0581702    0.0348981
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.2280503   -0.4192579   -0.0368427
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.1282823   -0.2156050   -0.0409596
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0695638   -0.3220885    0.1829610
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0011853   -0.0430206    0.0453912
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0019979   -0.0342853    0.0382812
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0540239   -0.1963808    0.0883330
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0833497   -0.1443659    0.3110653
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0001764   -0.0346381    0.0349910
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2300956   -0.8157859    0.3555947
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0413404   -0.0717528   -0.0109279
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0445032   -0.0731500   -0.0158565
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0083703   -0.0515290    0.0347884
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.1648969   -0.3593681    0.0295742
6 months    ki1114097-CONTENT       PERU                           1                    NA                 0.0002035   -0.0364723    0.0368793
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.2382832   -0.3110077   -0.1655588
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2396853   -0.3819187   -0.0974520
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0115212   -0.0210009    0.0440432
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0083263   -0.0444352    0.0277825
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.1749042   -0.3252224   -0.0245860
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.1507508   -0.3779678    0.0764662
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0033587   -0.0337148    0.0404321
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3252613   -1.0387695    0.3882470
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0708755   -0.1097376   -0.0320133
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0386214   -0.0654070   -0.0118358
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0015401   -0.0585746    0.0616548
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0906160   -0.2828287    0.1015967
24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0259919   -0.0660795    0.0140956
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.2696478   -0.3849057   -0.1543899
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2269249   -0.3737116   -0.0801381
