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

studyid                     country                        ever_sstunted024    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -----------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      187     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                         1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                         0       53     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                         0      177     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                         1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                         0       58     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                         1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                         0      213     273  dead624          
ki0047075b-MAL-ED           PERU                           0                         1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                         0       59     273  dead624          
ki0047075b-MAL-ED           PERU                           1                         1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      191     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0       70     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      112     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0      133     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                         0      147     374  dead624          
ki1000109-EE                PAKISTAN                       0                         1        0     374  dead624          
ki1000109-EE                PAKISTAN                       1                         0      223     374  dead624          
ki1000109-EE                PAKISTAN                       1                         1        4     374  dead624          
ki1000304-VITAMIN-A         INDIA                          0                         0     2682    3614  dead624          
ki1000304-VITAMIN-A         INDIA                          0                         1       19    3614  dead624          
ki1000304-VITAMIN-A         INDIA                          1                         0      901    3614  dead624          
ki1000304-VITAMIN-A         INDIA                          1                         1       12    3614  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                         0      909    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                         1        3    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                         0      468    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                         1        9    1389  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      201     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        0     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0      197     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        4     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                         0      522     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                         1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                         0       93     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1867    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      229    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                         0     2122    2748  dead624          
ki1101329-Keneba            GAMBIA                         0                         1       25    2748  dead624          
ki1101329-Keneba            GAMBIA                         1                         0      582    2748  dead624          
ki1101329-Keneba            GAMBIA                         1                         1       19    2748  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0     6266    7162  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1       33    7162  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0      857    7162  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        6    7162  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                         0      434     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                         1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                         0      156     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                         1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0     9311   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      243   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0     1991   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      163   11708  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1433    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                         1      102    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                         0      314    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                         1       25    1874  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0      948    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       18    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0      189    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        6    1161  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    17066   21039  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      175   21039  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     3703   21039  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                         1       95   21039  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     4296    5432  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       31    5432  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                         0     1087    5432  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       18    5432  dead624          


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
![](/tmp/21238512-137b-4eda-9317-f787a5282c53/77ce9e84-d2f8-476f-bd8c-e019287246de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/21238512-137b-4eda-9317-f787a5282c53/77ce9e84-d2f8-476f-bd8c-e019287246de/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/21238512-137b-4eda-9317-f787a5282c53/77ce9e84-d2f8-476f-bd8c-e019287246de/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/21238512-137b-4eda-9317-f787a5282c53/77ce9e84-d2f8-476f-bd8c-e019287246de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0070831   0.0039106   0.0102556
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0126280   0.0054370   0.0198189
ki1101329-Keneba            GAMBIA         0                    NA                0.0116279   0.0070851   0.0161706
ki1101329-Keneba            GAMBIA         1                    NA                0.0311958   0.0168901   0.0455014
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052389   0.0034560   0.0070218
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0069525   0.0014084   0.0124966
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0260446   0.0228171   0.0292720
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0735896   0.0621724   0.0850068
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0667576   0.0542162   0.0792991
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0726058   0.0442402   0.1009715
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0186335   0.0101023   0.0271647
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0307692   0.0065205   0.0550180
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0103152   0.0087450   0.0118854
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0265326   0.0202470   0.0328183
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0071930   0.0045842   0.0098017
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0159206   0.0088513   0.0229899


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ki1101329-Keneba            GAMBIA         NA                   NA                0.0160116   0.0113178   0.0207055
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054454   0.0037409   0.0071499
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0346771   0.0313629   0.0379914
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0128333   0.0112834   0.0143832
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090206   0.0064715   0.0115698


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 1.782829   0.8640458   3.678601
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.682849   1.4681264   4.902630
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.327083   0.5576521   3.158151
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 2.825526   2.3169641   3.445715
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.087603   0.7050211   1.677795
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.651282   0.6637341   4.108169
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.572181   1.9408332   3.408904
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.213359   1.2497544   3.919937


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0014947   -0.0005462   0.0035355
ki1101329-Keneba            GAMBIA         0                    NA                0.0043838    0.0011454   0.0076222
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0002065   -0.0004954   0.0009083
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0086326    0.0064345   0.0108307
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0010118   -0.0045959   0.0066196
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0020383   -0.0022871   0.0063637
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0025181    0.0015333   0.0035028
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0018277    0.0002700   0.0033853


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.1742479   -0.0909661   0.3749883
ki1101329-Keneba            GAMBIA         0                    NA                0.2737877    0.0615824   0.4380068
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0379181   -0.0993846   0.1580730
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.2489413    0.1876971   0.3055680
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0149306   -0.0713537   0.0942658
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0986025   -0.1324656   0.2825235
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.1962146    0.1194931   0.2662510
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.2026096    0.0170920   0.3531119
