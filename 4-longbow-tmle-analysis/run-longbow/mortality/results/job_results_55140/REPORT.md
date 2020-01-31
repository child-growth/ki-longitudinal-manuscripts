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

studyid                     country                        ever_stunted06    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      167     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                    1        0     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                    0       95     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                    1        3     265  dead             
ki0047075b-MAL-ED           INDIA                          0                    0      158     251  dead             
ki0047075b-MAL-ED           INDIA                          0                    1        1     251  dead             
ki0047075b-MAL-ED           INDIA                          1                    0       91     251  dead             
ki0047075b-MAL-ED           INDIA                          1                    1        1     251  dead             
ki0047075b-MAL-ED           PERU                           0                    0      171     303  dead             
ki0047075b-MAL-ED           PERU                           0                    1        1     303  dead             
ki0047075b-MAL-ED           PERU                           1                    0      130     303  dead             
ki0047075b-MAL-ED           PERU                           1                    1        1     303  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      194     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0      119     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        1     314  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      148     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        1     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0      111     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        2     262  dead             
ki1000109-EE                PAKISTAN                       0                    0       93     379  dead             
ki1000109-EE                PAKISTAN                       0                    1        0     379  dead             
ki1000109-EE                PAKISTAN                       1                    0      282     379  dead             
ki1000109-EE                PAKISTAN                       1                    1        4     379  dead             
ki1000304-VITAMIN-A         INDIA                          0                    0     2265    3898  dead             
ki1000304-VITAMIN-A         INDIA                          0                    1       29    3898  dead             
ki1000304-VITAMIN-A         INDIA                          1                    0     1556    3898  dead             
ki1000304-VITAMIN-A         INDIA                          1                    1       48    3898  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                    0      853    1532  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                    1       14    1532  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                    0      629    1532  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                    1       36    1532  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      226     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        2     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0      186     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        4     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                    0      527     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                    0      169     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1905    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      490    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                    0     1669    2479  dead             
ki1101329-Keneba            GAMBIA                         0                    1       25    2479  dead             
ki1101329-Keneba            GAMBIA                         1                    0      751    2479  dead             
ki1101329-Keneba            GAMBIA                         1                    1       34    2479  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0      297     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        2     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0       39     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0     338  dead             
ki1113344-GMS-Nepal         NEPAL                          0                    0      473     698  dead             
ki1113344-GMS-Nepal         NEPAL                          0                    1        3     698  dead             
ki1113344-GMS-Nepal         NEPAL                          1                    0      217     698  dead             
ki1113344-GMS-Nepal         NEPAL                          1                    1        5     698  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0     9428   14060  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      623   14060  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0     3527   14060  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      482   14060  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1194    1813  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                    1       73    1813  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                    0      505    1813  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                    1       41    1813  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0      840    1191  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       24    1191  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0      312    1191  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1       15    1191  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    15085   27197  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      262   27197  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                    0    11311   27197  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                    1      539   27197  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     3217    5270  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       20    5270  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                    0     2006    5270  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                    1       27    5270  dead             


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
![](/tmp/a2d2cecf-7a8d-4df1-b0ff-32e74410ce5f/0eb81647-de4a-4bd8-9ac9-b4a10e6960ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2d2cecf-7a8d-4df1-b0ff-32e74410ce5f/0eb81647-de4a-4bd8-9ac9-b4a10e6960ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2d2cecf-7a8d-4df1-b0ff-32e74410ce5f/0eb81647-de4a-4bd8-9ac9-b4a10e6960ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2d2cecf-7a8d-4df1-b0ff-32e74410ce5f/0eb81647-de4a-4bd8-9ac9-b4a10e6960ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0125559   0.0079797   0.0171321
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0296266   0.0212735   0.0379798
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0166901   0.0102506   0.0231296
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0516072   0.0257083   0.0775060
ki1101329-Keneba          GAMBIA       0                    NA                0.0154874   0.0094097   0.0215650
ki1101329-Keneba          GAMBIA       1                    NA                0.0424730   0.0282172   0.0567287
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0619548   0.0572150   0.0666947
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1170776   0.1068744   0.1272809
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0574158   0.0445657   0.0702660
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0728735   0.0510242   0.0947228
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0275873   0.0166878   0.0384869
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0468640   0.0240246   0.0697034
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0177441   0.0154612   0.0200270
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0441601   0.0400103   0.0483099
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0062134   0.0030314   0.0093955
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0131951   0.0084188   0.0179714


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
ki1000304-VITAMIN-A       INDIA        1                    0                 2.359581   1.4883387   3.740831
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.092085   1.6502247   5.793748
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.742427   1.6357218   4.597913
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.889726   1.6839261   2.120677
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.269223   0.8729912   1.845296
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.698749   0.9073681   3.180351
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.488718   2.1206927   2.920611
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.123641   1.1356576   3.971136


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0071978    0.0032727   0.0111230
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0159470    0.0040213   0.0278727
ki1101329-Keneba          GAMBIA       0                    NA                0.0083125    0.0032391   0.0133860
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0166369    0.0133896   0.0198843
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0054634   -0.0023154   0.0132422
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0051583   -0.0017408   0.0120573
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0117076    0.0096405   0.0137748
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0027050    0.0004575   0.0049525


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.3643790    0.1529234   0.5230489
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4886156    0.1984825   0.6737264
ki1101329-Keneba          GAMBIA       0                    NA                0.3492679    0.1223531   0.5175142
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.2116878    0.1709029   0.2504664
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0868868   -0.0446307   0.2018465
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.1575251   -0.0750946   0.3398125
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3975193    0.3295430   0.4586036
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3033029    0.0001774   0.5145271
