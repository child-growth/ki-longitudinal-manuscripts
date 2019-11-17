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

studyid                     country                        ever_sunderweight06    dead   n_cell       n
--------------------------  -----------------------------  --------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      243     265
ki0047075b-MAL-ED           BANGLADESH                     0                         1        2     265
ki0047075b-MAL-ED           BANGLADESH                     1                         0       19     265
ki0047075b-MAL-ED           BANGLADESH                     1                         1        1     265
ki0047075b-MAL-ED           INDIA                          0                         0      217     251
ki0047075b-MAL-ED           INDIA                          0                         1        1     251
ki0047075b-MAL-ED           INDIA                          1                         0       32     251
ki0047075b-MAL-ED           INDIA                          1                         1        1     251
ki0047075b-MAL-ED           PERU                           0                         0      290     303
ki0047075b-MAL-ED           PERU                           0                         1        2     303
ki0047075b-MAL-ED           PERU                           1                         0       11     303
ki0047075b-MAL-ED           PERU                           1                         1        0     303
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      300     314
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0       13     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        1     314
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      251     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        2     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        8     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        1     262
ki1000109-EE                PAKISTAN                       0                         0      218     380
ki1000109-EE                PAKISTAN                       0                         1        1     380
ki1000109-EE                PAKISTAN                       1                         0      158     380
ki1000109-EE                PAKISTAN                       1                         1        3     380
ki1000304-VITAMIN-A         INDIA                          0                         0     2858    3906
ki1000304-VITAMIN-A         INDIA                          0                         1       30    3906
ki1000304-VITAMIN-A         INDIA                          1                         0      970    3906
ki1000304-VITAMIN-A         INDIA                          1                         1       48    3906
ki1000304b-SAS-CompFeed     INDIA                          0                         0     1247    1533
ki1000304b-SAS-CompFeed     INDIA                          0                         1       26    1533
ki1000304b-SAS-CompFeed     INDIA                          1                         0      236    1533
ki1000304b-SAS-CompFeed     INDIA                          1                         1       24    1533
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      304     416
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        2     416
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0      106     416
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        4     416
ki1017093b-PROVIDE          BANGLADESH                     0                         0      648     700
ki1017093b-PROVIDE          BANGLADESH                     0                         1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1                         0       48     700
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2325    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       70    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396
ki1101329-Keneba            GAMBIA                         0                         0     2407    2632
ki1101329-Keneba            GAMBIA                         0                         1       43    2632
ki1101329-Keneba            GAMBIA                         1                         0      164    2632
ki1101329-Keneba            GAMBIA                         1                         1       18    2632
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0      315     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0       21     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                         0      600     697
ki1113344-GMS-Nepal         NEPAL                          0                         1        3     697
ki1113344-GMS-Nepal         NEPAL                          1                         0       90     697
ki1113344-GMS-Nepal         NEPAL                          1                         1        4     697
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0    12420   14085
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      807   14085
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0      557   14085
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      301   14085
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1646    1816
ki1148112-iLiNS-DOSE        MALAWI                         0                         1      106    1816
ki1148112-iLiNS-DOSE        MALAWI                         1                         0       56    1816
ki1148112-iLiNS-DOSE        MALAWI                         1                         1        8    1816
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1086    1202
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       27    1202
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0       76    1202
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1       13    1202
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    22238   27237
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      414   27237
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     4174   27237
kiGH5241-JiVitA-3           BANGLADESH                     1                         1      411   27237
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     4717    5276
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       31    5276
kiGH5241-JiVitA-4           BANGLADESH                     1                         0      512    5276
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       16    5276


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




# Results Detail

## Results Plots
![](/tmp/4b5c9a67-6ead-46f1-bb64-719d27a9f169/4272b146-3710-4e92-92c3-c46e447a0d63/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4b5c9a67-6ead-46f1-bb64-719d27a9f169/4272b146-3710-4e92-92c3-c46e447a0d63/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4b5c9a67-6ead-46f1-bb64-719d27a9f169/4272b146-3710-4e92-92c3-c46e447a0d63/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b5c9a67-6ead-46f1-bb64-719d27a9f169/4272b146-3710-4e92-92c3-c46e447a0d63/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0103699   0.0066759   0.0140640
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0467231   0.0336615   0.0597847
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0211192   0.0084969   0.0337415
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0893510   0.0574175   0.1212846
ki1101329-Keneba          GAMBIA       0                    NA                0.0175350   0.0123339   0.0227361
ki1101329-Keneba          GAMBIA       1                    NA                0.0985163   0.0524557   0.1445769
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0615598   0.0574651   0.0656546
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.3354741   0.3022332   0.3687150
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1250000   0.0439530   0.2060470
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0242074   0.0151764   0.0332385
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.1161354   0.0505379   0.1817328
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0185432   0.0167920   0.0202943
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0872186   0.0769413   0.0974958
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0065476   0.0040820   0.0090132
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0290252   0.0136115   0.0444389


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba          GAMBIA       NA                   NA                0.0231763   0.0174270   0.0289256
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0786652   0.0742191   0.0831114
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0332779   0.0231340   0.0434218
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0302897   0.0281334   0.0324460
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089083   0.0062043   0.0116122


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 4.505635   2.864978   7.085830
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 4.230803   2.234010   8.012361
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 5.618269   3.227737   9.779281
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 5.449561   4.837779   6.138710
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 2.066038   1.052847   4.054256
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 4.797506   2.437293   9.443291
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 4.703542   4.057396   5.452587
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.432940   2.303170   8.532138


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0095994    0.0060398   0.0131589
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0114966    0.0051202   0.0178731
ki1101329-Keneba          GAMBIA       0                    NA                0.0056413    0.0025120   0.0087705
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0171054    0.0148602   0.0193506
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0022730   -0.0006617   0.0052078
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0090704    0.0033066   0.0148342
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0117465    0.0101586   0.0133344
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0023606    0.0007676   0.0039537


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.4807060    0.3140189   0.6068897
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3524864    0.0981394   0.5351013
ki1101329-Keneba          GAMBIA       0                    NA                0.2434080    0.1118207   0.3555001
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.2174455    0.1908686   0.2431496
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0362092   -0.0112860   0.0814739
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.2725663    0.1020270   0.4107175
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3878057    0.3441853   0.4285248
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2649948    0.0852358   0.4094297
