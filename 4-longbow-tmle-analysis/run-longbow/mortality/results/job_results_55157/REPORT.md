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

**Intervention Variable:** ever_sstunted06

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

studyid                     country                        ever_sstunted06    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                          0      240     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                          1        2     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          0       22     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          1        1     265  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                          0      228     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                          1        2     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                          0       21     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                          1        0     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                          0      260     303  dead0plus        
ki0047075b-MAL-ED           PERU                           0                          1        2     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                          0       41     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                          1        0     303  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          0      283     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          1        0     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          0       30     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          1        1     314  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          0      219     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          1        2     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          0       40     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          1        1     262  dead0plus        
ki1000109-EE                PAKISTAN                       0                          0      213     379  dead0plus        
ki1000109-EE                PAKISTAN                       0                          1        3     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                          0      162     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                          1        1     379  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                          0     3274    3898  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                          1       50    3898  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                          0      547    3898  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                          1       27    3898  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          0     1266    1532  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          1       29    1532  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          0      216    1532  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          1       21    1532  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          0      351     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          1        3     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          0       61     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          1        3     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          0      664     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          0       31     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2284    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      111    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                          0     2115    2479  dead0plus        
ki1101329-Keneba            GAMBIA                         0                          1       70    2479  dead0plus        
ki1101329-Keneba            GAMBIA                         1                          0      276    2479  dead0plus        
ki1101329-Keneba            GAMBIA                         1                          1       18    2479  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          0      325     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          1        2     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          0       11     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          1        0     338  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                          0      634     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                          1        4     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                          0       56     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                          1        4     698  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          0    11746   14060  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          1      881   14060  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          0     1199   14060  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          1      234   14060  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          0     1588    1813  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          1      101    1813  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          0      111    1813  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          1       13    1813  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          0     1065    1191  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          1       37    1191  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          0       83    1191  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          1        6    1191  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          0    22481   27197  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          1      465   27197  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          0     3874   27197  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          1      377   27197  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          0     4639    5270  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          1       31    5270  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          0      583    5270  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          1       17    5270  dead0plus        


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
![](/tmp/bec40a8a-8e16-43cf-9092-e346d37a4988/f4f07683-6dca-45db-a320-88c00d54c151/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bec40a8a-8e16-43cf-9092-e346d37a4988/f4f07683-6dca-45db-a320-88c00d54c151/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bec40a8a-8e16-43cf-9092-e346d37a4988/f4f07683-6dca-45db-a320-88c00d54c151/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bec40a8a-8e16-43cf-9092-e346d37a4988/f4f07683-6dca-45db-a320-88c00d54c151/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0149916   0.0108602   0.0191230
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0486557   0.0309250   0.0663863
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0226835   0.0105712   0.0347957
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0883646   0.0638262   0.1129029
ki1101329-Keneba          GAMBIA       0                    NA                0.0321457   0.0247345   0.0395568
ki1101329-Keneba          GAMBIA       1                    NA                0.0602196   0.0325990   0.0878402
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0700119   0.0655625   0.0744614
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1552621   0.1362375   0.1742866
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0598884   0.0485734   0.0712034
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1085654   0.0534425   0.1636883
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0335753   0.0229355   0.0442151
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0674157   0.0153010   0.1195304
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0205998   0.0187338   0.0224658
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0909053   0.0794746   0.1023360
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0066513   0.0040652   0.0092373
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0275106   0.0146018   0.0404194


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
ki1000304-VITAMIN-A       INDIA        1                    0                 3.245528   2.0554767   5.124577
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.895547   2.3276153   6.519670
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.873336   1.1210491   3.130449
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.217652   1.9326288   2.544710
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.812794   1.0548017   3.115489
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 2.007896   0.8707684   4.629985
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 4.412917   3.7818553   5.149281
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.136146   2.2518251   7.597260


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0047621    0.0021178   0.0074065
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0099536    0.0056305   0.0142766
ki1101329-Keneba          GAMBIA       0                    NA                0.0033525   -0.0000426   0.0067477
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0092911    0.0072415   0.0113406
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0029908   -0.0008045   0.0067861
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0025288   -0.0014779   0.0065355
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0103595    0.0088245   0.0118944
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0024569    0.0009347   0.0039791


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2410743    0.1072295   0.3548530
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3049779    0.1276682   0.4462478
ki1101329-Keneba          GAMBIA       0                    NA                0.0944423   -0.0043843   0.1835448
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1171590    0.0916915   0.1419124
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0475643   -0.0141762   0.1055462
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0700418   -0.0458177   0.1730660
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3346160    0.2910113   0.3755388
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2697470    0.0962509   0.4099364
