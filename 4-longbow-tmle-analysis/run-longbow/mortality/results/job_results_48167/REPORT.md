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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_co06

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

studyid                     country                        ever_co06    dead624   n_cell       n
--------------------------  -----------------------------  ----------  --------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                  0      231     239
ki0047075b-MAL-ED           BANGLADESH                     0                  1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                  0        8     239
ki0047075b-MAL-ED           BANGLADESH                     1                  1        0     239
ki0047075b-MAL-ED           INDIA                          0                  0      218     235
ki0047075b-MAL-ED           INDIA                          0                  1        0     235
ki0047075b-MAL-ED           INDIA                          1                  0       17     235
ki0047075b-MAL-ED           INDIA                          1                  1        0     235
ki0047075b-MAL-ED           PERU                           0                  0      268     270
ki0047075b-MAL-ED           PERU                           0                  1        1     270
ki0047075b-MAL-ED           PERU                           1                  0        1     270
ki0047075b-MAL-ED           PERU                           1                  1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                  0      255     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                  1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                  0        4     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                  1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      241     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        4     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     245
ki1000304-VITAMIN-A         INDIA                          0                  0     2591    2710
ki1000304-VITAMIN-A         INDIA                          0                  1       12    2710
ki1000304-VITAMIN-A         INDIA                          1                  0      106    2710
ki1000304-VITAMIN-A         INDIA                          1                  1        1    2710
ki1000304b-SAS-CompFeed     INDIA                          0                  0     1279    1380
ki1000304b-SAS-CompFeed     INDIA                          0                  1        6    1380
ki1000304b-SAS-CompFeed     INDIA                          1                  0       90    1380
ki1000304b-SAS-CompFeed     INDIA                          1                  1        5    1380
ki1000304b-SAS-FoodSuppl    INDIA                          0                  0      366     399
ki1000304b-SAS-FoodSuppl    INDIA                          0                  1        1     399
ki1000304b-SAS-FoodSuppl    INDIA                          1                  0       29     399
ki1000304b-SAS-FoodSuppl    INDIA                          1                  1        3     399
ki1017093b-PROVIDE          BANGLADESH                     0                  0      586     613
ki1017093b-PROVIDE          BANGLADESH                     0                  1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                  0       27     613
ki1017093b-PROVIDE          BANGLADESH                     1                  1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                  0     1999    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                  1        0    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                  0       17    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                  1        0    2016
ki1101329-Keneba            GAMBIA                         0                  0     2143    2227
ki1101329-Keneba            GAMBIA                         0                  1       25    2227
ki1101329-Keneba            GAMBIA                         1                  0       53    2227
ki1101329-Keneba            GAMBIA                         1                  1        6    2227
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                  0       41      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                  1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                  0        2      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                  1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                  0      565     590
ki1113344-GMS-Nepal         NEPAL                          0                  1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                  0       23     590
ki1113344-GMS-Nepal         NEPAL                          1                  1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                  0    10200   10589
ki1126311-ZVITAMBO          ZIMBABWE                       0                  1      283   10589
ki1126311-ZVITAMBO          ZIMBABWE                       1                  0       97   10589
ki1126311-ZVITAMBO          ZIMBABWE                       1                  1        9   10589
ki1148112-iLiNS-DOSE        MALAWI                         0                  0      981     993
ki1148112-iLiNS-DOSE        MALAWI                         0                  1        5     993
ki1148112-iLiNS-DOSE        MALAWI                         1                  0        6     993
ki1148112-iLiNS-DOSE        MALAWI                         1                  1        1     993
ki1148112-iLiNS-DYAD-M      MALAWI                         0                  0     1058    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         0                  1       16    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         1                  0        7    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         1                  1        0    1081
kiGH5241-JiVitA-3           BANGLADESH                     0                  0    16446   17158
kiGH5241-JiVitA-3           BANGLADESH                     0                  1      139   17158
kiGH5241-JiVitA-3           BANGLADESH                     1                  0      562   17158
kiGH5241-JiVitA-3           BANGLADESH                     1                  1       11   17158
kiGH5241-JiVitA-4           BANGLADESH                     0                  0     4906    5078
kiGH5241-JiVitA-4           BANGLADESH                     0                  1       38    5078
kiGH5241-JiVitA-4           BANGLADESH                     1                  0      132    5078
kiGH5241-JiVitA-4           BANGLADESH                     1                  1        2    5078


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
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/98de2229-74f2-4480-95ea-a7996fbfee4c/383cc8a9-df78-4202-a903-ae624193e2cd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/98de2229-74f2-4480-95ea-a7996fbfee4c/383cc8a9-df78-4202-a903-ae624193e2cd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/98de2229-74f2-4480-95ea-a7996fbfee4c/383cc8a9-df78-4202-a903-ae624193e2cd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/98de2229-74f2-4480-95ea-a7996fbfee4c/383cc8a9-df78-4202-a903-ae624193e2cd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0046693   0.0007540   0.0085846
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0526316   0.0186106   0.0866525
ki1101329-Keneba          GAMBIA       0                    NA                0.0115314   0.0070363   0.0160264
ki1101329-Keneba          GAMBIA       1                    NA                0.1016949   0.0245546   0.1788352
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0269961   0.0238457   0.0301464
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0849057   0.0636572   0.1061541
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0084013   0.0070011   0.0098015
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0198055   0.0075938   0.0320171


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0079710   0.0042886   0.0116535
ki1101329-Keneba          GAMBIA       NA                   NA                0.0139201   0.0090531   0.0187871
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0275758   0.0244567   0.0306949
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0087423   0.0073255   0.0101591


### Parameter: RR


studyid                   country      intervention_level   baseline_level     estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ---------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 11.271930   3.291492   38.601465
ki1101329-Keneba          GAMBIA       0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                  8.818983   3.758652   20.692117
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                  3.145110   2.386238    4.145317
kiGH5241-JiVitA-3         BANGLADESH   0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                  2.357424   1.247488    4.454911


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0033018    0.0004741   0.0061294
ki1101329-Keneba          GAMBIA       0                    NA                0.0023887    0.0002550   0.0045224
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0005797    0.0000316   0.0011278
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0003410   -0.0000661   0.0007481


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4142200   -0.0630497   0.6772134
ki1101329-Keneba          GAMBIA       0                    NA                0.1716016    0.0174770   0.3015493
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0210220    0.0008708   0.0407667
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0390010   -0.0079347   0.0837511
