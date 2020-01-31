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

**Intervention Variable:** pers_wasted06

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

studyid                    country                        pers_wasted06    pers_wasted624   n_cell       n  outcome_variable 
-------------------------  -----------------------------  --------------  ---------------  -------  ------  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                             0      219     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     0                             1       13     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                             0        4     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                             1        4     240  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                             0      205     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                             1        1     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                             0        0     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                             1        1     207  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                             0      202     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                             1       18     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                             0        5     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                             1       10     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                             0      231     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                             1        1     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                             0        2     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                             1        1     235  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                             0      267     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                             1        3     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                             0        0     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                             1        0     270  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      256     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        0     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0        1     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        2     259  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      245     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0        0     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      307     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1       11     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0       35     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       17     370  pers_wasted624   
ki1000108-IRC              INDIA                          0                             0      323     410  pers_wasted624   
ki1000108-IRC              INDIA                          0                             1       26     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                             0       39     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                             1       22     410  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                             0      313     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                             1       35     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                             0       12     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                             1       14     374  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                             0      178     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                             1       32     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                             0        9     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                             1       15     234  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                             0     1095    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                             1      162    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                             0       61    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                             1       66    1384  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      281     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       25     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       45     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       51     402  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                             0      456     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                             1       36     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                             0       25     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                             1       25     542  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                             0      568     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                             1       33     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                             0        7     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                             1        7     615  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      671     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       39     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0       15     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1        5     730  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       72    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       22    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       30    2018  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                             0     2056    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                             1      161    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                             0       39    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                             1       42    2298  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                             0      264     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                             1        3     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                             0        6     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                             1        1     274  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                             0      452     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                             1       70     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                             0       29     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                             1       39     590  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                             0      223     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                             1       19     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                             0        4     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                             1        6     252  pers_wasted624   
ki1114097-CONTENT          PERU                           0                             0      215     215  pers_wasted624   
ki1114097-CONTENT          PERU                           0                             1        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                             0        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                             1        0     215  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                             0    15890   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                             1       11   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                             0      682   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                             1       13   16596  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     9865   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1      346   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0      409   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1      111   10731  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                             0      934    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                             1       31    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                             0       42    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                             1       10    1017  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                             0     5684    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                             1      277    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                             0      438    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                             1      493    6892  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                             0     2467    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                             1      161    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                             0      115    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                             1       65    2808  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                             0      776     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                             1        8     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                             0        8     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                             1        5     797  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                             0    13683   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                             1     2538   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                             0      332   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                             1      707   17260  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     4506    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      393    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      171    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      169    5239  pers_wasted624   


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
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/24e26721-0ff5-4fd8-8415-53429bc81677/821de6f5-b520-41fb-b176-2e9146ac98cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/24e26721-0ff5-4fd8-8415-53429bc81677/821de6f5-b520-41fb-b176-2e9146ac98cb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/24e26721-0ff5-4fd8-8415-53429bc81677/821de6f5-b520-41fb-b176-2e9146ac98cb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/24e26721-0ff5-4fd8-8415-53429bc81677/821de6f5-b520-41fb-b176-2e9146ac98cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0818182   0.0455227   0.1181136
ki0047075b-MAL-ED          INDIA                          1                    NA                0.6666667   0.4275982   0.9057351
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0345465   0.0143877   0.0547052
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3351494   0.2017984   0.4685005
ki1000108-IRC              INDIA                          0                    NA                0.0746864   0.0470794   0.1022934
ki1000108-IRC              INDIA                          1                    NA                0.3813117   0.2571611   0.5054623
ki1000109-EE               PAKISTAN                       0                    NA                0.1007427   0.0690710   0.1324145
ki1000109-EE               PAKISTAN                       1                    NA                0.5385543   0.3298215   0.7472871
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1523810   0.1036692   0.2010927
ki1000109-ResPak           PAKISTAN                       1                    NA                0.6250000   0.4308989   0.8191011
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1307143   0.1160927   0.1453359
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4844115   0.4139448   0.5548781
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0828296   0.0517850   0.1138742
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5287956   0.4271295   0.6304617
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0733951   0.0503290   0.0964612
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4825920   0.3363063   0.6288777
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0549085   0.0366394   0.0731775
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5000000   0.2613176   0.7386824
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0549296   0.0381589   0.0717003
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2500000   0.0600972   0.4399028
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0366083   0.0282868   0.0449298
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5928056   0.4616942   0.7239171
ki1101329-Keneba           GAMBIA                         0                    NA                0.0731724   0.0623234   0.0840214
ki1101329-Keneba           GAMBIA                         1                    NA                0.4703451   0.3591136   0.5815767
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1354582   0.1061555   0.1647609
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5528126   0.4348531   0.6707722
ki1119695-PROBIT           BELARUS                        0                    NA                0.0006934   0.0001315   0.0012552
ki1119695-PROBIT           BELARUS                        1                    NA                0.0156167   0.0029547   0.0282788
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0341149   0.0305903   0.0376396
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2161647   0.1758092   0.2565201
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0320545   0.0209079   0.0432012
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1834347   0.0649378   0.3019315
ki1135781-COHORTS          INDIA                          0                    NA                0.0469890   0.0416288   0.0523492
ki1135781-COHORTS          INDIA                          1                    NA                0.5108972   0.4788966   0.5428979
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0615085   0.0523406   0.0706763
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3510034   0.2814870   0.4205197
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
ki1148112-LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1566413   0.1504722   0.1628104
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6795114   0.6482484   0.7107744
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0804159   0.0710777   0.0897542
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4817463   0.4100945   0.5533981


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
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0403147   0.0282199   0.0524094
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0163112   0.0075116   0.0251108
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  8.148148    4.606020   14.414249
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  9.701408    4.779956   19.689994
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  5.105504    3.113501    8.371981
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  5.345838    3.239367    8.822090
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  4.101562    2.626572    6.404857
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.705879    3.203988    4.286391
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.384135    4.189709    9.727928
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  6.575265    4.244791   10.185215
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  9.106061    5.088919   16.294295
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.551282    2.007191   10.319981
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.193215   11.787812   22.245030
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  6.427905    4.864452    8.493858
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.081057    3.012784    5.528119
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 22.522101   10.723164   47.303672
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  6.336369    5.120322    7.841220
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  5.722586    2.754338   11.889607
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 10.872691    9.549895   12.378713
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.706588    4.457127    7.306309
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.338009    4.093453    4.597176
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.990681    4.966558    7.225982


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0373308    0.0133773   0.0612842
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0411292    0.0201588   0.0620996
ki1000108-IRC              INDIA                          0                    NA                0.0423868    0.0214521   0.0633214
ki1000109-EE               PAKISTAN                       0                    NA                0.0302733    0.0125641   0.0479826
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0484737    0.0209011   0.0760464
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0340256    0.0245818   0.0434693
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1062251    0.0749866   0.1374636
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0391511    0.0225002   0.0558020
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0139368    0.0088300   0.0190437
ki1101329-Keneba           GAMBIA                         0                    NA                0.0151653    0.0101236   0.0202070
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0492876    0.0315201   0.0670550
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007527    0.0001702   0.0013353
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0084720    0.0066229   0.0103211
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0082601    0.0023893   0.0141310
ki1135781-COHORTS          INDIA                          0                    NA                0.0647347    0.0588952   0.0705742
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0189759    0.0137559   0.0241958
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0061071    0.0006741   0.0115401
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0313657    0.0285164   0.0342149
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0268564    0.0210174   0.0326955


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3133117    0.1136573   0.4679927
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5434930    0.2845438   0.7087192
ki1000108-IRC              INDIA                          0                    NA                0.3620536    0.1860034   0.5000279
ki1000109-EE               PAKISTAN                       0                    NA                0.2310658    0.0963221   0.3457183
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2413374    0.1014563   0.3594424
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2065412    0.1616542   0.2490249
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5618748    0.4100278   0.6746395
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3478668    0.2073937   0.4634440
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2757304    0.1822986   0.3584866
ki1101329-Keneba           GAMBIA                         0                    NA                0.1716742    0.1166985   0.2232283
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2667859    0.1725246   0.3503094
ki1119695-PROBIT           BELARUS                        0                    NA                0.5205169    0.3083126   0.6676185
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1989341    0.1580474   0.2378353
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2048919    0.0593522   0.3279132
ki1135781-COHORTS          INDIA                          0                    NA                0.5794177    0.5402482   0.6152500
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2357711    0.1746573   0.2923597
ki1148112-LCNI-5           MALAWI                         0                    NA                0.3744113    0.0387300   0.5928707
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1668324    0.1524775   0.1809442
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2503574    0.2007340   0.2968999
