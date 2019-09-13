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
ki1000304-VITAMIN-A         INDIA                          0                         0     2807    3804
ki1000304-VITAMIN-A         INDIA                          0                         1       25    3804
ki1000304-VITAMIN-A         INDIA                          1                         0      939    3804
ki1000304-VITAMIN-A         INDIA                          1                         1       33    3804
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
ki1101329-Keneba            GAMBIA                         0                         0     2241    2452
ki1101329-Keneba            GAMBIA                         0                         1       41    2452
ki1101329-Keneba            GAMBIA                         1                         0      152    2452
ki1101329-Keneba            GAMBIA                         1                         1       18    2452
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0      315     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0       21     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                         0      527     602
ki1113344-GMS-Nepal         NEPAL                          0                         1        2     602
ki1113344-GMS-Nepal         NEPAL                          1                         0       70     602
ki1113344-GMS-Nepal         NEPAL                          1                         1        3     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0    12420   14085
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      807   14085
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0      557   14085
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      301   14085
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1646    1816
ki1148112-iLiNS-DOSE        MALAWI                         0                         1      106    1816
ki1148112-iLiNS-DOSE        MALAWI                         1                         0       56    1816
ki1148112-iLiNS-DOSE        MALAWI                         1                         1        8    1816
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1096    1199
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       28    1199
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0       64    1199
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1       11    1199
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    22240   27245
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      415   27245
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     4178   27245
kiGH5241-JiVitA-3           BANGLADESH                     1                         1      412   27245
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     4718    5276
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       31    5276
kiGH5241-JiVitA-4           BANGLADESH                     1                         0      511    5276
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       16    5276


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
![](/tmp/95a82ee2-3b1e-411d-98c5-3c36d8d8b60c/a53aa983-ed48-4628-8e27-e18ed3481954/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/95a82ee2-3b1e-411d-98c5-3c36d8d8b60c/a53aa983-ed48-4628-8e27-e18ed3481954/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/95a82ee2-3b1e-411d-98c5-3c36d8d8b60c/a53aa983-ed48-4628-8e27-e18ed3481954/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/95a82ee2-3b1e-411d-98c5-3c36d8d8b60c/a53aa983-ed48-4628-8e27-e18ed3481954/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0093948   0.0052837   0.0135059
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0289320   0.0157684   0.0420956
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0253567   0.0076228   0.0430905
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0866423   0.0577854   0.1154993
ki1101329-Keneba          GAMBIA       0                    NA                0.0179635   0.0125157   0.0234114
ki1101329-Keneba          GAMBIA       1                    NA                0.1078925   0.0571094   0.1586756
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0886081   0.0837984   0.0934177
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.4553328   0.4134806   0.4971851
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1250000   0.0439530   0.2060470
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0250231   0.0158851   0.0341611
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.1367269   0.0590670   0.2143868
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0213049   0.0195876   0.0230222
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0675708   0.0558984   0.0792432
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0065321   0.0041667   0.0088974
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0413639   0.0038212   0.0789066


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0152471   0.0113527   0.0191415
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba          GAMBIA       NA                   NA                0.0240620   0.0179953   0.0301287
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0786652   0.0742191   0.0831114
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0325271   0.0224818   0.0425724
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0303542   0.0281934   0.0325150
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089083   0.0062043   0.0116122


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.079570   1.638270    5.788882
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.416947   1.725715    6.765618
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 6.006206   3.430155   10.516875
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 5.138729   4.617003    5.719410
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 2.066038   1.052847    4.054256
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 5.464031   2.783009   10.727828
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.171612   2.630867    3.823500
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 6.332439   2.375696   16.879174


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.0058523    0.0022080    0.0094966
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0072591   -0.0012289    0.0157471
ki1101329-Keneba          GAMBIA       0                    NA                 0.0060985    0.0027468    0.0094501
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0099428   -0.0129770   -0.0069087
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0022730   -0.0006617    0.0052078
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0075040    0.0022079    0.0128001
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0090493    0.0078399    0.0102587
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0023762    0.0007866    0.0039658


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.3838302    0.1217904    0.5676827
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.2225650   -0.1546295    0.4765376
ki1101329-Keneba          GAMBIA       0                    NA                 0.2534488    0.1182092    0.3679467
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.1263941   -0.1678576   -0.0864028
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0362092   -0.0112860    0.0814739
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.2307009    0.0684428    0.3646969
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.2981239    0.2656457    0.3291658
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.2667405    0.0937107    0.4067352
