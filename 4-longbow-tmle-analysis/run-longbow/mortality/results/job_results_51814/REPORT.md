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

**Intervention Variable:** ever_stunted06

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

studyid                     country                        ever_stunted06    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      167     265
ki0047075b-MAL-ED           BANGLADESH                     0                    1        0     265
ki0047075b-MAL-ED           BANGLADESH                     1                    0       95     265
ki0047075b-MAL-ED           BANGLADESH                     1                    1        3     265
ki0047075b-MAL-ED           INDIA                          0                    0      159     251
ki0047075b-MAL-ED           INDIA                          0                    1        1     251
ki0047075b-MAL-ED           INDIA                          1                    0       90     251
ki0047075b-MAL-ED           INDIA                          1                    1        1     251
ki0047075b-MAL-ED           PERU                           0                    0      171     303
ki0047075b-MAL-ED           PERU                           0                    1        1     303
ki0047075b-MAL-ED           PERU                           1                    0      130     303
ki0047075b-MAL-ED           PERU                           1                    1        1     303
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      197     314
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0      116     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        1     314
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      149     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        1     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0      110     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        2     262
ki1000304-VITAMIN-A         INDIA                          0                    0     2177    3477
ki1000304-VITAMIN-A         INDIA                          0                    1       25    3477
ki1000304-VITAMIN-A         INDIA                          1                    0     1242    3477
ki1000304-VITAMIN-A         INDIA                          1                    1       33    3477
ki1000304b-SAS-CompFeed     INDIA                          0                    0      853    1532
ki1000304b-SAS-CompFeed     INDIA                          0                    1       14    1532
ki1000304b-SAS-CompFeed     INDIA                          1                    0      629    1532
ki1000304b-SAS-CompFeed     INDIA                          1                    1       36    1532
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      226     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0      186     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                    0      528     700
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1                    0      168     700
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1905    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      490    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
ki1101329-Keneba            GAMBIA                         0                    0     1669    2479
ki1101329-Keneba            GAMBIA                         0                    1       25    2479
ki1101329-Keneba            GAMBIA                         1                    0      751    2479
ki1101329-Keneba            GAMBIA                         1                    1       34    2479
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0      297     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0       39     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                    0      432     602
ki1113344-GMS-Nepal         NEPAL                          0                    1        2     602
ki1113344-GMS-Nepal         NEPAL                          1                    0      165     602
ki1113344-GMS-Nepal         NEPAL                          1                    1        3     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0     9442   14057
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      627   14057
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0     3510   14057
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      478   14057
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1194    1813
ki1148112-iLiNS-DOSE        MALAWI                         0                    1       73    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                    0      505    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                    1       41    1813
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0      854    1192
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       24    1192
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0      299    1192
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1       15    1192
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    15144   27206
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      262   27206
kiGH5241-JiVitA-3           BANGLADESH                     1                    0    11258   27206
kiGH5241-JiVitA-3           BANGLADESH                     1                    1      542   27206
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     3218    5270
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       20    5270
kiGH5241-JiVitA-4           BANGLADESH                     1                    0     2005    5270
kiGH5241-JiVitA-4           BANGLADESH                     1                    1       27    5270


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
![](/tmp/4b298bfd-13ad-4396-83f4-ffb601aa46c8/3986f46a-04e4-431d-8f32-ebb9ccabb92a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4b298bfd-13ad-4396-83f4-ffb601aa46c8/3986f46a-04e4-431d-8f32-ebb9ccabb92a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4b298bfd-13ad-4396-83f4-ffb601aa46c8/3986f46a-04e4-431d-8f32-ebb9ccabb92a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b298bfd-13ad-4396-83f4-ffb601aa46c8/3986f46a-04e4-431d-8f32-ebb9ccabb92a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0095321   0.0063734   0.0126908
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0163355   0.0056795   0.0269916
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0184845   0.0122091   0.0247600
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0490713   0.0274805   0.0706620
ki1101329-Keneba          GAMBIA       0                    NA                0.0152505   0.0089772   0.0215237
ki1101329-Keneba          GAMBIA       1                    NA                0.0412834   0.0259608   0.0566059
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0782310   0.0729026   0.0835594
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1049928   0.0875591   0.1224264
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0569685   0.0441831   0.0697539
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0747231   0.0523488   0.0970975
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0274861   0.0166869   0.0382852
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0489049   0.0253942   0.0724156
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0139828   0.0125672   0.0153984
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0356717   0.0280703   0.0432732
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0056953   0.0032210   0.0081696
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0143313   0.0035111   0.0251515


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


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 1.713747   0.8242235   3.563266
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.654717   1.7219491   4.092760
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.707023   1.5553345   4.711511
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.342087   1.1219846   1.605366
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.311657   0.9030446   1.905161
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.779262   0.9566146   3.309349
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.551114   2.0116710   3.235212
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.516332   1.0530884   6.012721


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0071490    0.0039134   0.0103846
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0141525    0.0042779   0.0240271
ki1101329-Keneba          GAMBIA       0                    NA                0.0085495    0.0031972   0.0139017
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0003775   -0.0037008   0.0044558
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0059107   -0.0017688   0.0135903
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0052321   -0.0016219   0.0120860
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0155695    0.0139466   0.0171924
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0032231    0.0012527   0.0051936


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.4285693    0.2640132   0.5563330
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4336334    0.2157678   0.5909743
ki1101329-Keneba          GAMBIA       0                    NA                0.3592220    0.1152824   0.5359011
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0048026   -0.0483919   0.0552982
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0940013   -0.0357746   0.2075170
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.1599130   -0.0705544   0.3407658
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5268456    0.4882297   0.5625477
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3613992    0.1345920   0.5287645
