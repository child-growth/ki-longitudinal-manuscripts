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

**Outcome Variable:** dead0plus

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

studyid                     country                        ever_stunted06    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      167     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                         1        0     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         0       95     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         1        3     265  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                         0      158     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                         1        1     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                         0       91     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                         1        1     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                         0      171     303  dead0plus        
ki0047075b-MAL-ED           PERU                           0                         1        1     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                         0      130     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                         1        1     303  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      194     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0      119     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        1     314  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      148     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        1     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0      111     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        2     262  dead0plus        
ki1000109-EE                PAKISTAN                       0                         0       93     379  dead0plus        
ki1000109-EE                PAKISTAN                       0                         1        0     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                         0      282     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                         1        4     379  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                         0     2265    3898  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                         1       29    3898  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                         0     1556    3898  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                         1       48    3898  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         0      853    1532  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         1       14    1532  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         0      629    1532  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         1       36    1532  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      226     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        2     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0      186     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        4     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         0      527     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         1        4     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         0      168     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         1        1     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1905    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      490    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                         0     1647    2479  dead0plus        
ki1101329-Keneba            GAMBIA                         0                         1       47    2479  dead0plus        
ki1101329-Keneba            GAMBIA                         1                         0      744    2479  dead0plus        
ki1101329-Keneba            GAMBIA                         1                         1       41    2479  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0      297     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1        2     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0       39     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        0     338  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                         0      473     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                         1        3     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                         0      217     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                         1        5     698  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0     9419   14060  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      632   14060  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0     3526   14060  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      483   14060  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1194    1813  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         1       73    1813  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         0      505    1813  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         1       41    1813  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0      838    1191  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       26    1191  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0      310    1191  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1       17    1191  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    15070   27197  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      277   27197  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         0    11285   27197  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         1      565   27197  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     3217    5270  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       20    5270  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         0     2005    5270  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       28    5270  dead0plus        


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
![](/tmp/ec588c81-ddff-4a52-acd0-149935162db5/0d800487-ad7b-4fba-94a1-7b8c5b9b799d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ec588c81-ddff-4a52-acd0-149935162db5/0d800487-ad7b-4fba-94a1-7b8c5b9b799d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ec588c81-ddff-4a52-acd0-149935162db5/0d800487-ad7b-4fba-94a1-7b8c5b9b799d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ec588c81-ddff-4a52-acd0-149935162db5/0d800487-ad7b-4fba-94a1-7b8c5b9b799d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0126298   0.0080645   0.0171951
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0302563   0.0219115   0.0386011
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0166901   0.0102506   0.0231296
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0516072   0.0257083   0.0775060
ki1101329-Keneba          GAMBIA       0                    NA                0.0275981   0.0197361   0.0354602
ki1101329-Keneba          GAMBIA       1                    NA                0.0506609   0.0351593   0.0661626
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0627303   0.0579586   0.0675019
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1187861   0.1085136   0.1290586
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0569176   0.0441177   0.0697176
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0723967   0.0505674   0.0942261
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0302751   0.0188713   0.0416789
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0522817   0.0282697   0.0762937
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0186378   0.0163048   0.0209709
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0464357   0.0421199   0.0507515
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0061905   0.0030170   0.0093641
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0137273   0.0087682   0.0186865


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
ki1101329-Keneba          GAMBIA       NA                   NA                0.0354982   0.0282128   0.0427836
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0793030   0.0748364   0.0837696
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0361041   0.0255050   0.0467032
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0309593   0.0288157   0.0331029
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0091082   0.0063617   0.0118546


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 2.395633   1.5203228   3.774892
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.092085   1.6502247   5.793748
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.835665   1.2081460   2.789122
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.893602   1.6888745   2.123146
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.271956   0.8729386   1.853363
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.726888   0.9537970   3.126602
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.491474   2.1337997   2.909102
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.217476   1.1850683   4.149298


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0071239    0.0032057   0.0110422
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0159470    0.0040213   0.0278727
ki1101329-Keneba          GAMBIA       0                    NA                0.0079001    0.0022820   0.0135181
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0165727    0.0133242   0.0198213
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0059616   -0.0018383   0.0137614
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0058290   -0.0015063   0.0131643
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0123215    0.0101846   0.0144583
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0029176    0.0006277   0.0052076


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.3606383    0.1500351   0.5190585
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4886156    0.1984825   0.6737264
ki1101329-Keneba          GAMBIA       0                    NA                0.2225481    0.0546791   0.3606072
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.2089800    0.1684861   0.2475018
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0948098   -0.0370152   0.2098773
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.1614499   -0.0613985   0.3375097
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3979888    0.3314820   0.4578792
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3203319    0.0194453   0.5288903
