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
* enstunt
* month
* brthmon
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_month
* delta_brthmon
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_sstunted06    co_occurence   n_cell      n
-------------------------  -----------------------------  ----------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                             0      193    221
ki0047075b-MAL-ED          BANGLADESH                     0                             1       12    221
ki0047075b-MAL-ED          BANGLADESH                     1                             0       14    221
ki0047075b-MAL-ED          BANGLADESH                     1                             1        2    221
ki0047075b-MAL-ED          BRAZIL                         0                             0      167    180
ki0047075b-MAL-ED          BRAZIL                         0                             1        0    180
ki0047075b-MAL-ED          BRAZIL                         1                             0       12    180
ki0047075b-MAL-ED          BRAZIL                         1                             1        1    180
ki0047075b-MAL-ED          INDIA                          0                             0      196    228
ki0047075b-MAL-ED          INDIA                          0                             1       14    228
ki0047075b-MAL-ED          INDIA                          1                             0       15    228
ki0047075b-MAL-ED          INDIA                          1                             1        3    228
ki0047075b-MAL-ED          NEPAL                          0                             0      217    229
ki0047075b-MAL-ED          NEPAL                          0                             1        4    229
ki0047075b-MAL-ED          NEPAL                          1                             0        8    229
ki0047075b-MAL-ED          NEPAL                          1                             1        0    229
ki0047075b-MAL-ED          PERU                           0                             0      188    222
ki0047075b-MAL-ED          PERU                           0                             1        2    222
ki0047075b-MAL-ED          PERU                           1                             0       28    222
ki0047075b-MAL-ED          PERU                           1                             1        4    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      213    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        3    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0       24    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        1    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      192    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0       32    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      261    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1       11    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0       83    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       11    366
ki1000108-IRC              INDIA                          0                             0      331    405
ki1000108-IRC              INDIA                          0                             1       13    405
ki1000108-IRC              INDIA                          1                             0       49    405
ki1000108-IRC              INDIA                          1                             1       12    405
ki1000109-EE               PAKISTAN                       0                             0      160    350
ki1000109-EE               PAKISTAN                       0                             1       30    350
ki1000109-EE               PAKISTAN                       1                             0      115    350
ki1000109-EE               PAKISTAN                       1                             1       45    350
ki1000109-ResPak           PAKISTAN                       0                             0        3      9
ki1000109-ResPak           PAKISTAN                       0                             1        0      9
ki1000109-ResPak           PAKISTAN                       1                             0        6      9
ki1000109-ResPak           PAKISTAN                       1                             1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                             0      990   1259
ki1000304b-SAS-CompFeed    INDIA                          0                             1       84   1259
ki1000304b-SAS-CompFeed    INDIA                          1                             0      141   1259
ki1000304b-SAS-CompFeed    INDIA                          1                             1       44   1259
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      228    323
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       46    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       35    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       14    323
ki1017093-NIH-Birth        BANGLADESH                     0                             0      368    462
ki1017093-NIH-Birth        BANGLADESH                     0                             1       41    462
ki1017093-NIH-Birth        BANGLADESH                     1                             0       43    462
ki1017093-NIH-Birth        BANGLADESH                     1                             1       10    462
ki1017093b-PROVIDE         BANGLADESH                     0                             0      492    551
ki1017093b-PROVIDE         BANGLADESH                     0                             1       32    551
ki1017093b-PROVIDE         BANGLADESH                     1                             0       23    551
ki1017093b-PROVIDE         BANGLADESH                     1                             1        4    551
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      565    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       23    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0       40    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1        6    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0      914    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       16    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       45    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1        5    980
ki1101329-Keneba           GAMBIA                         0                             0     1489   1776
ki1101329-Keneba           GAMBIA                         0                             1       72   1776
ki1101329-Keneba           GAMBIA                         1                             0      187   1776
ki1101329-Keneba           GAMBIA                         1                             1       28   1776
ki1113344-GMS-Nepal        NEPAL                          0                             0      471    550
ki1113344-GMS-Nepal        NEPAL                          0                             1       46    550
ki1113344-GMS-Nepal        NEPAL                          1                             0       21    550
ki1113344-GMS-Nepal        NEPAL                          1                             1       12    550
ki1114097-CMIN             BANGLADESH                     0                             0      166    237
ki1114097-CMIN             BANGLADESH                     0                             1       15    237
ki1114097-CMIN             BANGLADESH                     1                             0       45    237
ki1114097-CMIN             BANGLADESH                     1                             1       11    237
ki1114097-CMIN             BRAZIL                         0                             0      108    115
ki1114097-CMIN             BRAZIL                         0                             1        0    115
ki1114097-CMIN             BRAZIL                         1                             0        7    115
ki1114097-CMIN             BRAZIL                         1                             1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                             0      508    541
ki1114097-CMIN             GUINEA-BISSAU                  0                             1       14    541
ki1114097-CMIN             GUINEA-BISSAU                  1                             0       16    541
ki1114097-CMIN             GUINEA-BISSAU                  1                             1        3    541
ki1114097-CMIN             PERU                           0                             0      362    375
ki1114097-CMIN             PERU                           0                             1        0    375
ki1114097-CMIN             PERU                           1                             0       13    375
ki1114097-CMIN             PERU                           1                             1        0    375
ki1114097-CONTENT          PERU                           0                             0      191    200
ki1114097-CONTENT          PERU                           0                             1        0    200
ki1114097-CONTENT          PERU                           1                             0        8    200
ki1114097-CONTENT          PERU                           1                             1        1    200
ki1119695-PROBIT           BELARUS                        0                             0     2112   2146
ki1119695-PROBIT           BELARUS                        0                             1        0   2146
ki1119695-PROBIT           BELARUS                        1                             0       34   2146
ki1119695-PROBIT           BELARUS                        1                             1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     1344   1666
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1       62   1666
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0      234   1666
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1       26   1666
ki1135781-COHORTS          GUATEMALA                      0                             0      637    778
ki1135781-COHORTS          GUATEMALA                      0                             1       29    778
ki1135781-COHORTS          GUATEMALA                      1                             0      103    778
ki1135781-COHORTS          GUATEMALA                      1                             1        9    778
ki1135781-COHORTS          PHILIPPINES                    0                             0     2166   2487
ki1135781-COHORTS          PHILIPPINES                    0                             1      152   2487
ki1135781-COHORTS          PHILIPPINES                    1                             0      134   2487
ki1135781-COHORTS          PHILIPPINES                    1                             1       35   2487
ki1148112-LCNI-5           MALAWI                         0                             0      631    693
ki1148112-LCNI-5           MALAWI                         0                             1       13    693
ki1148112-LCNI-5           MALAWI                         1                             0       45    693
ki1148112-LCNI-5           MALAWI                         1                             1        4    693
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     3720   4541
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      311   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      385   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      125   4541


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
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
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
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/23ceafac-d452-4448-817f-39f0c3930e09/6b45848b-9e62-4e9a-bf7a-ecdfca1945e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/23ceafac-d452-4448-817f-39f0c3930e09/6b45848b-9e62-4e9a-bf7a-ecdfca1945e0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/23ceafac-d452-4448-817f-39f0c3930e09/6b45848b-9e62-4e9a-bf7a-ecdfca1945e0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/23ceafac-d452-4448-817f-39f0c3930e09/6b45848b-9e62-4e9a-bf7a-ecdfca1945e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0415641   0.0177653   0.0653628
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1112087   0.0473644   0.1750530
ki1000108-IRC              INDIA                          0                    NA                0.0355723   0.0165614   0.0545833
ki1000108-IRC              INDIA                          1                    NA                0.1142865   0.0222181   0.2063548
ki1000109-EE               PAKISTAN                       0                    NA                0.1606931   0.1047732   0.2166130
ki1000109-EE               PAKISTAN                       1                    NA                0.2658711   0.1918350   0.3399072
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0835031   0.0684888   0.0985173
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2330004   0.1403166   0.3256842
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1677299   0.1233977   0.2120621
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2781430   0.1469058   0.4093803
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0996137   0.0702872   0.1289402
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2049049   0.0636275   0.3461823
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0391156   0.0234332   0.0547981
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1304348   0.0330346   0.2278350
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0172043   0.0088429   0.0255657
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0168033   0.1831967
ki1101329-Keneba           GAMBIA                         0                    NA                0.0467114   0.0362662   0.0571565
ki1101329-Keneba           GAMBIA                         1                    NA                0.1180141   0.0750866   0.1609416
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0886579   0.0641542   0.1131616
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3350986   0.1520120   0.5181851
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0823720   0.0419508   0.1227931
ki1114097-CMIN             BANGLADESH                     1                    NA                0.1784435   0.0711758   0.2857112
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0439962   0.0332612   0.0547313
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0925494   0.0563334   0.1287653
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0435435   0.0280345   0.0590526
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299792   0.1307351
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0674287   0.0571061   0.0777512
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1910370   0.1077253   0.2743487
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1255306   0.1128561   0.1382052
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1640212   0.1169242   0.2111182


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0601093   0.0357249   0.0844936
ki1000108-IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1016680   0.0902317   0.1131043
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0563063   0.0455826   0.0670300
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0528211   0.0420773   0.0635650
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0488432   0.0336879   0.0639985
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0960141   0.0859500   0.1060782


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.675597   1.1896702    6.017482
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 3.212789   1.2157048    8.490559
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.654528   1.0605962    2.581059
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.790321   2.0689792    3.763155
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.658279   0.9654013    2.848442
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 2.056995   0.9714763    4.355464
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.334594   1.4287411    7.782736
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 5.812500   2.2177449   15.234012
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 2.526454   1.6504813    3.867338
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.779683   2.0496997    6.969804
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.166314   0.9960368    4.711589
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.103575   1.3266330    3.335533
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.845443   0.8973426    3.795274
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.833173   1.7845105    4.498078
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.306623   0.9712496    1.757801


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0185452    0.0004028    0.0366877
ki1000108-IRC              INDIA                          0                    NA                 0.0261560    0.0098139    0.0424982
ki1000109-EE               PAKISTAN                       0                    NA                 0.0535927    0.0087852    0.0984001
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0181649    0.0085086    0.0278212
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0180286   -0.0029999    0.0390571
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0107759   -0.0024725    0.0240244
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0066257   -0.0007663    0.0140176
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0042243   -0.0001918    0.0086404
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0095949    0.0039194    0.0152705
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0167967    0.0053696    0.0282238
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0273327    0.0000839    0.0545814
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0088249    0.0027847    0.0148651
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0052996   -0.0023428    0.0129421
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0077623    0.0031606    0.0123641
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0295165   -0.0380124   -0.0210207


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.3085250   -0.0308721    0.5361813
ki1000108-IRC              INDIA                          0                    NA                 0.4237279    0.1663005    0.6016676
ki1000109-EE               PAKISTAN                       0                    NA                 0.2500991    0.0136185    0.4298845
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1786688    0.0754766    0.2703431
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0970539   -0.0220493    0.2022776
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0976172   -0.0286760    0.2084050
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1448510   -0.0237354    0.2856751
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1971326   -0.0160720    0.3656001
ki1101329-Keneba           GAMBIA                         0                    NA                 0.1704063    0.0689290    0.2608236
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1592790    0.0501749    0.2558505
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2491480   -0.0273949    0.4512541
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1670715    0.0498133    0.2698593
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1085032   -0.0585805    0.2492149
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1032350    0.0416736    0.1608418
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3074189   -0.4074768   -0.2144741
