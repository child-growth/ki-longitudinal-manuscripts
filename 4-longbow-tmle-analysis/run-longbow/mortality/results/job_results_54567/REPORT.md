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

studyid                     country                        ever_stunted06    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      167     265
ki0047075b-MAL-ED           BANGLADESH                     0                    1        0     265
ki0047075b-MAL-ED           BANGLADESH                     1                    0       95     265
ki0047075b-MAL-ED           BANGLADESH                     1                    1        3     265
ki0047075b-MAL-ED           INDIA                          0                    0      158     251
ki0047075b-MAL-ED           INDIA                          0                    1        1     251
ki0047075b-MAL-ED           INDIA                          1                    0       91     251
ki0047075b-MAL-ED           INDIA                          1                    1        1     251
ki0047075b-MAL-ED           PERU                           0                    0      171     303
ki0047075b-MAL-ED           PERU                           0                    1        1     303
ki0047075b-MAL-ED           PERU                           1                    0      130     303
ki0047075b-MAL-ED           PERU                           1                    1        1     303
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      194     314
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0      119     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        1     314
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      148     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        1     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0      111     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        2     262
ki1000109-EE                PAKISTAN                       0                    0       93     379
ki1000109-EE                PAKISTAN                       0                    1        0     379
ki1000109-EE                PAKISTAN                       1                    0      282     379
ki1000109-EE                PAKISTAN                       1                    1        4     379
ki1000304-VITAMIN-A         INDIA                          0                    0     2265    3898
ki1000304-VITAMIN-A         INDIA                          0                    1       29    3898
ki1000304-VITAMIN-A         INDIA                          1                    0     1556    3898
ki1000304-VITAMIN-A         INDIA                          1                    1       48    3898
ki1000304b-SAS-CompFeed     INDIA                          0                    0      853    1532
ki1000304b-SAS-CompFeed     INDIA                          0                    1       14    1532
ki1000304b-SAS-CompFeed     INDIA                          1                    0      629    1532
ki1000304b-SAS-CompFeed     INDIA                          1                    1       36    1532
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      226     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0      186     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                    0      527     700
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1                    0      169     700
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
ki1113344-GMS-Nepal         NEPAL                          0                    0      473     698
ki1113344-GMS-Nepal         NEPAL                          0                    1        3     698
ki1113344-GMS-Nepal         NEPAL                          1                    0      217     698
ki1113344-GMS-Nepal         NEPAL                          1                    1        5     698
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0     9428   14060
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      623   14060
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0     3527   14060
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      482   14060
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1194    1813
ki1148112-iLiNS-DOSE        MALAWI                         0                    1       73    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                    0      505    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                    1       41    1813
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0      840    1191
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       24    1191
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0      312    1191
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1       15    1191
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    15085   27197
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      262   27197
kiGH5241-JiVitA-3           BANGLADESH                     1                    0    11311   27197
kiGH5241-JiVitA-3           BANGLADESH                     1                    1      539   27197
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     3217    5270
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       20    5270
kiGH5241-JiVitA-4           BANGLADESH                     1                    0     2006    5270
kiGH5241-JiVitA-4           BANGLADESH                     1                    1       27    5270


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
![](/tmp/29ec1f80-831d-4a2b-98c0-eafe13afe95f/a0ab118c-f6b4-420d-a2dd-50a0418b006c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/29ec1f80-831d-4a2b-98c0-eafe13afe95f/a0ab118c-f6b4-420d-a2dd-50a0418b006c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/29ec1f80-831d-4a2b-98c0-eafe13afe95f/a0ab118c-f6b4-420d-a2dd-50a0418b006c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/29ec1f80-831d-4a2b-98c0-eafe13afe95f/a0ab118c-f6b4-420d-a2dd-50a0418b006c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0126090   0.0080449   0.0171732
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0303223   0.0219698   0.0386749
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0166901   0.0102506   0.0231296
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0516072   0.0257083   0.0775060
ki1101329-Keneba          GAMBIA       0                    NA                0.0155090   0.0094333   0.0215847
ki1101329-Keneba          GAMBIA       1                    NA                0.0426435   0.0282586   0.0570284
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0618506   0.0571302   0.0665711
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1164591   0.1063188   0.1265994
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0569954   0.0441938   0.0697969
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0757466   0.0529022   0.0985910
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0277183   0.0167827   0.0386539
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0462965   0.0236425   0.0689504
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0175301   0.0152921   0.0197681
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0451083   0.0408104   0.0494061
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0061808   0.0029954   0.0093662
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0132395   0.0084357   0.0180433


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
ki1101329-Keneba          GAMBIA       NA                   NA                0.0237999   0.0177985   0.0298013
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0785917   0.0741435   0.0830400
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0327456   0.0226340   0.0428572
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0294518   0.0273600   0.0315436
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089184   0.0062077   0.0116291


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 2.404812   1.5258399   3.790124
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.092085   1.6502247   5.793748
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.749597   1.6387936   4.613321
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.882909   1.6782602   2.112512
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.328996   0.9123457   1.935924
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.670246   0.8906274   3.132312
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.573192   2.1924964   3.019989
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.142031   1.1419893   4.017811


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0071447    0.0032267   0.0110628
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0159470    0.0040213   0.0278727
ki1101329-Keneba          GAMBIA       0                    NA                0.0082909    0.0032142   0.0133676
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0167411    0.0135115   0.0199708
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0058839   -0.0018931   0.0136608
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0050273   -0.0018998   0.0119543
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0119217    0.0098777   0.0139657
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0027376    0.0004887   0.0049865


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.3616891    0.1510784   0.5200489
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4886156    0.1984825   0.6737264
ki1101329-Keneba          GAMBIA       0                    NA                0.3483592    0.1214129   0.5166834
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.2130138    0.1725031   0.2515412
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0935739   -0.0378595   0.2083627
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.1535245   -0.0802452   0.3367054
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4047870    0.3381564   0.4647097
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3069606    0.0028461   0.5183255
