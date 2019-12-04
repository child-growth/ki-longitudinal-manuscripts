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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                31     205  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               174     205  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 2      60  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                58      60  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1                 1      39  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0                38      39  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                 2      24  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                22      24  haz              
Birth       ki0047075b-MAL-ED          PERU                           1                 2     213  haz              
Birth       ki0047075b-MAL-ED          PERU                           0               211     213  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      91  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                91      91  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7  haz              
Birth       ki1000108-IRC              INDIA                          1                 0      14  haz              
Birth       ki1000108-IRC              INDIA                          0                14      14  haz              
Birth       ki1000109-EE               PAKISTAN                       1                38      42  haz              
Birth       ki1000109-EE               PAKISTAN                       0                 4      42  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               346     364  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                18     364  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               159     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               380     539  haz              
Birth       ki1101329-Keneba           GAMBIA                         1               485    1403  haz              
Birth       ki1101329-Keneba           GAMBIA                         0               918    1403  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1               419     563  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0               144     563  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10452   13423  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2971   13423  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              2098    2632  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               534    2632  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                33     231  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               198     231  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                12     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0               197     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1                 2     218  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0               216     218  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                 5     225  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0               220     225  haz              
6 months    ki0047075b-MAL-ED          PERU                           1                 5     271  haz              
6 months    ki0047075b-MAL-ED          PERU                           0               266     271  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     233  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               233     233  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     232  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               232     232  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19  haz              
6 months    ki1000108-IRC              INDIA                          1                 0      14  haz              
6 months    ki1000108-IRC              INDIA                          0                14      14  haz              
6 months    ki1000109-EE               PAKISTAN                       1                43      48  haz              
6 months    ki1000109-EE               PAKISTAN                       0                 5      48  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               463     604  haz              
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908  haz              
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547  haz              
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272  haz              
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7628    9901  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2273    9901  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3316    4272  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               956    4272  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                31     205  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               174     205  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                11     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0               158     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0               207     209  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                 5     219  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0               214     219  haz              
24 months   ki0047075b-MAL-ED          PERU                           1                 3     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           0               198     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     216  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               216     216  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     202  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202     202  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19  haz              
24 months   ki1000108-IRC              INDIA                          1                 0      14  haz              
24 months   ki1000108-IRC              INDIA                          0                14      14  haz              
24 months   ki1000109-EE               PAKISTAN                       1                20      23  haz              
24 months   ki1000109-EE               PAKISTAN                       0                 3      23  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               441     578  haz              
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513  haz              
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1               356     470  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     470  haz              
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189  haz              
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3916    5088  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1172    5088  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3280    4199  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               919    4199  haz              


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
![](/tmp/6d69851f-ecbb-448a-84b5-5da750ea3bb7/611caf36-7610-4dd0-81ba-fb82d1b78c1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6d69851f-ecbb-448a-84b5-5da750ea3bb7/611caf36-7610-4dd0-81ba-fb82d1b78c1c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6d69851f-ecbb-448a-84b5-5da750ea3bb7/611caf36-7610-4dd0-81ba-fb82d1b78c1c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.1050258   -1.4408329   -0.7692187
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0395866   -1.1925698   -0.8866033
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.3776197   -1.4631704   -1.2920690
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4364436   -2.1366347   -0.7362525
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.9175055   -1.0392278   -0.7957832
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.8705417   -0.9580193   -0.7830641
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0012969   -0.1060929    0.1086867
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 0.0253755   -0.0543586    0.1051096
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0537706   -1.1514824   -0.9560587
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.0947110   -1.2709482   -0.9184738
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.5944112   -1.6191980   -1.5696243
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.5988071   -1.6380870   -1.5595273
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.5066373   -1.5587278   -1.4545467
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.6036329   -1.7326450   -1.4746208
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.1500038   -1.4695533   -0.8304544
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.1900583   -1.3212694   -1.0588471
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0017261   -0.8676521    0.8642000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0364538   -0.1090050    0.1819126
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4050000   -1.0737079    0.2637079
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.5658106   -0.6826403   -0.4489809
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -1.8680000   -2.2794681   -1.4565319
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -1.3117701   -1.4224656   -1.2010745
6 months    ki1000109-EE              PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.0798234   -1.2085608   -0.9510861
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.0960099   -1.1826430   -1.0093768
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.8919383   -0.9793799   -0.8044968
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.9481423   -1.0068569   -0.8894278
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.3099969   -1.3987707   -1.2212231
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.4877770   -1.6545583   -1.3209956
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -1.7325996   -2.0266038   -1.4385954
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                -1.6286353   -1.7600923   -1.4971783
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3073179   -1.3377084   -1.2769275
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.3366821   -1.3860729   -1.2872913
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.3095116   -1.3506890   -1.2683343
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.4827983   -1.5706981   -1.3948984
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.8670629   -2.2715895   -1.4625364
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.9523296   -2.0862634   -1.8183958
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0108072   -0.8089486    0.7873342
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0165720   -0.1560261    0.1891700
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -1.1950000   -1.7707330   -0.6192670
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -1.3216589   -1.4457846   -1.1975331
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.6963494   -1.8558237   -1.5368750
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.5688883   -1.6650341   -1.4727425
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -1.5176368   -1.6025890   -1.4326847
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -1.6214383   -1.6877449   -1.5551318
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.9065400   -2.0019381   -1.8111420
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.8880882   -2.0818953   -1.6942811
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -2.0317793   -2.3399634   -1.7235952
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -1.9490501   -2.1063827   -1.7917176
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -2.0018290   -2.0419273   -1.9617306
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -2.0451470   -2.1152065   -1.9750874
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.7767195   -1.8185215   -1.7349174
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.8361492   -1.9125329   -1.7597656


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                 0.0126443   -0.0554367    0.0807254
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -1.5876293   -1.6406755   -1.5345831
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0654392   -0.3041160    0.4349944
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0588239   -0.7253365    0.6076887
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0469638   -0.0870385    0.1809661
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                  0.0240786   -0.1005356    0.1486929
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0409405   -0.2349650    0.1530841
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0043960   -0.0451618    0.0363699
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0969956   -0.2353036    0.0413124
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0400544   -0.3854967    0.3053879
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0381799   -0.8396671    0.9160269
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                 -0.1608106   -0.8396474    0.5180262
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                  0.5562299    0.1301320    0.9823279
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0161865   -0.1669761    0.1346032
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.0562040   -0.1605549    0.0481468
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1777800   -0.3656816    0.0101216
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.1039643   -0.2174774    0.4254059
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0293642   -0.0817938    0.0230655
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1732866   -0.2688372   -0.0777361
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0852666   -0.5093457    0.3388124
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0273792   -0.7899986    0.8447569
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.1266589   -0.7156204    0.4623026
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.1274611   -0.0572508    0.3121730
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1038015   -0.2103204    0.0027174
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0184518   -0.1961604    0.2330640
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0827291   -0.2625586    0.4280169
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0433180   -0.1205246    0.0338886
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0594298   -0.1419698    0.0231102


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0520014   -0.2651258    0.3691286
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0160891   -0.0566754    0.0244973
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0324034   -0.0661020    0.1309089
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0113474   -0.0699282    0.0926231
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0103502   -0.0604466    0.0397462
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0011226   -0.0101482    0.0079030
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0206765   -0.0492067    0.0078536
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0400755   -0.3416924    0.2615414
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0493018   -0.7872001    0.8858037
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1572370   -0.8191102    0.5046361
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.5459674    0.1304259    0.9615089
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0118681   -0.1276837    0.1039476
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0411725   -0.1136813    0.0313364
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0440311   -0.0930012    0.0049390
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0930040   -0.1748891    0.3608971
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0065079   -0.0185314    0.0055155
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0387187   -0.0604092   -0.0170282
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0905712   -0.4597279    0.2785855
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0169216   -0.7502738    0.7841169
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1237671   -0.6980101    0.4504758
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0939272   -0.0473609    0.2352154
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0699925   -0.1406211    0.0006361
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0063273   -0.0455039    0.0581584
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0666470   -0.2200356    0.3533296
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0099713   -0.0277779    0.0078352
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0147571   -0.0327956    0.0032814
