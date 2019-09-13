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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* impfloor
* earlybf
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_impfloor
* delta_earlybf
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        pers_wasted06    dead   n_cell       n
--------------------------  -----------------------------  --------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      252     263
ki0047075b-MAL-ED           BANGLADESH                     0                   1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                   0        9     263
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     263
ki0047075b-MAL-ED           INDIA                          0                   0      230     251
ki0047075b-MAL-ED           INDIA                          0                   1        2     251
ki0047075b-MAL-ED           INDIA                          1                   0       19     251
ki0047075b-MAL-ED           INDIA                          1                   1        0     251
ki0047075b-MAL-ED           PERU                           0                   0      300     302
ki0047075b-MAL-ED           PERU                           0                   1        2     302
ki0047075b-MAL-ED           PERU                           1                   0        0     302
ki0047075b-MAL-ED           PERU                           1                   1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      306     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0        6     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      258     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     261
ki1000304-VITAMIN-A         INDIA                          0                   0     2812    3473
ki1000304-VITAMIN-A         INDIA                          0                   1       35    3473
ki1000304-VITAMIN-A         INDIA                          1                   0      603    3473
ki1000304-VITAMIN-A         INDIA                          1                   1       23    3473
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1340    1508
ki1000304b-SAS-CompFeed     INDIA                          0                   1       24    1508
ki1000304b-SAS-CompFeed     INDIA                          1                   0      132    1508
ki1000304b-SAS-CompFeed     INDIA                          1                   1       12    1508
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      316     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0       96     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                   0      669     700
ki1017093b-PROVIDE          BANGLADESH                     0                   1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1                   0       27     700
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2327    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0       68    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396
ki1101329-Keneba            GAMBIA                         0                   0     2324    2451
ki1101329-Keneba            GAMBIA                         0                   1       53    2451
ki1101329-Keneba            GAMBIA                         1                   0       70    2451
ki1101329-Keneba            GAMBIA                         1                   1        4    2451
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0      296     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0       40     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                   0      525     602
ki1113344-GMS-Nepal         NEPAL                          0                   1        4     602
ki1113344-GMS-Nepal         NEPAL                          1                   0       72     602
ki1113344-GMS-Nepal         NEPAL                          1                   1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0    12001   13858
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      846   13858
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0      810   13858
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1      201   13858
ki1148112-iLiNS-DOSE        MALAWI                         0                   0     1675    1814
ki1148112-iLiNS-DOSE        MALAWI                         0                   1      110    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       25    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        4    1814
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1092    1183
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       33    1183
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       53    1183
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        5    1183
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    24564   26922
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      444   26922
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     1797   26922
kiGH5241-JiVitA-3           BANGLADESH                     1                   1      117   26922
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4866    5252
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       42    5252
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      339    5252
kiGH5241-JiVitA-4           BANGLADESH                     1                   1        5    5252


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI

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
![](/tmp/e3a06477-f976-493c-a95b-cd652beb0988/d4a93d09-c1cb-48c6-8d9f-11e03b76ef91/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3a06477-f976-493c-a95b-cd652beb0988/d4a93d09-c1cb-48c6-8d9f-11e03b76ef91/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3a06477-f976-493c-a95b-cd652beb0988/d4a93d09-c1cb-48c6-8d9f-11e03b76ef91/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3a06477-f976-493c-a95b-cd652beb0988/d4a93d09-c1cb-48c6-8d9f-11e03b76ef91/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0124545   0.0084107   0.0164983
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0343884   0.0199381   0.0488388
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0173486   0.0088284   0.0258687
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0744888   0.0374677   0.1115100
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0649331   0.0605383   0.0693280
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2310510   0.2028946   0.2592073
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0293333   0.0194689   0.0391977
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0862069   0.0139444   0.1584693
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0182378   0.0166274   0.0198483
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0550233   0.0431058   0.0669408
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0085575   0.0057769   0.0113380
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0145349   0.0031924   0.0258774


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0167003   0.0124378   0.0209627
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0755520   0.0711518   0.0799523
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0321217   0.0220698   0.0421736
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0208380   0.0190898   0.0225861
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089490   0.0062382   0.0116597


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 2.761133   1.623976   4.694563
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 4.293659   2.340044   7.878275
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 3.558291   3.096184   4.089368
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 2.938871   1.191057   7.251514
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.016985   2.402151   3.789186
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.698505   0.732828   3.936693


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0042458    0.0014863   0.0070053
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0065241    0.0013775   0.0116707
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0106189    0.0084646   0.0127732
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0027884   -0.0008552   0.0064320
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0026001    0.0018171   0.0033832
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0003915   -0.0003701   0.0011531


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2542350    0.0863950   0.3912408
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2732878    0.0843776   0.4232223
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1405508    0.1124489   0.1677628
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0868070   -0.0304690   0.1907361
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1247783    0.0892550   0.1589161
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0437497   -0.0456966   0.1255450
