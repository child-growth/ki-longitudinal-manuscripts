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

studyid                     country                        ever_co06    dead   n_cell       n
--------------------------  -----------------------------  ----------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0               0      252     263
ki0047075b-MAL-ED           BANGLADESH                     0               1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1               0        9     263
ki0047075b-MAL-ED           BANGLADESH                     1               1        0     263
ki0047075b-MAL-ED           INDIA                          0               0      231     251
ki0047075b-MAL-ED           INDIA                          0               1        2     251
ki0047075b-MAL-ED           INDIA                          1               0       18     251
ki0047075b-MAL-ED           INDIA                          1               1        0     251
ki0047075b-MAL-ED           PERU                           0               0      298     302
ki0047075b-MAL-ED           PERU                           0               1        2     302
ki0047075b-MAL-ED           PERU                           1               0        2     302
ki0047075b-MAL-ED           PERU                           1               1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0               0      306     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0               1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1               0        6     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1               1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      254     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        4     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     261
ki1000304-VITAMIN-A         INDIA                          0               0     3209    3472
ki1000304-VITAMIN-A         INDIA                          0               1       42    3472
ki1000304-VITAMIN-A         INDIA                          1               0      205    3472
ki1000304-VITAMIN-A         INDIA                          1               1       16    3472
ki1000304b-SAS-CompFeed     INDIA                          0               0     1371    1507
ki1000304b-SAS-CompFeed     INDIA                          0               1       26    1507
ki1000304b-SAS-CompFeed     INDIA                          1               0      100    1507
ki1000304b-SAS-CompFeed     INDIA                          1               1       10    1507
ki1000304b-SAS-FoodSuppl    INDIA                          0               0      362     418
ki1000304b-SAS-FoodSuppl    INDIA                          0               1        3     418
ki1000304b-SAS-FoodSuppl    INDIA                          1               0       50     418
ki1000304b-SAS-FoodSuppl    INDIA                          1               1        3     418
ki1017093b-PROVIDE          BANGLADESH                     0               0      665     699
ki1017093b-PROVIDE          BANGLADESH                     0               1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1               0       30     699
ki1017093b-PROVIDE          BANGLADESH                     1               1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               0     2373    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               0       22    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               1        0    2396
ki1101329-Keneba            GAMBIA                         0               0     2302    2418
ki1101329-Keneba            GAMBIA                         0               1       45    2418
ki1101329-Keneba            GAMBIA                         1               0       59    2418
ki1101329-Keneba            GAMBIA                         1               1       12    2418
ki1112895-Burkina Faso Zn   BURKINA FASO                   0               0      325     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0               1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1               0       11     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1               1        0     338
ki1113344-GMS-Nepal         NEPAL                          0               0      574     602
ki1113344-GMS-Nepal         NEPAL                          0               1        4     602
ki1113344-GMS-Nepal         NEPAL                          1               0       23     602
ki1113344-GMS-Nepal         NEPAL                          1               1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0               0    12669   13844
ki1126311-ZVITAMBO          ZIMBABWE                       0               1      966   13844
ki1126311-ZVITAMBO          ZIMBABWE                       1               0      132   13844
ki1126311-ZVITAMBO          ZIMBABWE                       1               1       77   13844
ki1148112-iLiNS-DOSE        MALAWI                         0               0     1686    1813
ki1148112-iLiNS-DOSE        MALAWI                         0               1      111    1813
ki1148112-iLiNS-DOSE        MALAWI                         1               0       13    1813
ki1148112-iLiNS-DOSE        MALAWI                         1               1        3    1813
ki1148112-iLiNS-DYAD-M      MALAWI                         0               0     1129    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         0               1       34    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         1               0       12    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         1               1        4    1179
kiGH5241-JiVitA-3           BANGLADESH                     0               0    25066   26847
kiGH5241-JiVitA-3           BANGLADESH                     0               1      467   26847
kiGH5241-JiVitA-3           BANGLADESH                     1               0     1229   26847
kiGH5241-JiVitA-3           BANGLADESH                     1               1       85   26847
kiGH5241-JiVitA-4           BANGLADESH                     0               0     5018    5246
kiGH5241-JiVitA-4           BANGLADESH                     0               1       42    5246
kiGH5241-JiVitA-4           BANGLADESH                     1               0      182    5246
kiGH5241-JiVitA-4           BANGLADESH                     1               1        4    5246


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




# Results Detail

## Results Plots
![](/tmp/0b531094-ec0c-468c-8da5-b11f3c56b637/6bfe551e-6154-492d-87b3-064b7fa76955/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0b531094-ec0c-468c-8da5-b11f3c56b637/6bfe551e-6154-492d-87b3-064b7fa76955/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0b531094-ec0c-468c-8da5-b11f3c56b637/6bfe551e-6154-492d-87b3-064b7fa76955/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0b531094-ec0c-468c-8da5-b11f3c56b637/6bfe551e-6154-492d-87b3-064b7fa76955/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0129590   0.0090764   0.0168416
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0689233   0.0346428   0.1032039
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0182586   0.0079782   0.0285391
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0932042   0.0579052   0.1285033
ki1101329-Keneba          GAMBIA       0                    NA                0.0192763   0.0136776   0.0248749
ki1101329-Keneba          GAMBIA       1                    NA                0.1542252   0.0716632   0.2367873
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0739125   0.0692869   0.0785382
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.4075044   0.3766339   0.4383748
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0179740   0.0160908   0.0198572
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0973042   0.0819947   0.1126137


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0167051   0.0124414   0.0209688
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238885   0.0131223   0.0346548
ki1101329-Keneba          GAMBIA       NA                   NA                0.0235732   0.0175248   0.0296216
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0753395   0.0709427   0.0797363
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0205610   0.0188307   0.0222912


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 5.318578   2.975814    9.505728
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 5.104669   2.464848   10.571707
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 8.000789   4.350624   14.713435
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 5.513334   4.997248    6.082718
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 5.413600   4.490001    6.527184


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0037461    0.0015072   0.0059850
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0056299    0.0021942   0.0090656
ki1101329-Keneba          GAMBIA       0                    NA                0.0042969    0.0015263   0.0070676
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0014270   -0.0003107   0.0031647
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0025869    0.0015467   0.0036272


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2242486    0.0929393   0.3365491
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2356736    0.0684504   0.3728785
ki1101329-Keneba          GAMBIA       0                    NA                0.1822810    0.0662898   0.2838631
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0189407   -0.0043537   0.0416949
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1258178    0.0742083   0.1745503
