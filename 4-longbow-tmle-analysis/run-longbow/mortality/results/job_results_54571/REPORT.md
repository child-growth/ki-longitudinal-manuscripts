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

studyid                     country                        ever_co06    dead   n_cell       n
--------------------------  -----------------------------  ----------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0               0      252     263
ki0047075b-MAL-ED           BANGLADESH                     0               1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1               0        9     263
ki0047075b-MAL-ED           BANGLADESH                     1               1        0     263
ki0047075b-MAL-ED           INDIA                          0               0      230     251
ki0047075b-MAL-ED           INDIA                          0               1        2     251
ki0047075b-MAL-ED           INDIA                          1               0       19     251
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
ki1000109-EE                PAKISTAN                       0               0      314     379
ki1000109-EE                PAKISTAN                       0               1        2     379
ki1000109-EE                PAKISTAN                       1               0       61     379
ki1000109-EE                PAKISTAN                       1               1        2     379
ki1000304-VITAMIN-A         INDIA                          0               0     3488    3893
ki1000304-VITAMIN-A         INDIA                          0               1       48    3893
ki1000304-VITAMIN-A         INDIA                          1               0      330    3893
ki1000304-VITAMIN-A         INDIA                          1               1       27    3893
ki1000304b-SAS-CompFeed     INDIA                          0               0     1371    1507
ki1000304b-SAS-CompFeed     INDIA                          0               1       26    1507
ki1000304b-SAS-CompFeed     INDIA                          1               0      100    1507
ki1000304b-SAS-CompFeed     INDIA                          1               1       10    1507
ki1000304b-SAS-FoodSuppl    INDIA                          0               0      362     418
ki1000304b-SAS-FoodSuppl    INDIA                          0               1        3     418
ki1000304b-SAS-FoodSuppl    INDIA                          1               0       50     418
ki1000304b-SAS-FoodSuppl    INDIA                          1               1        3     418
ki1017093b-PROVIDE          BANGLADESH                     0               0      666     700
ki1017093b-PROVIDE          BANGLADESH                     0               1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1               0       30     700
ki1017093b-PROVIDE          BANGLADESH                     1               1        0     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               0     2373    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               0       22    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               1        0    2396
ki1101329-Keneba            GAMBIA                         0               0     2359    2476
ki1101329-Keneba            GAMBIA                         0               1       45    2476
ki1101329-Keneba            GAMBIA                         1               0       60    2476
ki1101329-Keneba            GAMBIA                         1               1       12    2476
ki1112895-Burkina Faso Zn   BURKINA FASO                   0               0      325     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0               1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1               0       11     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1               1        0     338
ki1113344-GMS-Nepal         NEPAL                          0               0      645     686
ki1113344-GMS-Nepal         NEPAL                          0               1        5     686
ki1113344-GMS-Nepal         NEPAL                          1               0       34     686
ki1113344-GMS-Nepal         NEPAL                          1               1        2     686
ki1126311-ZVITAMBO          ZIMBABWE                       0               0    12682   13857
ki1126311-ZVITAMBO          ZIMBABWE                       0               1      966   13857
ki1126311-ZVITAMBO          ZIMBABWE                       1               0      132   13857
ki1126311-ZVITAMBO          ZIMBABWE                       1               1       77   13857
ki1148112-iLiNS-DOSE        MALAWI                         0               0     1686    1813
ki1148112-iLiNS-DOSE        MALAWI                         0               1      111    1813
ki1148112-iLiNS-DOSE        MALAWI                         1               0       13    1813
ki1148112-iLiNS-DOSE        MALAWI                         1               1        3    1813
ki1148112-iLiNS-DYAD-M      MALAWI                         0               0     1131    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         0               1       34    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         1               0       13    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         1               1        4    1182
kiGH5241-JiVitA-3           BANGLADESH                     0               0    25085   26883
kiGH5241-JiVitA-3           BANGLADESH                     0               1      467   26883
kiGH5241-JiVitA-3           BANGLADESH                     1               0     1246   26883
kiGH5241-JiVitA-3           BANGLADESH                     1               1       85   26883
kiGH5241-JiVitA-4           BANGLADESH                     0               0     5019    5247
kiGH5241-JiVitA-4           BANGLADESH                     0               1       42    5247
kiGH5241-JiVitA-4           BANGLADESH                     1               0      182    5247
kiGH5241-JiVitA-4           BANGLADESH                     1               1        4    5247


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
![](/tmp/aa36bf38-e386-46cf-8eb1-a7da6b578d73/23539d52-2d7f-45fb-8794-4712a84629d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aa36bf38-e386-46cf-8eb1-a7da6b578d73/23539d52-2d7f-45fb-8794-4712a84629d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aa36bf38-e386-46cf-8eb1-a7da6b578d73/23539d52-2d7f-45fb-8794-4712a84629d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aa36bf38-e386-46cf-8eb1-a7da6b578d73/23539d52-2d7f-45fb-8794-4712a84629d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0135890   0.0097752   0.0174027
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0753295   0.0475856   0.1030734
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0186147   0.0089787   0.0282507
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0874599   0.0424682   0.1324517
ki1101329-Keneba          GAMBIA       0                    NA                0.0187283   0.0133075   0.0241491
ki1101329-Keneba          GAMBIA       1                    NA                0.1606880   0.0669666   0.2544094
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0709145   0.0665645   0.0752646
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.3429764   0.3031349   0.3828180
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0182900   0.0166231   0.0199570
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0691252   0.0540793   0.0841712


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0192653   0.0149469   0.0235838
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238885   0.0131223   0.0346548
ki1101329-Keneba          GAMBIA       NA                   NA                0.0230210   0.0171127   0.0289293
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0752688   0.0708760   0.0796616
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0205334   0.0188040   0.0222628


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 5.543433   3.487638    8.811019
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 4.698434   2.737903    8.062843
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 8.579953   4.473251   16.456843
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 4.836475   4.242027    5.514225
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.779390   2.981983    4.790031


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0056764   0.0030735   0.0082793
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0052738   0.0016807   0.0088670
ki1101329-Keneba          GAMBIA       0                    NA                0.0042927   0.0015982   0.0069872
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0043543   0.0032063   0.0055022
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0022434   0.0015449   0.0029418


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2946421   0.1659183   0.4034999
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2207678   0.0716870   0.3459073
ki1101329-Keneba          GAMBIA       0                    NA                0.1864686   0.0718858   0.2869053
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0578496   0.0426714   0.0727873
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1092547   0.0760902   0.1412288
