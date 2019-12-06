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

**Intervention Variable:** ever_wasted024

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

studyid                     country                        ever_wasted024    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                       0      157     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                       1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                       0       83     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                       1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                       0      121     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                       1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                       0      114     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                       1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                       0      246     273  dead624          
ki0047075b-MAL-ED           PERU                           0                       1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                       0       26     273  dead624          
ki0047075b-MAL-ED           PERU                           1                       1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       0      204     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       0       57     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      209     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0       36     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                       0      149     375  dead624          
ki1000109-EE                PAKISTAN                       0                       1        1     375  dead624          
ki1000109-EE                PAKISTAN                       1                       0      222     375  dead624          
ki1000109-EE                PAKISTAN                       1                       1        3     375  dead624          
ki1000304-VITAMIN-A         INDIA                          0                       0     2357    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          0                       1       12    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                       0     1227    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                       1       19    3615  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                       0      783    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                       1        2    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                       0      594    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                       1       10    1389  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                       0      208     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                       1        1     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                       0      190     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                       1        3     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                       0      392     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                       1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                       0      223     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                       1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     1560    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0      536    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                       0     1485    2752  dead624          
ki1101329-Keneba            GAMBIA                         0                       1       21    2752  dead624          
ki1101329-Keneba            GAMBIA                         1                       0     1223    2752  dead624          
ki1101329-Keneba            GAMBIA                         1                       1       23    2752  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       0     5735    7164  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       1       23    7164  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       0     1390    7164  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       1       16    7164  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                       0      208     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                       1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                       0      382     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                       1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                       0     8640   11694  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                       1      225   11694  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                       0     2651   11694  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                       1      178   11694  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                       0     1606    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                       1      112    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                       0      141    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                       1       15    1874  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       0     1033    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       1       19    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       0      104    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       1        5    1161  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                       0    15084   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                       1      181   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                       0     5674   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                       1       84   21023  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                       0     3717    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                       1       30    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                       0     1667    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                       1       19    5433  dead624          


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
![](/tmp/5ef8d733-9f64-4784-bcff-91da39095f02/6b7fd869-2c6e-46c5-993e-2f7facc88ecf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ef8d733-9f64-4784-bcff-91da39095f02/6b7fd869-2c6e-46c5-993e-2f7facc88ecf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ef8d733-9f64-4784-bcff-91da39095f02/6b7fd869-2c6e-46c5-993e-2f7facc88ecf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ef8d733-9f64-4784-bcff-91da39095f02/6b7fd869-2c6e-46c5-993e-2f7facc88ecf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0050937   0.0022185   0.0079689
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0154574   0.0085591   0.0223558
ki1101329-Keneba            GAMBIA         0                    NA                0.0140161   0.0080719   0.0199602
ki1101329-Keneba            GAMBIA         1                    NA                0.0184221   0.0109734   0.0258707
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0040093   0.0023737   0.0056449
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0116682   0.0062439   0.0170925
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0260301   0.0226908   0.0293694
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0597001   0.0508443   0.0685560
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0651996   0.0535226   0.0768765
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0870726   0.0411312   0.1330139
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0180608   0.0100100   0.0261116
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0458716   0.0065802   0.0851629
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0118963   0.0101445   0.0136480
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0144185   0.0112564   0.0175806
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0079964   0.0051619   0.0108309
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0113033   0.0060294   0.0165773


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ki1101329-Keneba            GAMBIA         NA                   NA                0.0159884   0.0113013   0.0206755
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054439   0.0037399   0.0071479
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0344621   0.0311558   0.0377684
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0126052   0.0110619   0.0141486
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090190   0.0064698   0.0115681


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 3.034633   1.4778840   6.231206
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.314353   0.7314096   2.361912
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.910306   1.5679406   5.401914
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 2.293502   1.8853741   2.789978
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.335477   0.7650584   2.331194
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 2.539836   0.9670547   6.670528
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.212022   0.9314635   1.577085
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.413549   0.7855863   2.543477


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0034817    0.0009253   0.0060381
ki1101329-Keneba            GAMBIA         0                    NA                0.0019723   -0.0023624   0.0063070
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014346    0.0002966   0.0025726
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0084320    0.0060794   0.0107846
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0025699   -0.0014101   0.0065498
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0026110   -0.0011833   0.0064053
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0007090   -0.0002786   0.0016966
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0010226   -0.0008430   0.0028881


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.4060119    0.0762723   0.6180457
ki1101329-Keneba            GAMBIA         0                    NA                0.1233587   -0.1910582   0.3547755
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2635281    0.0438640   0.4327263
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.2446744    0.1777114   0.3061843
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0379209   -0.0223254   0.0946169
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1263070   -0.0697272   0.2864168
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0562448   -0.0250644   0.1311045
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1133783   -0.1144121   0.2946074
