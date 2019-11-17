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

studyid                    country                        ever_sstunted06    co_occurence   n_cell      n
-------------------------  -----------------------------  ----------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                             0      193    221
ki0047075b-MAL-ED          BANGLADESH                     0                             1       12    221
ki0047075b-MAL-ED          BANGLADESH                     1                             0       14    221
ki0047075b-MAL-ED          BANGLADESH                     1                             1        2    221
ki0047075b-MAL-ED          BRAZIL                         0                             0      165    180
ki0047075b-MAL-ED          BRAZIL                         0                             1        0    180
ki0047075b-MAL-ED          BRAZIL                         1                             0       14    180
ki0047075b-MAL-ED          BRAZIL                         1                             1        1    180
ki0047075b-MAL-ED          INDIA                          0                             0      195    228
ki0047075b-MAL-ED          INDIA                          0                             1       14    228
ki0047075b-MAL-ED          INDIA                          1                             0       16    228
ki0047075b-MAL-ED          INDIA                          1                             1        3    228
ki0047075b-MAL-ED          NEPAL                          0                             0      217    229
ki0047075b-MAL-ED          NEPAL                          0                             1        3    229
ki0047075b-MAL-ED          NEPAL                          1                             0        8    229
ki0047075b-MAL-ED          NEPAL                          1                             1        1    229
ki0047075b-MAL-ED          PERU                           0                             0      188    222
ki0047075b-MAL-ED          PERU                           0                             1        2    222
ki0047075b-MAL-ED          PERU                           1                             0       28    222
ki0047075b-MAL-ED          PERU                           1                             1        4    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      213    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        3    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0       24    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        1    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      191    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0       33    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      261    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1       11    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0       83    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       11    366
ki1000108-IRC              INDIA                          0                             0      331    405
ki1000108-IRC              INDIA                          0                             1       13    405
ki1000108-IRC              INDIA                          1                             0       49    405
ki1000108-IRC              INDIA                          1                             1       12    405
ki1000109-EE               PAKISTAN                       0                             0      169    346
ki1000109-EE               PAKISTAN                       0                             1       27    346
ki1000109-EE               PAKISTAN                       1                             0      103    346
ki1000109-EE               PAKISTAN                       1                             1       47    346
ki1000109-ResPak           PAKISTAN                       0                             0        3      9
ki1000109-ResPak           PAKISTAN                       0                             1        0      9
ki1000109-ResPak           PAKISTAN                       1                             0        5      9
ki1000109-ResPak           PAKISTAN                       1                             1        1      9
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
ki1017093b-PROVIDE         BANGLADESH                     0                             0      503    563
ki1017093b-PROVIDE         BANGLADESH                     0                             1       33    563
ki1017093b-PROVIDE         BANGLADESH                     1                             0       23    563
ki1017093b-PROVIDE         BANGLADESH                     1                             1        4    563
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
ki1113344-GMS-Nepal        NEPAL                          0                             0      462    550
ki1113344-GMS-Nepal        NEPAL                          0                             1       47    550
ki1113344-GMS-Nepal        NEPAL                          1                             0       28    550
ki1113344-GMS-Nepal        NEPAL                          1                             1       13    550
ki1114097-CMIN             BANGLADESH                     0                             0      166    237
ki1114097-CMIN             BANGLADESH                     0                             1       15    237
ki1114097-CMIN             BANGLADESH                     1                             0       45    237
ki1114097-CMIN             BANGLADESH                     1                             1       11    237
ki1114097-CONTENT          PERU                           0                             0      191    200
ki1114097-CONTENT          PERU                           0                             1        0    200
ki1114097-CONTENT          PERU                           1                             0        8    200
ki1114097-CONTENT          PERU                           1                             1        1    200
ki1119695-PROBIT           BELARUS                        0                             0     2112   2146
ki1119695-PROBIT           BELARUS                        0                             1        0   2146
ki1119695-PROBIT           BELARUS                        1                             0       34   2146
ki1119695-PROBIT           BELARUS                        1                             1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     1363   1691
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1       63   1691
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0      238   1691
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1       27   1691
ki1135781-COHORTS          GUATEMALA                      0                             0      637    778
ki1135781-COHORTS          GUATEMALA                      0                             1       29    778
ki1135781-COHORTS          GUATEMALA                      1                             0      103    778
ki1135781-COHORTS          GUATEMALA                      1                             1        9    778
ki1135781-COHORTS          PHILIPPINES                    0                             0     2166   2487
ki1135781-COHORTS          PHILIPPINES                    0                             1      152   2487
ki1135781-COHORTS          PHILIPPINES                    1                             0      134   2487
ki1135781-COHORTS          PHILIPPINES                    1                             1       35   2487
ki1148112-LCNI-5           MALAWI                         0                             0      630    693
ki1148112-LCNI-5           MALAWI                         0                             1       14    693
ki1148112-LCNI-5           MALAWI                         1                             0       45    693
ki1148112-LCNI-5           MALAWI                         1                             1        4    693
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     3719   4541
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      311   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      386   4541
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
![](/tmp/711c9706-1442-4232-9507-3f77918b6e17/e5a966cf-626c-4540-93b0-727b252ed4d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/711c9706-1442-4232-9507-3f77918b6e17/e5a966cf-626c-4540-93b0-727b252ed4d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/711c9706-1442-4232-9507-3f77918b6e17/e5a966cf-626c-4540-93b0-727b252ed4d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/711c9706-1442-4232-9507-3f77918b6e17/e5a966cf-626c-4540-93b0-727b252ed4d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0410552   0.0173016   0.0648088
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1141294   0.0487641   0.1794946
ki1000108-IRC              INDIA                          0                    NA                0.0371482   0.0172328   0.0570636
ki1000108-IRC              INDIA                          1                    NA                0.2083552   0.0990992   0.3176112
ki1000109-EE               PAKISTAN                       0                    NA                0.1409749   0.0926984   0.1892514
ki1000109-EE               PAKISTAN                       1                    NA                0.3218329   0.2470918   0.3965739
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0790623   0.0681483   0.0899763
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2181593   0.1713802   0.2649383
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1671948   0.1228219   0.2115676
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2474403   0.1187387   0.3761419
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1002931   0.0711690   0.1294172
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1901860   0.0791153   0.3012567
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0391156   0.0234332   0.0547981
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1304348   0.0330346   0.2278350
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0172043   0.0088429   0.0255657
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0168033   0.1831967
ki1101329-Keneba           GAMBIA                         0                    NA                0.0466557   0.0362013   0.0571101
ki1101329-Keneba           GAMBIA                         1                    NA                0.1207128   0.0773433   0.1640823
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0919337   0.0668080   0.1170594
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3006029   0.1603056   0.4409002
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0832107   0.0427144   0.1237070
ki1114097-CMIN             BANGLADESH                     1                    NA                0.1959873   0.0882046   0.3037701
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0442760   0.0335951   0.0549568
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1016109   0.0647118   0.1385101
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0435435   0.0280345   0.0590526
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299792   0.1307351
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0664979   0.0563609   0.0766349
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1795591   0.1166517   0.2424665
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0778336   0.0685872   0.0870800
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2318644   0.1821555   0.2815732


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
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.779898   1.2302582    6.281471
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 5.608754   2.6482762   11.878718
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 2.282909   1.5054319    3.461914
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.759334   2.0852355    3.651349
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.479952   0.8252368    2.654097
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.896302   0.9872482    3.642407
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.334594   1.4287411    7.782736
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 5.812500   2.2177449   15.234012
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 2.587310   1.6963447    3.946235
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.269779   1.9024000    5.619984
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.355313   1.1270571    4.922111
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.294945   1.4838098    3.549494
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.845443   0.8973426    3.795274
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.700221   1.8433703    3.955361
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.978974   2.3260978    3.815096


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0190541    0.0008082   0.0372999
ki1000108-IRC              INDIA                          0                    NA                0.0245802    0.0082655   0.0408949
ki1000109-EE               PAKISTAN                       0                    NA                0.0728979    0.0331705   0.1126254
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0226057    0.0126591   0.0325523
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0185637   -0.0026252   0.0397527
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0100965   -0.0027493   0.0229423
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0066257   -0.0007663   0.0140176
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0042243   -0.0001918   0.0086404
ki1101329-Keneba           GAMBIA                         0                    NA                0.0096506    0.0039640   0.0153372
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0171572    0.0052297   0.0290847
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0264939   -0.0008137   0.0538015
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0089470    0.0029099   0.0149840
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0052996   -0.0023428   0.0129421
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0086931    0.0042895   0.0130966
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0181805    0.0122906   0.0240704


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3169902   -0.0248141   0.5447932
ki1000108-IRC              INDIA                          0                    NA                0.3981989    0.1311257   0.5831796
ki1000109-EE               PAKISTAN                       0                    NA                0.3408472    0.1393379   0.4951764
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2223482    0.1287076   0.3059250
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0999348   -0.0201675   0.2058977
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0914624   -0.0304602   0.1989593
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1448510   -0.0237354   0.2856751
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1971326   -0.0160720   0.3656001
ki1101329-Keneba           GAMBIA                         0                    NA                0.1713945    0.0696546   0.2620085
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1572745    0.0464365   0.2552291
ki1114097-CMIN             BANGLADESH                     0                    NA                0.2415022   -0.0353702   0.4443350
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1681036    0.0519663   0.2700137
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1085032   -0.0585805   0.2492149
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1156134    0.0572777   0.1703393
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1893520    0.1315241   0.2433294
