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

**Intervention Variable:** ever_sunderweight06

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

studyid                     country                        ever_sunderweight06    dead   n_cell       n
--------------------------  -----------------------------  --------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      245     265
ki0047075b-MAL-ED           BANGLADESH                     0                         1        2     265
ki0047075b-MAL-ED           BANGLADESH                     1                         0       17     265
ki0047075b-MAL-ED           BANGLADESH                     1                         1        1     265
ki0047075b-MAL-ED           INDIA                          0                         0      219     251
ki0047075b-MAL-ED           INDIA                          0                         1        1     251
ki0047075b-MAL-ED           INDIA                          1                         0       30     251
ki0047075b-MAL-ED           INDIA                          1                         1        1     251
ki0047075b-MAL-ED           PERU                           0                         0      292     303
ki0047075b-MAL-ED           PERU                           0                         1        2     303
ki0047075b-MAL-ED           PERU                           1                         0        9     303
ki0047075b-MAL-ED           PERU                           1                         1        0     303
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      302     314
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0       11     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        1     314
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      251     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        2     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        8     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        1     262
ki1000304-VITAMIN-A         INDIA                          0                         0     2813    3794
ki1000304-VITAMIN-A         INDIA                          0                         1       25    3794
ki1000304-VITAMIN-A         INDIA                          1                         0      924    3794
ki1000304-VITAMIN-A         INDIA                          1                         1       32    3794
ki1000304b-SAS-CompFeed     INDIA                          0                         0     1250    1530
ki1000304b-SAS-CompFeed     INDIA                          0                         1       27    1530
ki1000304b-SAS-CompFeed     INDIA                          1                         0      232    1530
ki1000304b-SAS-CompFeed     INDIA                          1                         1       21    1530
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      304     405
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        2     405
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0       97     405
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        2     405
ki1017093b-PROVIDE          BANGLADESH                     0                         0      647     699
ki1017093b-PROVIDE          BANGLADESH                     0                         1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                         0       48     699
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2326    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       69    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396
ki1101329-Keneba            GAMBIA                         0                         0     2220    2422
ki1101329-Keneba            GAMBIA                         0                         1       41    2422
ki1101329-Keneba            GAMBIA                         1                         0      144    2422
ki1101329-Keneba            GAMBIA                         1                         1       17    2422
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0      315     337
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1        2     337
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0       20     337
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        0     337
ki1113344-GMS-Nepal         NEPAL                          0                         0      528     600
ki1113344-GMS-Nepal         NEPAL                          0                         1        2     600
ki1113344-GMS-Nepal         NEPAL                          1                         0       67     600
ki1113344-GMS-Nepal         NEPAL                          1                         1        3     600
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0    12420   14075
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      816   14075
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0      547   14075
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      292   14075
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1646    1815
ki1148112-iLiNS-DOSE        MALAWI                         0                         1      106    1815
ki1148112-iLiNS-DOSE        MALAWI                         1                         0       55    1815
ki1148112-iLiNS-DOSE        MALAWI                         1                         1        8    1815
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1093    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       30    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0       63    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        9    1195
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    22272   27092
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      421   27092
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     4064   27092
kiGH5241-JiVitA-3           BANGLADESH                     1                         1      335   27092
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     4731    5268
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       31    5268
kiGH5241-JiVitA-4           BANGLADESH                     1                         0      490    5268
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       16    5268


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
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL

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
![](/tmp/320b6c2c-b27f-4d99-a840-72e80ea8bb53/dd97d219-8fab-42d4-a084-9cd91ee74658/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/320b6c2c-b27f-4d99-a840-72e80ea8bb53/dd97d219-8fab-42d4-a084-9cd91ee74658/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/320b6c2c-b27f-4d99-a840-72e80ea8bb53/dd97d219-8fab-42d4-a084-9cd91ee74658/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/320b6c2c-b27f-4d99-a840-72e80ea8bb53/dd97d219-8fab-42d4-a084-9cd91ee74658/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0093281   0.0052114   0.0134449
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0288338   0.0157569   0.0419107
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0251012   0.0080184   0.0421841
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0762980   0.0485235   0.1040724
ki1101329-Keneba          GAMBIA       0                    NA                0.0181258   0.0126223   0.0236293
ki1101329-Keneba          GAMBIA       1                    NA                0.0891890   0.0467608   0.1316172
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0890644   0.0842455   0.0938832
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.4723488   0.4320166   0.5126810
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1269841   0.0447441   0.2092242
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0267142   0.0172794   0.0361489
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.1250000   0.0485772   0.2014228
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0219537   0.0201538   0.0237536
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0658942   0.0539128   0.0778757
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0063999   0.0040194   0.0087804
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0406600   0.0109943   0.0703257


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0150237   0.0111524   0.0188950
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0313725   0.0186158   0.0441293
ki1101329-Keneba          GAMBIA       NA                   NA                0.0239472   0.0178572   0.0300371
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0787211   0.0742720   0.0831703
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0628099   0.0516450   0.0739749
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0326360   0.0225576   0.0427143
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0279049   0.0259124   0.0298974
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089218   0.0062179   0.0116257


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.091051   1.641882    5.819293
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.039609   1.543602    5.985494
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 4.920559   2.798085    8.653026
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 5.303454   4.791887    5.869634
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 2.098832   1.070316    4.115697
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 4.679167   2.309568    9.479956
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.001510   2.470320    3.646921
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 6.353199   2.791486   14.459371


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.0056956    0.0020595    0.0093316
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0062713   -0.0007310    0.0132736
ki1101329-Keneba          GAMBIA       0                    NA                 0.0058214    0.0025229    0.0091198
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0103432   -0.0133373   -0.0073492
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0023076   -0.0006271    0.0052424
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0059218    0.0010964    0.0107473
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0059512    0.0047916    0.0071109
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0025219    0.0009365    0.0041073


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.3791057    0.1124916    0.5656269
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.1998979   -0.1206858    0.4287754
ki1101329-Keneba          GAMBIA       0                    NA                 0.2430920    0.1087190    0.3572064
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.1313909   -0.1723537   -0.0918592
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0367400   -0.0107169    0.0819686
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.1814508    0.0317756    0.3079881
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.2132681    0.1750803    0.2496882
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.2826639    0.1091412    0.4223876
