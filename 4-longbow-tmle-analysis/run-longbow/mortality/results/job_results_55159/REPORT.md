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

**Intervention Variable:** ever_sunderweight06

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

studyid                     country                        ever_sunderweight06    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                              0      243     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                              1        2     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                              0       19     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                              1        1     265  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                              0      217     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                              1        1     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                              0       32     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                              1        1     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                              0      290     303  dead0plus        
ki0047075b-MAL-ED           PERU                           0                              1        2     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                              0       11     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                              1        0     303  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              0      300     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              1        0     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              0       13     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              1        1     314  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      251     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        2     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0        8     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        1     262  dead0plus        
ki1000109-EE                PAKISTAN                       0                              0      218     380  dead0plus        
ki1000109-EE                PAKISTAN                       0                              1        1     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                              0      158     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                              1        3     380  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                              0     2858    3906  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                              1       30    3906  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                              0      970    3906  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                              1       48    3906  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                              0     1247    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                              1       26    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                              0      236    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                              1       24    1533  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                              0      304     416  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                              1        2     416  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                              0      106     416  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                              1        4     416  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                              0      647     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                              1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                              0       48     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                              1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     2325    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       70    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                              0     2379    2632  dead0plus        
ki1101329-Keneba            GAMBIA                         0                              1       71    2632  dead0plus        
ki1101329-Keneba            GAMBIA                         1                              0      158    2632  dead0plus        
ki1101329-Keneba            GAMBIA                         1                              1       24    2632  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              0      315     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              1        2     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              0       21     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              1        0     338  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                              0      600     697  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                              1        3     697  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                              0       90     697  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                              1        4     697  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                              0    12411   14085  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                              1      816   14085  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                              0      556   14085  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                              1      302   14085  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                              0     1646    1816  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                              1      106    1816  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                              0       56    1816  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                              1        8    1816  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              0     1082    1202  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              1       31    1202  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              0       76    1202  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              1       13    1202  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                              0    22216   27237  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                              1      436   27237  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                              0     4155   27237  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                              1      430   27237  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                              0     4716    5276  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                              1       32    5276  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                              0      512    5276  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                              1       16    5276  dead0plus        


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
![](/tmp/0eb671d1-ad89-4b0d-8717-7b2e5a49efff/167da3b1-acc5-4db8-ab14-a06245201e69/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0eb671d1-ad89-4b0d-8717-7b2e5a49efff/167da3b1-acc5-4db8-ab14-a06245201e69/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0eb671d1-ad89-4b0d-8717-7b2e5a49efff/167da3b1-acc5-4db8-ab14-a06245201e69/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0eb671d1-ad89-4b0d-8717-7b2e5a49efff/167da3b1-acc5-4db8-ab14-a06245201e69/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0103260   0.0066403   0.0140118
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0467916   0.0337525   0.0598307
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0211192   0.0084969   0.0337415
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0893510   0.0574175   0.1212846
ki1101329-Keneba          GAMBIA       0                    NA                0.0290172   0.0223649   0.0356694
ki1101329-Keneba          GAMBIA       1                    NA                0.1302568   0.0769312   0.1835823
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0621509   0.0580381   0.0662638
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.3295179   0.2970044   0.3620314
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1250000   0.0439530   0.2060470
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0278522   0.0181767   0.0375277
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.1192748   0.0516713   0.1868783
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0195639   0.0177474   0.0213804
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0894691   0.0794566   0.0994816
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0067558   0.0042422   0.0092694
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0283583   0.0131070   0.0436095


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba          GAMBIA       NA                   NA                0.0360942   0.0289669   0.0432215
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0793752   0.0749108   0.0838397
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0366057   0.0259850   0.0472263
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0317950   0.0295928   0.0339972
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0090978   0.0063582   0.0118374


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 4.531417   2.880941   7.127442
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 4.230803   2.234010   8.012361
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 4.488956   2.806523   7.179961
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 5.301898   4.709215   5.969175
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 2.066038   1.052847   4.054256
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 4.282420   2.204838   8.317672
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 4.573177   3.967918   5.270762
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.197621   2.175955   8.097603


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0096432    0.0060840   0.0132024
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0114966    0.0051202   0.0178731
ki1101329-Keneba          GAMBIA       0                    NA                0.0070771    0.0034945   0.0106596
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0172243    0.0149744   0.0194742
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0022730   -0.0006617   0.0052078
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0087535    0.0030105   0.0144964
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0122311    0.0105883   0.0138739
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0023420    0.0007487   0.0039353


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.4829032    0.3164613   0.6088165
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3524864    0.0981394   0.5351013
ki1101329-Keneba          GAMBIA       0                    NA                0.1960719    0.0987846   0.2828569
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.2169983    0.1905979   0.2425376
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0362092   -0.0112860   0.0814739
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.2391285    0.0832100   0.3685300
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3846866    0.3412347   0.4252724
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2574257    0.0808666   0.4000691
