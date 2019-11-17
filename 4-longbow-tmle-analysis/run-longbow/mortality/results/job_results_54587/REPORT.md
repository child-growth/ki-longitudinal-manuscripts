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

studyid                    country                        ever_sunderweight06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  --------------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                                   0      210     240
ki0047075b-MAL-ED          BANGLADESH                     0                                   1       14     240
ki0047075b-MAL-ED          BANGLADESH                     1                                   0       13     240
ki0047075b-MAL-ED          BANGLADESH                     1                                   1        3     240
ki0047075b-MAL-ED          BRAZIL                         0                                   0      201     207
ki0047075b-MAL-ED          BRAZIL                         0                                   1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                                   0        4     207
ki0047075b-MAL-ED          BRAZIL                         1                                   1        0     207
ki0047075b-MAL-ED          INDIA                          0                                   0      187     235
ki0047075b-MAL-ED          INDIA                          0                                   1       17     235
ki0047075b-MAL-ED          INDIA                          1                                   0       20     235
ki0047075b-MAL-ED          INDIA                          1                                   1       11     235
ki0047075b-MAL-ED          NEPAL                          0                                   0      221     235
ki0047075b-MAL-ED          NEPAL                          0                                   1        1     235
ki0047075b-MAL-ED          NEPAL                          1                                   0       12     235
ki0047075b-MAL-ED          NEPAL                          1                                   1        1     235
ki0047075b-MAL-ED          PERU                           0                                   0      259     270
ki0047075b-MAL-ED          PERU                           0                                   1        2     270
ki0047075b-MAL-ED          PERU                           1                                   0        8     270
ki0047075b-MAL-ED          PERU                           1                                   1        1     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                   0      246     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                   1        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                   0       11     259
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
ki1000109-EE               PAKISTAN                       0                                   0      207     374
ki1000109-EE               PAKISTAN                       0                                   1        9     374
ki1000109-EE               PAKISTAN                       1                                   0      118     374
ki1000109-EE               PAKISTAN                       1                                   1       40     374
ki1000109-ResPak           PAKISTAN                       0                                   0      157     234
ki1000109-ResPak           PAKISTAN                       0                                   1       33     234
ki1000109-ResPak           PAKISTAN                       1                                   0       30     234
ki1000109-ResPak           PAKISTAN                       1                                   1       14     234
ki1000304b-SAS-CompFeed    INDIA                          0                                   0     1039    1389
ki1000304b-SAS-CompFeed    INDIA                          0                                   1      130    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                   0      119    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                   1      101    1389
ki1000304b-SAS-FoodSuppl   INDIA                          0                                   0      261     400
ki1000304b-SAS-FoodSuppl   INDIA                          0                                   1       31     400
ki1000304b-SAS-FoodSuppl   INDIA                          1                                   0       63     400
ki1000304b-SAS-FoodSuppl   INDIA                          1                                   1       45     400
ki1017093-NIH-Birth        BANGLADESH                     0                                   0      428     542
ki1017093-NIH-Birth        BANGLADESH                     0                                   1       34     542
ki1017093-NIH-Birth        BANGLADESH                     1                                   0       53     542
ki1017093-NIH-Birth        BANGLADESH                     1                                   1       27     542
ki1017093b-PROVIDE         BANGLADESH                     0                                   0      546     615
ki1017093b-PROVIDE         BANGLADESH                     0                                   1       26     615
ki1017093b-PROVIDE         BANGLADESH                     1                                   0       29     615
ki1017093b-PROVIDE         BANGLADESH                     1                                   1       14     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                                   0      645     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                                   1       29     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                   0       41     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                   1       15     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   0     1880    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   1       76    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   0       36    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   1       26    2018
ki1101329-Keneba           GAMBIA                         0                                   0     2125    2441
ki1101329-Keneba           GAMBIA                         0                                   1      156    2441
ki1101329-Keneba           GAMBIA                         1                                   0       99    2441
ki1101329-Keneba           GAMBIA                         1                                   1       61    2441
ki1112895-Guatemala BSC    GUATEMALA                      0                                   0      260     274
ki1112895-Guatemala BSC    GUATEMALA                      0                                   1        2     274
ki1112895-Guatemala BSC    GUATEMALA                      1                                   0       10     274
ki1112895-Guatemala BSC    GUATEMALA                      1                                   1        2     274
ki1113344-GMS-Nepal        NEPAL                          0                                   0      437     590
ki1113344-GMS-Nepal        NEPAL                          0                                   1       70     590
ki1113344-GMS-Nepal        NEPAL                          1                                   0       44     590
ki1113344-GMS-Nepal        NEPAL                          1                                   1       39     590
ki1114097-CMIN             BANGLADESH                     0                                   0      194     252
ki1114097-CMIN             BANGLADESH                     0                                   1       11     252
ki1114097-CMIN             BANGLADESH                     1                                   0       33     252
ki1114097-CMIN             BANGLADESH                     1                                   1       14     252
ki1114097-CONTENT          PERU                           0                                   0      212     215
ki1114097-CONTENT          PERU                           0                                   1        0     215
ki1114097-CONTENT          PERU                           1                                   0        3     215
ki1114097-CONTENT          PERU                           1                                   1        0     215
ki1119695-PROBIT           BELARUS                        0                                   0    16440   16596
ki1119695-PROBIT           BELARUS                        0                                   1       21   16596
ki1119695-PROBIT           BELARUS                        1                                   0      132   16596
ki1119695-PROBIT           BELARUS                        1                                   1        3   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                                   0     9894   10814
ki1126311-ZVITAMBO         ZIMBABWE                       0                                   1      345   10814
ki1126311-ZVITAMBO         ZIMBABWE                       1                                   0      452   10814
ki1126311-ZVITAMBO         ZIMBABWE                       1                                   1      123   10814
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
ki1148112-LCNI-5           MALAWI                         0                                   0      770     796
ki1148112-LCNI-5           MALAWI                         0                                   1        8     796
ki1148112-LCNI-5           MALAWI                         1                                   0       13     796
ki1148112-LCNI-5           MALAWI                         1                                   1        5     796
kiGH5241-JiVitA-3          BANGLADESH                     0                                   0    12391   17274
kiGH5241-JiVitA-3          BANGLADESH                     0                                   1     2246   17274
kiGH5241-JiVitA-3          BANGLADESH                     1                                   0     1637   17274
kiGH5241-JiVitA-3          BANGLADESH                     1                                   1     1000   17274
kiGH5241-JiVitA-4          BANGLADESH                     0                                   0     4334    5263
kiGH5241-JiVitA-4          BANGLADESH                     0                                   1      403    5263
kiGH5241-JiVitA-4          BANGLADESH                     1                                   0      364    5263
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




