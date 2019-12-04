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

agecat      studyid                    country                        exclfeed36    n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 31    208  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                177    208  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  4     62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 58     62  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1                  1     40  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0                 39     40  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0     25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                 25     25  whz              
Birth       ki0047075b-MAL-ED          PERU                           1                  5    218  whz              
Birth       ki0047075b-MAL-ED          PERU                           0                213    218  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    104  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                103    104  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3      3  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      3  whz              
Birth       ki1000108-IRC              INDIA                          1                  0      3  whz              
Birth       ki1000108-IRC              INDIA                          0                  3      3  whz              
Birth       ki1000109-EE               PAKISTAN                       1                  2      6  whz              
Birth       ki1000109-EE               PAKISTAN                       0                  4      6  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                115    483  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                368    483  whz              
Birth       ki1101329-Keneba           GAMBIA                         1                343   1192  whz              
Birth       ki1101329-Keneba           GAMBIA                         0                849   1192  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396    491  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95    491  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               6736   8619  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1883   8619  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1711   2128  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                417   2128  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 30    240  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                210    240  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 12    209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0                197    209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1                  9    233  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0                224    233  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                  4    235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0                231    235  whz              
6 months    ki0047075b-MAL-ED          PERU                           1                  6    272  whz              
6 months    ki0047075b-MAL-ED          PERU                           0                266    272  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    250  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                249    250  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    243  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                239    243  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  whz              
6 months    ki1000108-IRC              INDIA                          1                  0      4  whz              
6 months    ki1000108-IRC              INDIA                          0                  4      4  whz              
6 months    ki1000109-EE               PAKISTAN                       1                  4      9  whz              
6 months    ki1000109-EE               PAKISTAN                       0                  5      9  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    168  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168    168  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                145    603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                458    603  whz              
6 months    ki1101329-Keneba           GAMBIA                         1                507   1790  whz              
6 months    ki1101329-Keneba           GAMBIA                         0               1283   1790  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422    527  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105    527  whz              
6 months    ki1148112-LCNI-5           MALAWI                         1                 47    272  whz              
6 months    ki1148112-LCNI-5           MALAWI                         0                225    272  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6561   8535  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1974   8535  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3240   4188  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                948   4188  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25    212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                187    212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11    169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0                158    169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1                  9    224  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0                215    224  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                  4    227  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0                223    227  whz              
24 months   ki0047075b-MAL-ED          PERU                           1                  4    201  whz              
24 months   ki0047075b-MAL-ED          PERU                           0                197    201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    235  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                234    235  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    213  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                210    213  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  whz              
24 months   ki1000108-IRC              INDIA                          1                  0      4  whz              
24 months   ki1000108-IRC              INDIA                          0                  4      4  whz              
24 months   ki1000109-EE               PAKISTAN                       1                  0      3  whz              
24 months   ki1000109-EE               PAKISTAN                       0                  3      3  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                141    577  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                436    577  whz              
24 months   ki1101329-Keneba           GAMBIA                         1                424   1395  whz              
24 months   ki1101329-Keneba           GAMBIA                         0                971   1395  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362    445  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83    445  whz              
24 months   ki1148112-LCNI-5           MALAWI                         1                 34    184  whz              
24 months   ki1148112-LCNI-5           MALAWI                         0                150    184  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3311   4317  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1006   4317  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3132   4035  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                903   4035  whz              


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/43527a66-fdc2-4942-8353-b287772d403a/691b76d4-76e5-4cd9-846d-90b8252a2422/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/43527a66-fdc2-4942-8353-b287772d403a/691b76d4-76e5-4cd9-846d-90b8252a2422/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/43527a66-fdc2-4942-8353-b287772d403a/691b76d4-76e5-4cd9-846d-90b8252a2422/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.8145323   -1.1870106   -0.4420541
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.9664675   -1.1259930   -0.8069419
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.6820000    0.4886003    0.8753997
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0629108   -0.1888962    0.0630746
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.3247021   -1.4956014   -1.1538028
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.2896597   -1.3780379   -1.2012815
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -1.2554784   -1.3716900   -1.1392668
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -1.2867253   -1.3643537   -1.2090969
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0966370   -1.2047762   -0.9884978
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1575866   -1.3584720   -0.9567013
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.7984834   -0.8255537   -0.7714131
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7567997   -0.8090403   -0.7045590
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.6903298   -0.7462428   -0.6344167
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7540214   -0.8803013   -0.6277415
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3285728   -0.7045088    0.0473633
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1223066   -0.2595607    0.0149475
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 1.6763283    1.0199506    2.3327060
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.9470234    0.7775612    1.1164855
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.4850000   -1.2185777    0.2485777
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7254799   -0.8547181   -0.5962418
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 1.2841667    0.5956438    1.9726896
6 months    ki0047075b-MAL-ED     PERU         0                    NA                 1.0459085    0.9221243    1.1696927
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0145391   -0.1452089    0.1742872
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.2666235   -0.3619121   -0.1713350
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0144729   -0.0909832    0.1199290
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.2870481   -0.3505708   -0.2235253
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5692323   -0.6689743   -0.4694904
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.7223960   -0.9091269   -0.5356652
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.3404677   -0.0051321    0.6860675
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.4017108    0.2745794    0.5288421
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.5999564   -0.6291868   -0.5707260
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5954444   -0.6442659   -0.5466229
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3460291   -0.3920511   -0.3000072
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5574876   -0.6380432   -0.4769320
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9742225   -1.2935994   -0.6548455
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.8104019   -0.9433878   -0.6774160
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.9209801    0.2454887    1.5964715
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4693880    0.2552955    0.6834804
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -1.0300000   -1.4230980   -0.6369020
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.9551163   -1.0754326   -0.8348000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.8319497   -0.9890899   -0.6748095
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.9329761   -1.0283900   -0.8375623
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.7120692   -0.8056490   -0.6184895
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.8383240   -0.9007947   -0.7758533
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0665483   -1.1649913   -0.9681052
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3669164   -1.6128230   -1.1210098
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1331471   -0.4419465    0.1756522
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0607462   -0.2232343    0.1017419
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3452658   -1.3839969   -1.3065348
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.3043875   -1.3708154   -1.2379596
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.2294888   -1.2712762   -1.1877014
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.2423813   -1.3224945   -1.1622682


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.9480769   -1.0934921   -0.8026617
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.0458257   -0.1696487    0.0779973
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.2966874   -1.3774293   -1.2159454
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                -1.2752643   -1.3442810   -1.2062476
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.7892308   -0.8133344   -0.7651272
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1354583   -0.2647102   -0.0062065
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.7161910   -0.8437667   -0.5886153
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                 1.0511642    0.9291821    1.1731463
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.2009461   -0.2562412   -0.1456509
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.5995202   -0.6251579   -0.5738825
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.9581250   -1.0746982   -0.8415518
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.8945581   -0.9774087   -0.8117074
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -0.7973955   -0.8498696   -0.7449213
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3352235   -1.3688736   -1.3015735
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.2344089   -1.2708428   -1.1979750


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1519351   -0.5578977    0.2540275
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.7449108   -0.9757262   -0.5140954
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0350424   -0.1521517    0.2222365
Birth       ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 -0.0312469   -0.1600887    0.0975950
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0609497   -0.2788470    0.1569476
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0416838   -0.0169590    0.1003265
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0636916   -0.1974335    0.0700503
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.2062662   -0.1942257    0.6067581
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.7293049   -1.4048294   -0.0537805
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.2404799   -0.9853549    0.5043950
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.2382581   -0.9378196    0.4613034
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.2811627   -0.4661601   -0.0961652
6 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.3015209   -0.4237237   -0.1793182
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1531637   -0.3623143    0.0559869
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0612431   -0.3085845    0.4310707
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0045119   -0.0511269    0.0601508
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2114585   -0.3040042   -0.1189128
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1638205   -0.1858125    0.5134536
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.4515921   -1.1621900    0.2590057
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0748837   -0.3362149    0.4859823
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.1010265   -0.2825889    0.0805360
24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.1262547   -0.2374504   -0.0150591
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.3003681   -0.5652932   -0.0354430
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0724009   -0.2774050    0.4222068
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0408784   -0.0354654    0.1172222
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0128925   -0.1012574    0.0754724


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1335446   -0.4909625    0.2238733
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.7278257   -0.9533592   -0.5022921
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0280147   -0.1149517    0.1709811
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0197859   -0.1117671    0.0721954
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0119374   -0.0529539    0.0290792
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0092527   -0.0035972    0.0221025
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0115687   -0.0395481    0.0164107
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1931144   -0.1731142    0.5593431
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.7042510   -1.3448640   -0.0636380
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.2311910   -0.9473188    0.4849368
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.2330025   -0.9150876    0.4490827
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.2136298   -0.3546348   -0.0726247
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.2154189   -0.3033142   -0.1275236
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0308752   -0.0720347    0.0102843
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0520323   -0.2569438    0.3610084
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004361   -0.0123946    0.0132668
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0499725   -0.0721008   -0.0278443
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1549300   -0.1557178    0.4655778
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.4583568   -1.1242436    0.2075299
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0718750   -0.3227110    0.4664610
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0626084   -0.1996094    0.0743927
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0853262   -0.1631382   -0.0075142
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0570772   -0.1082335   -0.0059209
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0560819   -0.2320292    0.3441930
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0100423   -0.0077078    0.0277924
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0049201   -0.0250876    0.0152474
