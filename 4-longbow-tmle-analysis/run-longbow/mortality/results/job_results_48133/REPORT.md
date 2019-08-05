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

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* impfloor
* earlybf
* hfoodsec
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_impfloor
* delta_earlybf
* delta_hfoodsec
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted06    dead   n_cell       n
--------------------------  -----------------------------  --------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      185     239
ki0047075b-MAL-ED           BANGLADESH                     0                   1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                   0       54     239
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     239
ki0047075b-MAL-ED           INDIA                          0                   0      161     235
ki0047075b-MAL-ED           INDIA                          0                   1        0     235
ki0047075b-MAL-ED           INDIA                          1                   0       74     235
ki0047075b-MAL-ED           INDIA                          1                   1        0     235
ki0047075b-MAL-ED           PERU                           0                   0      259     270
ki0047075b-MAL-ED           PERU                           0                   1        1     270
ki0047075b-MAL-ED           PERU                           1                   0       10     270
ki0047075b-MAL-ED           PERU                           1                   1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      233     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0       26     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      234     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       11     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     245
ki1000304-VITAMIN-A         INDIA                          0                   0     2302    2710
ki1000304-VITAMIN-A         INDIA                          0                   1       11    2710
ki1000304-VITAMIN-A         INDIA                          1                   0      395    2710
ki1000304-VITAMIN-A         INDIA                          1                   1        2    2710
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1069    1381
ki1000304b-SAS-CompFeed     INDIA                          0                   1        5    1381
ki1000304b-SAS-CompFeed     INDIA                          1                   0      301    1381
ki1000304b-SAS-CompFeed     INDIA                          1                   1        6    1381
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      326     401
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        1     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0       71     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        3     401
ki1017093b-PROVIDE          BANGLADESH                     0                   0      456     613
ki1017093b-PROVIDE          BANGLADESH                     0                   1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                   0      157     613
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     1721    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      295    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2017
ki1101329-Keneba            GAMBIA                         0                   0     1851    2227
ki1101329-Keneba            GAMBIA                         0                   1       23    2227
ki1101329-Keneba            GAMBIA                         1                   0      345    2227
ki1101329-Keneba            GAMBIA                         1                   1        8    2227
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0       39      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0        4      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                   0      413     590
ki1113344-GMS-Nepal         NEPAL                          0                   1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                   0      175     590
ki1113344-GMS-Nepal         NEPAL                          1                   1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0     8476   10593
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      230   10593
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0     1824   10593
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1       63   10593
ki1148112-iLiNS-DOSE        MALAWI                         0                   0      978     994
ki1148112-iLiNS-DOSE        MALAWI                         0                   1        5     994
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       10     994
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        1     994
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1026    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       16    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       39    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        0    1081
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    14252   17173
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      120   17173
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     2770   17173
kiGH5241-JiVitA-3           BANGLADESH                     1                   1       31   17173
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4501    5082
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       32    5082
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      541    5082
kiGH5241-JiVitA-4           BANGLADESH                     1                   1        8    5082


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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

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
![](/tmp/e6a2fa6b-0892-4bf0-bfef-40ea6ba06c9e/1b7b1176-f4f9-483e-aaf8-609c294e674e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e6a2fa6b-0892-4bf0-bfef-40ea6ba06c9e/1b7b1176-f4f9-483e-aaf8-609c294e674e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e6a2fa6b-0892-4bf0-bfef-40ea6ba06c9e/1b7b1176-f4f9-483e-aaf8-609c294e674e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e6a2fa6b-0892-4bf0-bfef-40ea6ba06c9e/1b7b1176-f4f9-483e-aaf8-609c294e674e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0046555   -0.0002940   0.0096049
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0195440    0.0089488   0.0301391
ki1101329-Keneba          GAMBIA       0                    NA                0.0122732    0.0072871   0.0172593
ki1101329-Keneba          GAMBIA       1                    NA                0.0226629    0.0071341   0.0381917
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0254761    0.0218912   0.0290610
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0429490    0.0216621   0.0642360
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0083970    0.0069103   0.0098836
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0115397    0.0071309   0.0159485
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0070593    0.0044264   0.0096923
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0145719    0.0024499   0.0266940


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0079652   0.0042817   0.0116488
ki1101329-Keneba          GAMBIA       NA                   NA                0.0139201   0.0090531   0.0187871
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0276598   0.0245366   0.0307829
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0087929   0.0073738   0.0102119
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0078709   0.0051970   0.0105448


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 4.198046   1.0211980   17.257757
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.846533   0.8325351    4.095543
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.685855   1.0071264    2.821998
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.374275   0.9030743    2.091336
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.064208   0.8260305    5.158348


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0033097    0.0002060   0.0064135
ki1101329-Keneba          GAMBIA       0                    NA                0.0016469   -0.0009432   0.0042369
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0021837   -0.0001710   0.0045383
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0003959   -0.0003359   0.0011277
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0008116   -0.0005385   0.0021617


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4155240   -0.2496021   0.7266232
ki1101329-Keneba          GAMBIA       0                    NA                0.1183083   -0.0832550   0.2823663
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0789474   -0.0091190   0.1593282
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0450269   -0.0409788   0.1239269
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1031105   -0.0781466   0.2538948
