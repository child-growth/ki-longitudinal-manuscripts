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

**Intervention Variable:** ever_sstunted024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
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

studyid                     country                        ever_sstunted024    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -----------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                           0      205     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                           1        2     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                           0       57     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                           1        1     265  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                           0      190     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                           1        2     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                           0       59     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                           1        0     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                           0      237     303  dead0plus        
ki0047075b-MAL-ED           PERU                           0                           1        2     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                           0       64     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                           1        0     303  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           0      241     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           1        0     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           0       72     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           1        1     314  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      123     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        2     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0      136     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        1     262  dead0plus        
ki1000109-EE                PAKISTAN                       0                           0      151     379  dead0plus        
ki1000109-EE                PAKISTAN                       0                           1        0     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                           0      224     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                           1        4     379  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                           0     2897    3907  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                           1       49    3907  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                           0      933    3907  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                           1       28    3907  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                           0      999    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                           1       27    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                           0      484    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                           1       23    1533  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                           0      215     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                           1        2     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                           0      197     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                           1        4     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                           0      601     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                           1        4     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                           0       94     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                           1        1     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     2156    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      239    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                           0     2233    2915  dead0plus        
ki1101329-Keneba            GAMBIA                         0                           1       63    2915  dead0plus        
ki1101329-Keneba            GAMBIA                         1                           0      583    2915  dead0plus        
ki1101329-Keneba            GAMBIA                         1                           1       36    2915  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           0     6264    7164  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           1       37    7164  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           0      852    7164  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           1       11    7164  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                           0      525     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                           1        4     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                           0      165     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                           1        4     698  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                           0    10885   14074  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                           1      823   14074  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                           0     2073   14074  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                           1      293   14074  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                           0     1487    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                           1      102    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                           0      316    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                           1       26    1931  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           0      971    1204  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           1       33    1204  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           0      190    1204  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           1       10    1204  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                           0    21747   27227  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                           1      458   27227  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                           0     4637   27227  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                           1      385   27227  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                           0     4305    5442  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                           1       31    5442  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                           0     1087    5442  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                           1       19    5442  dead0plus        


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
![](/tmp/49570c52-75e0-4a71-9047-3f9b54dbc227/4ddb88f7-0951-4632-98a3-d57873bd5b5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/49570c52-75e0-4a71-9047-3f9b54dbc227/4ddb88f7-0951-4632-98a3-d57873bd5b5d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/49570c52-75e0-4a71-9047-3f9b54dbc227/4ddb88f7-0951-4632-98a3-d57873bd5b5d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/49570c52-75e0-4a71-9047-3f9b54dbc227/4ddb88f7-0951-4632-98a3-d57873bd5b5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0165607   0.0119567   0.0211648
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0292038   0.0185379   0.0398697
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0269067   0.0144685   0.0393449
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0448952   0.0279112   0.0618792
ki1101329-Keneba            GAMBIA         0                    NA                0.0272731   0.0206124   0.0339339
ki1101329-Keneba            GAMBIA         1                    NA                0.0573141   0.0386976   0.0759305
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0059029   0.0040070   0.0077989
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0120547   0.0048618   0.0192477
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0711895   0.0665055   0.0758734
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1192056   0.1056600   0.1327512
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0642146   0.0521397   0.0762894
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0781670   0.0485576   0.1077764
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0326787   0.0216581   0.0436992
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0514579   0.0209489   0.0819670
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0211124   0.0191711   0.0230537
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0767062   0.0671986   0.0862139
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0071738   0.0045661   0.0097816
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0168640   0.0094176   0.0243104


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0197082   0.0153493   0.0240672
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba            GAMBIA         NA                   NA                0.0339623   0.0273857   0.0405388
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0792952   0.0748310   0.0837593
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0357143   0.0252276   0.0462010
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0309619   0.0288229   0.0331009
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0091878   0.0066008   0.0117748


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 1.763437   1.1142768   2.790789
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.668551   1.1695299   2.380498
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.101483   1.3994346   3.155726
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.042153   1.0370474   4.021408
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 1.674483   1.4691479   1.908518
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.217279   0.7972989   1.858484
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.574665   0.7961745   3.114355
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 3.633230   3.1101237   4.244320
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.350779   1.3278154   4.161844


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0031475    0.0002937   0.0060012
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0057091    0.0015636   0.0098545
ki1101329-Keneba            GAMBIA         0                    NA                0.0066891    0.0024895   0.0108888
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0007972   -0.0001365   0.0017309
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0081057    0.0056738   0.0105376
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0020723   -0.0034035   0.0075482
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0030356   -0.0023131   0.0083843
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0098495    0.0082683   0.0114307
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0020140    0.0003886   0.0036394


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.1597036    0.0066516   0.2891739
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.1750404    0.0256850   0.3015006
ki1101329-Keneba            GAMBIA         0                    NA                0.1969575    0.0698459   0.3066984
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1189852   -0.0272442   0.2443986
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1022218    0.0715389   0.1318907
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0312633   -0.0548045   0.1103083
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0849974   -0.0756710   0.2216675
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.3181168    0.2719705   0.3613381
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.2192034    0.0306469   0.3710823
