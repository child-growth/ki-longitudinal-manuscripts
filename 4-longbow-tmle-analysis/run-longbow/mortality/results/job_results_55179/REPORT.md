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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* single
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_parity
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_swasted06    pers_wasted624   n_cell       n  outcome_variable 
-------------------------  -----------------------------  ---------------  ---------------  -------  ------  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                              0      211     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     0                              1       13     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                              0       12     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                              1        4     240  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                              0      203     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                              1        1     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                              0        2     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                              1        1     207  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                              0      198     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                              1       16     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                              0        9     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                              1       12     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                              0      227     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                              1        1     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                              0        6     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                              1        1     235  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                              0      266     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                              1        3     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                              0        1     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                              1        0     270  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              0      251     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              1        1     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              0        6     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              1        1     259  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              0      240     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              0        5     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                              0      287     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                              1       14     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                              0       55     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                              1       14     370  pers_wasted624   
ki1000108-IRC              INDIA                          0                              0      265     410  pers_wasted624   
ki1000108-IRC              INDIA                          0                              1       19     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                              0       97     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                              1       29     410  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                              0      298     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                              1       37     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                              0       27     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                              1       12     374  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                              0      168     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                              1       28     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                              0       19     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                              1       19     234  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                              0     1109    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                              1      182    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                              0       47    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                              1       46    1384  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                              0      315     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                              1       59     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                              0       11     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                              1       17     402  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                              0      445     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                              1       45     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                              0       36     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                              1       16     542  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                              0      557     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                              1       33     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                              0       18     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                              1        7     615  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                              0      645     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                              1       37     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                              0       41     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                              1        7     730  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1871    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       72    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0       45    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       30    2018  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                              0     1935    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                              1      144    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                              0      160    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                              1       59    2298  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                              0      270     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                              1        3     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                              0        0     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                              1        1     274  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                              0      433     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                              1       83     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                              0       48     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                              1       26     590  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                              0      221     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                              1       20     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                              0        6     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                              1        5     252  pers_wasted624   
ki1114097-CONTENT          PERU                           0                              0      215     215  pers_wasted624   
ki1114097-CONTENT          PERU                           0                              1        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                              0        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                              1        0     215  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                              0    15297   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                              1       16   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                              0     1275   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                              1        8   16596  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                              0     9623   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                              1      359   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                              0      651   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                              1       98   10731  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                              0      914    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                              1       37    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                              0       62    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                              1        4    1017  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                              0     5796    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                              1      488    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                              0      326    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                              1      282    6892  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                              0     2431    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                              1      175    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                              0      151    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                              1       51    2808  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                              0      784     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                              1       13     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                              0        0     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                              1        0     797  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                              0    13643   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                              1     2864   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                              0      372   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                              1      381   17260  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                              0     4586    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                              1      519    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                              0       91    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                              1       43    5239  pers_wasted624   


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: INDIA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/8cd7c0ba-0b84-45e4-bcc9-7f883d588244/b2742cb1-849c-4bf6-8c31-de5e2685f1fd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8cd7c0ba-0b84-45e4-bcc9-7f883d588244/b2742cb1-849c-4bf6-8c31-de5e2685f1fd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8cd7c0ba-0b84-45e4-bcc9-7f883d588244/b2742cb1-849c-4bf6-8c31-de5e2685f1fd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8cd7c0ba-0b84-45e4-bcc9-7f883d588244/b2742cb1-849c-4bf6-8c31-de5e2685f1fd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0747664   0.0394524   0.1100803
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5714286   0.3593206   0.7835366
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0463888   0.0226526   0.0701250
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2087769   0.1126911   0.3048627
ki1000108-IRC              INDIA                          0                    NA                0.0665030   0.0372644   0.0957416
ki1000108-IRC              INDIA                          1                    NA                0.2206530   0.1457063   0.2955997
ki1000109-EE               PAKISTAN                       0                    NA                0.1114634   0.0776623   0.1452645
ki1000109-EE               PAKISTAN                       1                    NA                0.2941697   0.1415253   0.4468141
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1441548   0.0947216   0.1935880
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4821522   0.3128821   0.6514222
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1421685   0.1235170   0.1608201
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4625415   0.4161502   0.5089327
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1587848   0.1217264   0.1958432
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5992598   0.3937575   0.8047621
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0919486   0.0663117   0.1175855
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2703217   0.1397567   0.4008867
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0559322   0.0373752   0.0744892
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2800000   0.1038524   0.4561476
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0542522   0.0372404   0.0712640
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1458333   0.0459197   0.2457470
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0370838   0.0286825   0.0454851
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3965975   0.2822568   0.5109381
ki1101329-Keneba           GAMBIA                         0                    NA                0.0696142   0.0586960   0.0805323
ki1101329-Keneba           GAMBIA                         1                    NA                0.2565089   0.1990401   0.3139777
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1607660   0.1290299   0.1925021
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3579550   0.2449561   0.4709540
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0829876   0.0480898   0.1178853
ki1114097-CMIN             BANGLADESH                     1                    NA                0.4545455   0.1597077   0.7493832
ki1119695-PROBIT           BELARUS                        0                    NA                0.0010449   0.0002971   0.0017926
ki1119695-PROBIT           BELARUS                        1                    NA                0.0062354   0.0009301   0.0115407
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0360523   0.0323999   0.0397047
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1265284   0.1026067   0.1504502
ki1135781-COHORTS          INDIA                          0                    NA                0.0780276   0.0714016   0.0846536
ki1135781-COHORTS          INDIA                          1                    NA                0.4567671   0.4174304   0.4961039
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0668744   0.0572697   0.0764790
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2489330   0.1903282   0.3075378
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1735905   0.1673080   0.1798731
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5017681   0.4614979   0.5420383
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1017590   0.0914008   0.1121171
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3094678   0.2109218   0.4080137


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  7.642857   4.191447   13.936300
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  4.500588   2.257398    8.972851
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.317940   1.900450    5.792693
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  2.639161   1.445424    4.818772
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.344682   2.051002    5.454358
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.253473   2.793448    3.789254
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  3.774037   2.489044    5.722421
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.939922   1.680820    5.142215
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  5.006061   2.458188   10.194764
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.688063   1.265352    5.710413
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.694624   7.409018   15.437266
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  3.684723   2.805638    4.839250
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.226559   1.536086    3.227401
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.477273   2.528380   11.865507
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  5.967654   3.017791   11.800979
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.509581   2.832998    4.347746
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  5.853916   5.188721    6.604390
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  3.722397   2.828234    4.899257
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.890527   2.650904    3.151810
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.041184   2.180332    4.241924


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0443826    0.0179485   0.0708166
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0292869    0.0100089   0.0485648
ki1000108-IRC              INDIA                          0                    NA                0.0505702    0.0250161   0.0761242
ki1000109-EE               PAKISTAN                       0                    NA                0.0195527    0.0027680   0.0363373
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0566999    0.0250641   0.0883356
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0225714    0.0158434   0.0292993
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0302699    0.0132207   0.0473191
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0205975    0.0071498   0.0340452
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0091084    0.0011028   0.0171141
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0060218   -0.0008431   0.0128867
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134613    0.0083515   0.0185711
ki1101329-Keneba           GAMBIA                         0                    NA                0.0187235    0.0126387   0.0248084
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0239798    0.0088771   0.0390824
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0162188    0.0002139   0.0322237
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004013    0.0000329   0.0007697
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0065346    0.0047834   0.0082858
ki1135781-COHORTS          INDIA                          0                    NA                0.0336961    0.0293410   0.0380513
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0136100    0.0089528   0.0182671
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0144164    0.0122260   0.0166069
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0055134    0.0026640   0.0083628


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3724967    0.1536730   0.5347420
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3870051    0.1246684   0.5707195
ki1000108-IRC              INDIA                          0                    NA                0.4319535    0.2043899   0.5944285
ki1000109-EE               PAKISTAN                       0                    NA                0.1492387    0.0164591   0.2640929
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2822929    0.1191360   0.4152293
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1370121    0.0971847   0.1750824
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1601119    0.0691642   0.2421734
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1830140    0.0617261   0.2886234
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1400424    0.0151570   0.2490913
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0999067   -0.0178485   0.2040388
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2663221    0.1720511   0.3498593
ki1101329-Keneba           GAMBIA                         0                    NA                0.2119540    0.1453006   0.2734095
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1297987    0.0460413   0.2062021
ki1114097-CMIN             BANGLADESH                     0                    NA                0.1634855   -0.0027793   0.3021829
ki1119695-PROBIT           BELARUS                        0                    NA                0.2774767    0.1201276   0.4066867
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1534416    0.1136152   0.1914786
ki1135781-COHORTS          INDIA                          0                    NA                0.3016022    0.2662627   0.3352396
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1691007    0.1125473   0.2220503
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0766802    0.0654240   0.0878008
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0513964    0.0249891   0.0770884
