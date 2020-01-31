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

studyid                     country                        ever_sstunted024    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -----------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                      0      205     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                      1        2     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                      0       57     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                      1        1     265  dead             
ki0047075b-MAL-ED           INDIA                          0                      0      190     251  dead             
ki0047075b-MAL-ED           INDIA                          0                      1        2     251  dead             
ki0047075b-MAL-ED           INDIA                          1                      0       59     251  dead             
ki0047075b-MAL-ED           INDIA                          1                      1        0     251  dead             
ki0047075b-MAL-ED           PERU                           0                      0      237     303  dead             
ki0047075b-MAL-ED           PERU                           0                      1        2     303  dead             
ki0047075b-MAL-ED           PERU                           1                      0       64     303  dead             
ki0047075b-MAL-ED           PERU                           1                      1        0     303  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                      0      241     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                      1        0     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                      0       72     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                      1        1     314  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      123     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        2     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0      136     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        1     262  dead             
ki1000109-EE                PAKISTAN                       0                      0      151     379  dead             
ki1000109-EE                PAKISTAN                       0                      1        0     379  dead             
ki1000109-EE                PAKISTAN                       1                      0      224     379  dead             
ki1000109-EE                PAKISTAN                       1                      1        4     379  dead             
ki1000304-VITAMIN-A         INDIA                          0                      0     2897    3907  dead             
ki1000304-VITAMIN-A         INDIA                          0                      1       49    3907  dead             
ki1000304-VITAMIN-A         INDIA                          1                      0      933    3907  dead             
ki1000304-VITAMIN-A         INDIA                          1                      1       28    3907  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                      0      999    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                      1       27    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                      0      484    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                      1       23    1533  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                      0      215     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                      1        2     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                      0      197     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                      1        4     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                      0      601     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                      1        4     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                      0       95     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                      1        0     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      0     2156    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      0      239    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                      0     2254    2915  dead             
ki1101329-Keneba            GAMBIA                         0                      1       42    2915  dead             
ki1101329-Keneba            GAMBIA                         1                      0      597    2915  dead             
ki1101329-Keneba            GAMBIA                         1                      1       22    2915  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                      0     6268    7164  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                      1       33    7164  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                      0      857    7164  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                      1        6    7164  dead             
ki1113344-GMS-Nepal         NEPAL                          0                      0      525     698  dead             
ki1113344-GMS-Nepal         NEPAL                          0                      1        4     698  dead             
ki1113344-GMS-Nepal         NEPAL                          1                      0      165     698  dead             
ki1113344-GMS-Nepal         NEPAL                          1                      1        4     698  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                      0    10893   14074  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                      1      815   14074  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                      0     2075   14074  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                      1      291   14074  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                      0     1487    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                      1      102    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                      0      316    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                      1       26    1931  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                      0      973    1204  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                      1       31    1204  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                      0      192    1204  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                      1        8    1204  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                      0    21774   27227  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                      1      431   27227  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                      0     4651   27227  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                      1      371   27227  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                      0     4305    5442  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                      1       31    5442  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                      0     1088    5442  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                      1       18    5442  dead             


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/fa17c26a-293a-473c-9423-8e22a715d0e6/c5c2f535-c145-487e-8c2a-bf28de83a915/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa17c26a-293a-473c-9423-8e22a715d0e6/c5c2f535-c145-487e-8c2a-bf28de83a915/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa17c26a-293a-473c-9423-8e22a715d0e6/c5c2f535-c145-487e-8c2a-bf28de83a915/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa17c26a-293a-473c-9423-8e22a715d0e6/c5c2f535-c145-487e-8c2a-bf28de83a915/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0165515   0.0119486   0.0211543
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0293805   0.0186809   0.0400801
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0269067   0.0144685   0.0393449
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0448952   0.0279112   0.0618792
ki1101329-Keneba            GAMBIA         0                    NA                0.0182646   0.0127815   0.0237478
ki1101329-Keneba            GAMBIA         1                    NA                0.0347479   0.0200369   0.0494589
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052373   0.0034549   0.0070196
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0069525   0.0014084   0.0124966
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0706555   0.0659760   0.0753350
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1213279   0.1075487   0.1351070
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0642163   0.0521371   0.0762955
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0749650   0.0465313   0.1033987
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0308765   0.0201720   0.0415810
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0400000   0.0128307   0.0671693
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0197140   0.0178177   0.0216104
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0750755   0.0656509   0.0845002
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0071617   0.0045594   0.0097640
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0159078   0.0088820   0.0229335


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0197082   0.0153493   0.0240672
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba            GAMBIA         NA                   NA                0.0219554   0.0166349   0.0272759
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054439   0.0037399   0.0071479
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0785846   0.0741388   0.0830304
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0323920   0.0223878   0.0423963
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0294561   0.0273691   0.0315430
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090040   0.0064549   0.0115532


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 1.775098   1.1226864   2.806636
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.668551   1.1695299   2.380498
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.902470   1.1321112   3.197028
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.327505   0.5578291   3.159154
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 1.717175   1.5063746   1.957473
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.167382   0.7643532   1.782922
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.295484   0.6042846   2.777298
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 3.808228   3.2430529   4.471898
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.221235   1.2557202   3.929127


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0031567    0.0003057   0.0060078
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0057091    0.0015636   0.0098545
ki1101329-Keneba            GAMBIA         0                    NA                0.0036908    0.0003606   0.0070210
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0002066   -0.0004950   0.0009083
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0079291    0.0054967   0.0103615
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0020706   -0.0033970   0.0075382
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0015155   -0.0033391   0.0063702
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0097420    0.0082058   0.0112783
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0018424    0.0002873   0.0033974


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.1601739    0.0072728   0.2895250
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.1750404    0.0256850   0.3015006
ki1101329-Keneba            GAMBIA         0                    NA                0.1681034    0.0081178   0.3022841
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0379549   -0.0993426   0.1581052
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1008987    0.0698999   0.1308643
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0312369   -0.0547033   0.1101744
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0467872   -0.1147438   0.1849117
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.3307307    0.2835325   0.3748195
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.2046147    0.0192219   0.3549633
