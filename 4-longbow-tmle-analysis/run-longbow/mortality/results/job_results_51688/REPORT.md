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

studyid                     country                        ever_underweight06    dead   n_cell       n
--------------------------  -----------------------------  -------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      177     265
ki0047075b-MAL-ED           BANGLADESH                     0                        1        1     265
ki0047075b-MAL-ED           BANGLADESH                     1                        0       85     265
ki0047075b-MAL-ED           BANGLADESH                     1                        1        2     265
ki0047075b-MAL-ED           INDIA                          0                        0      152     251
ki0047075b-MAL-ED           INDIA                          0                        1        1     251
ki0047075b-MAL-ED           INDIA                          1                        0       97     251
ki0047075b-MAL-ED           INDIA                          1                        1        1     251
ki0047075b-MAL-ED           PERU                           0                        0      256     303
ki0047075b-MAL-ED           PERU                           0                        1        2     303
ki0047075b-MAL-ED           PERU                           1                        0       45     303
ki0047075b-MAL-ED           PERU                           1                        1        0     303
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      261     314
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       52     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        1     314
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      216     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        2     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0       43     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        1     262
ki1000304-VITAMIN-A         INDIA                          0                        0     1661    3804
ki1000304-VITAMIN-A         INDIA                          0                        1       10    3804
ki1000304-VITAMIN-A         INDIA                          1                        0     2085    3804
ki1000304-VITAMIN-A         INDIA                          1                        1       48    3804
ki1000304b-SAS-CompFeed     INDIA                          0                        0      867    1533
ki1000304b-SAS-CompFeed     INDIA                          0                        1       16    1533
ki1000304b-SAS-CompFeed     INDIA                          1                        0      616    1533
ki1000304b-SAS-CompFeed     INDIA                          1                        1       34    1533
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      194     416
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        2     416
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0      216     416
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        4     416
ki1017093b-PROVIDE          BANGLADESH                     0                        0      470     699
ki1017093b-PROVIDE          BANGLADESH                     0                        1        3     699
ki1017093b-PROVIDE          BANGLADESH                     1                        0      225     699
ki1017093b-PROVIDE          BANGLADESH                     1                        1        1     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2110    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      285    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396
ki1101329-Keneba            GAMBIA                         0                        0     1906    2423
ki1101329-Keneba            GAMBIA                         0                        1       33    2423
ki1101329-Keneba            GAMBIA                         1                        0      458    2423
ki1101329-Keneba            GAMBIA                         1                        1       26    2423
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0      262     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0       74     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                        0      378     602
ki1113344-GMS-Nepal         NEPAL                          0                        1        2     602
ki1113344-GMS-Nepal         NEPAL                          1                        0      219     602
ki1113344-GMS-Nepal         NEPAL                          1                        1        3     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0    10950   14075
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      563   14075
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0     2017   14075
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1      545   14075
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1464    1816
ki1148112-iLiNS-DOSE        MALAWI                         0                        1       89    1816
ki1148112-iLiNS-DOSE        MALAWI                         1                        0      238    1816
ki1148112-iLiNS-DOSE        MALAWI                         1                        1       25    1816
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0      961    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       24    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0      195    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1       15    1195
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    14401   27204
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      241   27204
kiGH5241-JiVitA-3           BANGLADESH                     1                        0    11976   27204
kiGH5241-JiVitA-3           BANGLADESH                     1                        1      586   27204
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     3471    5275
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       17    5275
kiGH5241-JiVitA-4           BANGLADESH                     1                        0     1757    5275
kiGH5241-JiVitA-4           BANGLADESH                     1                        1       30    5275


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




# Results Detail

## Results Plots
![](/tmp/eb46f10e-ca52-48de-b4fa-7f5219925756/5eb75743-056d-48d4-bd72-1ad1bbe75410/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eb46f10e-ca52-48de-b4fa-7f5219925756/5eb75743-056d-48d4-bd72-1ad1bbe75410/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eb46f10e-ca52-48de-b4fa-7f5219925756/5eb75743-056d-48d4-bd72-1ad1bbe75410/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eb46f10e-ca52-48de-b4fa-7f5219925756/5eb75743-056d-48d4-bd72-1ad1bbe75410/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0059230   0.0022838   0.0095622
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0225418   0.0162585   0.0288251
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0181641   0.0104061   0.0259221
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0512058   0.0317404   0.0706713
ki1101329-Keneba          GAMBIA       0                    NA                0.0171273   0.0112999   0.0229548
ki1101329-Keneba          GAMBIA       1                    NA                0.0512729   0.0308419   0.0717038
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1106808   0.1061099   0.1152516
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2862409   0.2511551   0.3213266
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0574047   0.0458408   0.0689687
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0932614   0.0575884   0.1289344
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0243811   0.0147536   0.0340086
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0750399   0.0401369   0.1099428
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0216133   0.0197545   0.0234720
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0362738   0.0316729   0.0408747
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0044787   0.0019343   0.0070231
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0168473   0.0093620   0.0243325


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0152471   0.0113527   0.0191415
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba          GAMBIA       NA                   NA                0.0243500   0.0182115   0.0304884
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0787211   0.0742720   0.0831703
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0326360   0.0225576   0.0427143
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0303999   0.0282373   0.0325626
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089100   0.0062060   0.0116139


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.805804   1.937846   7.474353
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.819069   2.029269   3.916263
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.993626   1.772378   5.056368
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.586184   2.271550   2.944399
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.624630   1.054426   2.503182
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 3.077789   1.672851   5.662661
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.678309   1.458411   1.931363
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.761645   1.834916   7.711511


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.0093241    0.0052515    0.0133967
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0144517    0.0069221    0.0219813
ki1101329-Keneba          GAMBIA       0                    NA                 0.0072226    0.0029542    0.0114911
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0319596   -0.0357207   -0.0281985
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0053706   -0.0000647    0.0108059
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0082549    0.0018376    0.0146722
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0087866    0.0072799    0.0102934
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0044313    0.0022577    0.0066049


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.6115331    0.3210047    0.7777503
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.4430888    0.2790236    0.5698194
ki1101329-Keneba          GAMBIA       0                    NA                 0.2966179    0.1179646    0.4390855
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.4059855   -0.4678386   -0.3467388
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0855527   -0.0039190    0.1670504
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.2529383    0.0477226    0.4139300
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.2890350    0.2454794    0.3300763
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.4973377    0.2246881    0.6741062
