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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sunderweight06    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                            0      224     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                            1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                            0       16     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                            1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                            0      204     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                            1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                            0       31     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                            1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                            0      263     273  dead624          
ki0047075b-MAL-ED           PERU                           0                            1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                            0        9     273  dead624          
ki0047075b-MAL-ED           PERU                           1                            1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            0      249     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            0       12     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      237     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0        8     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                            0      215     375  dead624          
ki1000109-EE                PAKISTAN                       0                            1        1     375  dead624          
ki1000109-EE                PAKISTAN                       1                            0      156     375  dead624          
ki1000109-EE                PAKISTAN                       1                            1        3     375  dead624          
ki1000304-VITAMIN-A         INDIA                          0                            0     2673    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          0                            1       14    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                            0      910    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                            1       18    3615  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                            0     1164    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                            1        5    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                            0      213    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                            1        7    1389  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                            0      291     400  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                            1        1     400  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                            0      105     400  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                            1        3     400  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                            0      572     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                            1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                            0       43     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                            1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     2034    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0       62    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                            0     2270    2464  dead624          
ki1101329-Keneba            GAMBIA                         0                            1       30    2464  dead624          
ki1101329-Keneba            GAMBIA                         1                            0      153    2464  dead624          
ki1101329-Keneba            GAMBIA                         1                            1       11    2464  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            0      313     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            1        2     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            0       21     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            1        0     336  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                            0      508     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                            1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                            0       82     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                            1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                            0    10798   11707  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                            1      296   11707  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                            0      503   11707  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                            1      110   11707  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                            0     1593    1759  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                            1      105    1759  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                            0       53    1759  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                            1        8    1759  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            0     1059    1158  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            1       19    1158  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            0       75    1158  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            1        5    1158  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                            0    17600   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                            1      169   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                            0     3153   21023  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                            1      101   21023  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                            0     4708    5266  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                            1       31    5266  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                            0      511    5266  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                            1       16    5266  dead624          


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
![](/tmp/5b9bd71a-01b7-473c-aaa6-f31313dc0210/76c35cb7-4f88-428c-a9c3-41e68c041365/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5b9bd71a-01b7-473c-aaa6-f31313dc0210/76c35cb7-4f88-428c-a9c3-41e68c041365/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5b9bd71a-01b7-473c-aaa6-f31313dc0210/76c35cb7-4f88-428c-a9c3-41e68c041365/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5b9bd71a-01b7-473c-aaa6-f31313dc0210/76c35cb7-4f88-428c-a9c3-41e68c041365/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0052255    0.0024934   0.0079576
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0189303    0.0101826   0.0276781
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0042772   -0.0001115   0.0086658
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0318182    0.0181644   0.0454719
ki1101329-Keneba          GAMBIA       0                    NA                0.0130407    0.0084011   0.0176804
ki1101329-Keneba          GAMBIA       1                    NA                0.0672015    0.0270636   0.1073394
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0267842    0.0237830   0.0297855
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1632167    0.1329448   0.1934887
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0618375    0.0503779   0.0732970
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1311475    0.0464131   0.2158819
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0176252    0.0097669   0.0254836
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0625000    0.0094340   0.1155660
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0095339    0.0080671   0.0110007
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0299510    0.0231235   0.0367785
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0065466    0.0040857   0.0090076
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0285832    0.0132152   0.0439512


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0088520   0.0057982   0.0119058
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0086393   0.0042356   0.0130430
ki1101329-Keneba          GAMBIA       NA                   NA                0.0166396   0.0115878   0.0216914
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0346801   0.0313656   0.0379946
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0642410   0.0527799   0.0757022
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0207254   0.0125165   0.0289343
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0128431   0.0112928   0.0143934
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089252   0.0062212   0.0116291


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.622661   1.803035    7.278657
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 7.439091   2.727800   20.287438
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 5.153200   2.570700   10.330054
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 6.093760   4.906996    7.567545
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 2.120843   1.082921    4.153557
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 3.546053   1.359113    9.251981
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.141520   2.382852    4.141740
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.366084   2.258514    8.440365


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0036265    0.0012318   0.0060211
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0043621    0.0020152   0.0067091
ki1101329-Keneba          GAMBIA       0                    NA                0.0035989    0.0009743   0.0062234
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0078959    0.0061890   0.0096027
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0024036   -0.0006203   0.0054275
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0031002   -0.0006634   0.0068637
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0033092    0.0022981   0.0043202
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0023785    0.0007865   0.0039706


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.4096777    0.1266972   0.6009626
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5049187    0.0566503   0.7401754
ki1101329-Keneba          GAMBIA       0                    NA                0.2162839    0.0584007   0.3476939
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.2276771    0.1819956   0.2708076
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0374152   -0.0103929   0.0829612
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.1495826   -0.0410752   0.3053241
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2576606    0.1821293   0.3262166
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2664971    0.0874772   0.4103966
