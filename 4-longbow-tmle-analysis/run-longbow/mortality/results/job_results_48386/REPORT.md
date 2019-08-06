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
ki1017093b-PROVIDE          BANGLADESH                     0                     0      664     699
ki1017093b-PROVIDE          BANGLADESH                     0                     1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                     0       31     699
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2284    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      111    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396
ki1101329-Keneba            GAMBIA                         0                     0     2115    2450
ki1101329-Keneba            GAMBIA                         0                     1       43    2450
ki1101329-Keneba            GAMBIA                         1                     0      276    2450
ki1101329-Keneba            GAMBIA                         1                     1       16    2450
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0      325     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0       11     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                     0      557     602
ki1113344-GMS-Nepal         NEPAL                          0                     1        2     602
ki1113344-GMS-Nepal         NEPAL                          1                     0       40     602
ki1113344-GMS-Nepal         NEPAL                          1                     1        3     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0    11749   14047
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      872   14047
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0     1193   14047
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1      233   14047
ki1148112-iLiNS-DOSE        MALAWI                         0                     0     1588    1813
ki1148112-iLiNS-DOSE        MALAWI                         0                     1      101    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                     0      111    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                     1       13    1813
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0     1068    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       34    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0       81    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        5    1188
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    22506   27165
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      438   27165
kiGH5241-JiVitA-3           BANGLADESH                     1                     0     3855   27165
kiGH5241-JiVitA-3           BANGLADESH                     1                     1      366   27165
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     4640    5269
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       31    5269
kiGH5241-JiVitA-4           BANGLADESH                     1                     0      582    5269
kiGH5241-JiVitA-4           BANGLADESH                     1                     1       16    5269


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
![](/tmp/7d1fb3aa-2929-4f8f-8512-3d248a7180a4/321eb047-ef8e-44f1-ac59-2fc4a4a2ad36/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d1fb3aa-2929-4f8f-8512-3d248a7180a4/321eb047-ef8e-44f1-ac59-2fc4a4a2ad36/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d1fb3aa-2929-4f8f-8512-3d248a7180a4/321eb047-ef8e-44f1-ac59-2fc4a4a2ad36/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d1fb3aa-2929-4f8f-8512-3d248a7180a4/321eb047-ef8e-44f1-ac59-2fc4a4a2ad36/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0127215   0.0087548   0.0166882
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0452290   0.0252073   0.0652507
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0268209   0.0100026   0.0436393
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0839427   0.0371243   0.1307611
ki1101329-Keneba          GAMBIA       0                    NA                0.0200372   0.0141072   0.0259671
ki1101329-Keneba          GAMBIA       1                    NA                0.0538949   0.0276288   0.0801610
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0990174   0.0934648   0.1045699
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1385057   0.1108149   0.1661965
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0597759   0.0484701   0.0710817
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1170569   0.0621357   0.1719781
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0308530   0.0206393   0.0410667
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0581395   0.0086617   0.1076174
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0286441   0.0266741   0.0306141
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0870856   0.0737623   0.1004089
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0164774   0.0134663   0.0194885
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0347837   0.0111252   0.0584422


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0166810   0.0124234   0.0209387
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
ki1101329-Keneba          GAMBIA       NA                   NA                0.0240816   0.0180100   0.0301532
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0786645   0.0742123   0.0831166
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0328283   0.0226915   0.0429650
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0295969   0.0274956   0.0316982
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089201   0.0062094   0.0116308


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.555322   2.068560   6.110686
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.129745   1.835323   5.337100
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.689748   1.520573   4.757904
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.398802   1.136782   1.721216
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.958263   1.181123   3.246736
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.884405   0.756141   4.696190
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.040264   2.581822   3.580109
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.110995   1.041256   4.279734


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.0039596    0.0014872    0.0064319
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0058161   -0.0008675    0.0124998
ki1101329-Keneba          GAMBIA       0                    NA                 0.0040445    0.0008118    0.0072772
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0203529   -0.0238914   -0.0168143
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0031033   -0.0006859    0.0068925
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0019753   -0.0017040    0.0056546
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0009528   -0.0001539    0.0020595
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0075573   -0.0097428   -0.0053718


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.2373687    0.0889860    0.3615834
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.1782067   -0.1114678    0.3923853
ki1101329-Keneba          GAMBIA       0                    NA                 0.1679479    0.0299865    0.2862875
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.2587305   -0.3076261   -0.2116631
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0493535   -0.0122722    0.1072276
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0601703   -0.0572298    0.1645337
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0321930   -0.0050974    0.0681000
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.8472211   -1.2920723   -0.4887077
