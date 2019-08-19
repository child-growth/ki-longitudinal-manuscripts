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
ki1017093b-PROVIDE          BANGLADESH                     0                    0      528     699
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                    0      167     699
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1905    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      490    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
ki1101329-Keneba            GAMBIA                         0                    0     1647    2450
ki1101329-Keneba            GAMBIA                         0                    1       25    2450
ki1101329-Keneba            GAMBIA                         1                    0      744    2450
ki1101329-Keneba            GAMBIA                         1                    1       34    2450
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0      297     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0       39     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                    0      432     602
ki1113344-GMS-Nepal         NEPAL                          0                    1        2     602
ki1113344-GMS-Nepal         NEPAL                          1                    0      165     602
ki1113344-GMS-Nepal         NEPAL                          1                    1        3     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0     9433   14047
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      627   14047
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0     3509   14047
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      478   14047
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1194    1813
ki1148112-iLiNS-DOSE        MALAWI                         0                    1       73    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                    0      505    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                    1       41    1813
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0      852    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       24    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0      297    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1       15    1188
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    15128   27165
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      262   27165
kiGH5241-JiVitA-3           BANGLADESH                     1                    0    11233   27165
kiGH5241-JiVitA-3           BANGLADESH                     1                    1      542   27165
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     3218    5269
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       20    5269
kiGH5241-JiVitA-4           BANGLADESH                     1                    0     2004    5269
kiGH5241-JiVitA-4           BANGLADESH                     1                    1       27    5269


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
![](/tmp/82c3c9da-2b13-47fa-a381-351081f18e8e/6b9540f7-14a4-43f7-98ba-e82f5e3b0ca2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/82c3c9da-2b13-47fa-a381-351081f18e8e/6b9540f7-14a4-43f7-98ba-e82f5e3b0ca2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/82c3c9da-2b13-47fa-a381-351081f18e8e/6b9540f7-14a4-43f7-98ba-e82f5e3b0ca2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/82c3c9da-2b13-47fa-a381-351081f18e8e/6b9540f7-14a4-43f7-98ba-e82f5e3b0ca2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0095381   0.0063715   0.0127047
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0160243   0.0063720   0.0256767
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0184845   0.0122091   0.0247600
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0490713   0.0274805   0.0706620
ki1101329-Keneba          GAMBIA       0                    NA                0.0152473   0.0090971   0.0213976
ki1101329-Keneba          GAMBIA       1                    NA                0.0412277   0.0258337   0.0566217
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0812195   0.0757921   0.0866468
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1040182   0.0873575   0.1206789
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0567080   0.0440693   0.0693466
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0734648   0.0516779   0.0952517
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0273852   0.0165567   0.0382138
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0476915   0.0238162   0.0715668
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0144385   0.0130036   0.0158735
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0365478   0.0291739   0.0439218
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0055978   0.0031463   0.0080493
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0161571   0.0011599   0.0311543


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


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 1.680027   0.8444194   3.342524
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.654717   1.7219491   4.092760
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.703929   1.5604101   4.685457
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.280706   1.0771009   1.522798
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.295494   0.8947511   1.875722
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.741504   0.9204305   3.295021
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.531274   2.0207928   3.170711
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.886330   1.0337932   8.058578


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.0071429    0.0039064   0.0103794
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0141525    0.0042779   0.0240271
ki1101329-Keneba          GAMBIA       0                    NA                 0.0088343    0.0036019   0.0140668
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0025550   -0.0066936   0.0015837
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0061712   -0.0014166   0.0137591
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.0054430   -0.0014285   0.0123146
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0151584    0.0135619   0.0167549
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0033223    0.0013662   0.0052784


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                 0.4282051    0.2632518   0.5562264
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.4336334    0.2157678   0.5909743
ki1101329-Keneba          GAMBIA       0                    NA                 0.3668486    0.1349100   0.5366024
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0324794   -0.0868802   0.0191984
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                 0.0981443   -0.0297356   0.2101431
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                 0.1658032   -0.0646334   0.3463625
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.5121614    0.4737967   0.5477290
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.3724509    0.1483285   0.5375942
