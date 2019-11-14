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

**Intervention Variable:** exclfeed36

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

agecat      studyid                    country                        exclfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 32     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                189     221
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 60      65
Birth       ki0047075b-MAL-ED          INDIA                          1                  1      42
Birth       ki0047075b-MAL-ED          INDIA                          0                 41      42
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                 26      26
Birth       ki0047075b-MAL-ED          PERU                           1                  5     223
Birth       ki0047075b-MAL-ED          PERU                           0                218     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                104     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       4
Birth       ki1000108-IRC              INDIA                          0                  4       4
Birth       ki1000109-EE               PAKISTAN                       1                  3       7
Birth       ki1000109-EE               PAKISTAN                       0                  4       7
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                119     490
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                371     490
Birth       ki1101329-Keneba           GAMBIA                         1                  4       9
Birth       ki1101329-Keneba           GAMBIA                         0                  5       9
Birth       ki1113344-GMS-Nepal        NEPAL                          1                422     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                104     526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               9840   12642
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2802   12642
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1994    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                523    2517
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 30     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                210     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                197     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  9     233
6 months    ki0047075b-MAL-ED          INDIA                          0                224     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  4     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                231     235
6 months    ki0047075b-MAL-ED          PERU                           1                  6     272
6 months    ki0047075b-MAL-ED          PERU                           0                266     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                249     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                239     243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
6 months    ki1000108-IRC              INDIA                          1                  0       4
6 months    ki1000108-IRC              INDIA                          0                  4       4
6 months    ki1000109-EE               PAKISTAN                       1                  4       9
6 months    ki1000109-EE               PAKISTAN                       0                  5       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                145     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                458     603
6 months    ki1101329-Keneba           GAMBIA                         1                507    1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105     527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6561    8533
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1972    8533
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3241    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                944    4185
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                187     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                158     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  9     224
24 months   ki0047075b-MAL-ED          INDIA                          0                215     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  4     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                223     227
24 months   ki0047075b-MAL-ED          PERU                           1                  4     201
24 months   ki0047075b-MAL-ED          PERU                           0                197     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                234     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                210     213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
24 months   ki1000108-IRC              INDIA                          1                  0       4
24 months   ki1000108-IRC              INDIA                          0                  4       4
24 months   ki1000109-EE               PAKISTAN                       1                  0       3
24 months   ki1000109-EE               PAKISTAN                       0                  3       3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                141     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                436     577
24 months   ki1101329-Keneba           GAMBIA                         1                424    1394
24 months   ki1101329-Keneba           GAMBIA                         0                970    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                363     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     446
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3302    4300
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                998    4300
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3145    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                904    4049


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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/b4ee79db-82ff-49fa-8283-ba42809ab5cc/d55087be-dae2-41c9-ae7a-94410781f02c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b4ee79db-82ff-49fa-8283-ba42809ab5cc/d55087be-dae2-41c9-ae7a-94410781f02c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b4ee79db-82ff-49fa-8283-ba42809ab5cc/d55087be-dae2-41c9-ae7a-94410781f02c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.2965477   -1.5759449   -1.0171505
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0721572   -1.2232774   -0.9210370
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -1.4240000   -2.4288338   -0.4191662
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.6136667   -0.8950902   -0.3322431
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -1.0080000   -1.6595862   -0.3564138
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.8886239   -1.0108291   -0.7664186
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.9175858   -1.0512085   -0.7839631
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.8606561   -0.9487981   -0.7725142
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0062315   -1.1025965   -0.9098665
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1259569   -1.3176739   -0.9342399
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.1724105   -1.2107027   -1.1341183
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.1864281   -1.2499418   -1.1229145
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.5008487   -1.5538587   -1.4478387
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.6114922   -1.7404358   -1.4825486
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.1593372   -1.4922353   -0.8264392
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.2142872   -1.3415075   -1.0870669
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.3898364   -1.1004988    0.3208261
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0344218   -0.1112310    0.1800746
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.9138889   -1.7478752   -0.0799025
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.2171354   -1.3367146   -1.0975563
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -1.4791667   -2.2344014   -0.7239319
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -1.3241165   -1.4338053   -1.2144278
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.0692549   -1.2014374   -0.9370723
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.0852173   -1.1717290   -0.9987056
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.9020942   -0.9886924   -0.8154961
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.9451539   -1.0037704   -0.8865374
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.2902791   -1.3773291   -1.2032291
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.5253937   -1.7104443   -1.3403432
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -1.6816004   -1.9804419   -1.3827590
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                -1.6265785   -1.7579007   -1.4952563
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3325492   -1.3645241   -1.3005744
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.3603770   -1.4145951   -1.3061589
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.3144676   -1.3558916   -1.2730436
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.4854333   -1.5754725   -1.3953940
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.9832171   -2.4120316   -1.5544027
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.9717662   -2.1033179   -1.8402145
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0123684   -0.9289806    0.9042438
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0086402   -0.1813920    0.1641116
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -2.2088889   -2.9737293   -1.4440485
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -1.8758837   -2.0028856   -1.7488818
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.6830291   -1.8380165   -1.5280416
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.5783678   -1.6735581   -1.4831776
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -1.5364703   -1.6277005   -1.4452402
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -1.6244516   -1.6920440   -1.5568592
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.8718312   -1.9654597   -1.7782027
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.9194288   -2.1491386   -1.6897189
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -2.0370204   -2.3412734   -1.7327675
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -1.9458111   -2.1031357   -1.7884865
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -2.0033346   -2.0459291   -1.9607400
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -2.0452966   -2.1230979   -1.9674953
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.7791553   -1.8222103   -1.7361002
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.8365516   -1.9171815   -1.7559218


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.0802262   -1.2151319   -0.9453206
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.8913004   -1.0115814   -0.7710195
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.8769592   -0.9559693   -0.7979491
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.0299620   -1.1192344   -0.9406896
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.1758733   -1.2120647   -1.1396819
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.5234724   -1.5733491   -1.4735957
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.2077639   -1.3255735   -1.0899543
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -1.2054220   -1.3250470   -1.0857970
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                -1.3275368   -1.4361710   -1.2189025
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.0855583   -1.1591292   -1.0119875
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.9355822   -0.9858754   -0.8852889
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.3337634   -1.4135810   -1.2539459
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3384308   -1.3675493   -1.3093123
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.3514886   -1.3904044   -1.3125729
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -1.8892634   -2.0152690   -1.7632578
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.6022704   -1.6857342   -1.5188065
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -1.5981956   -1.6534947   -1.5428965
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.8830717   -1.9710591   -1.7950844
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -2.0131814   -2.0513347   -1.9750280
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.7922845   -1.8313538   -1.7532153


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.2243905   -0.0953439    0.5441249
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.8103333   -0.2331657    1.8538323
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                  0.1193761   -0.5435709    0.7823232
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0569297   -0.0899685    0.2038279
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1197254   -0.3277678    0.0883169
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0140176   -0.0787855    0.0507502
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1106435   -0.2493600    0.0280730
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0549500   -0.4114220    0.3015221
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                  0.4242582   -0.3024671    1.1509834
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.3032465   -1.1457620    0.5392690
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                  0.1550501   -0.6081086    0.9182088
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0159624   -0.1720504    0.1401255
6 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.0430597   -0.1437965    0.0576771
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2351146   -0.4393675   -0.0308617
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0550219   -0.2676457    0.3776896
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0278278   -0.0867999    0.0311444
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1709657   -0.2681456   -0.0737857
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0114509   -0.4379423    0.4608441
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0037282   -0.9295795    0.9370359
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.3330052   -0.4423079    1.1083183
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.1046612   -0.0721530    0.2814755
24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.0879813   -0.2000187    0.0240562
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0475976   -0.2941241    0.1989290
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0912093   -0.2531358    0.4355544
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0419620   -0.1286596    0.0447355
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0573964   -0.1447977    0.0300049


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.2163215   -0.0608728    0.4935157
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.7480000   -0.2166815    1.7126815
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.1166996   -0.5296780    0.7630771
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0406266   -0.0708809    0.1521341
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0237305   -0.0673213    0.0198603
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0034628   -0.0177891    0.0108636
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0226237   -0.0513706    0.0061232
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0484266   -0.3661975    0.2693442
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.4408571   -0.2480845    1.1297988
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.2915331   -1.1015400    0.5184738
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.1516299   -0.5924548    0.8957146
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0163035   -0.1351336    0.1025267
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0334879   -0.1059171    0.0389413
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0434843   -0.0867066   -0.0002621
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0420049   -0.2296322    0.3136420
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0058816   -0.0194909    0.0077278
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0370211   -0.0591576   -0.0148845
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0043020   -0.3921127    0.4007168
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0194690   -0.8637198    0.9026578
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.3196255   -0.4245861    1.0638371
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0807587   -0.0530372    0.2145546
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0617253   -0.1398231    0.0163725
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0112406   -0.0570502    0.0345691
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0718882   -0.2144009    0.3581772
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0098468   -0.0299312    0.0102375
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0131292   -0.0322369    0.0059784
