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

**Intervention Variable:** ever_sstunted06

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

studyid                     country                        ever_sstunted06    dead   n_cell       n
--------------------------  -----------------------------  ----------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      240     265
ki0047075b-MAL-ED           BANGLADESH                     0                     1        2     265
ki0047075b-MAL-ED           BANGLADESH                     1                     0       22     265
ki0047075b-MAL-ED           BANGLADESH                     1                     1        1     265
ki0047075b-MAL-ED           INDIA                          0                     0      229     251
ki0047075b-MAL-ED           INDIA                          0                     1        2     251
ki0047075b-MAL-ED           INDIA                          1                     0       20     251
ki0047075b-MAL-ED           INDIA                          1                     1        0     251
ki0047075b-MAL-ED           PERU                           0                     0      260     303
ki0047075b-MAL-ED           PERU                           0                     1        2     303
ki0047075b-MAL-ED           PERU                           1                     0       41     303
ki0047075b-MAL-ED           PERU                           1                     1        0     303
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      283     314
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0       30     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        1     314
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      220     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        2     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       39     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     262
ki1000304-VITAMIN-A         INDIA                          0                     0     3021    3477
ki1000304-VITAMIN-A         INDIA                          0                     1       39    3477
ki1000304-VITAMIN-A         INDIA                          1                     0      398    3477
ki1000304-VITAMIN-A         INDIA                          1                     1       19    3477
ki1000304b-SAS-CompFeed     INDIA                          0                     0     1266    1532
ki1000304b-SAS-CompFeed     INDIA                          0                     1       29    1532
ki1000304b-SAS-CompFeed     INDIA                          1                     0      216    1532
ki1000304b-SAS-CompFeed     INDIA                          1                     1       21    1532
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0      351     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        3     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0       61     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        3     418
ki1017093b-PROVIDE          BANGLADESH                     0                     0      665     700
ki1017093b-PROVIDE          BANGLADESH                     0                     1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1                     0       31     700
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2284    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      111    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396
ki1101329-Keneba            GAMBIA                         0                     0     2142    2479
ki1101329-Keneba            GAMBIA                         0                     1       43    2479
ki1101329-Keneba            GAMBIA                         1                     0      278    2479
ki1101329-Keneba            GAMBIA                         1                     1       16    2479
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0      325     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0       11     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                     0      557     602
ki1113344-GMS-Nepal         NEPAL                          0                     1        2     602
ki1113344-GMS-Nepal         NEPAL                          1                     0       40     602
ki1113344-GMS-Nepal         NEPAL                          1                     1        3     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0    11759   14057
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      872   14057
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0     1193   14057
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1      233   14057
ki1148112-iLiNS-DOSE        MALAWI                         0                     0     1588    1813
ki1148112-iLiNS-DOSE        MALAWI                         0                     1      101    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                     0      111    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                     1       13    1813
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0     1071    1192
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       34    1192
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0       82    1192
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        5    1192
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    22536   27206
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      438   27206
kiGH5241-JiVitA-3           BANGLADESH                     1                     0     3866   27206
kiGH5241-JiVitA-3           BANGLADESH                     1                     1      366   27206
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     4640    5270
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       31    5270
kiGH5241-JiVitA-4           BANGLADESH                     1                     0      583    5270
kiGH5241-JiVitA-4           BANGLADESH                     1                     1       16    5270


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




# Results Detail

## Results Plots
![](/tmp/0c3003df-a5c3-45dd-bf75-c4c8015d09ff/a17af647-669c-4d23-bf8e-18edb85ffb5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0c3003df-a5c3-45dd-bf75-c4c8015d09ff/a17af647-669c-4d23-bf8e-18edb85ffb5f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0c3003df-a5c3-45dd-bf75-c4c8015d09ff/a17af647-669c-4d23-bf8e-18edb85ffb5f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0c3003df-a5c3-45dd-bf75-c4c8015d09ff/a17af647-669c-4d23-bf8e-18edb85ffb5f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0127248   0.0087524   0.0166973
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0458714   0.0252066   0.0665362
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0268209   0.0100026   0.0436393
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0839427   0.0371243   0.1307611
ki1101329-Keneba          GAMBIA       0                    NA                0.0197888   0.0139277   0.0256499
ki1101329-Keneba          GAMBIA       1                    NA                0.0541587   0.0264391   0.0818784
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0976973   0.0920840   0.1033105
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1352086   0.1083502   0.1620671
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0598033   0.0484902   0.0711164
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1060762   0.0502324   0.1619200
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0307692   0.0205828   0.0409556
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0574713   0.0085449   0.1063977
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0307739   0.0287743   0.0327734
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0835426   0.0702152   0.0968700
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0068183   0.0042761   0.0093605
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0364714   0.0120548   0.0608881


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0166810   0.0124234   0.0209387
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
ki1101329-Keneba          GAMBIA       NA                   NA                0.0237999   0.0177985   0.0298013
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0786085   0.0741594   0.0830576
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0327181   0.0226148   0.0428214
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0295523   0.0274530   0.0316516
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089184   0.0062077   0.0116291


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.604873   2.0841798    6.235120
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.129745   1.8353233    5.337100
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.736838   1.5148491    4.944573
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.383955   1.1256817    1.701486
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.773752   1.0141994    3.102146
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.867816   0.7492708    4.656176
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.714723   2.2935218    3.213277
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 5.349067   2.4972290   11.457706


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.0039562    0.0014848    0.0064277
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0058161   -0.0008675    0.0124998
ki1101329-Keneba          GAMBIA       0                    NA                 0.0040111    0.0008173    0.0072049
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0190887   -0.0227159   -0.0154615
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0030759   -0.0007145    0.0068663
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0019489   -0.0017199    0.0056177
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0012216   -0.0023399   -0.0001033
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0021001    0.0006023    0.0035979


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.2371685    0.0886748    0.3614662
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.1782067   -0.1114678    0.3923853
ki1101329-Keneba          GAMBIA       0                    NA                 0.1685349    0.0306141    0.2868328
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.2428330   -0.2925322   -0.1950448
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0489177   -0.0127440    0.1068250
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0595661   -0.0579265    0.1640100
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0413362   -0.0810500   -0.0030814
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.2354820    0.0634900    0.3758874
