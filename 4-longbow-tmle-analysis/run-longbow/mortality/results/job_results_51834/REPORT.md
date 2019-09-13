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

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* single
* W_gagebrth
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_parity
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_sunderweight06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  --------------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                                   0      211     240
ki0047075b-MAL-ED          BANGLADESH                     0                                   1       15     240
ki0047075b-MAL-ED          BANGLADESH                     1                                   0       11     240
ki0047075b-MAL-ED          BANGLADESH                     1                                   1        3     240
ki0047075b-MAL-ED          BRAZIL                         0                                   0      205     207
ki0047075b-MAL-ED          BRAZIL                         0                                   1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                                   0        0     207
ki0047075b-MAL-ED          BRAZIL                         1                                   1        0     207
ki0047075b-MAL-ED          INDIA                          0                                   0      189     235
ki0047075b-MAL-ED          INDIA                          0                                   1       17     235
ki0047075b-MAL-ED          INDIA                          1                                   0       18     235
ki0047075b-MAL-ED          INDIA                          1                                   1       11     235
ki0047075b-MAL-ED          NEPAL                          0                                   0      223     235
ki0047075b-MAL-ED          NEPAL                          0                                   1        1     235
ki0047075b-MAL-ED          NEPAL                          1                                   0       10     235
ki0047075b-MAL-ED          NEPAL                          1                                   1        1     235
ki0047075b-MAL-ED          PERU                           0                                   0      260     270
ki0047075b-MAL-ED          PERU                           0                                   1        2     270
ki0047075b-MAL-ED          PERU                           1                                   0        8     270
ki0047075b-MAL-ED          PERU                           1                                   1        0     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                   0      248     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                   1        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                   0        9     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                   1        1     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                   0      237     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                   1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                   0        8     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                   1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                                   0      285     373
ki1000108-CMC-V-BCS-2002   INDIA                          0                                   1       12     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                   0       60     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                   1       16     373
ki1000108-IRC              INDIA                          0                                   0      307     410
ki1000108-IRC              INDIA                          0                                   1       37     410
ki1000108-IRC              INDIA                          1                                   0       55     410
ki1000108-IRC              INDIA                          1                                   1       11     410
ki1000109-EE               PAKISTAN                       0                                   0      211     375
ki1000109-EE               PAKISTAN                       0                                   1        8     375
ki1000109-EE               PAKISTAN                       1                                   0      119     375
ki1000109-EE               PAKISTAN                       1                                   1       37     375
ki1000109-ResPak           PAKISTAN                       0                                   0      156     230
ki1000109-ResPak           PAKISTAN                       0                                   1       33     230
ki1000109-ResPak           PAKISTAN                       1                                   0       27     230
ki1000109-ResPak           PAKISTAN                       1                                   1       14     230
ki1000304b-SAS-CompFeed    INDIA                          0                                   0     1039    1389
ki1000304b-SAS-CompFeed    INDIA                          0                                   1      130    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                   0      119    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                   1      101    1389
ki1000304b-SAS-FoodSuppl   INDIA                          0                                   0      261     400
ki1000304b-SAS-FoodSuppl   INDIA                          0                                   1       31     400
ki1000304b-SAS-FoodSuppl   INDIA                          1                                   0       63     400
ki1000304b-SAS-FoodSuppl   INDIA                          1                                   1       45     400
ki1017093-NIH-Birth        BANGLADESH                     0                                   0      428     541
ki1017093-NIH-Birth        BANGLADESH                     0                                   1       34     541
ki1017093-NIH-Birth        BANGLADESH                     1                                   0       53     541
ki1017093-NIH-Birth        BANGLADESH                     1                                   1       26     541
ki1017093b-PROVIDE         BANGLADESH                     0                                   0      546     615
ki1017093b-PROVIDE         BANGLADESH                     0                                   1       26     615
ki1017093b-PROVIDE         BANGLADESH                     1                                   0       29     615
ki1017093b-PROVIDE         BANGLADESH                     1                                   1       14     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                                   0      646     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                                   1       29     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                   0       40     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                   1       15     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   0     1880    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   1       76    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   0       36    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   1       26    2018
ki1101329-Keneba           GAMBIA                         0                                   0     1984    2271
ki1101329-Keneba           GAMBIA                         0                                   1      139    2271
ki1101329-Keneba           GAMBIA                         1                                   0       88    2271
ki1101329-Keneba           GAMBIA                         1                                   1       60    2271
ki1112895-Guatemala BSC    GUATEMALA                      0                                   0      260     274
ki1112895-Guatemala BSC    GUATEMALA                      0                                   1        2     274
ki1112895-Guatemala BSC    GUATEMALA                      1                                   0       10     274
ki1112895-Guatemala BSC    GUATEMALA                      1                                   1        2     274
ki1113344-GMS-Nepal        NEPAL                          0                                   0      448     590
ki1113344-GMS-Nepal        NEPAL                          0                                   1       71     590
ki1113344-GMS-Nepal        NEPAL                          1                                   0       33     590
ki1113344-GMS-Nepal        NEPAL                          1                                   1       38     590
ki1114097-CMIN             BANGLADESH                     0                                   0      194     252
ki1114097-CMIN             BANGLADESH                     0                                   1       11     252
ki1114097-CMIN             BANGLADESH                     1                                   0       33     252
ki1114097-CMIN             BANGLADESH                     1                                   1       14     252
ki1114097-CMIN             BRAZIL                         0                                   0      116     119
ki1114097-CMIN             BRAZIL                         0                                   1        0     119
ki1114097-CMIN             BRAZIL                         1                                   0        3     119
ki1114097-CMIN             BRAZIL                         1                                   1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                                   0      951    1018
ki1114097-CMIN             GUINEA-BISSAU                  0                                   1       41    1018
ki1114097-CMIN             GUINEA-BISSAU                  1                                   0       19    1018
ki1114097-CMIN             GUINEA-BISSAU                  1                                   1        7    1018
ki1114097-CMIN             PERU                           0                                   0      630     653
ki1114097-CMIN             PERU                           0                                   1        1     653
ki1114097-CMIN             PERU                           1                                   0       21     653
ki1114097-CMIN             PERU                           1                                   1        1     653
ki1114097-CONTENT          PERU                           0                                   0      212     215
ki1114097-CONTENT          PERU                           0                                   1        0     215
ki1114097-CONTENT          PERU                           1                                   0        3     215
ki1114097-CONTENT          PERU                           1                                   1        0     215
ki1119695-PROBIT           BELARUS                        0                                   0    16440   16596
ki1119695-PROBIT           BELARUS                        0                                   1       21   16596
ki1119695-PROBIT           BELARUS                        1                                   0      132   16596
ki1119695-PROBIT           BELARUS                        1                                   1        3   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                                   0     9770   10693
ki1126311-ZVITAMBO         ZIMBABWE                       0                                   1      351   10693
ki1126311-ZVITAMBO         ZIMBABWE                       1                                   0      449   10693
ki1126311-ZVITAMBO         ZIMBABWE                       1                                   1      123   10693
ki1135781-COHORTS          GUATEMALA                      0                                   0      904    1023
ki1135781-COHORTS          GUATEMALA                      0                                   1       20    1023
ki1135781-COHORTS          GUATEMALA                      1                                   0       78    1023
ki1135781-COHORTS          GUATEMALA                      1                                   1       21    1023
ki1135781-COHORTS          INDIA                          0                                   0     5698    6897
ki1135781-COHORTS          INDIA                          0                                   1      423    6897
ki1135781-COHORTS          INDIA                          1                                   0      428    6897
ki1135781-COHORTS          INDIA                          1                                   1      348    6897
ki1135781-COHORTS          PHILIPPINES                    0                                   0     2460    2809
ki1135781-COHORTS          PHILIPPINES                    0                                   1      154    2809
ki1135781-COHORTS          PHILIPPINES                    1                                   0      123    2809
ki1135781-COHORTS          PHILIPPINES                    1                                   1       72    2809
ki1148112-LCNI-5           MALAWI                         0                                   0      771     796
ki1148112-LCNI-5           MALAWI                         0                                   1        7     796
ki1148112-LCNI-5           MALAWI                         1                                   0       13     796
ki1148112-LCNI-5           MALAWI                         1                                   1        5     796
kiGH5241-JiVitA-3          BANGLADESH                     0                                   0    12393   17274
kiGH5241-JiVitA-3          BANGLADESH                     0                                   1     2243   17274
kiGH5241-JiVitA-3          BANGLADESH                     1                                   0     1635   17274
kiGH5241-JiVitA-3          BANGLADESH                     1                                   1     1003   17274
kiGH5241-JiVitA-4          BANGLADESH                     0                                   0     4335    5263
kiGH5241-JiVitA-4          BANGLADESH                     0                                   1      403    5263
kiGH5241-JiVitA-4          BANGLADESH                     1                                   0      363    5263
kiGH5241-JiVitA-4          BANGLADESH                     1                                   1      162    5263


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
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
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
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/7d0a57ea-4c2b-41d0-b774-6347eef9b891/2beb67f4-b5b6-41b4-988e-e8f1a259ecd4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d0a57ea-4c2b-41d0-b774-6347eef9b891/2beb67f4-b5b6-41b4-988e-e8f1a259ecd4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d0a57ea-4c2b-41d0-b774-6347eef9b891/2beb67f4-b5b6-41b4-988e-e8f1a259ecd4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d0a57ea-4c2b-41d0-b774-6347eef9b891/2beb67f4-b5b6-41b4-988e-e8f1a259ecd4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0808377   0.0429248   0.1187505
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5231071   0.3221540   0.7240601
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0400557   0.0175740   0.0625374
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2379940   0.1461952   0.3297929
ki1000108-IRC              INDIA                          0                    NA                0.1073487   0.0745336   0.1401638
ki1000108-IRC              INDIA                          1                    NA                0.1599437   0.0690767   0.2508106
ki1000109-EE               PAKISTAN                       0                    NA                0.0365297   0.0116498   0.0614095
ki1000109-EE               PAKISTAN                       1                    NA                0.2371795   0.1703427   0.3040162
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1723576   0.1179104   0.2268048
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2928599   0.1405416   0.4451782
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1137559   0.0971181   0.1303937
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4650547   0.4095840   0.5205254
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1061677   0.0706971   0.1416383
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4197504   0.3242485   0.5152523
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0737657   0.0494620   0.0980694
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3535120   0.2330390   0.4739849
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0453364   0.0282698   0.0624029
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3220981   0.1741441   0.4700522
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0434163   0.0280994   0.0587332
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2969742   0.1817620   0.4121864
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0388936   0.0303268   0.0474604
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4239789   0.3028870   0.5450708
ki1101329-Keneba           GAMBIA                         0                    NA                0.0673385   0.0565069   0.0781701
ki1101329-Keneba           GAMBIA                         1                    NA                0.3811522   0.2891655   0.4731389
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1384306   0.1087800   0.1680812
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5142318   0.3914774   0.6369862
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0530645   0.0220637   0.0840654
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2554947   0.1234399   0.3875495
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0413306   0.0289377   0.0537236
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2692308   0.0986511   0.4398105
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0592756   0.0508277   0.0677235
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3377248   0.2947811   0.3806686
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0220812   0.0124764   0.0316861
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2149022   0.1238787   0.3059258
ki1135781-COHORTS          INDIA                          0                    NA                0.1037455   0.0957427   0.1117483
ki1135781-COHORTS          INDIA                          1                    NA                0.4391432   0.3884036   0.4898829
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0663330   0.0570170   0.0756491
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3885962   0.2883038   0.4888885
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0089974   0.0023418   0.0156531
ki1148112-LCNI-5           MALAWI                         1                    NA                0.2777778   0.0904991   0.4650565
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1727698   0.1651710   0.1803685
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4798541   0.4425811   0.5171271
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0901848   0.0802699   0.1000997
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3995760   0.3291025   0.4700494


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1200000   0.0870660   0.1529340
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2043478   0.1521230   0.2565727
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1109057   0.0844206   0.1373909
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0876266   0.0759950   0.0992582
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0471513   0.0341242   0.0601783
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0445669   0.0406656   0.0484683
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0150754   0.0066051   0.0235457
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  6.471080    3.5254526   11.877873
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  5.941583    2.9947167   11.788231
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  1.489945    0.7810581    2.842216
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  6.492788    3.1068548   13.568803
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  1.699141    0.9220752    3.131068
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.088182    3.3331653    5.014222
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  3.953655    2.6375671    5.926441
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.792364    2.9825674    7.700330
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  7.104632    3.9234011   12.865315
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.840160    4.0503405   11.551570
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.900997    7.5987242   15.638379
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.660238    4.2354898    7.564248
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.714726    2.6961648    5.118080
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  4.814793    2.2010169   10.532510
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.514071    3.2317093   13.130242
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.697535    4.7050539    6.899368
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  9.732341    5.3087692   17.841886
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  4.232890    3.6836846    4.863976
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.858259    4.3667674    7.859178
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 30.873016   11.3476420   83.994817
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.777420    2.5361383    3.041655
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.430636    3.5976283    5.456520


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0383113    0.0122242    0.0643984
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0350114    0.0143774    0.0556454
ki1000108-IRC              INDIA                          0                    NA                 0.0097245   -0.0058915    0.0253404
ki1000109-EE               PAKISTAN                       0                    NA                 0.0834703    0.0521549    0.1147857
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0319902    0.0028694    0.0611110
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0525508    0.0330698    0.0720318
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0838323    0.0536457    0.1140190
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0371401    0.0194517    0.0548284
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0197043    0.0083427    0.0310659
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0168577    0.0069263    0.0267892
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0116515    0.0069033    0.0163997
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0202881    0.0139720    0.0266041
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0463151    0.0285711    0.0640592
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0461418    0.0182310    0.0740527
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0058206    0.0009254    0.0107159
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0147087   -0.0225540   -0.0068633
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0179970    0.0093880    0.0266059
ki1135781-COHORTS          INDIA                          0                    NA                 0.0080422    0.0019913    0.0140932
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0141226    0.0084908    0.0197545
ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0060779    0.0006315    0.0115244
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0151427    0.0094445    0.0208409
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0171684    0.0115952    0.0227417


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.3215410    0.0936579    0.4921270
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.4664014    0.1870079    0.6497783
ki1000108-IRC              INDIA                          0                    NA                 0.0830630   -0.0590027    0.2060706
ki1000109-EE               PAKISTAN                       0                    NA                 0.6955860    0.4387525    0.8348894
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1565479    0.0041816    0.2856012
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3159874    0.2088952    0.4085825
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.4412227    0.2832138    0.5644000
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.3348795    0.1759998    0.4631248
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3029535    0.1329716    0.4396103
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2796847    0.1188851    0.4111391
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2305170    0.1416902    0.3101511
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2315285    0.1622886    0.2950455
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2506966    0.1559278    0.3348251
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.4651096    0.1767940    0.6524469
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1234459    0.0191191    0.2166765
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.3300357   -0.5238031   -0.1609078
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.4490459    0.2497462    0.5954031
ki1135781-COHORTS          INDIA                          0                    NA                 0.0719421    0.0175664    0.1233082
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1755331    0.1086927    0.2373609
ki1148112-LCNI-5           MALAWI                         0                    NA                 0.4031705    0.0398585    0.6290074
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0805838    0.0503099    0.1098927
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1599247    0.1092392    0.2077260
