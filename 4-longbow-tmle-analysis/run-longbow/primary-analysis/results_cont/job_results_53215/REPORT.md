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
Birth       ki1101329-Keneba           GAMBIA                         1               450    1327
Birth       ki1101329-Keneba           GAMBIA                         0               877    1327
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              8381   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2363   10744
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7610    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2272    9882
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3899    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1168    5067
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
![](/tmp/d034dcb6-6c68-415a-be9a-2160d18de252/1bd1a9d9-0ad4-4ab7-ae5a-f4f96d114584/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d034dcb6-6c68-415a-be9a-2160d18de252/1bd1a9d9-0ad4-4ab7-ae5a-f4f96d114584/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d034dcb6-6c68-415a-be9a-2160d18de252/1bd1a9d9-0ad4-4ab7-ae5a-f4f96d114584/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.8392931   -1.1954665   -0.4831196
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.9976934   -1.1627061   -0.8326808
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.0901282   -1.7027393   -0.4775170
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.3218623   -1.4733116   -1.1704131
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.2889785   -1.3778343   -1.2001227
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -1.2442377   -1.3449440   -1.1435314
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -1.2665323   -1.3434247   -1.1896399
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.1025560   -1.2149993   -0.9901127
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.1184945   -1.2755492   -0.9614399
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.7865775   -0.8114456   -0.7617093
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7599653   -0.8038900   -0.7160405
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.6767323   -0.7316877   -0.6217770
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.7470786   -0.8810592   -0.6130979
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1296745   -0.5183717    0.2590227
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1231019   -0.2676264    0.0214226
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 1.6891846    1.0724110    2.3059583
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.9432192    0.7737238    1.1127146
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2760000   -0.9362767    0.3842767
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                 0.1178939   -0.0200258    0.2558137
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.9290000    0.5350705    1.3229295
6 months    ki0047075b-MAL-ED         PERU         0                    NA                 1.0529010    0.9277571    1.1780449
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0372536   -0.1284587    0.2029658
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2599475   -0.3548423   -0.1650526
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0194999   -0.1169239    0.0779240
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.2810438   -0.3436736   -0.2184140
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.5775145   -0.6793503   -0.4756786
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.6799561   -0.8482205   -0.5116917
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.3459044    0.0010466    0.6907621
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.4020141    0.2751515    0.5288767
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.6032072   -0.6302827   -0.5761316
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.5873888   -0.6329094   -0.5418683
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3479010   -0.3927086   -0.3030933
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.5590160   -0.6375635   -0.4804685
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.8961212   -1.2386739   -0.5535684
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.7899907   -0.9226628   -0.6573186
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.6766739   -0.0427428    1.3960906
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4813775    0.2667732    0.6959817
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4770000   -1.1267115    0.1727115
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.3648832   -0.4833183   -0.2464480
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.8185915   -0.9831790   -0.6540039
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.9256115   -1.0203533   -0.8308697
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.7196795   -0.8022113   -0.6371477
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.8501242   -0.9115335   -0.7887150
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0917860   -1.1910652   -0.9925068
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.3139961   -1.5177588   -1.1102335
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1731999   -0.4976865    0.1512866
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0528434   -0.2155559    0.1098691
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3199751   -1.3550543   -1.2848958
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.2773213   -1.3391034   -1.2155393
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.2219183   -1.2624428   -1.1813937
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.2299674   -1.3097675   -1.1501674


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.9755670   -1.1287016   -0.8224325
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                -1.2599925   -1.3251703   -1.1948146
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.7807809   -0.8030521   -0.7585097
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.1213203   -0.2539388    0.0112981
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.1091407   -0.0265536    0.2448351
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                 1.0506150    0.9281868    1.1730433
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.1997647   -0.2531388   -0.1463906
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.6001300   -0.6240378   -0.5762223
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.8169756   -0.9388013   -0.6951499
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.3674429   -0.4840752   -0.2508107
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3103375   -1.3408810   -1.2797940
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1584004   -0.5520763    0.2352755
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783682    0.0820692
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0328838   -0.1365857    0.2023533
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 -0.0222946   -0.1387222    0.0941330
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0159385   -0.1978253    0.1659483
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0266122   -0.0222238    0.0754481
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0703462   -0.2112864    0.0705940
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0065726   -0.4088607    0.4220060
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.7459654   -1.3845424   -0.1073884
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.3938939   -0.2806334    1.0684213
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                  0.1239010   -0.2894287    0.5372307
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.2972010   -0.4883965   -0.1060056
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.2615438   -0.3765203   -0.1465674
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1024416   -0.2977432    0.0928600
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.0561097   -0.3139799    0.4261993
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0158183   -0.0357782    0.0674149
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.2111151   -0.3009548   -0.1212754
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.1061305   -0.2626930    0.4749540
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1952964   -0.9460093    0.5554164
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.1121168   -0.5483011    0.7725348
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.1070200   -0.2958761    0.0818361
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1304447   -0.2317557   -0.0291337
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.2222101   -0.4470461    0.0026258
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.1203565   -0.2429502    0.4836631
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0426537   -0.0281888    0.1134963
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0080492   -0.0956501    0.0795518


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1362739   -0.4762686    0.2037207
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0234037   -0.1017595    0.1485668
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.0157548   -0.0932643    0.0617547
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0038999   -0.0497805    0.0419807
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0057966   -0.0048822    0.0164753
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0137263   -0.0410793    0.0136267
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0083542   -0.3568232    0.3735315
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.7171073   -1.3225578   -0.1116568
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.3851407   -0.2725674    1.0428489
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.1216150   -0.2813864    0.5246164
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.2363442   -0.3834894   -0.0891990
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1802647   -0.2604805   -0.1000489
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0234027   -0.0737153    0.0269099
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0465956   -0.2609916    0.3541829
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0030771   -0.0087759    0.0149302
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0489447   -0.0703295   -0.0275598
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0791456   -0.2448587    0.4031499
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.2140506   -0.9195037    0.4914024
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1095571   -0.5343543    0.7534684
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0742755   -0.2190979    0.0705469
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0835534   -0.1507703   -0.0163366
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0505665   -0.1059530    0.0048200
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0961347   -0.2074411    0.3997104
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0096376   -0.0066603    0.0259355
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0046138   -0.0236410    0.0144135
