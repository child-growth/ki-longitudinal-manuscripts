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
ki1000304-VITAMIN-A         INDIA                          0                        0     1661    3794
ki1000304-VITAMIN-A         INDIA                          0                        1       10    3794
ki1000304-VITAMIN-A         INDIA                          1                        0     2076    3794
ki1000304-VITAMIN-A         INDIA                          1                        1       47    3794
ki1000304b-SAS-CompFeed     INDIA                          0                        0      867    1530
ki1000304b-SAS-CompFeed     INDIA                          0                        1       17    1530
ki1000304b-SAS-CompFeed     INDIA                          1                        0      615    1530
ki1000304b-SAS-CompFeed     INDIA                          1                        1       31    1530
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      194     405
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        2     405
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0      207     405
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        2     405
ki1017093b-PROVIDE          BANGLADESH                     0                        0      470     699
ki1017093b-PROVIDE          BANGLADESH                     0                        1        3     699
ki1017093b-PROVIDE          BANGLADESH                     1                        0      225     699
ki1017093b-PROVIDE          BANGLADESH                     1                        1        1     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2111    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      284    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396
ki1101329-Keneba            GAMBIA                         0                        0     1907    2422
ki1101329-Keneba            GAMBIA                         0                        1       33    2422
ki1101329-Keneba            GAMBIA                         1                        0      457    2422
ki1101329-Keneba            GAMBIA                         1                        1       25    2422
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0      262     337
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        2     337
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0       73     337
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0     337
ki1113344-GMS-Nepal         NEPAL                          0                        0      378     600
ki1113344-GMS-Nepal         NEPAL                          0                        1        2     600
ki1113344-GMS-Nepal         NEPAL                          1                        0      217     600
ki1113344-GMS-Nepal         NEPAL                          1                        1        3     600
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0    10954   14075
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      568   14075
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0     2013   14075
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1      540   14075
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1464    1815
ki1148112-iLiNS-DOSE        MALAWI                         0                        1       89    1815
ki1148112-iLiNS-DOSE        MALAWI                         1                        0      237    1815
ki1148112-iLiNS-DOSE        MALAWI                         1                        1       25    1815
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0      962    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       25    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0      194    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1       14    1195
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    14421   27092
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      242   27092
kiGH5241-JiVitA-3           BANGLADESH                     1                        0    11915   27092
kiGH5241-JiVitA-3           BANGLADESH                     1                        1      514   27092
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     3475    5268
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       17    5268
kiGH5241-JiVitA-4           BANGLADESH                     1                        0     1746    5268
kiGH5241-JiVitA-4           BANGLADESH                     1                        1       30    5268


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
![](/tmp/bcaeb728-7c66-4824-b213-3ae9b99b48cf/8a59a9d7-9c61-410b-aa8f-ccd1bcbf7878/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bcaeb728-7c66-4824-b213-3ae9b99b48cf/8a59a9d7-9c61-410b-aa8f-ccd1bcbf7878/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bcaeb728-7c66-4824-b213-3ae9b99b48cf/8a59a9d7-9c61-410b-aa8f-ccd1bcbf7878/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bcaeb728-7c66-4824-b213-3ae9b99b48cf/8a59a9d7-9c61-410b-aa8f-ccd1bcbf7878/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0059501   0.0022862   0.0096140
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0221462   0.0158812   0.0284112
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0189633   0.0107475   0.0271790
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0479557   0.0271378   0.0687735
ki1101329-Keneba          GAMBIA       0                    NA                0.0171860   0.0113281   0.0230438
ki1101329-Keneba          GAMBIA       1                    NA                0.0460742   0.0271764   0.0649719
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1291073   0.1239727   0.1342419
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2860475   0.2510421   0.3210528
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0574448   0.0458793   0.0690103
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0951864   0.0594429   0.1309299
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0253088   0.0155042   0.0351134
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0685849   0.0340149   0.1031550
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0194839   0.0177383   0.0212296
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0336485   0.0289289   0.0383681
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0045384   0.0019756   0.0071012
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0167350   0.0092098   0.0242601


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0150237   0.0111524   0.0188950
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0313725   0.0186158   0.0441293
ki1101329-Keneba          GAMBIA       NA                   NA                0.0239472   0.0178572   0.0300371
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0787211   0.0742720   0.0831703
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0628099   0.0516450   0.0739749
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0326360   0.0225576   0.0427143
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0279049   0.0259124   0.0298974
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089218   0.0062179   0.0116257


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.722001   1.889940   7.330013
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.528868   1.780074   3.592647
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.680920   1.572639   4.570235
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.215580   1.947168   2.520990
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.657007   1.082121   2.537307
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 2.709926   1.435314   5.116437
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.726991   1.474900   2.022168
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.687416   1.798827   7.558834


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.0090736    0.0050160    0.0131313
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0124093    0.0046209    0.0201976
ki1101329-Keneba          GAMBIA       0                    NA                 0.0067612    0.0025263    0.0109961
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0503861   -0.0546719   -0.0461004
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0053651   -0.0000702    0.0108004
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0073272    0.0010969    0.0135575
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0084210    0.0069104    0.0099316
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0043834    0.0022072    0.0065596


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.6039545    0.3076903    0.7734366
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.3955452    0.2154524    0.5342978
ki1101329-Keneba          GAMBIA       0                    NA                 0.2823384    0.1006362    0.4273306
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.6400587   -0.7158606   -0.5676055
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0854186   -0.0039882    0.1668635
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.2245128    0.0235891    0.3840909
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.3017751    0.2538002    0.3466655
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.4913125    0.2179969    0.6691024
