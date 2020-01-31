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

**Intervention Variable:** ever_wasted06

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

studyid                    country                        ever_wasted06    co_occurence   n_cell      n  outcome_variable 
-------------------------  -----------------------------  --------------  -------------  -------  -----  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                           0      165    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     0                           1        4    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                           0       42    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                           1       10    221  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                           0      166    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                           1        1    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                           0       13    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                           1        0    180  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                           0      147    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                           1        4    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                           0       64    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                           1       13    228  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                           0      181    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                           1        2    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                           0       44    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                           1        2    229  co_occurence     
ki0047075b-MAL-ED          PERU                           0                           0      208    222  co_occurence     
ki0047075b-MAL-ED          PERU                           0                           1        5    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                           0        8    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                           1        1    222  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           0      212    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           1        2    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       25    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        2    241  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                           0      211    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                           1        1    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       13    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        0    225  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                           0      171    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                           1        4    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                           0      173    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                           1       18    366  co_occurence     
ki1000108-IRC              INDIA                          0                           0      175    405  co_occurence     
ki1000108-IRC              INDIA                          0                           1       10    405  co_occurence     
ki1000108-IRC              INDIA                          1                           0      205    405  co_occurence     
ki1000108-IRC              INDIA                          1                           1       15    405  co_occurence     
ki1000109-EE               PAKISTAN                       0                           0      190    346  co_occurence     
ki1000109-EE               PAKISTAN                       0                           1       35    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                           0       82    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                           1       39    346  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                           0        4      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                           1        0      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                           0        4      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                           1        1      9  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                           0      899   1256  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                           1       72   1256  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                           0      229   1256  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                           1       56   1256  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                           0      218    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                           1       35    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                           0       45    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                           1       25    323  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                           0      281    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                           1       14    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                           0      130    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                           1       37    462  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                           0      398    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                           1       23    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                           0      128    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                           1       14    563  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                           0      440    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                           1       14    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                           0      165    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                           1       15    634  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      829    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       14    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      130    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        7    980  co_occurence     
ki1101329-Keneba           GAMBIA                         0                           0     1218   1775  co_occurence     
ki1101329-Keneba           GAMBIA                         0                           1       45   1775  co_occurence     
ki1101329-Keneba           GAMBIA                         1                           0      457   1775  co_occurence     
ki1101329-Keneba           GAMBIA                         1                           1       55   1775  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                           0      302    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                           1       28    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                           0      188    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                           1       32    550  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                           0      179    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                           1       17    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                           0       32    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                           1        9    237  co_occurence     
ki1114097-CONTENT          PERU                           0                           0      196    200  co_occurence     
ki1114097-CONTENT          PERU                           0                           1        1    200  co_occurence     
ki1114097-CONTENT          PERU                           1                           0        3    200  co_occurence     
ki1114097-CONTENT          PERU                           1                           1        0    200  co_occurence     
ki1119695-PROBIT           BELARUS                        0                           0     1618   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        0                           1        0   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                           0      528   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                           1        0   2146  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                           0     1305   1680  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                           1       56   1680  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                           0      287   1680  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                           1       32   1680  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                           0      594    774  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                           1       26    774  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                           0      142    774  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                           1       12    774  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                           0     1777   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                           1      112   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                           0      523   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                           1       75   2487  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                           0      666    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                           1       17    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                           0        9    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                           1        1    693  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                           0     3657   4527  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                           1      288   4527  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                           0      437   4527  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                           1      145   4527  co_occurence     


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
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/24ac36ef-70e1-4408-bd1f-2373cb0ccc3d/8a57287c-00c1-48ba-90a5-d454870f3b05/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/24ac36ef-70e1-4408-bd1f-2373cb0ccc3d/8a57287c-00c1-48ba-90a5-d454870f3b05/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/24ac36ef-70e1-4408-bd1f-2373cb0ccc3d/8a57287c-00c1-48ba-90a5-d454870f3b05/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/24ac36ef-70e1-4408-bd1f-2373cb0ccc3d/8a57287c-00c1-48ba-90a5-d454870f3b05/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0548309   0.0223646   0.0872971
ki1000108-IRC              INDIA                          1                    NA                0.0688201   0.0354631   0.1021770
ki1000109-EE               PAKISTAN                       0                    NA                0.1563244   0.1086067   0.2040420
ki1000109-EE               PAKISTAN                       1                    NA                0.3140418   0.2302889   0.3977947
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0768070   0.0654555   0.0881586
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1826473   0.1378739   0.2274206
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1388870   0.0961267   0.1816473
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3573524   0.2444515   0.4702533
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0472589   0.0230660   0.0714518
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2222007   0.1588503   0.2855512
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0565670   0.0348621   0.0782718
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0993080   0.0496913   0.1489247
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0316599   0.0157522   0.0475676
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0835800   0.0434168   0.1237432
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0166074   0.0079762   0.0252385
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0510949   0.0142048   0.0879850
ki1101329-Keneba           GAMBIA                         0                    NA                0.0362517   0.0260176   0.0464858
ki1101329-Keneba           GAMBIA                         1                    NA                0.1010908   0.0748733   0.1273083
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0855136   0.0554192   0.1156079
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1477205   0.1010878   0.1943531
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0867347   0.0472496   0.1262198
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2195122   0.0925464   0.3464780
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0410987   0.0305538   0.0516435
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1068886   0.0738873   0.1398899
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0420924   0.0262493   0.0579355
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0744010   0.0321376   0.1166643
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0583771   0.0478414   0.0689128
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1261671   0.0999080   0.1524262
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0732228   0.0641772   0.0822683
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2436902   0.1978990   0.2894814


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN                       NA                   NA                0.2138728   0.1706052   0.2571404
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0657194   0.0452330   0.0862057
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0563380   0.0456085   0.0670675
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0523810   0.0417242   0.0630377
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0490956   0.0338639   0.0643273
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0956483   0.0855904   0.1057063


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.255134   0.5830168   2.702085
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 2.008911   1.3372697   3.017884
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.378001   1.7422374   3.245764
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.572972   1.6550846   3.999907
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 4.701773   2.6174909   8.445748
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.755582   0.9326404   3.304671
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.639932   1.3161867   5.295023
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 3.076642   1.2639518   7.488995
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 2.788578   1.9033362   4.085544
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.727451   1.0761851   2.772838
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.530846   1.2122647   5.283651
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.600782   1.7399641   3.887475
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.767563   0.8941415   3.494167
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.161242   1.6432147   2.842579
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 3.328066   2.6655193   4.155297


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0068975   -0.0184257   0.0322208
ki1000109-EE               PAKISTAN                       0                    NA                0.0575485    0.0224805   0.0926164
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0251038    0.0123912   0.0378164
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0468715    0.0190608   0.0746823
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0631307    0.0376093   0.0886521
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0091524   -0.0046178   0.0229225
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0140814    0.0016222   0.0265407
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0048212   -0.0005279   0.0101703
ki1101329-Keneba           GAMBIA                         0                    NA                0.0200863    0.0117221   0.0284505
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0235774    0.0011454   0.0460093
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0229699   -0.0009080   0.0468479
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0112823    0.0046203   0.0179443
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0070032   -0.0021029   0.0161093
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0168139    0.0099750   0.0236528
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0224256    0.0163657   0.0284854


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.1117401   -0.4053248   0.4385600
ki1000109-EE               PAKISTAN                       0                    NA                0.2690780    0.0925760   0.4112489
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2463309    0.1266753   0.3495923
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2523249    0.0955208   0.3819449
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5718897    0.3417940   0.7215486
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1392647   -0.0900516   0.3203392
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3078490    0.0092952   0.5164322
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2249901   -0.0446753   0.4250459
ki1101329-Keneba           GAMBIA                         0                    NA                0.3565318    0.2090758   0.4764969
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2161257   -0.0114151   0.3924761
ki1114097-CMIN             BANGLADESH                     0                    NA                0.2093799   -0.0268154   0.3912439
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2153893    0.0856028   0.3267543
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1426443   -0.0582535   0.3054039
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2236156    0.1319116   0.3056322
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2344585    0.1758899   0.2888646
