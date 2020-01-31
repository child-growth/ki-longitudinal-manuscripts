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

studyid                    country                        ever_sunderweight06    pers_wasted624   n_cell       n  outcome_variable 
-------------------------  -----------------------------  --------------------  ---------------  -------  ------  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                                   0      210     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     0                                   1       14     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                                   0       13     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                                   1        3     240  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                                   0      201     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                                   1        2     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                                   0        4     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                                   1        0     207  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                                   0      187     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                                   1       17     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                                   0       20     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                                   1       11     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                                   0      221     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                                   1        1     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                                   0       12     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                                   1        1     235  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                                   0      259     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                                   1        2     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                                   0        8     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                                   1        1     270  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                   0      246     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                   1        1     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                   0       11     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                   1        1     259  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                   0      237     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                   1        0     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                   0        8     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                   1        0     245  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                                   0      285     373  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                                   1       12     373  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                                   0       60     373  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                                   1       16     373  pers_wasted624   
ki1000108-IRC              INDIA                          0                                   0      307     410  pers_wasted624   
ki1000108-IRC              INDIA                          0                                   1       37     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                                   0       55     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                                   1       11     410  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                                   0      207     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                                   1        9     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                                   0      118     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                                   1       40     374  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                                   0      157     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                                   1       33     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                                   0       30     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                                   1       14     234  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                                   0     1039    1389  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                                   1      130    1389  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                                   0      119    1389  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                                   1      101    1389  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                                   0      261     400  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                                   1       31     400  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                                   0       63     400  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                                   1       45     400  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                                   0      428     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                                   1       34     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                                   0       53     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                                   1       27     542  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                                   0      546     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                                   1       26     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                                   0       29     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                                   1       14     615  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                                   0      645     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                                   1       29     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                                   0       41     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                                   1       15     730  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   0     1880    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   1       76    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   0       36    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   1       26    2018  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                                   0     2125    2441  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                                   1      156    2441  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                                   0       99    2441  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                                   1       61    2441  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                                   0      260     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                                   1        2     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                                   0       10     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                                   1        2     274  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                                   0      437     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                                   1       70     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                                   0       44     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                                   1       39     590  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                                   0      194     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                                   1       11     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                                   0       33     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                                   1       14     252  pers_wasted624   
ki1114097-CONTENT          PERU                           0                                   0      212     215  pers_wasted624   
ki1114097-CONTENT          PERU                           0                                   1        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                                   0        3     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                                   1        0     215  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                                   0    16440   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                                   1       21   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                                   0      132   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                                   1        3   16596  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                                   0     9894   10814  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                                   1      345   10814  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                                   0      452   10814  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                                   1      123   10814  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                                   0      904    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                                   1       20    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                                   0       78    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                                   1       21    1023  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                                   0     5698    6897  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                                   1      423    6897  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                                   0      428    6897  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                                   1      348    6897  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                                   0     2460    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                                   1      154    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                                   0      123    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                                   1       72    2809  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                                   0      770     796  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                                   1        8     796  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                                   0       13     796  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                                   1        5     796  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                                   0    12391   17274  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                                   1     2246   17274  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                                   0     1637   17274  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                                   1     1000   17274  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                                   0     4334    5263  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                                   1      403    5263  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                                   0      364    5263  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                                   1      162    5263  pers_wasted624   


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
![](/tmp/09a1de1d-0d95-4d55-94e2-3d8c3cabc2bc/a5e7863c-3eb0-44b5-9c27-cd30beb3492f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/09a1de1d-0d95-4d55-94e2-3d8c3cabc2bc/a5e7863c-3eb0-44b5-9c27-cd30beb3492f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/09a1de1d-0d95-4d55-94e2-3d8c3cabc2bc/a5e7863c-3eb0-44b5-9c27-cd30beb3492f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/09a1de1d-0d95-4d55-94e2-3d8c3cabc2bc/a5e7863c-3eb0-44b5-9c27-cd30beb3492f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0843774   0.0459940   0.1227608
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3360259   0.1539426   0.5181091
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0395333   0.0171355   0.0619311
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2239795   0.1313334   0.3166257
ki1000108-IRC              INDIA                          0                    NA                0.1080583   0.0752791   0.1408375
ki1000108-IRC              INDIA                          1                    NA                0.1885957   0.0999442   0.2772473
ki1000109-EE               PAKISTAN                       0                    NA                0.0416667   0.0149824   0.0683509
ki1000109-EE               PAKISTAN                       1                    NA                0.2531646   0.1852731   0.3210560
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1714364   0.1175645   0.2253084
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3320435   0.1896742   0.4744128
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1154309   0.0987201   0.1321418
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4163051   0.3557927   0.4768174
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1052691   0.0698853   0.1406528
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4226951   0.3277647   0.5176256
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0734343   0.0495594   0.0973092
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3362755   0.2303107   0.4422403
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0452333   0.0281931   0.0622735
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3372597   0.1895571   0.4849623
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0433699   0.0280318   0.0587080
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2626611   0.1443771   0.3809451
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0388983   0.0303282   0.0474685
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3947152   0.2736770   0.5157534
ki1101329-Keneba           GAMBIA                         0                    NA                0.0695982   0.0590959   0.0801005
ki1101329-Keneba           GAMBIA                         1                    NA                0.3402356   0.2650005   0.4154707
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1388060   0.1086384   0.1689736
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4646626   0.3537638   0.5755614
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0535026   0.0224967   0.0845086
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3293149   0.1973441   0.4612857
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0340156   0.0305013   0.0375300
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1884415   0.1549537   0.2219294
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0215398   0.0121419   0.0309378
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2249924   0.1443988   0.3055860
ki1135781-COHORTS          INDIA                          0                    NA                0.0705297   0.0640659   0.0769935
ki1135781-COHORTS          INDIA                          1                    NA                0.4154674   0.3796349   0.4512998
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0594704   0.0504228   0.0685180
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3531804   0.2847632   0.4215976
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0102828   0.0031722   0.0173933
ki1148112-LCNI-5           MALAWI                         1                    NA                0.2777778   0.0904991   0.4650565
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1539694   0.1474597   0.1604790
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3734414   0.3517521   0.3951306
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0855396   0.0755846   0.0954945
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2994760   0.2549425   0.3440095


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


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  3.982414    1.9630584    8.079039
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  5.665595    2.7986664   11.469379
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  1.745315    0.9962149    3.057697
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  6.075949    3.0344654   12.165950
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  1.936832    1.1422467    3.284156
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.606530    2.9126881    4.465655
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  4.015379    2.6801150    6.015886
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.579268    2.9085002    7.209798
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  7.456000    4.1788829   13.303061
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.056294    3.4140382   10.743494
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.147355    6.9550240   14.804954
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  4.888570    3.7423485    6.385862
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.347568    2.4247576    4.621580
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  6.155117    3.0342064   12.486118
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.539850    4.5115600    6.802512
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 10.445412    5.9451310   18.352268
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  5.890670    5.1955792    6.678754
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.938762    4.6451431    7.592639
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 27.013889   10.2838431   70.960844
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.425427    2.2589147    2.604213
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.501024    2.8934485    4.236179


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0347715    0.0091312   0.0604118
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0355337    0.0149213   0.0561462
ki1000108-IRC              INDIA                          0                    NA                0.0090149   -0.0066236   0.0246533
ki1000109-EE               PAKISTAN                       0                    NA                0.0893494    0.0567594   0.1219393
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0294183    0.0011130   0.0577235
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0508758    0.0348179   0.0669337
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0847309    0.0545761   0.1148858
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0391118    0.0214965   0.0567271
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0198073    0.0084183   0.0311963
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0169040    0.0069576   0.0268505
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0116468    0.0069003   0.0163932
ki1101329-Keneba           GAMBIA                         0                    NA                0.0192998    0.0134773   0.0251223
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0459397    0.0276930   0.0641865
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0457037    0.0179320   0.0734754
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0092616    0.0073262   0.0111969
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0185384    0.0099804   0.0270964
ki1135781-COHORTS          INDIA                          0                    NA                0.0412580    0.0363772   0.0461388
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0209853    0.0154882   0.0264824
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0060489    0.0006088   0.0114889
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0339431    0.0305626   0.0373236
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0218137    0.0168592   0.0267681


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.2918323    0.0674308   0.4622367
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4733603    0.1943428   0.6557476
ki1000108-IRC              INDIA                          0                    NA                0.0770021   -0.0651103   0.2001531
ki1000109-EE               PAKISTAN                       0                    NA                0.6819728    0.4362210   0.8206011
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1464654   -0.0043483   0.2746327
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3059154    0.2172893   0.3845065
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4459524    0.2881470   0.5687750
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3475180    0.1943637   0.4715572
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3045375    0.1343369   0.4412744
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2804533    0.1191715   0.4122041
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2304232    0.1415959   0.3100586
ki1101329-Keneba           GAMBIA                         0                    NA                0.2171006    0.1543288   0.2752131
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2486646    0.1500684   0.3358232
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4606935    0.1744072   0.6477059
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2140062    0.1721624   0.2537350
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4625550    0.2680513   0.6053725
ki1135781-COHORTS          INDIA                          0                    NA                0.3690745    0.3304407   0.4054792
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2608307    0.1971225   0.3194837
ki1148112-LCNI-5           MALAWI                         0                    NA                0.3703777    0.0352375   0.5890965
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1806326    0.1630626   0.1978337
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2031953    0.1573042   0.2465873
