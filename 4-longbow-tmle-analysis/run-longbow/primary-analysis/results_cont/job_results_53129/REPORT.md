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

**Intervention Variable:** exclfeed6

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

agecat      studyid                    country                        exclfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                29     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               165     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                56      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 1      37
Birth       ki0047075b-MAL-ED          INDIA                          0                36      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 2      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                21      23
Birth       ki0047075b-MAL-ED          PERU                           1                 2     208
Birth       ki0047075b-MAL-ED          PERU                           0               206     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                90      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      12
Birth       ki1000108-IRC              INDIA                          0                12      12
Birth       ki1000109-EE               PAKISTAN                       1                24      28
Birth       ki1000109-EE               PAKISTAN                       0                 4      28
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               310     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                15     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               155     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               377     532
Birth       ki1101329-Keneba           GAMBIA                         1                 6      12
Birth       ki1101329-Keneba           GAMBIA                         0                 6      12
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10144   13000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2856   13000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1799    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               425    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                33     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               198     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               197     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 2     218
6 months    ki0047075b-MAL-ED          INDIA                          0               216     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                 5     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               220     225
6 months    ki0047075b-MAL-ED          PERU                           1                 5     271
6 months    ki0047075b-MAL-ED          PERU                           0               266     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               233     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               232     232
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               462     603
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7590    9858
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2268    9858
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3315    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               960    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                31     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               174     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               158     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 2     209
24 months   ki0047075b-MAL-ED          INDIA                          0               207     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                 5     219
24 months   ki0047075b-MAL-ED          NEPAL                          0               214     219
24 months   ki0047075b-MAL-ED          PERU                           1                 3     201
24 months   ki0047075b-MAL-ED          PERU                           0               198     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               216     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202     202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               442     579
24 months   ki1101329-Keneba           GAMBIA                         1               514    1514
24 months   ki1101329-Keneba           GAMBIA                         0              1000    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3871    5028
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1157    5028
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3266    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               918    4184


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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/6230ab3a-6e01-4b68-8b0e-02548920a365/4e951e76-42e5-4ff4-8ed1-0d89b8a27054/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6230ab3a-6e01-4b68-8b0e-02548920a365/4e951e76-42e5-4ff4-8ed1-0d89b8a27054/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6230ab3a-6e01-4b68-8b0e-02548920a365/4e951e76-42e5-4ff4-8ed1-0d89b8a27054/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.8293590   -1.1949226   -0.4637955
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.9986144   -1.1657207   -0.8315081
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.0901282   -1.7027393   -0.4775170
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.3135468   -1.4597673   -1.1673263
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.3036937   -1.3919417   -1.2154456
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -1.0850000   -1.9196826   -0.2503174
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 0.8066667   -0.5095831    2.1229164
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.1039348   -1.2164421   -0.9914275
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.1248842   -1.2831856   -0.9665829
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.7589624   -0.7826242   -0.7353006
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7427773   -0.7828990   -0.7026557
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.6752992   -0.7303383   -0.6202602
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.7529433   -0.8898201   -0.6160666
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1391518   -0.5383575    0.2600539
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1207119   -0.2645634    0.0231396
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 1.4539695    0.6499964    2.2579425
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.9474959    0.7777625    1.1172293
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2760000   -0.9362767    0.3842767
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                 0.1185530   -0.0193896    0.2564956
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 1.0210000    0.5724886    1.4695114
6 months    ki0047075b-MAL-ED         PERU         0                    NA                 1.0552945    0.9302357    1.1803533
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0298712   -0.1329973    0.1927398
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2647221   -0.3592100   -0.1702341
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0195811   -0.1167011    0.0775389
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.2806986   -0.3433021   -0.2180952
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.5784930   -0.6809282   -0.4760578
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.6778682   -0.8501487   -0.5055877
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.4222483    0.0827158    0.7617807
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.3993156    0.2724104    0.5262208
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.6026898   -0.6298581   -0.5755216
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.5938975   -0.6391259   -0.5486691
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3464632   -0.3912957   -0.3016306
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.5564586   -0.6349208   -0.4779965
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.8534715   -1.2415617   -0.4653814
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.7905873   -0.9223169   -0.6588576
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.3305170   -0.3853711    1.0464050
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4750410    0.2599051    0.6901769
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4770000   -1.1267115    0.1727115
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.3665187   -0.4846381   -0.2483993
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.7537901   -0.9091240   -0.5984563
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.9276270   -1.0215118   -0.8337422
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.7142166   -0.7963379   -0.6320953
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.8447768   -0.9062859   -0.7832676
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0919073   -1.1918284   -0.9919862
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.3228988   -1.5319695   -1.1138281
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1628515   -0.4877446    0.1620416
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0581364   -0.2221974    0.1059246
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3217349   -1.3568451   -1.2866247
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.2751492   -1.3371057   -1.2131927
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.2216414   -1.2619035   -1.1813793
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.2391344   -1.3155594   -1.1627094


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.9748454   -1.1280978   -0.8215930
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                -0.1391667   -1.0981858    0.8198525
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.7557115   -0.7768180   -0.7346051
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.1220707   -0.2547831    0.0106417
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.1097852   -0.0259319    0.2455023
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                 1.0546617    0.9322137    1.1771098
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.1997647   -0.2531388   -0.1463906
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.5998808   -0.6237974   -0.5759642
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.8179024   -0.9399789   -0.6958260
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.3690411   -0.4853679   -0.2527143
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3113405   -1.3420927   -1.2805883
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1692554   -0.5719351    0.2334244
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783682    0.0820692
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0098531   -0.1546091    0.1743153
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                  1.8916667    0.3330748    3.4502585
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0209494   -0.2040848    0.1621859
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0161851   -0.0287019    0.0610720
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0776441   -0.2216025    0.0663144
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0184399   -0.4062917    0.4431715
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.5064736   -1.3284736    0.3155265
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.3945530   -0.2799790    1.0690851
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                  0.0342945   -0.4313257    0.4999147
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.2945933   -0.4817624   -0.1074242
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.2611175   -0.3758986   -0.1463365
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0993752   -0.2999120    0.1011616
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.0229327   -0.3872361    0.3413707
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0087924   -0.0426251    0.0602098
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.2099954   -0.2999955   -0.1199954
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0628843   -0.3489038    0.4746724
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.1445240   -0.6036137    0.8926617
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.1104813   -0.5498801    0.7708427
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.1738368   -0.3500154    0.0023417
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1305602   -0.2316088   -0.0295116
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.2309915   -0.4630213    0.0010383
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.1047151   -0.2619821    0.4714123
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0465857   -0.0240647    0.1172360
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0174930   -0.1021371    0.0671510


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1454863   -0.4905369    0.1995642
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0150881   -0.1057255    0.1359017
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.9458333   -0.0131858    1.9048525
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0025211   -0.0485921    0.0435498
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0032509   -0.0065960    0.0130977
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0151594   -0.0426069    0.0122882
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0170811   -0.3575740    0.3917362
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.4822470   -1.2722424    0.3077484
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.3857852   -0.2719277    1.0434980
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.0336617   -0.4203183    0.4876418
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.2289619   -0.3728676   -0.0850562
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1801835   -0.2600817   -0.1002854
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0224241   -0.0737994    0.0289511
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0297483   -0.3319531    0.2724565
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0028090   -0.0090437    0.0146618
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0503824   -0.0718930   -0.0288718
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0355691   -0.3330797    0.4042179
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1287138   -0.5725252    0.8299528
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1079589   -0.5358972    0.7518150
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.1390769   -0.2739448   -0.0042090
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0890164   -0.1560810   -0.0219517
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0504452   -0.1074436    0.0065532
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0857863   -0.2183803    0.3899528
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0103944   -0.0057855    0.0265743
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0048907   -0.0237015    0.0139202
