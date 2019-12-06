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

**Outcome Variable:** dead0plus

## Predictor Variables

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_impfloor
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        pers_wasted06    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      251     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                        1        2     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                        0       10     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                        1        0     263  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                        0      231     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                        1        2     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                        0       18     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                        1        0     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                        0      300     302  dead0plus        
ki0047075b-MAL-ED           PERU                           0                        1        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                        0        0     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                        1        0     302  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      305     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0        7     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        0     312  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      258     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        0     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     261  dead0plus        
ki1000109-EE                PAKISTAN                       0                        0      349     380  dead0plus        
ki1000109-EE                PAKISTAN                       0                        1        4     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                        0       27     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                        1        0     380  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                        0     2967    3895  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                        1       36    3895  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                        0      853    3895  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                        1       39    3895  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                        0     1340    1508  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                        1       24    1508  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                        0      132    1508  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                        1       12    1508  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      316     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        2     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0       96     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        4     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                        0      668     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                        1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                        0       27     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                        1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2327    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0       68    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                        0     2305    2480  dead0plus        
ki1101329-Keneba            GAMBIA                         0                        1       77    2480  dead0plus        
ki1101329-Keneba            GAMBIA                         1                        0       89    2480  dead0plus        
ki1101329-Keneba            GAMBIA                         1                        1        9    2480  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0      296     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        2     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0       40     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0     338  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                        0      592     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                        1        5     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                        0       87     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                        1        2     686  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0    12010   13862  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      855   13862  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0      796   13862  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1      201   13862  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1675    1814  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                        1      110    1814  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                        0       25    1814  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                        1        4    1814  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0     1088    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       36    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0       52    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1        6    1182  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    24532   26918  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      478   26918  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                        0     1785   26918  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                        1      123   26918  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     4865    5252  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       43    5252  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                        0      339    5252  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                        1        5    5252  dead0plus        


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
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
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/23e222e9-8ba5-4dba-9ad1-6f41d46c6eb4/6e783638-7245-425c-9766-897465fec2be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/23e222e9-8ba5-4dba-9ad1-6f41d46c6eb4/6e783638-7245-425c-9766-897465fec2be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/23e222e9-8ba5-4dba-9ad1-6f41d46c6eb4/6e783638-7245-425c-9766-897465fec2be/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/23e222e9-8ba5-4dba-9ad1-6f41d46c6eb4/6e783638-7245-425c-9766-897465fec2be/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0120232   0.0081297   0.0159166
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0427748   0.0293997   0.0561498
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0175383   0.0097705   0.0253061
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0960108   0.0436683   0.1483533
ki1101329-Keneba          GAMBIA       0                    NA                0.0323258   0.0252218   0.0394298
ki1101329-Keneba          GAMBIA       1                    NA                0.0918367   0.0346477   0.1490258
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0666441   0.0623358   0.0709524
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2241778   0.1944994   0.2538562
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0320285   0.0217306   0.0423264
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.1034483   0.0250390   0.1818575
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0191290   0.0174329   0.0208251
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0634735   0.0517933   0.0751537
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0087612   0.0059408   0.0115816
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0145349   0.0031924   0.0258774


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1101329-Keneba          GAMBIA       NA                   NA                0.0346774   0.0274751   0.0418797
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0761795   0.0717631   0.0805958
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0355330   0.0249750   0.0460910
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0223271   0.0205277   0.0241264
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0091394   0.0063930   0.0118858


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.557689   2.2677815   5.581292
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 5.474342   3.2934628   9.099365
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.840975   1.4678255   5.498706
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 3.363805   2.9042119   3.896129
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 3.229885   1.4178129   7.357923
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.318179   2.7119518   4.059921
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.659005   0.7165587   3.840993


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0072323    0.0040052   0.0104593
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0063344    0.0008249   0.0118438
ki1101329-Keneba          GAMBIA       0                    NA                0.0023516    0.0000291   0.0046742
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0095354    0.0076627   0.0114081
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0035045   -0.0004745   0.0074836
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0031981    0.0023739   0.0040222
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0003782   -0.0003841   0.0011404


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.3755959    0.2120079   0.5052229
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2653393    0.0789971   0.4139798
ki1101329-Keneba          GAMBIA       0                    NA                0.0678148   -0.0001263   0.1311405
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1251699    0.1011610   0.1485376
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0986274   -0.0164951   0.2007117
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1432365    0.1079298   0.1771458
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0413780   -0.0462224   0.1216436
