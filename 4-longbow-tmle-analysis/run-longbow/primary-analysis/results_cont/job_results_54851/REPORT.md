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

agecat      studyid                    country                        exclfeed6    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                29     194  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               165     194  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1      57  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                56      57  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1                 1      37  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0                36      37  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                 2      23  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                21      23  whz              
Birth       ki0047075b-MAL-ED          PERU                           1                 2     208  whz              
Birth       ki0047075b-MAL-ED          PERU                           0               206     208  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      90  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                90      90  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7  whz              
Birth       ki1000108-IRC              INDIA                          1                 0      12  whz              
Birth       ki1000108-IRC              INDIA                          0                12      12  whz              
Birth       ki1000109-EE               PAKISTAN                       1                24      28  whz              
Birth       ki1000109-EE               PAKISTAN                       0                 4      28  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               310     325  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                15     325  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               155     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               377     532  whz              
Birth       ki1101329-Keneba           GAMBIA                         1               450    1327  whz              
Birth       ki1101329-Keneba           GAMBIA                         0               877    1327  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              8381   10744  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2363   10744  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1799    2224  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               425    2224  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                33     231  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               198     231  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                12     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0               197     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1                 2     218  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0               216     218  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                 5     225  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0               220     225  whz              
6 months    ki0047075b-MAL-ED          PERU                           1                 5     271  whz              
6 months    ki0047075b-MAL-ED          PERU                           0               266     271  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     233  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               233     233  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     232  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               232     232  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19  whz              
6 months    ki1000108-IRC              INDIA                          1                 0      14  whz              
6 months    ki1000108-IRC              INDIA                          0                14      14  whz              
6 months    ki1000109-EE               PAKISTAN                       1                43      48  whz              
6 months    ki1000109-EE               PAKISTAN                       0                 5      48  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               462     603  whz              
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908  whz              
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547  whz              
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272  whz              
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7610    9882  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2272    9882  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3315    4275  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               960    4275  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                31     205  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               174     205  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                11     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0               158     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0               207     209  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                 5     219  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0               214     219  whz              
24 months   ki0047075b-MAL-ED          PERU                           1                 3     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           0               198     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     216  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               216     216  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     202  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202     202  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19  whz              
24 months   ki1000108-IRC              INDIA                          1                 0      14  whz              
24 months   ki1000108-IRC              INDIA                          0                14      14  whz              
24 months   ki1000109-EE               PAKISTAN                       1                20      23  whz              
24 months   ki1000109-EE               PAKISTAN                       0                 3      23  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               442     579  whz              
24 months   ki1101329-Keneba           GAMBIA                         1               514    1514  whz              
24 months   ki1101329-Keneba           GAMBIA                         0              1000    1514  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469  whz              
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184  whz              
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3899    5067  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1168    5067  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3266    4184  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               918    4184  whz              


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
![](/tmp/aaec8c5d-6bb9-42df-a1a2-5f474a27def8/403dc113-081d-43c6-8743-887fd9d6d581/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/aaec8c5d-6bb9-42df-a1a2-5f474a27def8/403dc113-081d-43c6-8743-887fd9d6d581/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/aaec8c5d-6bb9-42df-a1a2-5f474a27def8/403dc113-081d-43c6-8743-887fd9d6d581/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.8606348   -1.2095715   -0.5116981
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.9956339   -1.1623824   -0.8288855
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.0901282   -1.7027393   -0.4775170
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.3220315   -1.4739742   -1.1700889
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.2997151   -1.3876372   -1.2117930
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -1.2527336   -1.3532276   -1.1522395
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -1.2666552   -1.3433893   -1.1899210
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.1047473   -1.2173817   -0.9921130
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.1343909   -1.2931988   -0.9755830
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.7865928   -0.8114819   -0.7617038
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7610578   -0.8049495   -0.7171661
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.6756703   -0.7308282   -0.6205124
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.7482880   -0.8877009   -0.6088750
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1482327   -0.5550762    0.2586108
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1200975   -0.2635883    0.0233933
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 1.5955029    0.9126118    2.2783940
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.9475102    0.7777889    1.1172315
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2760000   -0.9362767    0.3842767
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                 0.1178939   -0.0200258    0.2558137
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.9290000    0.5350705    1.3229295
6 months    ki0047075b-MAL-ED         PERU         0                    NA                 1.0529010    0.9277571    1.1780449
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0198807   -0.1458524    0.1856139
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2604578   -0.3552495   -0.1656661
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0146682   -0.1126677    0.0833313
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.2818631   -0.3443141   -0.2194122
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.5770177   -0.6787035   -0.4753320
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.7127898   -0.8810943   -0.5444852
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.3462831    0.0065326    0.6860336
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.3995653    0.2723901    0.5267405
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.6024725   -0.6296423   -0.5753027
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.5935200   -0.6390298   -0.5480101
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3466325   -0.3913986   -0.3018664
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.5636934   -0.6427595   -0.4846273
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.9157963   -1.2435746   -0.5880180
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.7905571   -0.9232239   -0.6578903
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0104340   -0.8229460    0.8020780
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4776504    0.2627534    0.6925474
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4770000   -1.1267115    0.1727115
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.3648832   -0.4833183   -0.2464480
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.7756442   -0.9409229   -0.6103655
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.9220570   -1.0169820   -0.8271320
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.7085751   -0.7913913   -0.6257589
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.8493188   -0.9103347   -0.7883030
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0915564   -1.1914324   -0.9916804
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.3213643   -1.5311120   -1.1116167
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1636460   -0.4776932    0.1504012
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0525386   -0.2154265    0.1103494
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3197916   -1.3547485   -1.2848347
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.2790532   -1.3406277   -1.2174786
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.2214228   -1.2618715   -1.1809740
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.2331708   -1.3104525   -1.1558890


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
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1349991   -0.5225015    0.2525032
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783682    0.0820692
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0223164   -0.1467996    0.1914324
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 -0.0139216   -0.1302660    0.1024229
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0296435   -0.2140937    0.1548066
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0255350   -0.0233221    0.0743921
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0726176   -0.2194876    0.0742523
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0281352   -0.4037119    0.4599824
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.6479927   -1.3520727    0.0560872
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.3938939   -0.2806334    1.0684213
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                  0.1239010   -0.2894287    0.5372307
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.2803385   -0.4713756   -0.0893014
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.2671950   -0.3823819   -0.1520080
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1357720   -0.3316278    0.0600837
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.0532822   -0.3106615    0.4172259
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0089525   -0.0427638    0.0606689
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.2170609   -0.3074431   -0.1266787
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.1252391   -0.2295787    0.4800570
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.4880844   -0.3528452    1.3290140
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.1121168   -0.5483011    0.7725348
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.1464128   -0.3365983    0.0437727
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1407437   -0.2420932   -0.0393942
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.2298079   -0.4624048    0.0027890
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.1111074   -0.2438098    0.4660246
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0407384   -0.0297194    0.1111962
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0117480   -0.0972681    0.0737721


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1149322   -0.4461574    0.2162930
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0235729   -0.1021767    0.1493224
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.0072589   -0.0844163    0.0698985
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0017086   -0.0482299    0.0448127
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0058119   -0.0048771    0.0165009
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0147883   -0.0426074    0.0130307
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0269124   -0.3554819    0.4093067
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.6234256   -1.2937938    0.0469426
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.3851407   -0.2725674    1.0428489
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.1216150   -0.2813864    0.5246164
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.2189714   -0.3657916   -0.0721512
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1850965   -0.2656176   -0.1045754
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0238994   -0.0745361    0.0267373
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0462169   -0.2568195    0.3492534
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0023425   -0.0095474    0.0142323
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0502131   -0.0715655   -0.0288607
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0988207   -0.2101629    0.4078042
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.4730573   -0.3219259    1.2680404
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1095571   -0.5343543    0.7534684
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.1172228   -0.2627641    0.0283185
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0946578   -0.1622536   -0.0270620
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0507961   -0.1076852    0.0060929
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0865808   -0.2085052    0.3816667
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0094541   -0.0068319    0.0257401
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0051093   -0.0242738    0.0140553
