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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_underweight624

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* earlybf
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_earlybf
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_underweight624    dead624   n_cell       n
--------------------------  -----------------------------  --------------------  --------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                            0      160     239
ki0047075b-MAL-ED           BANGLADESH                     0                            1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                            0       79     239
ki0047075b-MAL-ED           BANGLADESH                     1                            1        0     239
ki0047075b-MAL-ED           INDIA                          0                            0      158     235
ki0047075b-MAL-ED           INDIA                          0                            1        0     235
ki0047075b-MAL-ED           INDIA                          1                            0       77     235
ki0047075b-MAL-ED           INDIA                          1                            1        0     235
ki0047075b-MAL-ED           PERU                           0                            0      233     270
ki0047075b-MAL-ED           PERU                           0                            1        1     270
ki0047075b-MAL-ED           PERU                           1                            0       36     270
ki0047075b-MAL-ED           PERU                           1                            1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            0      208     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            0       51     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      152     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0       93     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        0     245
ki1000304-VITAMIN-A         INDIA                          0                            0     2749    3507
ki1000304-VITAMIN-A         INDIA                          0                            1        8    3507
ki1000304-VITAMIN-A         INDIA                          1                            0      746    3507
ki1000304-VITAMIN-A         INDIA                          1                            1        4    3507
ki1000304b-SAS-CompFeed     INDIA                          0                            0      922    1386
ki1000304b-SAS-CompFeed     INDIA                          0                            1        8    1386
ki1000304b-SAS-CompFeed     INDIA                          1                            0      454    1386
ki1000304b-SAS-CompFeed     INDIA                          1                            1        2    1386
ki1000304b-SAS-FoodSuppl    INDIA                          0                            0      217     398
ki1000304b-SAS-FoodSuppl    INDIA                          0                            1        2     398
ki1000304b-SAS-FoodSuppl    INDIA                          1                            0      179     398
ki1000304b-SAS-FoodSuppl    INDIA                          1                            1        0     398
ki1017093b-PROVIDE          BANGLADESH                     0                            0      423     613
ki1017093b-PROVIDE          BANGLADESH                     0                            1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                            0      190     613
ki1017093b-PROVIDE          BANGLADESH                     1                            1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     1699    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0      317    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2016
ki1101329-Keneba            GAMBIA                         0                            0     1768    2697
ki1101329-Keneba            GAMBIA                         0                            1       22    2697
ki1101329-Keneba            GAMBIA                         1                            0      896    2697
ki1101329-Keneba            GAMBIA                         1                            1       11    2697
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            0     4731    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            1       18    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            0     2365    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            1       21    7135
ki1113344-GMS-Nepal         NEPAL                          0                            0      315     588
ki1113344-GMS-Nepal         NEPAL                          0                            1        1     588
ki1113344-GMS-Nepal         NEPAL                          1                            0      272     588
ki1113344-GMS-Nepal         NEPAL                          1                            1        0     588
ki1126311-ZVITAMBO          ZIMBABWE                       0                            0     9038   10672
ki1126311-ZVITAMBO          ZIMBABWE                       0                            1      167   10672
ki1126311-ZVITAMBO          ZIMBABWE                       1                            0     1345   10672
ki1126311-ZVITAMBO          ZIMBABWE                       1                            1      122   10672
ki1148112-iLiNS-DOSE        MALAWI                         0                            0     1131    1692
ki1148112-iLiNS-DOSE        MALAWI                         0                            1       14    1692
ki1148112-iLiNS-DOSE        MALAWI                         1                            0      535    1692
ki1148112-iLiNS-DOSE        MALAWI                         1                            1       12    1692
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            0      861    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            1       11    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            0      267    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            1        6    1145
kiGH5241-JiVitA-3           BANGLADESH                     0                            0    13500   17235
kiGH5241-JiVitA-3           BANGLADESH                     0                            1      127   17235
kiGH5241-JiVitA-3           BANGLADESH                     1                            0     3587   17235
kiGH5241-JiVitA-3           BANGLADESH                     1                            1       21   17235
kiGH5241-JiVitA-4           BANGLADESH                     0                            0     3673    5419
kiGH5241-JiVitA-4           BANGLADESH                     0                            1       28    5419
kiGH5241-JiVitA-4           BANGLADESH                     1                            0     1701    5419
kiGH5241-JiVitA-4           BANGLADESH                     1                            1       17    5419


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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
![](/tmp/323c3ad0-98fb-41a1-8a29-a072e6880083/29f2f86a-d99e-4e86-9853-9e7399fb525e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/323c3ad0-98fb-41a1-8a29-a072e6880083/29f2f86a-d99e-4e86-9853-9e7399fb525e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/323c3ad0-98fb-41a1-8a29-a072e6880083/29f2f86a-d99e-4e86-9853-9e7399fb525e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/323c3ad0-98fb-41a1-8a29-a072e6880083/29f2f86a-d99e-4e86-9853-9e7399fb525e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.0120752   0.0069892   0.0171612
ki1101329-Keneba            GAMBIA         1                    NA                0.0122527   0.0050921   0.0194134
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0038220   0.0020596   0.0055844
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0086840   0.0050070   0.0123609
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0187418   0.0159332   0.0215504
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0877177   0.0719794   0.1034559
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0117735   0.0055576   0.0179894
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0234467   0.0107651   0.0361283
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0126147   0.0052039   0.0200254
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0219780   0.0045790   0.0393771
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0093608   0.0077611   0.0109605
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0059277   0.0033515   0.0085039
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0076200   0.0046887   0.0105513
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0096613   0.0051459   0.0141767


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         NA                   NA                0.0122358   0.0080860   0.0163857
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054660   0.0037551   0.0071769
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0270802   0.0240005   0.0301599
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0153664   0.0095037   0.0212292
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0148472   0.0078389   0.0218554
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0085872   0.0071934   0.0099810
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0083041   0.0058088   0.0107994


### Parameter: RR


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
ki1101329-Keneba            GAMBIA         1                    0                 1.0146999   0.4937207   2.0854217
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.0000000   1.0000000   1.0000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.2720946   1.2149241   4.2491658
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 4.6803266   3.7043125   5.9135013
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.0000000   1.0000000   1.0000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.9914779   0.9419518   4.2103898
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.0000000   1.0000000   1.0000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.7422577   0.6500948   4.6692604
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 0.6332467   0.4013738   0.9990721
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.2678813   0.6951459   2.3124972


### Parameter: PAR


studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
ki1101329-Keneba            GAMBIA         0                    NA                 0.0001606   -0.0028121    0.0031333
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0016440    0.0002537    0.0030343
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.0083384    0.0062896    0.0103873
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                 0.0035929   -0.0007630    0.0079489
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                 0.0022325   -0.0022825    0.0067474
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                -0.0007736   -0.0013768   -0.0001704
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0006841   -0.0010464    0.0024146


### Parameter: PAF


studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
ki1101329-Keneba            GAMBIA         0                    NA                 0.0131261   -0.2623474    0.2284848
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.3007668    0.0194453    0.5013771
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.3079160    0.2373317    0.3719678
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                 0.2338162   -0.0921105    0.4624741
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                 0.1503643   -0.2036237    0.4002437
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                -0.0900879   -0.1619233   -0.0226937
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0823802   -0.1511596    0.2685409
