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
![](/tmp/86766bb0-6d69-47ee-9f91-a5d694d799df/1c32b9df-bb82-497c-8871-1f6c4a44bcb9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/86766bb0-6d69-47ee-9f91-a5d694d799df/1c32b9df-bb82-497c-8871-1f6c4a44bcb9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/86766bb0-6d69-47ee-9f91-a5d694d799df/1c32b9df-bb82-497c-8871-1f6c4a44bcb9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/86766bb0-6d69-47ee-9f91-a5d694d799df/1c32b9df-bb82-497c-8871-1f6c4a44bcb9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0126920   0.0087310   0.0166529
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0454311   0.0255050   0.0653572
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0268209   0.0100026   0.0436393
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0839427   0.0371243   0.1307611
ki1101329-Keneba          GAMBIA       0                    NA                0.0200471   0.0141097   0.0259845
ki1101329-Keneba          GAMBIA       1                    NA                0.0543145   0.0271806   0.0814483
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0978661   0.0917030   0.1040291
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1308402   0.1048752   0.1568053
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0597402   0.0484303   0.0710501
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0966318   0.0417331   0.1515306
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0308530   0.0206393   0.0410667
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0581395   0.0086617   0.1076174
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0279435   0.0259543   0.0299328
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0881799   0.0752203   0.1011395
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0069344   0.0043426   0.0095261
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0359378   0.0126379   0.0592377


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


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.579517   2.0896669    6.131573
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.129745   1.8353233    5.337100
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.709349   1.5154775    4.843736
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.336932   1.0858804    1.646025
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.617536   0.8889586    2.943243
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.884405   0.7561410    4.696190
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.155649   2.6894853    3.702612
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 5.182555   2.4578042   10.927997


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.0039891    0.0015203    0.0064578
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0058161   -0.0008675    0.0124998
ki1101329-Keneba          GAMBIA       0                    NA                 0.0040346    0.0008008    0.0072684
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0192016   -0.0236091   -0.0147940
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0031390   -0.0006618    0.0069399
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0019753   -0.0017040    0.0056546
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0016534    0.0005452    0.0027616
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0019857    0.0004068    0.0035646


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.2391388    0.0911107    0.3630581
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.1782067   -0.1114678    0.3923853
ki1101329-Keneba          GAMBIA       0                    NA                 0.1675374    0.0294180    0.2860016
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.2440946   -0.3036129   -0.1872937
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0499218   -0.0119058    0.1079717
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0601703   -0.0572298    0.1645337
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0558638    0.0189637    0.0913759
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.2226113    0.0390120    0.3711335
