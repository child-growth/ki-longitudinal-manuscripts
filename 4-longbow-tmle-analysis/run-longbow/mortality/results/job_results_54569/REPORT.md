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

**Intervention Variable:** ever_underweight06

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

studyid                     country                        ever_underweight06    dead   n_cell       n
--------------------------  -----------------------------  -------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      174     265
ki0047075b-MAL-ED           BANGLADESH                     0                        1        1     265
ki0047075b-MAL-ED           BANGLADESH                     1                        0       88     265
ki0047075b-MAL-ED           BANGLADESH                     1                        1        2     265
ki0047075b-MAL-ED           INDIA                          0                        0      144     251
ki0047075b-MAL-ED           INDIA                          0                        1        1     251
ki0047075b-MAL-ED           INDIA                          1                        0      105     251
ki0047075b-MAL-ED           INDIA                          1                        1        1     251
ki0047075b-MAL-ED           PERU                           0                        0      251     303
ki0047075b-MAL-ED           PERU                           0                        1        2     303
ki0047075b-MAL-ED           PERU                           1                        0       50     303
ki0047075b-MAL-ED           PERU                           1                        1        0     303
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      258     314
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       55     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        1     314
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      214     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        2     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0       45     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        1     262
ki1000109-EE                PAKISTAN                       0                        0      103     380
ki1000109-EE                PAKISTAN                       0                        1        0     380
ki1000109-EE                PAKISTAN                       1                        0      273     380
ki1000109-EE                PAKISTAN                       1                        1        4     380
ki1000304-VITAMIN-A         INDIA                          0                        0     1692    3906
ki1000304-VITAMIN-A         INDIA                          0                        1       10    3906
ki1000304-VITAMIN-A         INDIA                          1                        0     2136    3906
ki1000304-VITAMIN-A         INDIA                          1                        1       68    3906
ki1000304b-SAS-CompFeed     INDIA                          0                        0      867    1533
ki1000304b-SAS-CompFeed     INDIA                          0                        1       16    1533
ki1000304b-SAS-CompFeed     INDIA                          1                        0      616    1533
ki1000304b-SAS-CompFeed     INDIA                          1                        1       34    1533
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      194     416
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        2     416
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0      216     416
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        4     416
ki1017093b-PROVIDE          BANGLADESH                     0                        0      470     700
ki1017093b-PROVIDE          BANGLADESH                     0                        1        3     700
ki1017093b-PROVIDE          BANGLADESH                     1                        0      226     700
ki1017093b-PROVIDE          BANGLADESH                     1                        1        1     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2110    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      285    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396
ki1101329-Keneba            GAMBIA                         0                        0     2045    2632
ki1101329-Keneba            GAMBIA                         0                        1       34    2632
ki1101329-Keneba            GAMBIA                         1                        0      526    2632
ki1101329-Keneba            GAMBIA                         1                        1       27    2632
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0      262     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0       74     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                        0      388     697
ki1113344-GMS-Nepal         NEPAL                          0                        1        2     697
ki1113344-GMS-Nepal         NEPAL                          1                        0      302     697
ki1113344-GMS-Nepal         NEPAL                          1                        1        5     697
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0    10958   14085
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      563   14085
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0     2019   14085
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1      545   14085
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1464    1816
ki1148112-iLiNS-DOSE        MALAWI                         0                        1       89    1816
ki1148112-iLiNS-DOSE        MALAWI                         1                        0      238    1816
ki1148112-iLiNS-DOSE        MALAWI                         1                        1       25    1816
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0      928    1202
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       20    1202
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0      234    1202
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1       20    1202
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    14424   27237
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      240   27237
kiGH5241-JiVitA-3           BANGLADESH                     1                        0    11988   27237
kiGH5241-JiVitA-3           BANGLADESH                     1                        1      585   27237
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     3471    5276
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       17    5276
kiGH5241-JiVitA-4           BANGLADESH                     1                        0     1758    5276
kiGH5241-JiVitA-4           BANGLADESH                     1                        1       30    5276


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




# Results Detail

## Results Plots
![](/tmp/7b58810d-6b25-42bd-96c0-9633ef73a2b1/f481e42f-898a-411b-95b4-a54e99250037/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7b58810d-6b25-42bd-96c0-9633ef73a2b1/f481e42f-898a-411b-95b4-a54e99250037/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7b58810d-6b25-42bd-96c0-9633ef73a2b1/f481e42f-898a-411b-95b4-a54e99250037/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7b58810d-6b25-42bd-96c0-9633ef73a2b1/f481e42f-898a-411b-95b4-a54e99250037/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0059992   0.0023056   0.0096927
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0309900   0.0237424   0.0382376
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0184914   0.0105741   0.0264088
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0513869   0.0302198   0.0725540
ki1101329-Keneba          GAMBIA       0                    NA                0.0165489   0.0110333   0.0220644
ki1101329-Keneba          GAMBIA       1                    NA                0.0493603   0.0309620   0.0677586
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0492980   0.0453552   0.0532409
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2038265   0.1880731   0.2195799
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0575051   0.0459408   0.0690694
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0974187   0.0619078   0.1329297
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0210297   0.0118765   0.0301830
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0769592   0.0440807   0.1098377
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0169526   0.0147468   0.0191584
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0438885   0.0400440   0.0477331
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0048756   0.0021481   0.0076031
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0165399   0.0106835   0.0223964


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
ki1000304-VITAMIN-A       INDIA        1                    0                 5.165732   2.673171   9.982446
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.778957   1.861468   4.148661
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.982702   1.808348   4.919689
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 4.134575   3.701314   4.618552
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.694088   1.117307   2.568618
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 3.659541   1.986934   6.740152
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.588898   2.222222   3.016078
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.392368   1.753895   6.561489


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0139701    0.0093633   0.0185769
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0141244    0.0058293   0.0224194
ki1101329-Keneba          GAMBIA       0                    NA                0.0066274    0.0026248   0.0106300
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0293672    0.0262355   0.0324989
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0052702   -0.0001584   0.0106988
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0122481    0.0048476   0.0196486
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0133371    0.0112184   0.0154558
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0040326    0.0018301   0.0062352


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.6995807    0.4664450   0.8308483
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4330526    0.2372538   0.5785894
ki1101329-Keneba          GAMBIA       0                    NA                0.2859576    0.1092583   0.4276045
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.3733186    0.3379522   0.4067957
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0839537   -0.0054001   0.1653663
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.3680562    0.1415071   0.5348208
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4403180    0.3749301   0.4988656
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4526846    0.1662569   0.6407117
