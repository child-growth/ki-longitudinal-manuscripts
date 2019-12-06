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

**Intervention Variable:** ever_swasted06

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

studyid                    country                        ever_swasted06    co_occurence   n_cell      n  outcome_variable 
-------------------------  -----------------------------  ---------------  -------------  -------  -----  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                            0      194    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     0                            1       12    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                            0       13    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                            1        2    221  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                            0      177    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                            1        1    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                            0        2    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                            1        0    180  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                            0      195    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                            1       12    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                            0       16    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                            1        5    228  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                            0      218    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                            1        4    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                            0        7    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                            1        0    229  co_occurence     
ki0047075b-MAL-ED          PERU                           0                            0      215    222  co_occurence     
ki0047075b-MAL-ED          PERU                           0                            1        6    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                            0        1    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                            1        0    222  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            0      231    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            1        3    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            0        6    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            1        1    241  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            0      220    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            1        1    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            0        4    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            1        0    225  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                            0      287    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                            1       11    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                            0       57    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                            1       11    366  co_occurence     
ki1000108-IRC              INDIA                          0                            0      268    405  co_occurence     
ki1000108-IRC              INDIA                          0                            1       15    405  co_occurence     
ki1000108-IRC              INDIA                          1                            0      112    405  co_occurence     
ki1000108-IRC              INDIA                          1                            1       10    405  co_occurence     
ki1000109-EE               PAKISTAN                       0                            0      246    346  co_occurence     
ki1000109-EE               PAKISTAN                       0                            1       64    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                            0       26    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                            1       10    346  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                            0        6      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                            1        0      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                            0        2      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                            1        1      9  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                            0     1064   1256  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                            1      107   1256  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                            0       64   1256  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                            1       21   1256  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                            0      250    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                            1       51    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                            0       13    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                            1        9    323  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                            0      375    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                            1       39    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                            0       36    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                            1       12    462  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                            0      504    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                            1       35    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                            0       22    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                            1        2    563  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                            0      560    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                            1       26    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                            0       45    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                            1        3    634  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      932    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1       20    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0       27    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1        1    980  co_occurence     
ki1101329-Keneba           GAMBIA                         0                            0     1535   1775  co_occurence     
ki1101329-Keneba           GAMBIA                         0                            1       73   1775  co_occurence     
ki1101329-Keneba           GAMBIA                         1                            0      140   1775  co_occurence     
ki1101329-Keneba           GAMBIA                         1                            1       27   1775  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                            0      429    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                            1       50    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                            0       61    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                            1       10    550  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                            0      203    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                            1       24    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                            0        8    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                            1        2    237  co_occurence     
ki1114097-CONTENT          PERU                           0                            0      199    200  co_occurence     
ki1114097-CONTENT          PERU                           0                            1        1    200  co_occurence     
ki1114097-CONTENT          PERU                           1                            0        0    200  co_occurence     
ki1114097-CONTENT          PERU                           1                            1        0    200  co_occurence     
ki1119695-PROBIT           BELARUS                        0                            0     2001   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        0                            1        0   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                            0      145   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                            1        0   2146  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                            0     1489   1680  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                            1       78   1680  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                            0      103   1680  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                            1       10   1680  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                            0      691    774  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                            1       35    774  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                            0       45    774  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                            1        3    774  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                            0     2163   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                            1      163   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                            0      137   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                            1       24   2487  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                            0      675    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                            1       18    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                            0        0    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                            1        0    693  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                            0     4011   4527  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                            1      406   4527  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                            0       83   4527  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                            1       27   4527  co_occurence     


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
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/105e2af4-1052-4d07-81d5-08ea6d7cc224/ec5ba811-242f-47c1-ac67-a3906d8e2d08/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/105e2af4-1052-4d07-81d5-08ea6d7cc224/ec5ba811-242f-47c1-ac67-a3906d8e2d08/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/105e2af4-1052-4d07-81d5-08ea6d7cc224/ec5ba811-242f-47c1-ac67-a3906d8e2d08/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/105e2af4-1052-4d07-81d5-08ea6d7cc224/ec5ba811-242f-47c1-ac67-a3906d8e2d08/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0579710   0.0260663   0.0898757
ki0047075b-MAL-ED          INDIA         1                    NA                0.2380952   0.0555298   0.4206607
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0368871   0.0155220   0.0582521
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1745546   0.0842929   0.2648163
ki1000108-IRC              INDIA         0                    NA                0.0525329   0.0264505   0.0786154
ki1000108-IRC              INDIA         1                    NA                0.0831437   0.0334057   0.1328817
ki1000109-EE               PAKISTAN      0                    NA                0.2088522   0.1634912   0.2542133
ki1000109-EE               PAKISTAN      1                    NA                0.2556153   0.1073648   0.4038657
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0918456   0.0804799   0.1032113
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2327006   0.1170186   0.3483826
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1694352   0.1269902   0.2118802
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.4090909   0.2033217   0.6148601
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0941861   0.0660025   0.1223697
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2684062   0.1398276   0.3969847
ki1101329-Keneba           GAMBIA        0                    NA                0.0456707   0.0354953   0.0558461
ki1101329-Keneba           GAMBIA        1                    NA                0.1522627   0.0962739   0.2082514
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1042469   0.0767997   0.1316941
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1240516   0.0410859   0.2070173
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0498021   0.0390292   0.0605751
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0904993   0.0382859   0.1427126
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0698784   0.0595065   0.0802502
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1501934   0.0947270   0.2056597
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0919227   0.0825241   0.1013213
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2360284   0.1055853   0.3664716


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1101329-Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670675
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0956483   0.0855904   0.1057063


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 4.107143   1.5982135   10.554674
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 4.732131   2.1818905   10.263150
ki1000108-IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA         1                    0                 1.582696   0.7259394    3.450599
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 1.223905   0.6565787    2.281437
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 2.533606   1.4675237    4.374144
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.414439   1.3765027    4.235018
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 2.849742   1.6168581    5.022723
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 3.333924   2.1710154    5.119748
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 1.189979   0.5794975    2.443582
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.817176   0.9814214    3.364638
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 2.149355   1.4440866    3.199064
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 2.567684   1.4726370    4.477002


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0165904   -0.0017754   0.0349561
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0232222    0.0057882   0.0406561
ki1000108-IRC              INDIA         0                    NA                0.0091955   -0.0075767   0.0259677
ki1000109-EE               PAKISTAN      0                    NA                0.0050206   -0.0117397   0.0217809
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0100652    0.0026992   0.0174312
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0163233    0.0005665   0.0320801
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0162035    0.0022680   0.0301390
ki1101329-Keneba           GAMBIA        0                    NA                0.0106673    0.0051497   0.0161849
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0048440   -0.0062758   0.0159638
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0025788   -0.0010463   0.0062039
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0053126    0.0016133   0.0090119
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0037256    0.0000189   0.0074324


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.2225064   -0.0412448   0.4194484
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.3863329    0.0809981   0.5902213
ki1000108-IRC              INDIA         0                    NA                0.1489664   -0.1641831   0.3778830
ki1000109-EE               PAKISTAN      0                    NA                0.0234747   -0.0579385   0.0986228
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0987651    0.0270485   0.1651955
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0878738    0.0005171   0.1675953
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1467846    0.0162431   0.2600036
ki1101329-Keneba           GAMBIA        0                    NA                0.1893450    0.0924033   0.2759323
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0444033   -0.0627523   0.1407547
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0492317   -0.0218474   0.1153666
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0706553    0.0209362   0.1178495
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0389513    0.0007204   0.0757196
