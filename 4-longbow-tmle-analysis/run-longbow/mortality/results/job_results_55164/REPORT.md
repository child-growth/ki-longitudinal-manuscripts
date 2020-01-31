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

**Outcome Variable:** dead6plus

## Predictor Variables

**Intervention Variable:** ever_stunted06

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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted06    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      155     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                         1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         0       85     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                         0      149     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                         1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                         0       86     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                         1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                         0      149     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                         1        0     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                         0      123     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                         1        1     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      155     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0      106     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      140     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0      105     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                         0       91     374  dead6plus        
ki1000109-EE                PAKISTAN                       0                         1        0     374  dead6plus        
ki1000109-EE                PAKISTAN                       1                         0      279     374  dead6plus        
ki1000109-EE                PAKISTAN                       1                         1        4     374  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                         0     2094    3605  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                         1       11    3605  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                         0     1480    3605  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                         1       20    3605  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         0      796    1388  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         1        2    1388  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         0      580    1388  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         1       10    1388  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      214     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        1     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0      184     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        3     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         0      455     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         1        2     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         0      159     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         1        1     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1651    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      445    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                         0     1535    2312  dead6plus        
ki1101329-Keneba            GAMBIA                         0                         1       35    2312  dead6plus        
ki1101329-Keneba            GAMBIA                         1                         0      709    2312  dead6plus        
ki1101329-Keneba            GAMBIA                         1                         1       33    2312  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0      295     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1        2     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0       39     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        0     336  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                         0      398     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                         1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                         0      192     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                         1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0     8019   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      199   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0     3260   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      216   11694  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1156    1756  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         1       73    1756  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         0      487    1756  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         1       40    1756  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0      815    1148  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       16    1148  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0      305    1148  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1       12    1148  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    11895   21009  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      121   21009  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     8804   21009  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         1      189   21009  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     3210    5260  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       20    5260  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         0     2002    5260  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       28    5260  dead6plus        


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
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
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







# Results Detail

## Results Plots
![](/tmp/756aed47-0fa5-4d17-b656-a09b23285049/b4586cfc-c2d8-4947-ac4c-3bce52e62dae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/756aed47-0fa5-4d17-b656-a09b23285049/b4586cfc-c2d8-4947-ac4c-3bce52e62dae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/756aed47-0fa5-4d17-b656-a09b23285049/b4586cfc-c2d8-4947-ac4c-3bce52e62dae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/756aed47-0fa5-4d17-b656-a09b23285049/b4586cfc-c2d8-4947-ac4c-3bce52e62dae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.0052662   0.0021543   0.0083781
ki1000304-VITAMIN-A      INDIA        1                    NA                0.0131889   0.0073631   0.0190147
ki1101329-Keneba         GAMBIA       0                    NA                0.0227013   0.0151285   0.0302741
ki1101329-Keneba         GAMBIA       1                    NA                0.0421970   0.0277415   0.0566525
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.0243029   0.0209660   0.0276399
ki1126311-ZVITAMBO       ZIMBABWE     1                    NA                0.0601132   0.0520295   0.0681969
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0598439   0.0464545   0.0732333
ki1148112-iLiNS-DOSE     MALAWI       1                    NA                0.0731963   0.0509887   0.0954040
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.0193441   0.0099820   0.0287062
ki1148112-iLiNS-DYAD-M   MALAWI       1                    NA                0.0387368   0.0176842   0.0597893
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.0103586   0.0084148   0.0123025
kiGH5241-JiVitA-3        BANGLADESH   1                    NA                0.0208191   0.0173692   0.0242691
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.0062019   0.0030160   0.0093878
kiGH5241-JiVitA-4        BANGLADESH   1                    NA                0.0137005   0.0087947   0.0186064


### Parameter: E(Y)


studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ki1101329-Keneba         GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
ki1126311-ZVITAMBO       ZIMBABWE     NA                   NA                0.0354883   0.0321349   0.0388417
ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.0243902   0.0154631   0.0333174
kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.0147556   0.0131087   0.0164025
kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.0091255   0.0063790   0.0118719


### Parameter: RR


studyid                  country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A      INDIA        1                    0                 2.504451   1.1975179   5.237728
ki1101329-Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba         GAMBIA       1                    0                 1.858791   1.1521366   2.998867
ki1126311-ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO       ZIMBABWE     1                    0                 2.473495   2.0413993   2.997050
ki1148112-iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE     MALAWI       1                    0                 1.223120   0.8389102   1.783294
ki1148112-iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M   MALAWI       1                    0                 2.002510   0.9681661   4.141900
kiGH5241-JiVitA-3        BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3        BANGLADESH   1                    0                 2.009838   1.5619008   2.586240
kiGH5241-JiVitA-4        BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4        BANGLADESH   1                    0                 2.209099   1.1815484   4.130272


### Parameter: PAR


studyid                  country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.0033330    0.0005801   0.0060859
ki1101329-Keneba         GAMBIA       0                    NA                0.0067105    0.0011368   0.0122841
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.0111854    0.0085690   0.0138017
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0045069   -0.0035524   0.0125662
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.0050461   -0.0013260   0.0114183
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.0043970    0.0027574   0.0060365
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.0029236    0.0006248   0.0052224


### Parameter: PAF


studyid                  country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.3875954    0.0159734   0.6188727
ki1101329-Keneba         GAMBIA       0                    NA                0.2281554    0.0226995   0.3904187
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.3151845    0.2440383   0.3796349
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0700361   -0.0633913   0.1867218
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.2068916   -0.0873706   0.4215211
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.2979865    0.1835835   0.3963583
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.3203782    0.0183251   0.5294922
