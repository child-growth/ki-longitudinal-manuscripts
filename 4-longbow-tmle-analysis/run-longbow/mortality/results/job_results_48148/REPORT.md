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

**Intervention Variable:** ever_sunderweight624

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* earlybf
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
* delta_earlybf
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

studyid                     country                        ever_sunderweight624    dead   n_cell       n
--------------------------  -----------------------------  ---------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                          0      215     239
ki0047075b-MAL-ED           BANGLADESH                     0                          1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                          0       24     239
ki0047075b-MAL-ED           BANGLADESH                     1                          1        0     239
ki0047075b-MAL-ED           INDIA                          0                          0      216     235
ki0047075b-MAL-ED           INDIA                          0                          1        0     235
ki0047075b-MAL-ED           INDIA                          1                          0       19     235
ki0047075b-MAL-ED           INDIA                          1                          1        0     235
ki0047075b-MAL-ED           PERU                           0                          0      264     270
ki0047075b-MAL-ED           PERU                           0                          1        1     270
ki0047075b-MAL-ED           PERU                           1                          0        5     270
ki0047075b-MAL-ED           PERU                           1                          1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          0      244     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          0       15     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          0      217     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          0       28     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          1        0     245
ki1000304-VITAMIN-A         INDIA                          0                          0     3175    3507
ki1000304-VITAMIN-A         INDIA                          0                          1       11    3507
ki1000304-VITAMIN-A         INDIA                          1                          0      320    3507
ki1000304-VITAMIN-A         INDIA                          1                          1        1    3507
ki1000304b-SAS-CompFeed     INDIA                          0                          0     1214    1386
ki1000304b-SAS-CompFeed     INDIA                          0                          1        7    1386
ki1000304b-SAS-CompFeed     INDIA                          1                          0      162    1386
ki1000304b-SAS-CompFeed     INDIA                          1                          1        3    1386
ki1000304b-SAS-FoodSuppl    INDIA                          0                          0      292     398
ki1000304b-SAS-FoodSuppl    INDIA                          0                          1        2     398
ki1000304b-SAS-FoodSuppl    INDIA                          1                          0      104     398
ki1000304b-SAS-FoodSuppl    INDIA                          1                          1        0     398
ki1017093b-PROVIDE          BANGLADESH                     0                          0      562     613
ki1017093b-PROVIDE          BANGLADESH                     0                          1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                          0       51     613
ki1017093b-PROVIDE          BANGLADESH                     1                          1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1928    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0       88    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2017
ki1101329-Keneba            GAMBIA                         0                          0     2344    2697
ki1101329-Keneba            GAMBIA                         0                          1       27    2697
ki1101329-Keneba            GAMBIA                         1                          0      320    2697
ki1101329-Keneba            GAMBIA                         1                          1        6    2697
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          0     6330    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          1       31    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          0      766    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          1        8    7135
ki1113344-GMS-Nepal         NEPAL                          0                          0      440     588
ki1113344-GMS-Nepal         NEPAL                          0                          1        1     588
ki1113344-GMS-Nepal         NEPAL                          1                          0      147     588
ki1113344-GMS-Nepal         NEPAL                          1                          1        0     588
ki1126311-ZVITAMBO          ZIMBABWE                       0                          0     9973   10673
ki1126311-ZVITAMBO          ZIMBABWE                       0                          1      185   10673
ki1126311-ZVITAMBO          ZIMBABWE                       1                          0      410   10673
ki1126311-ZVITAMBO          ZIMBABWE                       1                          1      105   10673
ki1148112-iLiNS-DOSE        MALAWI                         0                          0     1479    1693
ki1148112-iLiNS-DOSE        MALAWI                         0                          1       20    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                          0      187    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                          1        7    1693
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          0     1045    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          1       14    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          0       83    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          1        3    1145
kiGH5241-JiVitA-3           BANGLADESH                     0                          0    16110   17236
kiGH5241-JiVitA-3           BANGLADESH                     0                          1      135   17236
kiGH5241-JiVitA-3           BANGLADESH                     1                          0      977   17236
kiGH5241-JiVitA-3           BANGLADESH                     1                          1       14   17236
kiGH5241-JiVitA-4           BANGLADESH                     0                          0     4895    5419
kiGH5241-JiVitA-4           BANGLADESH                     0                          1       39    5419
kiGH5241-JiVitA-4           BANGLADESH                     1                          0      479    5419
kiGH5241-JiVitA-4           BANGLADESH                     1                          1        6    5419


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
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

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
![](/tmp/b37eddd1-ab71-4b64-a540-2d217e331daa/e57a1126-04be-4267-af7d-dbc2baf3a3a5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b37eddd1-ab71-4b64-a540-2d217e331daa/e57a1126-04be-4267-af7d-dbc2baf3a3a5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b37eddd1-ab71-4b64-a540-2d217e331daa/e57a1126-04be-4267-af7d-dbc2baf3a3a5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b37eddd1-ab71-4b64-a540-2d217e331daa/e57a1126-04be-4267-af7d-dbc2baf3a3a5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.0113876   0.0071160   0.0156592
ki1101329-Keneba            GAMBIA         1                    NA                0.0184049   0.0038116   0.0329982
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048734   0.0031620   0.0065849
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0103359   0.0032102   0.0174616
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0183663   0.0157444   0.0209881
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.2161172   0.1767636   0.2554708
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0133422   0.0075323   0.0191522
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0360825   0.0098316   0.0623333
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0083321   0.0069531   0.0097110
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0137633   0.0056808   0.0218459
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0079043   0.0053140   0.0104946
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0123711   0.0039788   0.0207635


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         NA                   NA                0.0122358   0.0080860   0.0163857
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054660   0.0037551   0.0071769
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0271714   0.0240868   0.0302560
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0159480   0.0099789   0.0219171
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0086447   0.0072479   0.0100415
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0083041   0.0058088   0.0107994


### Parameter: RR


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         0                    0                  1.000000   1.0000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                  1.616224   0.6722919    3.885483
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                  1.000000   1.0000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                  2.120864   0.9783574    4.597565
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                  1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 11.767064   9.3362042   14.830843
ki1148112-iLiNS-DOSE        MALAWI         0                    0                  1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                  2.704381   1.1583373    6.313946
kiGH5241-JiVitA-3           BANGLADESH     0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                  1.651851   0.9034002    3.020380
kiGH5241-JiVitA-4           BANGLADESH     0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                  1.565107   0.7428961    3.297312


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.0008482   -0.0009918   0.0026882
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005926   -0.0002034   0.0013885
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0088051    0.0069580   0.0106521
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0026058   -0.0004943   0.0057059
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0003126   -0.0001449   0.0007702
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0003998   -0.0003792   0.0011787


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.0693225   -0.0917657   0.2066424
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1084090   -0.0451124   0.2393789
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.3240575    0.2639311   0.3792725
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.1633929   -0.0434001   0.3292013
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0361656   -0.0173258   0.0868444
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0481421   -0.0511605   0.1380637
