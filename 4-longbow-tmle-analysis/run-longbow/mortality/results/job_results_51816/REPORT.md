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
ki1017093b-PROVIDE          BANGLADESH                     0                        0      470     700
ki1017093b-PROVIDE          BANGLADESH                     0                        1        3     700
ki1017093b-PROVIDE          BANGLADESH                     1                        0      226     700
ki1017093b-PROVIDE          BANGLADESH                     1                        1        1     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2110    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      285    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396
ki1101329-Keneba            GAMBIA                         0                        0     1924    2452
ki1101329-Keneba            GAMBIA                         0                        1       33    2452
ki1101329-Keneba            GAMBIA                         1                        0      469    2452
ki1101329-Keneba            GAMBIA                         1                        1       26    2452
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0      262     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0       74     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                        0      378     602
ki1113344-GMS-Nepal         NEPAL                          0                        1        2     602
ki1113344-GMS-Nepal         NEPAL                          1                        0      219     602
ki1113344-GMS-Nepal         NEPAL                          1                        1        3     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0    10958   14085
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      563   14085
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0     2019   14085
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1      545   14085
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1464    1816
ki1148112-iLiNS-DOSE        MALAWI                         0                        1       89    1816
ki1148112-iLiNS-DOSE        MALAWI                         1                        0      238    1816
ki1148112-iLiNS-DOSE        MALAWI                         1                        1       25    1816
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0      963    1199
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       24    1199
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0      197    1199
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1       15    1199
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    14412   27245
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      241   27245
kiGH5241-JiVitA-3           BANGLADESH                     1                        0    12006   27245
kiGH5241-JiVitA-3           BANGLADESH                     1                        1      586   27245
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
![](/tmp/0390e607-e498-413d-aa57-9e9b7354d94f/3864c714-55bd-40c1-bb67-486eba2760e1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0390e607-e498-413d-aa57-9e9b7354d94f/3864c714-55bd-40c1-bb67-486eba2760e1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0390e607-e498-413d-aa57-9e9b7354d94f/3864c714-55bd-40c1-bb67-486eba2760e1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0390e607-e498-413d-aa57-9e9b7354d94f/3864c714-55bd-40c1-bb67-486eba2760e1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0059093   0.0022668   0.0095519
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0225768   0.0162656   0.0288880
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0181641   0.0104061   0.0259221
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0512058   0.0317404   0.0706713
ki1101329-Keneba          GAMBIA       0                    NA                0.0168607   0.0111353   0.0225861
ki1101329-Keneba          GAMBIA       1                    NA                0.0472797   0.0282613   0.0662981
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1135755   0.1089293   0.1182218
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2922518   0.2568244   0.3276791
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0574861   0.0459179   0.0690543
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0966431   0.0611584   0.1321278
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0244593   0.0148345   0.0340842
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0755913   0.0411634   0.1100192
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0211945   0.0194063   0.0229828
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0367423   0.0320310   0.0414537
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0044820   0.0019598   0.0070041
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0166107   0.0093690   0.0238524


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


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.820526   1.941456   7.518284
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.819069   2.029269   3.916263
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.804139   1.656227   4.747657
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.573193   2.263196   2.925650
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.681156   1.106129   2.555113
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 3.090490   1.692862   5.642004
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.733579   1.503454   1.998928
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.706137   1.826689   7.519315


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.0093378    0.0052646    0.0134109
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0144517    0.0069221    0.0219813
ki1101329-Keneba          GAMBIA       0                    NA                 0.0072013    0.0029955    0.0114071
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0349103   -0.0387509   -0.0310697
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0052892   -0.0001470    0.0107255
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0080678    0.0016486    0.0144870
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0091597    0.0076960    0.0106234
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0044263    0.0022708    0.0065818


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.6124286    0.3214002    0.7786448
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.4430888    0.2790236    0.5698194
ki1101329-Keneba          GAMBIA       0                    NA                 0.2992813    0.1218220    0.4408803
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.4437830   -0.5079370   -0.3823584
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0842566   -0.0052351    0.1657813
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.2480329    0.0417991    0.4098790
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.3017602    0.2605518    0.3406722
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.4968773    0.2285345    0.6718810
