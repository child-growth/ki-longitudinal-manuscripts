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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* single
* hhwealth_quart
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_brthmon
* delta_single
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_sstunted06    co_occurence   n_cell      n  outcome_variable 
-------------------------  -----------------------------  ----------------  -------------  -------  -----  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                             0      193    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     0                             1       12    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                             0       14    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                             1        2    221  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                             0      165    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                             1        0    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                             0       14    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                             1        1    180  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                             0      195    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                             1       14    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                             0       16    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                             1        3    228  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                             0      217    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                             1        3    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                             0        8    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                             1        1    229  co_occurence     
ki0047075b-MAL-ED          PERU                           0                             0      188    222  co_occurence     
ki0047075b-MAL-ED          PERU                           0                             1        2    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                             0       28    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                             1        4    222  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      213    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        3    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0       24    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        1    241  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      191    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0       33    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        1    225  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      261    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1       11    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0       83    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       11    366  co_occurence     
ki1000108-IRC              INDIA                          0                             0      331    405  co_occurence     
ki1000108-IRC              INDIA                          0                             1       13    405  co_occurence     
ki1000108-IRC              INDIA                          1                             0       49    405  co_occurence     
ki1000108-IRC              INDIA                          1                             1       12    405  co_occurence     
ki1000109-EE               PAKISTAN                       0                             0      169    346  co_occurence     
ki1000109-EE               PAKISTAN                       0                             1       27    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                             0      103    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                             1       47    346  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                             0        3      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                             1        0      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                             0        5      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                             1        1      9  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                             0      990   1259  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                             1       84   1259  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                             0      141   1259  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                             1       44   1259  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      228    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       46    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       35    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       14    323  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                             0      368    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                             1       41    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                             0       43    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                             1       10    462  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                             0      503    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                             1       33    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                             0       23    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                             1        4    563  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      565    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       23    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0       40    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1        6    634  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0      914    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       16    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       45    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1        5    980  co_occurence     
ki1101329-Keneba           GAMBIA                         0                             0     1489   1776  co_occurence     
ki1101329-Keneba           GAMBIA                         0                             1       72   1776  co_occurence     
ki1101329-Keneba           GAMBIA                         1                             0      187   1776  co_occurence     
ki1101329-Keneba           GAMBIA                         1                             1       28   1776  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                             0      462    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                             1       47    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                             0       28    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                             1       13    550  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                             0      166    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                             1       15    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                             0       45    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                             1       11    237  co_occurence     
ki1114097-CONTENT          PERU                           0                             0      191    200  co_occurence     
ki1114097-CONTENT          PERU                           0                             1        0    200  co_occurence     
ki1114097-CONTENT          PERU                           1                             0        8    200  co_occurence     
ki1114097-CONTENT          PERU                           1                             1        1    200  co_occurence     
ki1119695-PROBIT           BELARUS                        0                             0     2112   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        0                             1        0   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                             0       34   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                             1        0   2146  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     1363   1691  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1       63   1691  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0      238   1691  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1       27   1691  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                             0      637    778  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                             1       29    778  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                             0      103    778  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                             1        9    778  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                             0     2166   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                             1      152   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                             0      134   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                             1       35   2487  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                             0      630    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                             1       14    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                             0       45    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                             1        4    693  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     3719   4541  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      311   4541  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      386   4541  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      125   4541  co_occurence     


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
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/7ee270c3-dcd1-41f6-a988-1c3758554e73/bad7de7b-370d-47b0-90aa-48641a2c7118/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7ee270c3-dcd1-41f6-a988-1c3758554e73/bad7de7b-370d-47b0-90aa-48641a2c7118/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7ee270c3-dcd1-41f6-a988-1c3758554e73/bad7de7b-370d-47b0-90aa-48641a2c7118/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7ee270c3-dcd1-41f6-a988-1c3758554e73/bad7de7b-370d-47b0-90aa-48641a2c7118/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0410717   0.0173565   0.0647868
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1133747   0.0487047   0.1780448
ki1000108-IRC              INDIA                          0                    NA                0.0373856   0.0173206   0.0574507
ki1000108-IRC              INDIA                          1                    NA                0.2085546   0.0996412   0.3174679
ki1000109-EE               PAKISTAN                       0                    NA                0.1391479   0.0903470   0.1879488
ki1000109-EE               PAKISTAN                       1                    NA                0.3122770   0.2378543   0.3866997
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0790623   0.0681483   0.0899763
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2181593   0.1713802   0.2649383
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1682598   0.1238438   0.2126758
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2837447   0.1540296   0.4134597
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1004378   0.0713383   0.1295373
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1822664   0.0722818   0.2922511
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0391156   0.0234332   0.0547981
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1304348   0.0330346   0.2278350
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0172043   0.0088429   0.0255657
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0168033   0.1831967
ki1101329-Keneba           GAMBIA                         0                    NA                0.0465247   0.0361033   0.0569462
ki1101329-Keneba           GAMBIA                         1                    NA                0.1241298   0.0797154   0.1685442
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0920573   0.0668982   0.1172164
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3183470   0.1715167   0.4651774
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0833695   0.0426724   0.1240666
ki1114097-CMIN             BANGLADESH                     1                    NA                0.1881179   0.0781116   0.2981242
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0442270   0.0335528   0.0549011
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1028474   0.0663165   0.1393784
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0435435   0.0280345   0.0590526
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299792   0.1307351
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0667175   0.0565306   0.0769044
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1744794   0.1105566   0.2384022
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0778267   0.0685790   0.0870743
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2359696   0.1868537   0.2850855


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0601093   0.0357249   0.0844936
ki1000108-IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN                       NA                   NA                0.2138728   0.1706052   0.2571404
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1016680   0.0902317   0.1131043
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0563063   0.0455826   0.0670300
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0532229   0.0425206   0.0639253
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0488432   0.0336879   0.0639985
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0960141   0.0859500   0.1060782


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.760411   1.2267395    6.211482
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 5.578469   2.6408688   11.783742
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 2.244209   1.4667441    3.433779
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.759334   2.0852355    3.651349
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.686349   0.9946527    2.859061
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.814720   0.9291330    3.544388
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.334594   1.4287411    7.782736
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 5.812500   2.2177449   15.234012
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 2.668038   1.7516498    4.063842
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.458140   2.0224787    5.912908
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.256436   1.0511980    4.843527
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.325447   1.5136680    3.572582
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.845443   0.8973426    3.795274
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.615196   1.7588735    3.888428
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 3.031988   2.3817649    3.859722


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0190376    0.0009297   0.0371455
ki1000108-IRC              INDIA                          0                    NA                0.0243428    0.0080395   0.0406460
ki1000109-EE               PAKISTAN                       0                    NA                0.0747249    0.0348629   0.1145870
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0226057    0.0126591   0.0325523
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0174987   -0.0034253   0.0384228
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0099518   -0.0028492   0.0227528
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0066257   -0.0007663   0.0140176
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0042243   -0.0001918   0.0086404
ki1101329-Keneba           GAMBIA                         0                    NA                0.0097816    0.0041079   0.0154552
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0170336    0.0051067   0.0289605
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0263352   -0.0010663   0.0537367
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0089960    0.0029672   0.0150248
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0052996   -0.0023428   0.0129421
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0084735    0.0040360   0.0129109
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0181874    0.0122940   0.0240808


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3167166   -0.0220476   0.5431952
ki1000108-IRC              INDIA                          0                    NA                0.3943528    0.1258427   0.5803862
ki1000109-EE               PAKISTAN                       0                    NA                0.3493896    0.1453816   0.5046984
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2223482    0.1287076   0.3059250
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0942015   -0.0243712   0.1990492
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0901519   -0.0312741   0.1972807
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1448510   -0.0237354   0.2856751
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1971326   -0.0160720   0.3656001
ki1101329-Keneba           GAMBIA                         0                    NA                0.1737207    0.0724015   0.2639730
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1561413    0.0452097   0.2541844
ki1114097-CMIN             BANGLADESH                     0                    NA                0.2400552   -0.0385798   0.4439368
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1690247    0.0530728   0.2707783
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1085032   -0.0585805   0.2492149
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1126927    0.0537343   0.1679777
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1894243    0.1315579   0.2434349