# Results Detail

## Results Plots
![](/tmp/c106e736-28a1-4450-9aea-01f37599b710/7a4c8d40-11bd-4489-96e4-857b0463d1ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c106e736-28a1-4450-9aea-01f37599b710/7a4c8d40-11bd-4489-96e4-857b0463d1ab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c106e736-28a1-4450-9aea-01f37599b710/7a4c8d40-11bd-4489-96e4-857b0463d1ab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c106e736-28a1-4450-9aea-01f37599b710/7a4c8d40-11bd-4489-96e4-857b0463d1ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0848760   0.0462905   0.1234615
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3341364   0.1464441   0.5218287
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0394017   0.0169724   0.0618310
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2025808   0.1121601   0.2930015
ki1000108-IRC              INDIA                          0                    NA                0.1086777   0.0758891   0.1414663
ki1000108-IRC              INDIA                          1                    NA                0.2143086   0.1267670   0.3018503
ki1000109-EE               PAKISTAN                       0                    NA                0.0416667   0.0149824   0.0683509
ki1000109-EE               PAKISTAN                       1                    NA                0.2531646   0.1852731   0.3210560
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1721287   0.1181948   0.2260627
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3217940   0.1863126   0.4572753
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1154309   0.0987201   0.1321418
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4163051   0.3557927   0.4768174
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1078238   0.0722728   0.1433748
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4375307   0.3423432   0.5327181
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0736175   0.0497414   0.0974937
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3312336   0.2256524   0.4368149
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0452995   0.0282442   0.0623547
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3206655   0.1797169   0.4616141
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0432992   0.0279832   0.0586152
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2743652   0.1563575   0.3923729
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0389086   0.0303409   0.0474763
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4327379   0.3030659   0.5624099
ki1101329-Keneba           GAMBIA                         0                    NA                0.0696576   0.0591260   0.0801893
ki1101329-Keneba           GAMBIA                         1                    NA                0.3334521   0.2555885   0.4113157
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1386601   0.1085603   0.1687599
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4547440   0.3448747   0.5646132
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0533383   0.0224168   0.0842598
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3011830   0.1656712   0.4366947
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0339184   0.0304169   0.0374198
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1918797   0.1590619   0.2246975
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0214463   0.0120662   0.0308263
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2264650   0.1456261   0.3073039
ki1135781-COHORTS          INDIA                          0                    NA                0.0703429   0.0638964   0.0767895
ki1135781-COHORTS          INDIA                          1                    NA                0.4151821   0.3794490   0.4509152
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0594783   0.0504339   0.0685228
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3446947   0.2755155   0.4138738
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0102828   0.0031722   0.0173933
ki1148112-LCNI-5           MALAWI                         1                    NA                0.2777778   0.0904991   0.4650565
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1538940   0.1474033   0.1603847
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3695881   0.3477336   0.3914427
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0855362   0.0755905   0.0954818
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2973126   0.2530177   0.3416076


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0888980   0.0776057   0.1001903
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432772   0.0394419   0.0471125
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0163317   0.0075211   0.0251422
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  3.936759    1.908082    8.122329
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  5.141425    2.487916   10.625055
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  1.971965    1.185102    3.281277
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  6.075949    3.034465   12.165950
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  1.869496    1.108691    3.152379
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.606530    2.912688    4.465655
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  4.057830    2.729954    6.031599
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.499386    2.854475    7.092188
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  7.078794    3.964949   12.638076
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.336492    3.625617   11.074289
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 11.121909    7.666669   16.134368
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  4.787013    3.626177    6.319465
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.279559    2.372997    4.532457
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.646657    2.711387   11.759565
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.657103    4.633492    6.906846
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 10.559653    6.020679   18.520547
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  5.902257    5.206436    6.691071
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.795298    4.508260    7.449764
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 27.013889   10.283843   70.960844
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.401576    2.234594    2.581036
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.475871    2.871893    4.206869


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0342729    0.0084107   0.0601351
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0356653    0.0150303   0.0563004
ki1000108-IRC              INDIA                          0                    NA                0.0083955   -0.0072739   0.0240649
ki1000109-EE               PAKISTAN                       0                    NA                0.0893494    0.0567594   0.1219393
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0287260    0.0002329   0.0572190
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0508758    0.0348179   0.0669337
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0821762    0.0519772   0.1123752
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0389286    0.0213765   0.0564807
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0197412    0.0083631   0.0311193
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0169747    0.0070339   0.0269156
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0116365    0.0068899   0.0163831
ki1101329-Keneba           GAMBIA                         0                    NA                0.0192404    0.0133739   0.0251068
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0460857    0.0279731   0.0641982
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0458681    0.0181718   0.0735643
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0093589    0.0074266   0.0112912
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0186320    0.0101030   0.0271609
ki1135781-COHORTS          INDIA                          0                    NA                0.0414448    0.0365676   0.0463220
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0209773    0.0154850   0.0264697
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0060489    0.0006088   0.0114889
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0340185    0.0306480   0.0373889
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0218171    0.0168756   0.0267585


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.2876478    0.0605421   0.4598527
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4751133    0.1951382   0.6576978
ki1000108-IRC              INDIA                          0                    NA                0.0717115   -0.0706359   0.1951331
ki1000109-EE               PAKISTAN                       0                    NA                0.6819728    0.4362210   0.8206011
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1430186   -0.0087220   0.2719332
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3059154    0.2172893   0.3845065
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4325063    0.2746208   0.5560265
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3458902    0.1933101   0.4696108
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3035209    0.1333781   0.4402598
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2816265    0.1206242   0.4131514
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2302201    0.1414172   0.3098381
ki1101329-Keneba           GAMBIA                         0                    NA                0.2164318    0.1530619   0.2750602
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2494545    0.1516805   0.3359595
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4623501    0.1773994   0.6485933
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2162538    0.1746024   0.2558035
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4648899    0.2713013   0.6070490
ki1135781-COHORTS          INDIA                          0                    NA                0.3707455    0.3322206   0.4070478
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2607317    0.1970969   0.3193230
ki1148112-LCNI-5           MALAWI                         0                    NA                0.3703777    0.0352375   0.5890965
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1810336    0.1635459   0.1981557
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2032269    0.1574795   0.2464903
